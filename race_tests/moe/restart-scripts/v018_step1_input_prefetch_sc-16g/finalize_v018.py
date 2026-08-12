#!/usr/bin/env python3
"""Finalize v018 synchronized evidence and Roofline manifests."""

from __future__ import annotations

import hashlib
import json
from pathlib import Path


IID = "v018_step1_input_prefetch_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def update(path: Path, kind: str) -> None:
    data = json.loads(path.read_text(encoding="utf-8"))
    data.update(
        {
            "iteration_id": IID,
            "version": "v018",
            "slug": "step1_input_prefetch",
            "machine": "sc-16g",
            "kind": kind,
            "status": "accepted",
            "baseline_id": "v004_step2_router_weight_register_reuse_sc-16g",
            "parent_id": "v013_step2_split_accumulator_sc-16g",
            "current_best_id": IID,
            "decision": "accepted",
            "source_sha256": {
                "parent": "7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3",
                "candidate_a": "45cc70e812210ff712e5d2387e807012a292c272639178e04c8d11cbaddd84e4",
                "candidate_b_and_main": "f856ab903980f63f71a92151635ec94b2d7e81f29f93c3d6d53eea136efeda7b",
            },
            "benchmark_sha256": {
                "official": sha(MOE / "fusedmoe_benchmark.py"),
                "oj": sha(MOE / "oj_benchmark.py"),
            },
        }
    )
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main() -> None:
    update(MOE / "moe-roofline" / IID / f"{IID}_manifest.json", "roofline")
    update(MOE / "restart-rep" / IID / f"{IID}_manifest.json", "evidence")


if __name__ == "__main__":
    main()
