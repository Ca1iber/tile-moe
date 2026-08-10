#!/usr/bin/env python3
"""Summarize v001 versus v000 across benchmark, trace, profiler, and mx-smi."""

from __future__ import annotations

import json
from pathlib import Path


MOE = Path("/root/tilelang-metax/race_tests/moe")
BASE = "v000_minibs_baseline_sc-16g"
CAND = "v001_step1_input_locality_grid_sc-16g"


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def reduction(base: float, candidate: float) -> float:
    return (1.0 - candidate / base) * 100.0


def main() -> None:
    base_rep = MOE / "restart-rep" / BASE
    cand_rep = MOE / "restart-rep" / CAND
    base_bench = load(base_rep / f"benchmark/{BASE}_benchmark_summary.json")
    cand_bench = load(cand_rep / f"benchmark/{CAND}_benchmark_summary.json")
    base_trace = load(base_rep / f"profiler/mctracer/{BASE}_stage_summary.json")
    cand_trace = load(cand_rep / f"profiler/mctracer/{CAND}_stage_summary.json")
    base_mxsmi = load(base_rep / f"profiler/mxsmi/{BASE}_mxsmi_summary.json")
    cand_mxsmi = load(cand_rep / f"profiler/mxsmi/{CAND}_mxsmi_summary.json")
    profiler = load(cand_rep / f"profiler/mcprofiler/{CAND}_case3_step1_comparison.json")

    benchmark = {"official": {}, "oj": {}}
    for suite in benchmark:
        for key, candidate in cand_bench[suite].items():
            base = base_bench[suite][key]
            base_ms = float(base["statistics"]["median_ms"])
            candidate_ms = float(candidate["statistics"]["median_ms"])
            benchmark[suite][key] = {
                "v000_median_ms": base_ms,
                "v001_median_ms": candidate_ms,
                "latency_reduction_pct": reduction(base_ms, candidate_ms),
            }

    base_stages = {int(item["case"]): item for item in base_trace["results"]}
    cand_stages = {int(item["case"]): item for item in cand_trace["results"]}
    stages = {}
    for case in (1, 2, 3):
        stages[f"case{case}"] = {}
        for stage in (1, 2):
            base_ms = float(base_stages[case][f"step{stage}_ms"])
            cand_ms = float(cand_stages[case][f"step{stage}_ms"])
            stages[f"case{case}"][f"step{stage}"] = {
                "v000_ms": base_ms,
                "v001_ms": cand_ms,
                "latency_reduction_pct": reduction(base_ms, cand_ms),
            }

    all_memacs_base = float(profiler["v000"]["processed_data"]["all_memacs"])
    all_memacs_cand = float(profiler["v001"]["processed_data"]["all_memacs"])
    hbm_base = float(base_mxsmi["hbm_gb_per_s"]["median"])
    hbm_cand = float(cand_mxsmi["hbm_gb_per_s"]["median"])
    payload = {
        "baseline": BASE,
        "candidate": CAND,
        "benchmark": benchmark,
        "mctracer": stages,
        "mcprofiler_case3_step1": {
            "all_memacs_v000": all_memacs_base,
            "all_memacs_v001": all_memacs_cand,
            "all_memacs_reduction_pct": reduction(all_memacs_base, all_memacs_cand),
            "native_ai_increase_pct": (float(profiler["v001"]["data"]["case_I"]) / float(profiler["v000"]["data"]["case_I"]) - 1.0) * 100.0,
            "during_reduction_pct": reduction(float(profiler["v000"]["processed_data"]["during"]), float(profiler["v001"]["processed_data"]["during"])),
        },
        "mxsmi_case3_long_load": {
            "hbm_median_v000_gbps": hbm_base,
            "hbm_median_v001_gbps": hbm_cand,
            "hbm_throughput_reduction_pct": reduction(hbm_base, hbm_cand),
            "median_active_ap_count_v000": base_mxsmi["ap"]["median_active_ap_count"],
            "median_active_ap_count_v001": cand_mxsmi["ap"]["median_active_ap_count"],
        },
    }
    out = cand_rep / f"{CAND}_comparison.json"
    out.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    lines = [
        f"# {CAND} vs {BASE}",
        "",
        "Positive latency reduction means v001 is faster.",
        "",
        "| suite | case | v000 ms | v001 ms | latency reduction |",
        "|---|---|---:|---:|---:|",
    ]
    for suite in ("official", "oj"):
        for key, item in benchmark[suite].items():
            lines.append(f"| {suite} | {key} | {item['v000_median_ms']:.6f} | {item['v001_median_ms']:.6f} | {item['latency_reduction_pct']:.3f}% |")
    lines.extend(["", "| case | Step1 reduction | Step2 reduction |", "|---:|---:|---:|"])
    for case in (1, 2, 3):
        item = stages[f"case{case}"]
        lines.append(f"| {case} | {item['step1']['latency_reduction_pct']:.3f}% | {item['step2']['latency_reduction_pct']:.3f}% |")
    lines.extend(
        [
            "",
            f"- mcProfiler case3 Step1 all_memacs reduction: {payload['mcprofiler_case3_step1']['all_memacs_reduction_pct']:.3f}%.",
            f"- mcProfiler case3 Step1 native AI increase: {payload['mcprofiler_case3_step1']['native_ai_increase_pct']:.3f}%.",
            f"- mx-smi long-load HBM median: {hbm_base:.3f} -> {hbm_cand:.3f} GB/s ({payload['mxsmi_case3_long_load']['hbm_throughput_reduction_pct']:.3f}% less throughput) with all 104 AP active in both versions.",
        ]
    )
    (cand_rep / f"{CAND}_comparison.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(json.dumps(payload, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
