#!/usr/bin/env python3
"""Summarize the rejected v003 case3 screen trace."""

import glob
import json
from pathlib import Path


IID = "v003_step1_register_pressure_tile64_sc-16g"
ROOT = Path("/root/tilelang-metax/race_tests/moe/restart-rep") / IID / "profiler/mctracer"


def main() -> None:
    path = glob.glob(str(ROOT / "case3/*.json"))
    if len(path) != 1:
        raise RuntimeError(f"expected one trace, got {path}")
    events = json.loads(Path(path[0]).read_text(encoding="utf-8"))["traceEvents"]
    start = next(event["ts"] for event in events if event.get("name") == "mcProfilerStart" and event.get("ph") == "X")
    stop_event = next(event for event in events if event.get("name") == "mcProfilerStop" and event.get("ph") == "X")
    stop = stop_event["ts"] + stop_event["dur"]
    kernels = [event for event in events if event.get("ph") == "X" and event.get("name") in ("kernel_kernel", "kernel_kernel_1") and start <= event.get("ts", -1) <= stop]
    step1 = next(event for event in kernels if event["name"] == "kernel_kernel")
    step2 = next(event for event in kernels if event["name"] == "kernel_kernel_1")
    result = {
        "case": 3,
        "step1_ms": step1["dur"] / 1e6,
        "step2_ms": step2["dur"] / 1e6,
        "launch_gap_ms": (step2["ts"] - step1["ts"] - step1["dur"]) / 1e6,
        "device_span_ms": (step2["ts"] + step2["dur"] - step1["ts"]) / 1e6,
        "step1_grid": step1.get("args", {}).get("grid"),
        "step2_grid": step2.get("args", {}).get("grid"),
        "step1_memory": step1.get("args", {}).get("mem"),
        "step2_memory": step2.get("args", {}).get("mem"),
    }
    payload = {"iteration_id": IID, "run_type": "screen-rejected", "results": [result]}
    output = ROOT / f"{IID}_stage_summary.json"
    output.write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload, indent=2))


if __name__ == "__main__":
    main()
