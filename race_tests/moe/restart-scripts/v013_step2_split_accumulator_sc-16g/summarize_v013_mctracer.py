#!/usr/bin/env python3
"""Summarize one v013 mcTracer file into Step1/Step2 timing JSON."""

from __future__ import annotations

import argparse
import json
from pathlib import Path


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("trace", type=Path)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--case", type=int, choices=(1, 2, 3), required=True)
    args = parser.parse_args()

    events = json.loads(args.trace.read_text(encoding="utf-8"))["traceEvents"]
    start = next(e["ts"] for e in events if e.get("name") == "mcProfilerStart" and e.get("ph") == "X")
    stop_event = next(e for e in events if e.get("name") == "mcProfilerStop" and e.get("ph") == "X")
    stop = stop_event["ts"] + stop_event["dur"]
    kernels = [
        e
        for e in events
        if e.get("ph") == "X"
        and e.get("name") in ("kernel_kernel", "kernel_kernel_1")
        and start <= e.get("ts", -1) <= stop
    ]
    step1 = next(e for e in kernels if e["name"] == "kernel_kernel")
    step2 = next(e for e in kernels if e["name"] == "kernel_kernel_1")
    step1_ms = step1["dur"] / 1e6
    step2_ms = step2["dur"] / 1e6
    launch_gap_ms = (step2["ts"] - step1["ts"] - step1["dur"]) / 1e6
    payload = {
        "iteration_id": "v013_step2_split_accumulator_sc-16g",
        "case": args.case,
        "trace": str(args.trace),
        "step1_ms": step1_ms,
        "step2_ms": step2_ms,
        "step1_share_kernel_pct": step1_ms / (step1_ms + step2_ms) * 100,
        "step2_share_kernel_pct": step2_ms / (step1_ms + step2_ms) * 100,
        "launch_gap_ms": launch_gap_ms,
        "device_span_ms": step1_ms + launch_gap_ms + step2_ms,
        "step1_grid": step1.get("args", {}).get("grid"),
        "step2_grid": step2.get("args", {}).get("grid"),
        "step1_memory": step1.get("args", {}).get("mem"),
        "step2_memory": step2.get("args", {}).get("mem"),
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload, indent=2))


if __name__ == "__main__":
    main()
