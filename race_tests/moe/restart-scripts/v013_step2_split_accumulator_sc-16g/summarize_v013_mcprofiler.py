#!/usr/bin/env python3
"""Summarize paired v004/v013 Case3 Step2 mcProfiler evidence."""

from __future__ import annotations

import csv
import json
import re
import shutil
from pathlib import Path


IID = "v013_step2_split_accumulator_sc-16g"
REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests/moe"
RAW = MOE / f"restart-rep/{IID}/profiler/mcprofiler/raw"
OUT = MOE / f"restart-rep/{IID}/profiler/mcprofiler"
ROOF = MOE / f"moe-roofline/{IID}"
SCOPE = "retry2_20260812"
COMPUTE_ROOF_TFLOPS = 1916.928
BANDWIDTH_ROOFS = {"physical_theoretical": 1843.2, "sc16_measured_conservative": 1400.0}


def numeric(value: object) -> float:
    if isinstance(value, (int, float)):
        return float(value)
    match = re.search(r"[-+]?\d[\d,]*(?:\.\d+)?", str(value))
    if not match:
        raise ValueError(f"cannot parse numeric value: {value!r}")
    return float(match.group(0).replace(",", ""))


def metric_map(payload: dict) -> dict[str, object]:
    result: dict[str, object] = {}
    for values in payload.values():
        if not isinstance(values, list):
            continue
        for item in values:
            if isinstance(item, dict) and "name" in item:
                result[str(item["name"])] = item.get("value")
    return result


def targeted(tag: str) -> dict:
    base = RAW / f"{SCOPE}_{tag}_case3_step2_targeted"
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


def roofline(tag: str) -> dict:
    base = RAW / f"{SCOPE}_{tag}_case3_step2_roofline"
    payload = json.loads((base / "mcprofiler_output/1_kernel_kernel_1.txt.json").read_text(encoding="utf-8"))
    value = payload["Summary"][0]["value"]
    processed = value["processed_data"]
    data = value["data"]
    ai = float(data["case_I"])
    tflops = float(data["case_flops"])
    classifications = {}
    for name, bandwidth in BANDWIDTH_ROOFS.items():
        ridge = COMPUTE_ROOF_TFLOPS * 1000.0 / bandwidth
        attainable = min(COMPUTE_ROOF_TFLOPS, ai * bandwidth / 1000.0)
        classifications[name] = {
            "bandwidth_gbps": bandwidth,
            "ridge_flop_per_byte": ridge,
            "region": "memory" if ai < ridge else "compute",
            "attainable_tflops": attainable,
            "roof_efficiency_pct": tflops / attainable * 100.0,
        }
    image_name = Path(value["filename"]).name
    source_image = base / "mcprofiler_output" / image_name
    native_dir = ROOF / "native"
    native_dir.mkdir(parents=True, exist_ok=True)
    destination = native_dir / f"{IID}_{tag}_case3_step2_mcprofiler_native.png"
    shutil.copy2(source_image, destination)
    return {
        "source_sha256": (base / "kernel_source.sha256").read_text(encoding="utf-8").split()[0],
        "processed_data": processed,
        "data": data,
        "classifications": classifications,
        "native_image": str(destination.relative_to(MOE)),
    }


def pct(old: float, new: float) -> float:
    return (new - old) / old * 100.0


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    ROOF.mkdir(parents=True, exist_ok=True)
    targeted_data = {tag: targeted(tag) for tag in ("v004", "v013")}
    roofline_data = {tag: roofline(tag) for tag in ("v004", "v013")}
    v004_t, v013_t = targeted_data["v004"], targeted_data["v013"]
    v004_r, v013_r = roofline_data["v004"], roofline_data["v013"]
    comparison = {
        "iteration_id": IID,
        "scope": "sc-16g Case3 Step2; same campaign, source-bound snapshots, per-kernel counts=1",
        "toolchain": {"maca": "3.7.1", "mcprofiler": "3.8.1.4", "xcore_clock_ghz": 1.125},
        "targeted": targeted_data,
        "targeted_delta_pct_v013_vs_v004": {
            "total_cycles": pct(v004_t["total_cycles_kcycles"], v013_t["total_cycles_kcycles"]),
            "average_wave_life": pct(v004_t["average_wave_life_cycles"], v013_t["average_wave_life_cycles"]),
            "global_read_bytes": pct(v004_t["global_read_bytes"], v013_t["global_read_bytes"]),
            "global_write_bytes": pct(v004_t["global_write_bytes"], v013_t["global_write_bytes"]),
            "vl1_partition_stall_sum": pct(v004_t["vl1_partition_stall_cycles_sum"], v013_t["vl1_partition_stall_cycles_sum"]),
        },
        "roofline": roofline_data,
        "roofline_delta_pct_v013_vs_v004": {
            "all_ops": pct(v004_r["processed_data"]["all_ops"], v013_r["processed_data"]["all_ops"]),
            "all_memacs_raw_proxy": pct(v004_r["processed_data"]["all_memacs"], v013_r["processed_data"]["all_memacs"]),
            "during": pct(v004_r["processed_data"]["during"], v013_r["processed_data"]["during"]),
            "native_tflops": pct(v004_r["data"]["case_flops"], v013_r["data"]["case_flops"]),
            "native_ai": pct(v004_r["data"]["case_I"], v013_r["data"]["case_I"]),
            "native_bandwidth": pct(v004_r["data"]["case_bandwith"], v013_r["data"]["case_bandwith"]),
            "vl1_memacs_raw_proxy": pct(v004_r["processed_data"]["vl1_memacs"], v013_r["processed_data"]["vl1_memacs"]),
            "l2c_memacs_raw_proxy": pct(v004_r["processed_data"]["l2c_memacs"], v013_r["processed_data"]["l2c_memacs"]),
        },
        "counter_validity": {
            "valid_for_same_campaign_comparison": [
                "Total Cycles",
                "Average Wave life cycles",
                "Private Read/Write Instructions",
                "Global Memory Read/Write bytes",
                "VL1 partition stall cycles layout",
                "per-kernel RoofLine processed/data fields",
            ],
            "invalid_or_not_cross_comparable": [
                "v013 Dispatched waves is zero while work executed",
                "AP active cycles denominators differ by 84.9%, so MTE/MMA duty deltas are not used causally",
                "all_memacs, vl1_memacs, and l2c_memacs are raw proxies rather than documented bytes",
            ],
        },
    }
    comparison_path = OUT / f"{IID}_case3_step2_mcprofiler_comparison.json"
    comparison_path.write_text(json.dumps(comparison, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    points_path = ROOF / f"{IID}_case3_step2_mcprofiler_points.csv"
    with points_path.open("w", newline="", encoding="utf-8") as stream:
        writer = csv.DictWriter(stream, fieldnames=("label", "ai_flop_per_byte", "tflops", "native_bandwidth_gbps"))
        writer.writeheader()
        for tag in ("v004", "v013"):
            data = roofline_data[tag]["data"]
            writer.writerow(
                {
                    "label": f"{tag}-C3-S2",
                    "ai_flop_per_byte": data["case_I"],
                    "tflops": data["case_flops"],
                    "native_bandwidth_gbps": data["case_bandwith"],
                }
            )
    print(comparison_path)
    print(points_path)
    print(json.dumps(comparison["targeted_delta_pct_v013_vs_v004"], indent=2))
    print(json.dumps(comparison["roofline_delta_pct_v013_vs_v004"], indent=2))


if __name__ == "__main__":
    main()
