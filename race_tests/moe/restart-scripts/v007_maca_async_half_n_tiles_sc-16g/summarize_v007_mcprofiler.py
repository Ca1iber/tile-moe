#!/usr/bin/env python3
"""Compare v007 Case3 mcProfiler counters with the v004 baseline."""

from __future__ import annotations

import json
import re
from pathlib import Path


MOE = Path("/root/tilelang-metax/race_tests/moe")
IID = "v007_maca_async_half_n_tiles_sc-16g"
V005 = MOE / "restart-rep/v005_numstage2_materialization_sc-16g"
REP = MOE / "restart-rep" / IID


def load_metrics(path: Path) -> dict[str, object]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    return {item["name"]: item["value"] for group in payload.values() for item in group}


def number(value: object) -> float:
    if isinstance(value, (int, float)):
        return float(value)
    match = re.search(r"[-+]?[0-9][0-9,]*(?:\.[0-9]+)?", str(value))
    if match is None:
        raise ValueError(f"numeric value not found: {value!r}")
    return float(match.group(0).replace(",", ""))


def delta(old: float, new: float) -> float | None:
    return (new - old) / old * 100.0 if old else None


def compare_step(step: int) -> dict[str, object]:
    kernel = "kernel_kernel" if step == 1 else "kernel_kernel_1"
    baseline = load_metrics(
        V005
        / f"profiler/mcprofiler/raw/baseline_v004_case3_step{step}/mcprofiler_output/1_{kernel}.txt.json"
    )
    candidate = load_metrics(
        REP / f"profiler/mcprofiler/raw/case3_step{step}/mcprofiler_output/1_{kernel}.txt.json"
    )
    scalar_names = (
        "Total Cycles",
        "Average Wave life cycles",
        "average latency of all stages per instruction",
        "Achieved waves",
        "Dispatched waves",
        "AP active cycles",
        "AP MTE Duty ratio",
        "AP MMA Duty ratio",
        "VLS Duty ratio",
        "L2C Duty ratio",
        "Global Memory Read bytes",
        "Global Memory Write bytes",
        "Private Read Instructions",
        "Private Write Instructions",
    )
    result: dict[str, object] = {}
    for name in scalar_names:
        old = number(baseline[name])
        new = number(candidate[name])
        result[name] = {"v004": old, "v007": new, "delta_pct": delta(old, new)}
    for name in ("ISU stall cycles layout", "VL1 partition stall cycles layout"):
        old_data = baseline[name]["data"]
        new_data = candidate[name]["data"]
        result[name] = {
            key: {
                "v004": number(old_data[key]),
                "v007": number(new_data[key]),
                "delta_pct": delta(number(old_data[key]), number(new_data[key])),
            }
            for key in sorted(old_data)
        }
    return result


def main() -> None:
    result = {
        "iteration_id": IID,
        "baseline": "v004_step2_router_weight_register_reuse_sc-16g",
        "case": 3,
        "step1": compare_step(1),
        "step2": compare_step(2),
    }
    out = REP / "profiler/mcprofiler" / f"{IID}_case3_summary.json"
    out.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
