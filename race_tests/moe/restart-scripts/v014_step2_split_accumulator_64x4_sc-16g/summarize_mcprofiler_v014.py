#!/usr/bin/env python3
"""Summarize paired v013/v014 targeted Case3 Step2 mcProfiler counters."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


def numeric(value: object) -> float:
    if isinstance(value, (int, float)):
        return float(value)
    match = re.search(r"[-+]?\d[\d,]*(?:\.\d+)?", str(value))
    if not match:
        raise ValueError(f"cannot parse numeric value: {value!r}")
    return float(match.group(0).replace(",", ""))


def metric_map(payload: dict) -> dict[str, object]:
    result = {}
    for values in payload.values():
        if isinstance(values, list):
            for item in values:
                if isinstance(item, dict) and "name" in item:
                    result[str(item["name"])] = item.get("value")
    return result


def read_profile(base: Path) -> dict:
    payload = json.loads((base / "mcprofiler_output/report.txt.json").read_text(encoding="utf-8"))
    metrics = metric_map(payload)
    isu = metrics["ISU stall cycles layout"]["data"]
    vl1 = metrics["VL1 partition stall cycles layout"]["data"]
    return {
        "source_sha256": (base / "kernel_source.sha256").read_text(encoding="utf-8").split()[0],
        "total_cycles_kcycles": numeric(metrics["Total Cycles"]),
        "average_wave_life_cycles": numeric(metrics["Average Wave life cycles"]),
        "private_read_instructions": numeric(metrics["Private Read Instructions"]),
        "private_write_instructions": numeric(metrics["Private Write Instructions"]),
        "global_read_bytes": numeric(metrics["Global Memory Read bytes"]),
        "global_write_bytes": numeric(metrics["Global Memory Write bytes"]),
        "isu_stall_cycles": {name: numeric(value) for name, value in isu.items()},
        "isu_stall_cycles_sum": sum(numeric(value) for value in isu.values()),
        "vl1_partition_stall_cycles": {name: numeric(value) for name, value in vl1.items()},
        "vl1_partition_stall_cycles_sum": sum(numeric(value) for value in vl1.values()),
        "shared_average_latency_cycles": numeric(metrics["average latency of all stages per instruction"]),
        "shared_non_conflict_efficiency_pct": numeric(metrics["shared memory access efficiency"]),
        "achieved_waves": numeric(metrics["Achieved waves"]),
        "dispatched_waves": numeric(metrics["Dispatched waves"]),
        "ap_active_cycles": numeric(metrics["AP active cycles"]),
        "ap_mte_duty_pct": numeric(metrics["AP MTE Duty ratio"]),
        "ap_mma_duty_pct": numeric(metrics["AP MMA Duty ratio"]),
        "vls_duty_pct": numeric(metrics["VLS Duty ratio"]),
        "l2c_duty_pct": numeric(metrics["L2C Duty ratio"]),
    }


def pct(old: float, new: float) -> float | None:
    return None if old == 0 else (new / old - 1.0) * 100.0


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent-dir", type=Path, required=True)
    parser.add_argument("--candidate-dir", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    parent = read_profile(args.parent_dir.resolve())
    candidate = read_profile(args.candidate_dir.resolve())
    comparable = (
        "total_cycles_kcycles",
        "average_wave_life_cycles",
        "private_read_instructions",
        "private_write_instructions",
        "global_read_bytes",
        "global_write_bytes",
        "isu_stall_cycles_sum",
        "vl1_partition_stall_cycles_sum",
        "shared_average_latency_cycles",
        "shared_non_conflict_efficiency_pct",
    )
    summary = {
        "scope": "sc-16g Case3 Step2, same campaign, explicit source snapshots, per-kernel counts=1",
        "v013_parent": parent,
        "v014_candidate": candidate,
        "candidate_delta_percent": {name: pct(parent[name], candidate[name]) for name in comparable},
        "counter_validity": {
            "same_campaign_relative_counters": list(comparable),
            "latency_causal": [
                "average_wave_life_cycles",
                "private_read_instructions",
                "private_write_instructions",
                "global_read_bytes",
                "global_write_bytes",
                "isu_stall_cycles_sum",
                "vl1_partition_stall_cycles_sum",
                "shared_average_latency_cycles",
                "shared_non_conflict_efficiency_pct",
            ],
            "diagnostic_not_single_kernel_latency": [
                "Total Cycles is reported in Kcycles over mcProfiler multi-pass replay; its 7-8e9-cycle magnitude is not one 3.5 ms Step2 invocation",
                "A Total Cycles reduction must not override clean device-event timing or mcTracer stage duration",
            ],
            "diagnostic_only": [
                "Achieved/Dispatched waves can be internally inconsistent",
                "AP duty ratios are not compared if AP active-cycle denominators materially differ",
            ],
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
