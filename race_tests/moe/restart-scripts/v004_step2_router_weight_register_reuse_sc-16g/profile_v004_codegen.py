#!/usr/bin/env python3
"""Compile v004 OJ shapes with MXCC resource output and archive generated source."""

from __future__ import annotations

import contextlib
import importlib
import io
import json
import re
import sys
from pathlib import Path

import tilelang


IID = "v004_step2_router_weight_register_reuse_sc-16g"
REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests/moe"
OUT = MOE / "restart-rep" / IID / "codegen"
sys.path.insert(0, str(MOE))
from custom_fusedmoe import RoutedMoEKernel  # noqa: E402


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272, "num_blocks": 24},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544, "num_blocks": 48},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088, "num_blocks": 96},
}


def parse_resources(log: str) -> list[dict]:
    pattern = re.compile(
        r"Function properties for\s+(?P<name>\S+).*?"
        r"Used\s+(?P<mt>\d+)\s+MTregisters,\s+"
        r"(?P<st>\d+)\s+STregisters,\s+"
        r"(?P<shared>\d+)\s+bytes shared mem.*?"
        r"staticMaxWarps/PEU\s*:\s*(?P<warps>\d+)",
        re.S,
    )
    return [
        {
            "name": match.group("name"),
            "mt_registers": int(match.group("mt")),
            "st_registers": int(match.group("st")),
            "reported_static_shared_bytes": int(match.group("shared")),
            "static_max_warps_per_peu": int(match.group("warps")),
        }
        for match in pattern.finditer(log)
    ]


def compile_case(case_id: int, cfg: dict) -> dict:
    lower = importlib.import_module("tilelang.engine.lower")
    original = lower.mxcc.compile_maca

    def compile_with_resources(code, target_format="mcbin", arch=None, options=None, path_target=None, verbose=False):
        resource_options = list(options or [])
        if "-resource-usage" not in resource_options:
            resource_options.append("-resource-usage")
        return original(
            code,
            target_format=target_format,
            arch=arch,
            options=resource_options,
            path_target=path_target,
            verbose=True,
        )

    lower.mxcc.compile_maca = compile_with_resources
    stream = io.StringIO()
    try:
        with contextlib.redirect_stdout(stream), contextlib.redirect_stderr(stream):
            static_padding = cfg["num_blocks"] - (cfg["valid_tokens"] + 127) // 128
            kernel = RoutedMoEKernel(
                cfg["hidden"],
                cfg["intermediate"],
                cfg["experts"],
                group_sum=cfg["valid_tokens"],
                group_count=static_padding,
            )
            source = kernel.impl.get_kernel_source()
    finally:
        lower.mxcc.compile_maca = original

    log = stream.getvalue()
    source_path = OUT / f"{IID}_case{case_id}_generated_device.cpp"
    log_path = OUT / f"{IID}_case{case_id}_compiler.log"
    source_path.write_text(source, encoding="utf-8")
    log_path.write_text(log, encoding="utf-8")
    result = {
        "case": case_id,
        "shape": cfg,
        "resources": parse_resources(log),
        "codegen": {
            "source_bytes": len(source.encode()),
            "mfma_sites": len(re.findall(r"__builtin_mxc_mma", source)),
            "syncthreads_sites": len(re.findall(r"__syncthreads", source)),
            "for_sites": len(re.findall(r"\bfor\s*\(", source)),
            "source_path": str(source_path),
            "compiler_log": str(log_path),
        },
    }
    (OUT / f"{IID}_case{case_id}_resource_usage.json").write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    return result


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    tilelang.disable_cache()
    results = [compile_case(case_id, cfg) for case_id, cfg in CASES.items()]
    (OUT / f"{IID}_codegen_summary.json").write_text(
        json.dumps({"iteration_id": IID, "results": results}, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(json.dumps(results, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
