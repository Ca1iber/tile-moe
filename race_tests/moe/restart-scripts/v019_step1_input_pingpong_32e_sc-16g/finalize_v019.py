#!/usr/bin/env python3
"""Finalize v019 synchronized evidence and Roofline manifests."""

from __future__ import annotations

import hashlib
import json
from pathlib import Path


IID = "v019_step1_input_pingpong_32e_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")


def sha(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def update(path: Path, kind: str) -> None:
    data = json.loads(path.read_text(encoding="utf-8"))
    data.update(
        {
            "iteration_id": IID,
            "version": "v019",
            "slug": "step1_input_pingpong_32e",
            "machine": "sc-16g",
            "kind": kind,
            "status": "accepted",
            "baseline_id": "v004_step2_router_weight_register_reuse_sc-16g",
            "parent_id": "v018_step1_input_prefetch_sc-16g",
            "current_best_id": IID,
            "decision": "accepted",
            "source_sha256": {
                "parent": "f856ab903980f63f71a92151635ec94b2d7e81f29f93c3d6d53eea136efeda7b",
                "candidate_and_main": "35529c68e99c7d55b56b5a353fa1e15bb9b8fc9f95b7c97d25c2262332f02ae0",
            },
            "benchmark_sha256": {
                "official": sha(MOE / "fusedmoe_benchmark.py"),
                "oj": sha(MOE / "oj_benchmark.py"),
            },
            "mcprofiler_status": "candidate_replay_quarantined_internal_inconsistency",
        }
    )
    path.write_text(json.dumps(data, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")


def main() -> None:
    update(MOE / "moe-roofline" / IID / f"{IID}_manifest.json", "roofline")
    update(MOE / "restart-rep" / IID / f"{IID}_manifest.json", "evidence")


if __name__ == "__main__":
    main()
