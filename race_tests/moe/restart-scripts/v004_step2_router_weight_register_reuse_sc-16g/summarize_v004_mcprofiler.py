#!/usr/bin/env python3
"""Summarize same-tool Case3 Step2 RoofLine data for v002 versus v004."""

from __future__ import annotations

import json
import shutil
from pathlib import Path


MOE = Path("/root/tilelang-metax/race_tests/moe")
BASE = "v002_step2_input_locality_grid_sc-16g"
IID = "v004_step2_router_weight_register_reuse_sc-16g"


def load(iid: str) -> dict:
    path = (
        MOE
        / "restart-rep"
        / iid
        / "profiler/mcprofiler/raw/case3/mcprofiler_output/1_kernel_kernel_1.txt.json"
    )
    payload = json.loads(path.read_text(encoding="utf-8"))
    return payload["Summary"][0]["value"]


def pct(old: float, new: float) -> float:
    return (new - old) / old * 100.0


def main() -> None:
    base = load(BASE)
    cand = load(IID)
    bp = base["processed_data"]
    cp = cand["processed_data"]
    bd = base["data"]
    cd = cand["data"]
    result = {
        "iteration_id": IID,
        "scope": "Case3 Step2, mcProfiler 3.7.1-compatible RoofLine metric, per-kernel count=1",
        "v002": base,
        "v004": cand,
        "delta_pct_candidate_vs_v002": {
            "all_ops": pct(bp["all_ops"], cp["all_ops"]),
            "all_memacs_raw_proxy": pct(bp["all_memacs"], cp["all_memacs"]),
            "during": pct(bp["during"], cp["during"]),
            "vl1_memacs_raw_proxy": pct(bp["vl1_memacs"], cp["vl1_memacs"]),
            "l2c_memacs_raw_proxy": pct(bp["l2c_memacs"], cp["l2c_memacs"]),
            "native_case_flops": pct(bd["case_flops"], cd["case_flops"]),
            "native_case_I": pct(bd["case_I"], cd["case_I"]),
            "native_case_bandwidth": pct(bd["case_bandwith"], cd["case_bandwith"]),
        },
        "interpretation": [
            "MXCC optimized LLVM IR is the direct evidence for routed-weight load-site reduction (32 to 2).",
            "mcProfiler all_memacs/VL1/L2C fields are raw access proxies, not documented byte counts.",
            "Profiler during is instrumentation-domain time and must not replace clean benchmark or mcTracer time.",
        ],
    }
    out = MOE / "restart-rep" / IID / "profiler/mcprofiler"
    path = out / f"{IID}_case3_step2_comparison.json"
    path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    native = MOE / "moe-roofline" / IID / "native"
    native.mkdir(parents=True, exist_ok=True)
    source = Path(cand["filename"])
    destination = native / f"{IID}_case3_step2_mcprofiler_native.png"
    shutil.copy2(source, destination)
    print(json.dumps(result, ensure_ascii=False, indent=2))
    print(destination)


if __name__ == "__main__":
    main()
