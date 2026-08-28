#!/usr/bin/env python3
"""Paired full-output check with short/long experts interleaved by ID."""

from __future__ import annotations

import argparse
import importlib.util
import json
import math
import statistics
import sys
from pathlib import Path

import torch
import torch.nn.functional as F


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}


def load_module(path: Path, tag: str):
    spec = importlib.util.spec_from_file_location(tag, path.resolve())
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules[tag] = module
    spec.loader.exec_module(module)
    return module


def random_tensor(shape, scale, generator):
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


def build_case(case_id: int):
    cfg = CASES[case_id]
    counts = [100, 184] * (cfg["experts"] // 2)
    offsets, padded_offsets, group_idx = [], [], []
    raw = padded = 0
    for expert_id, count in enumerate(counts):
        offsets.append(raw)
        padded_offsets.append(padded)
        blocks = math.ceil((count + 1) / 128)
        group_idx.extend([expert_id] * blocks)
        raw += count
        padded += blocks * 128
    gen = torch.Generator(device="cuda")
    gen.manual_seed(20260717 + case_id)
    args = (
        random_tensor((padded, cfg["hidden"]), 1.0, gen),
        random_tensor((cfg["experts"], cfg["intermediate"], cfg["hidden"]), 1.0 / math.sqrt(cfg["hidden"]), gen),
        random_tensor((cfg["experts"], cfg["intermediate"], cfg["hidden"]), 1.0 / math.sqrt(cfg["hidden"]), gen),
        random_tensor((cfg["experts"], cfg["hidden"], cfg["intermediate"]), 1.0 / math.sqrt(cfg["intermediate"]), gen),
        torch.rand((cfg["valid_tokens"],), device="cuda", dtype=torch.float32, generator=gen),
        torch.tensor(counts, device="cuda", dtype=torch.int32),
        torch.tensor(offsets, device="cuda", dtype=torch.int32),
        torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
        torch.tensor(group_idx, device="cuda", dtype=torch.int32),
        torch.empty((padded, cfg["hidden"]), device="cuda", dtype=torch.float16),
    )
    return args, counts, offsets


@torch.no_grad()
def reference(args, counts, offsets):
    stacked, gate, up, down, weights = args[:5]
    padded_offsets = args[7]
    out = torch.zeros_like(stacked)
    for expert_id, count in enumerate(counts):
        start = int(padded_offsets[expert_id].item())
        end = start + count
        x = stacked[start:end]
        raw_start = offsets[expert_id]
        out[start:end] = F.linear(F.silu(F.linear(x, gate[expert_id])) * F.linear(x, up[expert_id]), down[expert_id]) * weights[raw_start:raw_start + count, None]
    return out


def elapsed(module, args, warmup, repeat):
    for _ in range(warmup):
        module.run_kernel(*args)
    torch.cuda.synchronize()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        module.run_kernel(*args)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / repeat


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--parent", type=Path, required=True)
    p.add_argument("--candidate", type=Path, required=True)
    p.add_argument("--case", type=int, choices=(1, 2, 3), required=True)
    p.add_argument("--output", type=Path, required=True)
    p.add_argument("--rounds", type=int, default=3)
    p.add_argument("--warmup", type=int, default=3)
    p.add_argument("--repeat", type=int, default=100)
    args = p.parse_args()
    parent = load_module(args.parent, "v59_parent")
    candidate = load_module(args.candidate, "v59_candidate")
    base, counts, offsets = build_case(args.case)
    expected = reference(base, counts, offsets)
    # Compile/correctness once for both module-local caches.
    for tag, module in (("parent", parent), ("candidate", candidate)):
        print(f"checking {tag}: {module.__file__}", flush=True)
        base[-1].fill_(7.0)
        module.run_kernel(*base)
        torch.cuda.synchronize()
        valid = int(base[4].shape[0])
        torch.testing.assert_close(base[-1].float(), expected.float(), rtol=1e-2, atol=1e-2)
    orders = (("parent", "candidate"), ("candidate", "parent"))
    rows, changes = [], []
    modules = {"parent": parent, "candidate": candidate}
    for round_id in range(1, args.rounds + 1):
        order = orders[(round_id - 1) % len(orders)]
        values = {tag: elapsed(modules[tag], base, args.warmup, args.repeat) for tag in order}
        change = (values["candidate"] / values["parent"] - 1.0) * 100.0
        rows.append({"round": round_id, "order": order, **values, "change_percent": change})
        changes.append(change)
    result = {
        "case": args.case,
        "sources": {"parent": str(args.parent.resolve()), "candidate": str(args.candidate.resolve())},
        "protocol": {"rounds": args.rounds, "warmup": args.warmup, "repeat": args.repeat, "order": "AB/BA"},
        "correctness": "PASS on all valid rows, rtol=1e-2 atol=1e-2",
        "rows": rows,
        "change": {"samples": changes, "mean": statistics.fmean(changes), "median": statistics.median(changes), "pstdev": statistics.pstdev(changes)},
    }
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
