#!/usr/bin/env python3
"""Compile one OJ shape from an explicit source and archive C++ and resources."""

from __future__ import annotations

import argparse
import contextlib
import importlib
import importlib.util
import io
import json
import re
import sys
from pathlib import Path

import tilelang


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272, "num_blocks": 24},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544, "num_blocks": 48},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088, "num_blocks": 96},
}


def load_kernel_module(source: Path):
    spec = importlib.util.spec_from_file_location("custom_fusedmoe", source)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot import kernel source: {source}")
    module = importlib.util.module_from_spec(spec)
    sys.modules["custom_fusedmoe"] = module
    spec.loader.exec_module(module)
    return module


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


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--kernel-source", type=Path, required=True)
    parser.add_argument("--source-tag", required=True)
    parser.add_argument("--case", type=int, choices=(1, 2, 3), required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()

    source_snapshot = args.kernel_source.resolve()
    output_dir = args.output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    module = load_kernel_module(source_snapshot)
    cfg = CASES[args.case]
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
    tilelang.disable_cache()
    try:
        with contextlib.redirect_stdout(stream), contextlib.redirect_stderr(stream):
            static_padding = cfg["num_blocks"] - (cfg["valid_tokens"] + 127) // 128
            kernel = module.RoutedMoEKernel(
                cfg["hidden"],
                cfg["intermediate"],
                cfg["experts"],
                group_sum=cfg["valid_tokens"],
                group_count=static_padding,
            )
            generated = kernel.impl.get_kernel_source()
    finally:
        lower.mxcc.compile_maca = original

    prefix = f"{args.source_tag}_case{args.case}"
    generated_path = output_dir / f"{prefix}_generated_device.cpp"
    log_path = output_dir / f"{prefix}_compiler.log"
    result_path = output_dir / f"{prefix}_resource_usage.json"
    generated_path.write_text(generated, encoding="utf-8")
    log = stream.getvalue()
    log_path.write_text(log, encoding="utf-8")
    result = {
        "source_tag": args.source_tag,
        "source_snapshot": str(source_snapshot),
        "case": args.case,
        "shape": cfg,
        "resources": parse_resources(log),
        "codegen": {
            "source_bytes": len(generated.encode()),
            "mfma_sites": len(re.findall(r"__builtin_mxc_mma", generated)),
            "memcpy_async_sites": len(re.findall(r"memcpy_async", generated)),
            "maca_wait_sites": len(re.findall(r"barrier_arrive_and_wait", generated)),
            "syncthreads_sites": len(re.findall(r"__syncthreads", generated)),
            "for_sites": len(re.findall(r"\bfor\s*\(", generated)),
            "generated_device": str(generated_path),
            "compiler_log": str(log_path),
        },
    }
    result_path.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
