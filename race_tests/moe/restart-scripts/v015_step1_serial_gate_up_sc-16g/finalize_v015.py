#!/usr/bin/env python3
"""Finalize v015 patch and synchronized manifest identity fields."""

from __future__ import annotations

import difflib
import json
from pathlib import Path


IID = "v015_step1_serial_gate_up_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")
EXP = MOE / "restart-experiments" / IID
PARENT = EXP / f"{IID}_parent_custom_fusedmoe.py"
CANDIDATE = EXP / f"{IID}_custom_fusedmoe.py"


def update_manifest(path: Path, kind: str) -> None:
    data = json.loads(path.read_text(encoding="utf-8"))
    data.update(
        {
            "iteration_id": IID,
            "version": "v015",
            "slug": "step1_serial_gate_up",
            "machine": "sc-16g",
            "kind": kind,
            "status": "rejected_screen",
            "baseline_id": "v004_step2_router_weight_register_reuse_sc-16g",
            "parent_id": "v013_step2_split_accumulator_sc-16g",
            "current_best_id": "v013_step2_split_accumulator_sc-16g",
            "source_sha256": {
                "parent": "7e72737a3ac33d662d2d2b8771cedfd85e6a4ce32d9b2a492f027580d3aacbc3",
                "candidate_a": "b4c3d732a2f19a60cf73a2816503cf937ac21b1cf1bb3ad16820397897238e21",
                "candidate_b": "cef5071ae3b74feef4a99a470e3820cca1c891441dc587b45c048516ee0ab95c",
                "candidate_c": "7191a1cc0e67f982f295be6a7e094a820237e43ccd501acd27fe25aa7c488416",
                "candidate_d2": "a41335c1d485e4cbc4152779676138b21876281b365a4ef7b7e39dc5da5d3291",
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
    patch = "".join(
        difflib.unified_diff(
            PARENT.read_text(encoding="utf-8").splitlines(keepends=True),
            CANDIDATE.read_text(encoding="utf-8").splitlines(keepends=True),
            fromfile=PARENT.name,
            tofile=CANDIDATE.name,
        )
    )
    (EXP / f"{IID}.patch").write_text(patch, encoding="utf-8")
    update_manifest(MOE / "moe-roofline" / IID / f"{IID}_manifest.json", "roofline")
    update_manifest(MOE / "restart-rep" / IID / f"{IID}_manifest.json", "evidence")
    print(f"patch_bytes={len(patch.encode())}")


if __name__ == "__main__":
    main()
