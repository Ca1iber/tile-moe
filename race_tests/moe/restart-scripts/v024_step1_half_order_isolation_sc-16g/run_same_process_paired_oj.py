#!/usr/bin/env python3
"""Compare two RoutedMoEKernel sources in alternating windows in one process."""

from __future__ import annotations

import argparse
import importlib.util
import json
import math
import statistics
import sys
from datetime import datetime, timezone
from pathlib import Path

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
    generator.manual_seed(20260719)
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
    return module.RoutedMoEKernel(
        7168,
        2048,
        32,
        group_sum=4544,
        group_count=12,
    )


def make_call_args(base_args):
    stacked = base_args[0]
    up_logits = torch.empty((4544, 2048), device="cuda", dtype=torch.float16)
    output = torch.empty_like(stacked)
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


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent-source", type=Path, required=True)
    parser.add_argument("--candidate-source", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--pairs", type=int, default=12)
    parser.add_argument("--warmup", type=int, default=5)
    parser.add_argument("--repeat", type=int, default=200)
    args = parser.parse_args()

    parent_module = load_module("v024_parent_module", args.parent_source.resolve())
    candidate_module = load_module("v024_candidate_module", args.candidate_source.resolve())
    base_args, counts, offsets = build_inputs()
    expected = reference(base_args, counts, offsets)

    kernels = {"parent": make_kernel(parent_module), "candidate": make_kernel(candidate_module)}
    call_args = {tag: make_call_args(base_args) for tag in kernels}
    for tag in ("parent", "candidate"):
        kernels[tag](*call_args[tag])
        torch.cuda.synchronize()
        actual = call_args[tag][-1]
        torch.testing.assert_close(actual.float(), expected.float(), rtol=1e-2, atol=1e-2)

    rows = []
    for pair in range(1, args.pairs + 1):
        order = ("parent", "candidate") if pair % 2 else ("candidate", "parent")
        pair_values = {}
        for position, tag in enumerate(order, start=1):
            value = elapsed_ms(kernels[tag], call_args[tag], args.warmup, args.repeat)
            pair_values[tag] = value
            rows.append({"pair": pair, "position": position, "tag": tag, "average_ms": value})
        rows.append(
            {
                "pair": pair,
                "tag": "paired_change",
                "change_percent": (pair_values["candidate"] / pair_values["parent"] - 1.0) * 100.0,
            }
        )

    pair_changes = [row["change_percent"] for row in rows if row["tag"] == "paired_change"]
    values = {
        tag: [row["average_ms"] for row in rows if row["tag"] == tag]
        for tag in ("parent", "candidate")
    }
    summary = {
        "created_at_utc": datetime.now(timezone.utc).isoformat(),
        "protocol": {
            "case": 2,
            "same_process": True,
            "shared_input_weights": True,
            "separate_scratch_outputs": True,
            "pairs": args.pairs,
            "orders": "AB, BA alternating",
            "warmup_per_window": args.warmup,
            "repeat_per_window": args.repeat,
        },
        "sources": {
            "parent": str(args.parent_source.resolve()),
            "candidate": str(args.candidate_source.resolve()),
        },
        "correctness": "PASS for both, torch.assert_close rtol=1e-2 atol=1e-2",
        "rows": rows,
        "aggregate": {
            tag: {
                "samples": samples,
                "mean_ms": statistics.fmean(samples),
                "median_ms": statistics.median(samples),
                "pstdev_ms": statistics.pstdev(samples),
            }
            for tag, samples in values.items()
        },
        "paired": {
            "changes_percent": pair_changes,
            "median_change_percent": statistics.median(pair_changes),
            "mean_change_percent": statistics.fmean(pair_changes),
            "improved_pairs": sum(value < 0 for value in pair_changes),
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
