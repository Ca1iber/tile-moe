#!/usr/bin/env python3
"""Compare the accepted v002 candidate with v001 and v000 evidence."""

from __future__ import annotations

import json
from pathlib import Path


MOE = Path("/root/tilelang-metax/race_tests/moe")
IID = "v002_step2_input_locality_grid_sc-16g"
V001 = "v001_step1_input_locality_grid_sc-16g"
V000 = "v000_minibs_baseline_sc-16g"
REP = MOE / "restart-rep" / IID


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def reduction(old: float, new: float) -> float:
    return (old - new) / old * 100.0


def main() -> None:
    b1 = load(MOE / "restart-rep" / V001 / "benchmark" / f"{V001}_benchmark_summary.json")
    b2 = load(REP / "benchmark" / f"{IID}_benchmark_summary.json")
    t1 = load(MOE / "restart-rep" / V001 / "profiler/mctracer" / f"{V001}_stage_summary.json")
    t2 = load(REP / "profiler/mctracer" / f"{IID}_stage_summary.json")

    v000_path = MOE / "restart-rep" / V000 / "profiler/mcprofiler/raw/case3/mcprofiler_output/2_kernel_kernel_1.txt.json"
    v002_path = REP / "profiler/mcprofiler/raw/case3/mcprofiler_output/1_kernel_kernel_1.txt.json"
    p0 = load(v000_path)["Summary"][0]["value"]
    p2 = load(v002_path)["Summary"][0]["value"]
    prof = {
        "v000": p0,
        "v002": p2,
        "delta_pct": {
            "all_memacs_reduction": reduction(p0["processed_data"]["all_memacs"], p2["processed_data"]["all_memacs"]),
            "during_reduction": reduction(p0["processed_data"]["during"], p2["processed_data"]["during"]),
            "native_ai_increase": (p2["data"]["case_I"] / p0["data"]["case_I"] - 1.0) * 100.0,
            "native_bandwidth_change": (p2["data"]["case_bandwith"] / p0["data"]["case_bandwith"] - 1.0) * 100.0,
        },
        "baseline_note": "v001 Step2 code and launch grid are identical to v000; v000 supplies the archived Step2 counter baseline.",
    }
    prof_dir = REP / "profiler/mcprofiler"
    prof_dir.mkdir(parents=True, exist_ok=True)
    (prof_dir / f"{IID}_case3_step2_comparison.json").write_text(json.dumps(prof, indent=2) + "\n", encoding="utf-8")

    benchmark = []
    for suite in ("official", "oj"):
        for case, old in b1[suite].items():
            new = b2[suite][case]
            o = old["statistics"]["median_ms"]
            n = new["statistics"]["median_ms"]
            benchmark.append({"suite": suite, "case": case, "v001_ms": o, "v002_ms": n, "latency_reduction_pct": reduction(o, n)})

    trace = []
    old_trace = {item["case"]: item for item in t1["results"]}
    for item in t2["results"]:
        old = old_trace[item["case"]]
        trace.append({
            "case": item["case"],
            "step1_reduction_pct": reduction(old["step1_ms"], item["step1_ms"]),
            "step2_reduction_pct": reduction(old["step2_ms"], item["step2_ms"]),
            "v002_step1_ms": item["step1_ms"],
            "v002_step2_ms": item["step2_ms"],
            "v002_step2_grid": item["step2_grid"],
        })

    mx1 = load(MOE / "restart-rep" / V001 / "profiler/mxsmi" / f"{V001}_mxsmi_summary.json")
    mx2 = load(REP / "profiler/mxsmi" / f"{IID}_mxsmi_summary.json")
    payload = {
        "iteration_id": IID,
        "parent_id": V001,
        "benchmark": benchmark,
        "mctracer": trace,
        "mcprofiler_case3_step2": prof,
        "mxsmi": {
            "v001_hbm_median_gbps": mx1["hbm_gb_per_s"]["median"],
            "v002_hbm_median_gbps": mx2["hbm_gb_per_s"]["median"],
            "hbm_throughput_reduction_pct": reduction(mx1["hbm_gb_per_s"]["median"], mx2["hbm_gb_per_s"]["median"]),
            "v002_median_active_ap_count": mx2["ap"]["median_active_ap_count"],
        },
    }
    (REP / f"{IID}_comparison.json").write_text(json.dumps(payload, indent=2) + "\n", encoding="utf-8")

    lines = [
        f"# {IID} vs {V001}", "", "Positive latency reduction means v002 is faster.", "",
        "| suite | case | v001 ms | v002 ms | latency reduction |",
        "|---|---|---:|---:|---:|",
    ]
    for row in benchmark:
        lines.append(f"| {row['suite']} | {row['case']} | {row['v001_ms']:.6f} | {row['v002_ms']:.6f} | {row['latency_reduction_pct']:.3f}% |")
    lines += ["", "| case | Step1 reduction | Step2 reduction |", "|---:|---:|---:|"]
    for row in trace:
        lines.append(f"| {row['case']} | {row['step1_reduction_pct']:.3f}% | {row['step2_reduction_pct']:.3f}% |")
    lines += [
        "",
        f"- mcProfiler case3 Step2 all_memacs reduction: {prof['delta_pct']['all_memacs_reduction']:.3f}%.",
        f"- mcProfiler case3 Step2 native AI increase: {prof['delta_pct']['native_ai_increase']:.3f}%.",
        f"- mx-smi long-load HBM median: {payload['mxsmi']['v001_hbm_median_gbps']:.3f} -> {payload['mxsmi']['v002_hbm_median_gbps']:.3f} GB/s ({payload['mxsmi']['hbm_throughput_reduction_pct']:.3f}% less throughput).",
    ]
    (REP / f"{IID}_comparison.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(json.dumps(payload, indent=2))


if __name__ == "__main__":
    main()
