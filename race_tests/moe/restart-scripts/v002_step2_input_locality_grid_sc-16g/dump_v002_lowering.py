#!/usr/bin/env python3
"""Archive the TileLang PrimFunc exposed by each v002 JIT kernel."""

from __future__ import annotations

import json
import sys
from pathlib import Path

import tilelang


IID = "v002_step2_input_locality_grid_sc-16g"
REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests/moe"
OUT = MOE / "restart-rep" / IID / "codegen"
sys.path.insert(0, str(MOE))
from custom_fusedmoe import RoutedMoEKernel  # noqa: E402


CASES = {
    1: (2048, 8192, 16, 2272, 24),
    2: (7168, 2048, 32, 4544, 48),
    3: (7168, 2048, 64, 9088, 96),
}


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    tilelang.disable_cache()
    outputs = []
    for case_id, (hidden, intermediate, experts, valid_tokens, num_blocks) in CASES.items():
        static_padding = num_blocks - (valid_tokens + 127) // 128
        kernel = RoutedMoEKernel(
            hidden,
            intermediate,
            experts,
            group_sum=valid_tokens,
            group_count=static_padding,
        )
        prim_func = kernel.impl.prim_func
        path = OUT / f"{IID}_case{case_id}_tilelang_primfunc.py"
        path.write_text(prim_func.script(show_meta=True) + "\n", encoding="utf-8")
        outputs.append({"case": case_id, "type": str(type(prim_func)), "path": str(path), "bytes": path.stat().st_size})
    summary = OUT / f"{IID}_tilelang_lowering_summary.json"
    summary.write_text(json.dumps({"iteration_id": IID, "outputs": outputs}, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(outputs, indent=2))


if __name__ == "__main__":
    main()
