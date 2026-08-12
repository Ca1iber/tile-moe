#!/usr/bin/env python3
"""Finalize v021 synchronized evidence and Roofline manifests."""

from __future__ import annotations

import hashlib
import json
from pathlib import Path


IID = "v021_step1_gate_input_up_order_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def update(path: Path, kind: str) -> None:
    data = json.loads(path.read_text(encoding="utf-8"))
    data.update(
        {
            "iteration_id": IID,
            "version": "v021",
            "slug": "step1_gate_input_up_order",
            "machine": "sc-16g",
            "kind": kind,
            "status": "accepted",
            "baseline_id": "v004_step2_router_weight_register_reuse_sc-16g",
            "parent_id": "v020_step1_prefetch_before_barrier_sc-16g",
            "current_best_id": IID,
            "decision": "accepted_selective_32_experts",
            "source_sha256": {
                "parent": "0e6a080873b314f16e4e009ea39e9834bdb30efb49552b533097253c626018ad",
                "candidate_and_main": "fe5dbc61802e3777e7305163fb4f3d2251c78102b1f2b97eba450dbbb78e2e45",
            },
            "benchmark_sha256": {
                "official": sha(MOE / "fusedmoe_benchmark.py"),
                "oj": sha(MOE / "oj_benchmark.py"),
            },
            "verdict_metrics": {
                "case2_oj_paired_median_change_percent": -2.9090531550770846,
                "case2_mctracer_step1_median_change_percent": -3.1971709006928473,
                "case2_mctracer_device_span_median_change_percent": -2.0510374433579948,
                "step1_mt_registers_parent": 226,
                "step1_mt_registers_candidate": 214,
                "isa_step1_snop_change": 4,
            },
            "mcprofiler_status": "internally_consistent_but_mixed_direction_directional_only",
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
