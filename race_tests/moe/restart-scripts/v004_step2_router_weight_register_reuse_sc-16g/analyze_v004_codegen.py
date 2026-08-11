#!/usr/bin/env python3
"""Compare v002/v004 Step2 router-weight loads and compiler resources."""

from __future__ import annotations

import json
import re
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests/moe"
BASE = "v002_step2_input_locality_grid_sc-16g"
IID = "v004_step2_router_weight_register_reuse_sc-16g"


def step2_function(ir: str) -> str:
    match = re.search(
        r"define protected metaxgpu_kernel void @kernel_kernel_1\b.*?^}\n",
        ir,
        flags=re.MULTILINE | re.DOTALL,
    )
    if match is None:
        raise RuntimeError("kernel_kernel_1 not found")
    return match.group(0)


def load_count(function: str) -> int:
    return len(re.findall(r"condval_2[^\n]*= load half", function))


def resources(iid: str, case_id: int) -> dict:
    path = MOE / "restart-rep" / iid / "codegen" / f"{iid}_case{case_id}_resource_usage.json"
    payload = json.loads(path.read_text(encoding="utf-8"))
    return next(item for item in payload["resources"] if item["name"] == "kernel_kernel_1")


def main() -> None:
    out = MOE / "restart-rep" / IID / "codegen"
    cases = []
    for case_id in (1, 2, 3):
        base_ir = (out / f"{IID}_baseline_v002_case{case_id}_optimized_device.ll").read_text(encoding="utf-8")
        candidate_ir = (out / f"{IID}_case{case_id}_optimized_device.ll").read_text(encoding="utf-8")
        base_step2 = step2_function(base_ir)
        candidate_step2 = step2_function(candidate_ir)
        cases.append(
            {
                "case": case_id,
                "baseline_router_half_loads": load_count(base_step2),
                "candidate_router_half_loads": load_count(candidate_step2),
                "candidate_private_addrspace5_uses": candidate_step2.count("addrspace(5)"),
                "candidate_alloca_uses": len(re.findall(r"\balloca\b", candidate_step2)),
                "baseline_step2_resources": resources(BASE, case_id),
                "candidate_step2_resources": resources(IID, case_id),
            }
        )
    result = {
        "iteration_id": IID,
        "comparison_note": "Both sides were recompiled from the archived exact v002/v004 generated device C++ with identical MXCC 3.7.1 -O3 LLVM-IR commands.",
        "cases": cases,
    }
    path = out / f"{IID}_step2_codegen_comparison.json"
    path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
