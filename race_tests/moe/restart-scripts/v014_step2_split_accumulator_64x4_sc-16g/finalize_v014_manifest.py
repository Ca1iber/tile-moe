#!/usr/bin/env python3
"""Finalize identity fields in the synchronized v014 manifests."""

from __future__ import annotations

import json
from pathlib import Path


IID = "v014_step2_split_accumulator_64x4_sc-16g"
ROOT = Path("/root/tilelang-metax/race_tests/moe")


def update(path: Path, kind: str) -> None:
    data = json.loads(path.read_text(encoding="utf-8"))
    data.update(
        {
            "iteration_id": IID,
            "version": "v014",
            "slug": "step2_split_accumulator_64x4",
            "machine": "sc-16g",
            "kind": kind,
            "status": "rejected_screen",
            "baseline_id": "v004_step2_router_weight_register_reuse_sc-16g",
            "parent_id": "v013_step2_split_accumulator_sc-16g",
            "current_best_id": "v013_step2_split_accumulator_sc-16g",
            "source_sha256": {
                "parent": "7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3",
                "candidate": "82cbd989d0630736512990966384266896a9d73baacd5712bc34466a8b65e9a1",
            },
            "benchmark_sha256": {
                "official": "adfe36d8e042adc3369813b7bd367bd865e560207c811d0e8514235fc33ec67f",
                "oj": "1165d1481f8932b6b2341f53e83e5ce5d871c62835259c22dc8d770c232585c8",
            },
            "decision": "rejected_screen",
        }
    )
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main() -> None:
    update(ROOT / "moe-roofline" / IID / f"{IID}_manifest.json", "roofline")
    update(ROOT / "restart-rep" / IID / f"{IID}_manifest.json", "evidence")


if __name__ == "__main__":
    main()
