#!/usr/bin/env python3
"""Build the compact v016 decision summary from archived JSON evidence."""

from __future__ import annotations

import json
from pathlib import Path


IID = "v016_step2_async_revalidation_sc-16g"
ROOT = Path("/root/tilelang-metax/race_tests/moe")
REP = ROOT / "restart-rep" / IID


def load(path: Path) -> dict:
    return json.loads(path.read_text(encoding="utf-8"))


def pct(after: float, before: float) -> float:
    return (after / before - 1.0) * 100.0


def flatten_metrics(report: dict) -> dict:
    result = {}
    for section, rows in report.items():
        for row in rows:
            result[row["name"]] = row["value"]
    return result


def main() -> None:
    oj = load(REP / "benchmarks/oj/strict_long/v012d_async_step2_vs_v013_paired_oj_summary.json")
    trace = load(REP / "profiler/mctracer/v012d_async_step2_vs_v013_case3_mctracer_summary.json")
    parent_codegen = load(REP / "codegen/v013_parent/v013_parent_case3_resource_usage.json")
    async_codegen = load(REP / "codegen/v012d_async_step2/v012d_async_step2_case3_resource_usage.json")
    parent_isa = load(REP / "codegen/isa/v013_parent/v013_parent_case3_isa_summary.json")["functions"][1]
    async_isa = load(REP / "codegen/isa/v012d_async_step2/v012d_async_step2_case3_isa_summary.json")["functions"][1]
    parent_prof = flatten_metrics(load(next(REP.glob("profiler/mcprofiler/raw/compare_v013_parent*/mcprofiler_output/report.txt.json"))))
    async_prof = flatten_metrics(load(next(REP.glob("profiler/mcprofiler/raw/compare_v012d_async*/mcprofiler_output/report.txt.json"))))

    summary = {
        "iteration_id": IID,
        "parent_id": "v013_step2_split_accumulator_sc-16g",
        "decision": "rejected_revalidated",
        "main_kernel_unchanged": True,
        "source_sha256": {
            "parent": "7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3",
            "historical_v012d": "36567e970732917eade4352ece2f91da3d83a673eb320834eea4c862c5ebb226",
        },
        "paired_oj": {
            "protocol": oj["protocol"],
            "case2_median_change_percent": oj["paired"]["2"]["median_change_percent"],
            "case2_mean_change_percent": oj["paired"]["2"]["mean_change_percent"],
            "case3_median_change_percent": oj["paired"]["3"]["median_change_percent"],
            "case3_mean_change_percent": oj["paired"]["3"]["mean_change_percent"],
        },
        "mctracer_case3": trace["paired"],
        "codegen_step2": {
            "parent_resources": parent_codegen["resources"][1],
            "async_resources": async_codegen["resources"][1],
            "parent_sites": parent_codegen["codegen"],
            "async_sites": async_codegen["codegen"],
        },
        "isa_step2": {
            "parent": parent_isa,
            "async": async_isa,
            "static_barrier_change_percent": pct(
                async_isa["instructions"]["barrier"], parent_isa["instructions"]["barrier"]
            ),
        },
        "mcprofiler_step2": {
            "parent": parent_prof,
            "async": async_prof,
            "directional_observations": {
                "average_wave_life_change_percent": pct(
                    float(async_prof["Average Wave life cycles"].replace(",", "")),
                    float(parent_prof["Average Wave life cycles"].replace(",", "")),
                ),
                "vls_pipeline_stall_change_percent": pct(
                    async_prof["ISU stall cycles layout"]["data"]["vls_pipeline_stall"],
                    parent_prof["ISU stall cycles layout"]["data"]["vls_pipeline_stall"],
                ),
                "vls_wdata_stall_change_percent": pct(
                    async_prof["ISU stall cycles layout"]["data"]["vls_wdata_stall"],
                    parent_prof["ISU stall cycles layout"]["data"]["vls_wdata_stall"],
                ),
            },
            "validity_warning": (
                "The async replay reports MTE duty above 100% and dispatched waves far above achieved waves; "
                "absolute throughput/traffic ratios are internally inconsistent and are not used as utilization claims."
            ),
        },
    }
    out = REP / "v016_candidate_summary.json"
    out.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(out)


if __name__ == "__main__":
    main()
