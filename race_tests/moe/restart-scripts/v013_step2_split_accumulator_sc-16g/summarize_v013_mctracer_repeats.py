#!/usr/bin/env python3
"""Merge the original Case1 trace with repeated recovered Case3 traces."""

from __future__ import annotations

import json
import statistics
from pathlib import Path


IID = "v013_step2_split_accumulator_sc-16g"
ROOT = Path("/root/tilelang-metax/race_tests/moe/restart-rep") / IID / "profiler/mctracer"
OUTPUT = ROOT / f"{IID}_stage_summary.json"


def main() -> None:
    original = json.loads(OUTPUT.read_text(encoding="utf-8"))
    case1 = next(item for item in original["results"] if item["case"] == 1)
    paths = sorted(ROOT.glob("case3_retry*_20260812/summary.json"))
    if len(paths) != 3:
        raise RuntimeError(f"expected three recovered Case3 summaries, found {paths}")
    repeats = [json.loads(path.read_text(encoding="utf-8")) for path in paths]

    def values(name: str) -> list[float]:
        return [float(item[name]) for item in repeats]

    first = repeats[0]
    step1 = values("step1_ms")
    step2 = values("step2_ms")
    gaps = values("launch_gap_ms")
    spans = values("device_span_ms")
    case3 = {
        "case": 3,
        "step1_ms": statistics.median(step1),
        "step2_ms": statistics.median(step2),
        "step1_share_pct": statistics.median(step1) / (statistics.median(step1) + statistics.median(step2)) * 100.0,
        "step2_share_pct": statistics.median(step2) / (statistics.median(step1) + statistics.median(step2)) * 100.0,
        "launch_gap_ms": statistics.median(gaps),
        "device_span_ms": statistics.median(spans),
        "step1_grid": first["step1_grid"],
        "step2_grid": first["step2_grid"],
        "step1_memory": first["step1_memory"],
        "step2_memory": first["step2_memory"],
        "repeat_count": len(repeats),
        "step1_mean_ms": statistics.fmean(step1),
        "step1_min_ms": min(step1),
        "step1_max_ms": max(step1),
        "step2_mean_ms": statistics.fmean(step2),
        "step2_min_ms": min(step2),
        "step2_max_ms": max(step2),
    }
    payload = {
        "iteration_id": IID,
        "results": [case1, case3],
        "case3_repeats": repeats,
        "historical_failure": {
            "date": "2026-08-11",
            "reason": "The pre-recovery Case3 trace blocked in host synchronize_srcu state; retained under failed_case3/.",
        },
    }
    OUTPUT.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(case3, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
