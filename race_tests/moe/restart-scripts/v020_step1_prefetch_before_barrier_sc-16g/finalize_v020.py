#!/usr/bin/env python3
"""Finalize v020 synchronized evidence and Roofline manifests."""

from __future__ import annotations

import hashlib
import json
from pathlib import Path


IID = "v020_step1_prefetch_before_barrier_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def update(path: Path, kind: str) -> None:
    data = json.loads(path.read_text(encoding="utf-8"))
    data.update(
        {
            "iteration_id": IID,
            "version": "v020",
            "slug": "step1_prefetch_before_barrier",
            "machine": "sc-16g",
            "kind": kind,
            "status": "accepted",
            "baseline_id": "v004_step2_router_weight_register_reuse_sc-16g",
            "parent_id": "v019_step1_input_pingpong_32e_sc-16g",
            "current_best_id": IID,
            "decision": "accepted_selective_32_experts",
            "source_sha256": {
                "parent": "35529c68e99c7d55b56b5a353fa1e15bb9b8fc9f95b7c97d25c2262332f02ae0",
                "global_candidate_rejected": "a9acdfdc9054d2e16a9dcc0622668e44064fd185529313e8b14cd26500f13688",
                "input_first_rejected": "086984f686ea42645888ac55ea5ac856bba9a228a6be168d28b4683ecff0cad0",
                "selective_candidate_and_main": "0e6a080873b314f16e4e009ea39e9834bdb30efb49552b533097253c626018ad",
            },
            "benchmark_sha256": {
                "official": sha(MOE / "fusedmoe_benchmark.py"),
                "oj": sha(MOE / "oj_benchmark.py"),
            },
            "verdict_metrics": {
                "case2_oj_paired_median_change_percent": -0.30377389830312795,
                "case3_global_candidate_median_change_percent": 1.764111872998786,
                "case2_mctracer_step1_median_change_percent": -0.9609132288129429,
                "case2_mctracer_device_span_median_change_percent": -0.4579497209368788,
                "isa_step1_snop_change": -4,
            },
            "mcprofiler_status": "internally_consistent_but_mixed_direction_directional_only",
            "roofline_model": {
                "arithmetic_intensity_flop_per_byte": 84.82840236686391,
                "sensitivity_bandwidth_gb_per_s": 1400,
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
