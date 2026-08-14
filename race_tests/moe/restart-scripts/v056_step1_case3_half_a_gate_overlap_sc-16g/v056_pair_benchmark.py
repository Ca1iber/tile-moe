#!/usr/bin/env python3
import argparse
import importlib.util
import json
import math
import statistics
from pathlib import Path

import torch


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}


def load_module(tag, path):
    spec = importlib.util.spec_from_file_location(tag, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def make_random(shape, scale, generator):
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


def build_inputs(case_id):
    cfg = CASES[case_id]
    experts = cfg["experts"]
    hidden = cfg["hidden"]
    intermediate = cfg["intermediate"]
    valid_tokens = cfg["valid_tokens"]
    counts = [100] * (experts // 2) + [184] * (experts // 2)
    offsets = [0]
    padded_offsets = [0]
    group_idx = []
    for expert_id, count in enumerate(counts):
        offsets.append(offsets[-1] + count)
        blocks = math.ceil((count + 1) / 128)
        padded_offsets.append(padded_offsets[-1] + blocks * 128)
        group_idx.extend([expert_id] * blocks)
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260717 + case_id)
    total_padded = padded_offsets[-1]
    base = (
        make_random((total_padded, hidden), 1.0, generator),
        make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator),
        make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator),
        make_random((experts, hidden, intermediate), 1.0 / math.sqrt(intermediate), generator),
        torch.rand((valid_tokens,), device="cuda", dtype=torch.float32, generator=generator),
        torch.tensor(counts, device="cuda", dtype=torch.int32),
        torch.tensor(offsets, device="cuda", dtype=torch.int32),
        torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
        torch.tensor(group_idx, device="cuda", dtype=torch.int32),
    )
    return cfg, total_padded, base


def elapsed_ms(run_kernel, args, repeat):
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        run_kernel(*args)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / repeat


def stats(values):
    return {
        "samples_ms": values,
        "mean_ms": statistics.fmean(values),
        "median_ms": statistics.median(values),
        "min_ms": min(values),
        "max_ms": max(values),
        "pstdev_ms": statistics.pstdev(values),
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent", required=True)
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--case", type=int, default=2)
    parser.add_argument("--pairs", type=int, default=7)
    parser.add_argument("--warmup", type=int, default=20)
    parser.add_argument("--repeat", type=int, default=100)
    args = parser.parse_args()

    parent = load_module("parent_parent_submission", Path(args.parent).resolve())
    candidate = load_module("candidate_candidate_submission", Path(args.candidate).resolve())
    cfg, total_padded, base = build_inputs(args.case)
    outputs = {
        "parent": torch.empty((total_padded, cfg["hidden"]), device="cuda", dtype=torch.float16),
        "candidate": torch.empty((total_padded, cfg["hidden"]), device="cuda", dtype=torch.float16),
    }
    modules = {"parent": parent, "candidate": candidate}
    call_args = {tag: (*base, outputs[tag]) for tag in modules}

    for tag in ("parent", "candidate"):
        modules[tag].run_kernel(*call_args[tag])
        torch.cuda.synchronize()
    torch.testing.assert_close(outputs["candidate"].float(), outputs["parent"].float(), rtol=1e-2, atol=1e-2)

    for tag in ("parent", "candidate"):
        for _ in range(args.warmup):
            modules[tag].run_kernel(*call_args[tag])
        torch.cuda.synchronize()

    rows = []
    for pair in range(args.pairs):
        order = ("parent", "candidate") if pair % 2 == 0 else ("candidate", "parent")
        values = {}
        for tag in order:
            values[tag] = elapsed_ms(modules[tag].run_kernel, call_args[tag], args.repeat)
        row = {
            "pair": pair + 1,
            "order": list(order),
            "parent_ms": values["parent"],
            "candidate_ms": values["candidate"],
            "change_percent": (values["candidate"] / values["parent"] - 1.0) * 100.0,
        }
        rows.append(row)
        print(json.dumps(row, ensure_ascii=False), flush=True)

    summary = {
        "protocol": {
            "case": args.case,
            "shape": cfg,
            "total_padded": total_padded,
            "pairs": args.pairs,
            "warmup": args.warmup,
            "repeat": args.repeat,
            "orders": "AB/BA alternating",
            "timing": "torch.cuda.Event average per run",
        },
        "sources": {"parent": str(Path(args.parent).resolve()), "candidate": str(Path(args.candidate).resolve())},
        "rows": rows,
        "parent": stats([row["parent_ms"] for row in rows]),
        "candidate": stats([row["candidate_ms"] for row in rows]),
        "paired_change_percent": stats([row["change_percent"] for row in rows]),
    }
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
