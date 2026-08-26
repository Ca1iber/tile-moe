#!/usr/bin/env python3
import glob
import json
import re


ROOT = "/root/moe_runs/v146_vs_v110_case1_mcprofiler_20260826"
PATHS = {
    "v110_step1": f"{ROOT}/v110_step1/*kernel_kernel_1.txt.json",
    "v146_step1": f"{ROOT}/v146_step1_retry/*kernel_kernel_1.txt.json",
}


def number(value):
    if isinstance(value, (int, float)):
        return float(value)
    match = re.match(r"\s*([0-9,.]+)", value)
    if not match:
        raise ValueError(value)
    return float(match.group(1).replace(",", ""))


def load(pattern):
    paths = glob.glob(pattern)
    if len(paths) != 1:
        raise RuntimeError(f"expected one report for {pattern}, got {paths}")
    report = json.load(open(paths[0], encoding="utf-8"))
    values = {}
    for section in report.values():
        for row in section:
            values[row["name"]] = row["value"]
    roof = values["RoofLine"]["data"]
    memory = values["Memory Data Flow Chart"]["data"]
    isu = values["ISU stall cycles layout"]["data"]
    vl1 = values["VL1 partition stall cycles layout"]["data"]
    return {
        "report": paths[0],
        "total_kcycles": number(values["Total Cycles"]),
        "workgroups": number(values["WORKGROUPS"]),
        "waves": number(values["WAVES"]),
        "average_wave_life_cycles": number(values["Average Wave life cycles"]),
        "global_read_bytes": number(values["Global Memory Read bytes"]),
        "global_write_bytes": number(values["Global Memory Write bytes"]),
        "dnoc_read_average_latency": number(values["Dnoc Read Average Latency"]),
        "ap_active_cycles": number(values["AP active cycles"]),
        "ap_mte_duty_pct": number(values["AP MTE Duty ratio"]),
        "ap_ste_duty_pct": number(values["AP STE Duty ratio"]),
        "ap_mma_duty_pct": number(values["AP MMA Duty ratio"]),
        "l2c_duty_pct": number(values["L2C Duty ratio"]),
        "roofline_case_flops": roof["case_flops"],
        "roofline_case_bandwidth": roof["case_bandwith"],
        "roofline_case_intensity": roof["case_I"],
        "vl1_hit_pct": memory["vl1c"],
        "l2c_hit_pct": memory["l2c"],
        "sl1_hit_pct": memory["sl1"],
        "isu_wsm_stall": isu["wsm_stall"],
        "isu_vls_pipeline_stall": isu["vls_pipeline_stall"],
        "isu_vls_wdata_stall": isu["vls_wdata_stall"],
        "vl1_partition_stall_sum": sum(vl1.values()),
        "vl1_partition_stall": vl1,
    }


reports = {key: load(pattern) for key, pattern in PATHS.items()}
parent = reports["v110_step1"]
candidate = reports["v146_step1"]
changes = {}
for key, value in parent.items():
    if key == "report" or isinstance(value, dict):
        continue
    changes[key] = 100.0 * (candidate[key] / value - 1.0)
print(
    json.dumps(
        {"reports": reports, "candidate_change_pct": {"step1": changes}},
        indent=2,
        sort_keys=True,
    )
)
