#!/usr/bin/env python3
"""Build a paired v004/v005 benchmark, trace, mcProfiler and ISA comparison."""

from __future__ import annotations

import json
import re
from pathlib import Path


MOE = Path("/root/tilelang-metax/race_tests/moe")
BASE = "v004_step2_router_weight_register_reuse_sc-16g"
IID = "v005_numstage2_materialization_sc-16g"
REP = MOE / "restart-rep" / IID


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def number(value) -> float:
    if isinstance(value, (int, float)):
        return float(value)
    match = re.search(r"[-+]?[0-9][0-9,]*(?:\.[0-9]+)?", str(value))
    if not match:
        raise ValueError(f"numeric value not found: {value!r}")
    return float(match.group(0).replace(",", ""))


def metrics(path: Path) -> dict[str, object]:
    payload = load(path)
    return {item["name"]: item["value"] for group in payload.values() for item in group}


def pct(old: float, new: float) -> float:
    return (new - old) / old * 100.0


def profile_comparison(step: int) -> dict:
    kernel = "kernel_kernel" if step == 1 else "kernel_kernel_1"
    base_path = (
        REP
        / f"profiler/mcprofiler/raw/baseline_v004_case3_step{step}/mcprofiler_output/1_{kernel}.txt.json"
    )
    cand_path = REP / f"profiler/mcprofiler/raw/case3_step{step}/mcprofiler_output/1_{kernel}.txt.json"
    base = metrics(base_path)
    cand = metrics(cand_path)
    scalar_names = (
        "Total Cycles",
        "Average Wave life cycles",
        "Private Read Instructions",
        "Private Write Instructions",
        "Global Memory Read bytes",
        "Global Memory Write bytes",
        "average latency of all stages per instruction",
        "Achieved waves",
        "Dispatched waves",
        "AP active cycles",
        "AP MTE Duty ratio",
        "AP MMA Duty ratio",
        "VLS Duty ratio",
        "L2C Duty ratio",
    )
    values = {}
    for name in scalar_names:
        old = number(base[name])
        new = number(cand[name])
        values[name] = {"v004": old, "v005": new, "delta_pct": pct(old, new) if old else None}
    for name in ("ISU stall cycles layout", "VL1 partition stall cycles layout"):
        old_data = base[name]["data"]
        new_data = cand[name]["data"]
        values[name] = {
            key: {
                "v004": number(old_data[key]),
                "v005": number(new_data[key]),
                "delta_pct": pct(number(old_data[key]), number(new_data[key])) if number(old_data[key]) else None,
            }
            for key in sorted(old_data)
        }
    return values


def benchmark_comparison() -> dict:
    base = load(MOE / "restart-rep" / BASE / "benchmark" / f"{BASE}_benchmark_summary.json")
    cand = load(REP / "benchmark" / f"{IID}_benchmark_summary.json")
    result = {}
    for suite in ("official", "oj"):
        result[suite] = {}
        for key, entry in cand[suite].items():
            old = base[suite][key]["statistics"]["median_ms"]
            new = entry["statistics"]["median_ms"]
            result[suite][key] = {"v004_median_ms": old, "v005_median_ms": new, "delta_pct": pct(old, new)}
    return result


def trace_comparison() -> dict:
    base = load(MOE / "restart-rep" / BASE / "profiler/mctracer" / f"{BASE}_stage_summary.json")
    cand = load(REP / "profiler/mctracer" / f"{IID}_stage_summary.json")
    result = {}
    for old, new in zip(base["results"], cand["results"], strict=True):
        case = f"case{new['case']}"
        result[case] = {
            "step1": {"v004_ms": old["step1_ms"], "v005_ms": new["step1_ms"], "delta_pct": pct(old["step1_ms"], new["step1_ms"])},
            "step2": {"v004_ms": old["step2_ms"], "v005_ms": new["step2_ms"], "delta_pct": pct(old["step2_ms"], new["step2_ms"])},
            "device_span": {"v004_ms": old["device_span_ms"], "v005_ms": new["device_span_ms"], "delta_pct": pct(old["device_span_ms"], new["device_span_ms"])},
            "step1_memory": {"v004": old["step1_memory"], "v005": new["step1_memory"]},
            "step2_memory": {"v004": old["step2_memory"], "v005": new["step2_memory"]},
        }
    return result


