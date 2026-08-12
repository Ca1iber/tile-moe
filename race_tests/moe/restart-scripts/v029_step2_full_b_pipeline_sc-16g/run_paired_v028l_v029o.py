#!/usr/bin/env python3
"""Interleaved same-process Case2 benchmark for v028l and v029o."""

from __future__ import annotations

import argparse
import importlib.util
import json
import statistics
import sys
from datetime import datetime, timezone
from pathlib import Path

import torch


TAGS = ("v028l", "v029o")
ORDERS = (
    TAGS,
    tuple(reversed(TAGS)),
)


def load_source(tag: str, source: Path):
    spec = importlib.util.spec_from_file_location(f"custom_fusedmoe_{tag}", source)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot import {source}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def elapsed_ms(kernel, kernel_args, warmup: int, repeat: int) -> float:
    for _ in range(warmup):
        kernel(*kernel_args)
    torch.cuda.synchronize()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        kernel(*kernel_args)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / repeat


def stats(values: list[float]) -> dict:
    return {
        "samples": values,
        "mean": statistics.fmean(values),
        "median": statistics.median(values),
        "min": min(values),
        "max": max(values),
        "pstdev": statistics.pstdev(values),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo", type=Path, default=Path("/root/tilelang-metax"))
    parser.add_argument("--v028l-source", type=Path, required=True)
    parser.add_argument("--v029o-source", type=Path, required=True)
    parser.add_argument("--rounds", type=int, default=12)
    parser.add_argument("--warmup", type=int, default=3)
    parser.add_argument("--repeat", type=int, default=100)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    repo = args.repo.resolve()
    moe_dir = repo / "race_tests/moe"
    sys.path.insert(0, str(moe_dir))
    sources = {
        "v028l": args.v028l_source.resolve(),
        "v029o": args.v029o_source.resolve(),
    }
    modules = {tag: load_source(tag, source) for tag, source in sources.items()}

    sys.modules["custom_fusedmoe"] = modules["v028l"]
    import oj_benchmark as oj

    metadata, v028l_kernel, kernel_args = oj.build_case(2)
    kernels = {
        "v028l": v028l_kernel,
        "v029o": modules["v029o"].RoutedMoEKernel(
            7168, 2048, 32, group_sum=4544, group_count=12
        ),
    }

    reference = oj.reference_output(kernel_args)
    correctness = {}
    for tag in TAGS:
        kernels[tag](*kernel_args)
        torch.cuda.synchronize()
        candidate = kernel_args[-1]
        torch.testing.assert_close(candidate.float(), reference.float(), rtol=1e-2, atol=1e-2)
        correctness[tag] = {
            "status": "PASS",
            "max_abs": float((candidate.float() - reference.float()).abs().max().item()),
        }
    del reference

    rows = []
    for round_index in range(args.rounds):
        order = ORDERS[round_index % len(ORDERS)]
        for order_index, tag in enumerate(order):
            value = elapsed_ms(kernels[tag], kernel_args, args.warmup, args.repeat)
            row = {
                "round": round_index + 1,
                "order_in_round": order_index + 1,
                "tag": tag,
                "average_ms": value,
            }
            rows.append(row)
            print(json.dumps(row), flush=True)

    aggregate = {
        tag: stats([row["average_ms"] for row in rows if row["tag"] == tag]) for tag in TAGS
    }
    paired = {}
    changes = []
    for round_index in range(1, args.rounds + 1):
        parent = next(
            row["average_ms"]
            for row in rows
            if row["round"] == round_index and row["tag"] == "v028l"
        )
        candidate = next(
            row["average_ms"]
            for row in rows
            if row["round"] == round_index and row["tag"] == "v029o"
        )
        changes.append((candidate / parent - 1.0) * 100.0)
    paired["v029o_vs_v028l"] = {
        "change_percent": stats(changes),
        "improved_rounds": sum(value < 0.0 for value in changes),
    }

    summary = {
        "created_at_utc": datetime.now(timezone.utc).isoformat(),
        "protocol": {
            "case": 2,
            "rounds": args.rounds,
            "orders": [list(order) for order in ORDERS],
            "warmup_per_measurement": args.warmup,
            "repeat_per_measurement": args.repeat,
        },
        "metadata": metadata,
        "sources": {tag: str(source) for tag, source in sources.items()},
        "correctness": correctness,
        "rows": rows,
        "aggregate": aggregate,
        "paired": paired,
    }
    args.output.resolve().parent.mkdir(parents=True, exist_ok=True)
    args.output.resolve().write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
