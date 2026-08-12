#!/usr/bin/env python3
"""Finalize v017 synchronized manifest identity fields."""

from __future__ import annotations

import json
from pathlib import Path


IID = "v017_step1_bn64_occupancy_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")


def update(path: Path, kind: str) -> None:
    data = json.loads(path.read_text(encoding="utf-8"))
    data.update(
        {
            "iteration_id": IID,
            "version": "v017",
            "slug": "step1_bn64_occupancy",
            "machine": "sc-16g",
            "kind": kind,
            "status": "rejected_screen",
            "baseline_id": "v004_step2_router_weight_register_reuse_sc-16g",
            "parent_id": "v013_step2_split_accumulator_sc-16g",
            "current_best_id": "v013_step2_split_accumulator_sc-16g",
            "source_sha256": {
                "parent": "7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3",
                "candidate_a_bn64": "0ade71e4eb8f23e1a2d1f2bff465d1791e0a01ca18dc613cf1103d33cd1c88ea",
                "candidate_b_bn256": "2942cec6406076ca672387735822db3cad7783349f670ce4758e81386a9c6ab6"
            },
            "benchmark_sha256": {
                "official": "adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f",
                "oj": "1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8"
            },
            "decision": "rejected_screen"
        }
    )
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main() -> None:
    update(MOE / "moe-roofline" / IID / f"{IID}_manifest.json", "roofline")
    update(MOE / "restart-rep" / IID / f"{IID}_manifest.json", "evidence")


if __name__ == "__main__":
    main()