def isa_comparison() -> dict:
    base = load(REP / "codegen/baseline_v004_case3/v004_case3_isa_summary.json")
    cand = load(
        REP
        / "codegen/final_isa_case3/v005_numstage2_materialization_sc-16g_case3_isa_summary.json"
    )
    result = {}
    for old, new in zip(base["functions"], cand["functions"], strict=True):
        result[new["name"]] = {"v004": old, "v005": new}
    return result


def main() -> None:
    result = {
        "iteration_id": IID,
        "baseline": BASE,
        "verdict": "rejected",
        "benchmark": benchmark_comparison(),
        "mctracer": trace_comparison(),
        "mcprofiler_case3": {"step1": profile_comparison(1), "step2": profile_comparison(2)},
        "isa_case3": isa_comparison(),
        "verified_lowering_fact": {
            "fact": "PipelinePlanning explicitly forces use_async_copy=false for MACA; ordinary T.copy remains synchronous even when software-pipelined.",
            "source": "src/transform/pipeline_planning.cc",
            "evidence": "v005 generated C++/ISA contain ping-pong shared addressing and ordinary global/shared loads/stores, but no MACA memcpy_async builtin.",
        },
    }
    output = REP / f"{IID}_comparison.json"
    output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    case3 = result["mctracer"]["case3"]
    p1 = result["mcprofiler_case3"]["step1"]
    p2 = result["mcprofiler_case3"]["step2"]
    lines = [
        f"# {IID} paired evidence",
        "",
        "Verdict: rejected as a production kernel; retained as causal evidence.",
        "",
        "| evidence | Step1 | Step2 |",
        "|---|---:|---:|",
        f"| mcTracer Case3 runtime delta | {case3['step1']['delta_pct']:+.2f}% | {case3['step2']['delta_pct']:+.2f}% |",
        f"| dynamic shared | {case3['step1_memory']['v004']['dynamic_shared']} -> {case3['step1_memory']['v005']['dynamic_shared']} B | {case3['step2_memory']['v004']['dynamic_shared']} -> {case3['step2_memory']['v005']['dynamic_shared']} B |",
        f"| mcProfiler total cycles delta | {p1['Total Cycles']['delta_pct']:+.2f}% | {p2['Total Cycles']['delta_pct']:+.2f}% |",
        f"| average wave life delta | {p1['Average Wave life cycles']['delta_pct']:+.2f}% | {p2['Average Wave life cycles']['delta_pct']:+.2f}% |",
        f"| AP active cycles delta | {p1['AP active cycles']['delta_pct']:+.2f}% | {p2['AP active cycles']['delta_pct']:+.2f}% |",
        f"| MTE duty | {p1['AP MTE Duty ratio']['v004']:.2f}% -> {p1['AP MTE Duty ratio']['v005']:.2f}% | {p2['AP MTE Duty ratio']['v004']:.2f}% -> {p2['AP MTE Duty ratio']['v005']:.2f}% |",
        f"| MMA duty | {p1['AP MMA Duty ratio']['v004']:.2f}% -> {p1['AP MMA Duty ratio']['v005']:.2f}% | {p2['AP MMA Duty ratio']['v004']:.2f}% -> {p2['AP MMA Duty ratio']['v005']:.2f}% |",
        f"| private read/write instructions | {p1['Private Read Instructions']['v004']:.0f}/{p1['Private Write Instructions']['v004']:.0f} -> 0/0 | {p2['Private Read Instructions']['v004']:.0f}/{p2['Private Write Instructions']['v004']:.0f} -> 0/0 |",
        "",
        "Causal result: software pipelining materialized double buffering and removed Step2 spill, but ordinary MACA T.copy did not become memcpy_async. The 32 KiB -> 64 KiB dynamic-shared increase coincided with roughly 44-48% stage slowdowns and large MMA-duty loss; lower per-wave/shared latency indicates less contention per resident wave, not better device throughput.",
    ]
    md = REP / f"{IID}_comparison.md"
    md.write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
