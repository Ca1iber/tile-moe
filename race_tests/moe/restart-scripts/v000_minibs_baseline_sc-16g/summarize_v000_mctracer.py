#!/usr/bin/env python3
"""Summarize the single profiled Step1/Step2 pair from each mcTracer trace."""

from __future__ import annotations

import glob
import json
from pathlib import Path


IID = "v000_minibs_baseline_sc-16g"
ROOT = Path("/root/tilelang-metax/race_tests/moe/restart-rep") / IID / "profiler/mctracer"


def summarize_case(case_id: int) -> dict:
    matches = glob.glob(str(ROOT / f"case{case_id}" / "*.json"))
    if len(matches) != 1:
        raise RuntimeError(f"case {case_id}: expected one trace JSON, found {matches}")
    trace_path = Path(matches[0])
    events = json.loads(trace_path.read_text(encoding="utf-8"))["traceEvents"]
    starts = [event for event in events if event.get("name") == "mcProfilerStart" and event.get("ph") == "X"]
    stops = [event for event in events if event.get("name") == "mcProfilerStop" and event.get("ph") == "X"]
    if len(starts) != 1 or len(stops) != 1:
        raise RuntimeError(f"case {case_id}: profiler range markers are not unique")
    start_ts = starts[0]["ts"]
    stop_ts = stops[0]["ts"] + stops[0]["dur"]
    device = [
        event
        for event in events
        if event.get("ph") == "X"
        and event.get("name") in ("kernel_kernel", "kernel_kernel_1")
        and start_ts <= event.get("ts", -1) <= stop_ts
    ]
    step1 = [event for event in device if event["name"] == "kernel_kernel"]
    step2 = [event for event in device if event["name"] == "kernel_kernel_1"]
    if len(step1) != 1 or len(step2) != 1:
        raise RuntimeError(f"case {case_id}: expected one Step1/Step2 event in range, found {len(step1)}/{len(step2)}")
    step1, step2 = step1[0], step2[0]
    step1_ms = step1["dur"] / 1e6
    step2_ms = step2["dur"] / 1e6
    gap_ms = (step2["ts"] - (step1["ts"] + step1["dur"])) / 1e6
    span_ms = (max(step1["ts"] + step1["dur"], step2["ts"] + step2["dur"]) - min(step1["ts"], step2["ts"])) / 1e6

    def kernel_metadata(event: dict) -> dict:
        args = event.get("args", {})
        return {
            "grid": args.get("grid"),
            "block": args.get("block"),
            "memory": args.get("mem"),
            "mtreg_occupancy_pct": args.get("mtreg_occupancy(%)"),
            "shared_memory_occupancy_pct": args.get("shared_memeory_occupancy(%)"),
        }

    return {
        "case": case_id,
        "trace": str(trace_path),
        "step1_ms": step1_ms,
        "step2_ms": step2_ms,
        "step1_share_of_kernel_sum_pct": step1_ms / (step1_ms + step2_ms) * 100.0,
        "step2_share_of_kernel_sum_pct": step2_ms / (step1_ms + step2_ms) * 100.0,
        "launch_gap_ms": gap_ms,
        "device_span_ms": span_ms,
        "step1": kernel_metadata(step1),
        "step2": kernel_metadata(step2),
    }


def main() -> None:
    results = [summarize_case(case_id) for case_id in (1, 2, 3)]
    payload = {"iteration_id": IID, "time_unit": "ms", "results": results}
    json_path = ROOT / f"{IID}_stage_summary.json"
    md_path = ROOT / f"{IID}_stage_summary.md"
    json_path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    lines = [
        f"# {IID} mcTracer stage summary",
        "",
        "Only the Step1/Step2 pair inside mcProfilerStart/Stop is included; warmups are excluded.",
        "",
        "| case | Step1 ms | Step2 ms | Step1 share | Step2 share | launch gap ms | device span ms |",
        "|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for result in results:
        lines.append(
            f"| {result['case']} | {result['step1_ms']:.6f} | {result['step2_ms']:.6f} | "
            f"{result['step1_share_of_kernel_sum_pct']:.2f}% | {result['step2_share_of_kernel_sum_pct']:.2f}% | "
            f"{result['launch_gap_ms']:.6f} | {result['device_span_ms']:.6f} |"
        )
    md_path.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(json.dumps(payload, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
