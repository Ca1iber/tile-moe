#!/usr/bin/env python3
"""Balance source effect against TileLang compile/instantiation order in one process."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import math
import statistics
import sys
from datetime import datetime, timezone
from pathlib import Path

import tilelang
import torch
import torch.nn.functional as F


BLOCK_TOKEN = 128


def load_module(name: str, path: Path):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot import {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[name] = module
    spec.loader.exec_module(module)
    return module


def build_metadata(experts: int, valid_tokens: int):
    counts = [100] * (experts // 2) + [184] * (experts // 2)
    if sum(counts) != valid_tokens:
        raise ValueError("invalid OJ counts")
    offsets, padded_offsets, group_idx = [], [], []
    raw_offset = padded_offset = 0
    for expert_id, count in enumerate(counts):
        offsets.append(raw_offset)
        padded_offsets.append(padded_offset)
        blocks = math.ceil((count + 1) / BLOCK_TOKEN)
        group_idx.extend([expert_id] * blocks)
        raw_offset += count
        padded_offset += blocks * BLOCK_TOKEN
    return counts, offsets, padded_offsets, group_idx


def make_random(shape, scale, generator):
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


def build_inputs():
    experts, hidden, intermediate, valid_tokens = 32, 7168, 2048, 4544
    counts, offsets, padded_offsets, group_idx = build_metadata(experts, valid_tokens)
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260812)
    stacked = make_random((valid_tokens, hidden), 1.0, generator)
    gate = make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator)
    up = make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator)
    down = make_random((experts, hidden, intermediate), 1.0 / math.sqrt(intermediate), generator)
    routed_weights = torch.rand((valid_tokens,), device="cuda", dtype=torch.float16, generator=generator)
    metadata = (
        torch.tensor(counts, device="cuda", dtype=torch.int32),
        torch.tensor(offsets, device="cuda", dtype=torch.int32),
        torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
        torch.tensor(group_idx, device="cuda", dtype=torch.int32),
    )
    return (stacked, gate, up, down, routed_weights, *metadata), counts, offsets


@torch.no_grad()
def reference(base_args, counts, offsets):
    stacked, gate, up, down, routed_weights = base_args[:5]
    result = torch.empty_like(stacked)
    for expert_id, count in enumerate(counts):
        start = offsets[expert_id]
        end = start + count
        x = stacked[start:end]
        result[start:end] = (
            F.linear(F.silu(F.linear(x, gate[expert_id])) * F.linear(x, up[expert_id]), down[expert_id])
            * routed_weights[start:end, None]
        )
    return result


def make_kernel(module):
    return module.RoutedMoEKernel(7168, 2048, 32, group_sum=4544, group_count=12)


def make_call_args(base_args):
    up_logits = torch.empty((4544, 2048), device="cuda", dtype=torch.float16)
    output = torch.empty_like(base_args[0])
    return (*base_args, up_logits, output)


def elapsed_ms(kernel, args, warmup: int, repeat: int) -> float:
    for _ in range(warmup):
        kernel(*args)
    torch.cuda.synchronize()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        kernel(*args)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / repeat


def stats(values):
    return {
        "samples": values,
        "mean": statistics.fmean(values),
        "median": statistics.median(values),
        "pstdev": statistics.pstdev(values),
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent-source", type=Path, required=True)
    parser.add_argument("--candidate-source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--rounds", type=int, default=8)
    parser.add_argument("--warmup", type=int, default=5)
    parser.add_argument("--repeat", type=int, default=500)
    args = parser.parse_args()

    parent_module = load_module("balanced_parent_module", args.parent_source.resolve())
    candidate_module = load_module("balanced_candidate_module", args.candidate_source.resolve())
    base_args, counts, offsets = build_inputs()
    expected = reference(base_args, counts, offsets)

    # Force four separately instantiated kernels. The two compilation orders let
    # the geometric mean cancel a multiplicative first/second-slot bias.
    tilelang.disable_cache()
    build_sequence = (
        ("parent_first", "parent", parent_module),
        ("candidate_second", "candidate", candidate_module),
        ("candidate_first", "candidate", candidate_module),
        ("parent_second", "parent", parent_module),
    )
    kernels, call_args, codegen_sha256 = {}, {}, {}
    for slot, source, module in build_sequence:
        kernel = make_kernel(module)
        kernels[slot] = kernel
        call_args[slot] = make_call_args(base_args)
        generated = kernel.impl.get_kernel_source().encode()
        codegen_sha256[slot] = hashlib.sha256(generated).hexdigest()
        kernel(*call_args[slot])
        torch.cuda.synchronize()
        torch.testing.assert_close(call_args[slot][-1].float(), expected.float(), rtol=1e-2, atol=1e-2)

    latin_orders = (
        ("parent_first", "candidate_second", "candidate_first", "parent_second"),
        ("candidate_second", "parent_first", "parent_second", "candidate_first"),
        ("candidate_first", "parent_second", "parent_first", "candidate_second"),
        ("parent_second", "candidate_first", "candidate_second", "parent_first"),
    )
    rows, balanced_changes = [], []
    for round_index in range(1, args.rounds + 1):
        order = latin_orders[(round_index - 1) % len(latin_orders)]
        values = {}
        for position, slot in enumerate(order, start=1):
            value = elapsed_ms(kernels[slot], call_args[slot], args.warmup, args.repeat)
            values[slot] = value
            rows.append({"round": round_index, "position": position, "slot": slot, "average_ms": value})
        ab_ratio = values["candidate_second"] / values["parent_first"]
        ba_ratio = values["candidate_first"] / values["parent_second"]
        balanced_change = (math.sqrt(ab_ratio * ba_ratio) - 1.0) * 100.0
        balanced_changes.append(balanced_change)
        rows.append(
            {
                "round": round_index,
                "slot": "balanced_change",
                "ab_candidate_second_over_parent_first": ab_ratio,
                "ba_candidate_first_over_parent_second": ba_ratio,
                "change_percent": balanced_change,
            }
        )

    slot_values = {
        slot: [row["average_ms"] for row in rows if row.get("slot") == slot and "average_ms" in row]
        for slot, _, _ in build_sequence
    }
    result = {
        "created_at_utc": datetime.now(timezone.utc).isoformat(),
        "protocol": {
            "case": 2,
            "same_process": True,
            "four_separately_instantiated_kernels": True,
            "build_order": [slot for slot, _, _ in build_sequence],
            "measurement_order": "four-order Latin rotation",
            "bias_cancellation": "geometric mean of B_second/A_first and B_first/A_second",
            "rounds": args.rounds,
            "warmup_per_window": args.warmup,
            "repeat_per_window": args.repeat,
        },
        "sources": {
            "parent": str(args.parent_source.resolve()),
            "candidate": str(args.candidate_source.resolve()),
        },
        "codegen_sha256": codegen_sha256,
        "correctness": "PASS for all four instances, torch.assert_close rtol=1e-2 atol=1e-2",
        "rows": rows,
        "slot_aggregate": {slot: stats(values) for slot, values in slot_values.items()},
        "balanced": {
            **stats(balanced_changes),
            "improved_rounds": sum(value < 0 for value in balanced_changes),
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
