#!/usr/bin/env python3
"""Summarize the profiled Step1/Step2 pair from the v007 mcTracer trace."""

from __future__ import annotations

import glob
import json
from pathlib import Path


IID = "v007_maca_async_half_n_tiles_sc-16g"
ROOT = Path("/root/tilelang-metax/race_tests/moe/restart-rep") / IID / "profiler/mctracer"


def summarize(case_id: int) -> dict:
    matches = glob.glob(str(ROOT / f"case{case_id}" / "*.json"))
    if len(matches) != 1:
        raise RuntimeError(f"case {case_id}: expected one trace, got {matches}")
    events = json.loads(Path(matches[0]).read_text(encoding="utf-8"))["traceEvents"]
    start = next(event["ts"] for event in events if event.get("name") == "mcProfilerStart" and event.get("ph") == "X")
    stop_event = next(event for event in events if event.get("name") == "mcProfilerStop" and event.get("ph") == "X")
    stop = stop_event["ts"] + stop_event["dur"]
    kernels = [
        event
        for event in events
        if event.get("ph") == "X"
        and event.get("name") in ("kernel_kernel", "kernel_kernel_1")
        and start <= event.get("ts", -1) <= stop
    ]
    step1 = next(event for event in kernels if event["name"] == "kernel_kernel")
    step2 = next(event for event in kernels if event["name"] == "kernel_kernel_1")
    s1 = step1["dur"] / 1e6
    s2 = step2["dur"] / 1e6
    return {
        "case": case_id,
        "step1_ms": s1,
        "step2_ms": s2,
        "step1_share_pct": s1 / (s1 + s2) * 100,
        "launch_gap_ms": (step2["ts"] - step1["ts"] - step1["dur"]) / 1e6,
        "device_span_ms": (step2["ts"] + step2["dur"] - step1["ts"]) / 1e6,
        "step1_grid": step1.get("args", {}).get("grid"),
        "step2_grid": step2.get("args", {}).get("grid"),
        "step1_memory": step1.get("args", {}).get("mem"),
        "step2_memory": step2.get("args", {}).get("mem"),
    }


def main() -> None:
    results = [summarize(3)]
    payload = {"iteration_id": IID, "results": results}
    (ROOT / f"{IID}_stage_summary.json").write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload, indent=2))


if __name__ == "__main__":
    main()
