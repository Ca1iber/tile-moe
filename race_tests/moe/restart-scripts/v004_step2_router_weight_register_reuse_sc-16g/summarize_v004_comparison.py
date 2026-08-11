#!/usr/bin/env python3
"""Compare accepted v004 against current-best v002 and restart v000."""

from __future__ import annotations

import json
from pathlib import Path


MOE = Path("/root/tilelang-metax/race_tests/moe")
IID = "v004_step2_router_weight_register_reuse_sc-16g"
V002 = "v002_step2_input_locality_grid_sc-16g"
V000 = "v000_minibs_baseline_sc-16g"
REP = MOE / "restart-rep" / IID


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def reduction(old: float, new: float) -> float:
    return (old - new) / old * 100.0


def benchmark(iid: str) -> dict:
    return load(MOE / "restart-rep" / iid / "benchmark" / f"{iid}_benchmark_summary.json")


def trace(iid: str) -> dict:
    return load(MOE / "restart-rep" / iid / "profiler/mctracer" / f"{iid}_stage_summary.json")


def main() -> None:
    b0, b2, b4 = benchmark(V000), benchmark(V002), benchmark(IID)
    benchmark_rows = []
    for suite in ("official", "oj"):
        for case, candidate in b4[suite].items():
            baseline = b0[suite][case]["statistics"]["median_ms"]
            current_best = b2[suite][case]["statistics"]["median_ms"]
            value = candidate["statistics"]["median_ms"]
            benchmark_rows.append(
                {
                    "suite": suite,
                    "case": case,
                    "v000_ms": baseline,
                    "v002_ms": current_best,
                    "v004_ms": value,
                    "reduction_vs_v002_pct": reduction(current_best, value),
                    "reduction_vs_v000_pct": reduction(baseline, value),
                    "v004_relative_range_pct": candidate["statistics"]["relative_range_pct"],
                }
            )

    t2 = {item["case"]: item for item in trace(V002)["results"]}
    trace_rows = []
    for item in trace(IID)["results"]:
        old = t2[item["case"]]
        trace_rows.append(
            {
                "case": item["case"],
                "v002_step1_ms": old["step1_ms"],
                "v004_step1_ms": item["step1_ms"],
                "step1_reduction_pct": reduction(old["step1_ms"], item["step1_ms"]),
                "v002_step2_ms": old["step2_ms"],
                "v004_step2_ms": item["step2_ms"],
                "step2_reduction_pct": reduction(old["step2_ms"], item["step2_ms"]),
                "v004_step2_grid": item["step2_grid"],
            }
        )

    profiler = load(REP / "profiler/mcprofiler" / f"{IID}_case3_step2_comparison.json")
    codegen = load(REP / "codegen" / f"{IID}_step2_codegen_comparison.json")
    mx2 = load(MOE / "restart-rep" / V002 / "profiler/mxsmi" / f"{V002}_mxsmi_summary.json")
    mx4 = load(REP / "profiler/mxsmi" / f"{IID}_mxsmi_summary.json")
    payload = {
        "iteration_id": IID,
        "parent_current_best_id": V002,
        "restart_baseline_id": V000,
        "benchmark": benchmark_rows,
        "mctracer": trace_rows,
        "mcprofiler_case3_step2": profiler,
        "codegen": codegen,
        "mxsmi": {
            "v002_hbm_median_gbps": mx2["hbm_gb_per_s"]["median"],
            "v004_hbm_median_gbps": mx4["hbm_gb_per_s"]["median"],
            "hbm_change_pct": (
                mx4["hbm_gb_per_s"]["median"] / mx2["hbm_gb_per_s"]["median"] - 1.0
            )
            * 100.0,
            "v004_median_active_ap_count": mx4["ap"]["median_active_ap_count"],
            "v004_steady_ap_median_pct": mx4["ap"]["median_of_sample_medians_pct"],
        },
    }
    (REP / f"{IID}_comparison.json").write_text(
        json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )

    lines = [
        f"# {IID} vs {V002}",
        "",
        "Positive latency reduction means v004 is faster.",
        "",
        "| suite | case | v000 ms | v002 ms | v004 ms | vs v002 | vs v000 | v004 range |",
        "|---|---|---:|---:|---:|---:|---:|---:|",
    ]
    for row in benchmark_rows:
        lines.append(
            f"| {row['suite']} | {row['case']} | {row['v000_ms']:.6f} | {row['v002_ms']:.6f} | "
            f"{row['v004_ms']:.6f} | {row['reduction_vs_v002_pct']:.3f}% | "
            f"{row['reduction_vs_v000_pct']:.3f}% | {row['v004_relative_range_pct']:.3f}% |"
        )
    lines += [
        "",
        "| case | v002 Step1 | v004 Step1 | Step1 reduction | v002 Step2 | v004 Step2 | Step2 reduction |",
        "|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for row in trace_rows:
        lines.append(
            f"| {row['case']} | {row['v002_step1_ms']:.6f} | {row['v004_step1_ms']:.6f} | "
            f"{row['step1_reduction_pct']:.3f}% | {row['v002_step2_ms']:.6f} | "
            f"{row['v004_step2_ms']:.6f} | {row['step2_reduction_pct']:.3f}% |"
        )
    delta = profiler["delta_pct_candidate_vs_v002"]
    loads = codegen["cases"][2]
    lines += [
        "",
        f"- Optimized LLVM IR Case3 Step2 routed-weight loads: {loads['baseline_router_half_loads']} -> {loads['candidate_router_half_loads']}.",
        f"- mcProfiler Case3 Step2 during change: {delta['during']:.3f}%.",
        f"- mcProfiler all_memacs raw-proxy change: {delta['all_memacs_raw_proxy']:.3f}% (not bytes).",
        f"- mx-smi long-load HBM median: {payload['mxsmi']['v002_hbm_median_gbps']:.3f} -> {payload['mxsmi']['v004_hbm_median_gbps']:.3f} GB/s ({payload['mxsmi']['hbm_change_pct']:.3f}%).",
    ]
    (REP / f"{IID}_comparison.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(json.dumps(payload, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
