#!/usr/bin/env python3
"""Finalize v022 synchronized evidence and Roofline manifests."""

from __future__ import annotations

import hashlib
import json
from pathlib import Path


IID = "v022_step1_split_gate_staging_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def update(path: Path, kind: str) -> None:
    data = json.loads(path.read_text(encoding="utf-8"))
    data.update(
        {
            "iteration_id": IID,
            "version": "v022",
            "slug": "step1_split_gate_staging",
            "machine": "sc-16g",
            "kind": kind,
            "status": "accepted",
            "baseline_id": "v004_step2_router_weight_register_reuse_sc-16g",
            "parent_id": "v021_step1_gate_input_up_order_sc-16g",
            "current_best_id": IID,
            "decision": "accepted_case2_gate_input_half_interleave",
            "source_sha256": {
                "parent": "fe5dbc61802e3777e7305163fb4f3d2251c78102b1f2b97eba450dbbb78e2e45",
                "candidate_and_main": "96f2eb1c71e8bd5d8e3bde840e9497d3761475bb0b7bb1f5071e5beb54f553b8",
            },
            "benchmark_sha256": {
                "official": sha(MOE / "fusedmoe_benchmark.py"),
                "oj": sha(MOE / "oj_benchmark.py"),
            },
            "verdict_metrics": {
                "case2_oj_paired_median_change_percent": -1.8122381296175882,
                "case2_oj_paired_mean_change_percent": -1.945330796192743,
                "case2_mctracer_step1_median_change_percent": -3.5295003010234693,
                "case2_mctracer_device_span_median_change_percent": -2.2963795377925367,
                "step1_mt_registers_parent": 214,
                "step1_mt_registers_candidate": 212,
                "mcprofiler_vls_pipeline_stall_change_percent": -22.783710215838184,
                "mcprofiler_stage_latency_change_percent": -1.9991244710345857,
                "installed_oj_case2_ms": 5.096737365722657,
                "mxsmi_repeat2000_case2_ms": 5.08359912109375,
            },
            "mcprofiler_status": "internally_consistent_directional_support_only",
            "roofline_model": {
                "arithmetic_intensity_flop_per_byte": 84.82840236686391,
                "sensitivity_bandwidth_gb_per_s": 1400,
                "compute_roof_tflops": 160,
                "region": "HBM",
            },
        }
    )
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main() -> None:
    update(MOE / "moe-roofline" / IID / f"{IID}_manifest.json", "roofline")
    update(MOE / "restart-rep" / IID / f"{IID}_manifest.json", "evidence")


if __name__ == "__main__":
    main()
