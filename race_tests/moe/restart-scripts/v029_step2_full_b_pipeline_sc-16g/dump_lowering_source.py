#!/usr/bin/env python3
"""Archive TileLang PrimFunc lowering for one explicit MoE kernel source."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import sys
from pathlib import Path

import tilelang


CASES = {
    1: (2048, 8192, 16, 2272, 24),
    2: (7168, 2048, 32, 4544, 48),
    3: (7168, 2048, 64, 9088, 96),
}


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def load_source(path: Path):
    spec = importlib.util.spec_from_file_location("custom_fusedmoe", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot import {path}")
    module = importlib.util.module_from_spec(spec)
    sys.modules["custom_fusedmoe"] = module
    spec.loader.exec_module(module)
    return module


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--kernel-source", type=Path, required=True)
    parser.add_argument("--source-tag", required=True)
    parser.add_argument("--case", type=int, choices=CASES, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    args = parser.parse_args()

    source = args.kernel_source.resolve()
    out = args.output_dir.resolve()
    out.mkdir(parents=True, exist_ok=True)
    module = load_source(source)
    hidden, intermediate, experts, valid_tokens, num_blocks = CASES[args.case]
    static_padding = num_blocks - (valid_tokens + 127) // 128
    tilelang.disable_cache()
    kernel = module.RoutedMoEKernel(
        hidden,
        intermediate,
        experts,
        group_sum=valid_tokens,
        group_count=static_padding,
    )
    prim_func = kernel.impl.prim_func
    prefix = f"{args.source_tag}_case{args.case}"
    lowering = out / f"{prefix}_tilelang_primfunc.py"
    lowering.write_text(prim_func.script(show_meta=True) + "\n", encoding="utf-8")
    summary = {
        "source_tag": args.source_tag,
        "source": str(source),
        "source_sha256": sha256(source),
        "case": args.case,
        "shape": {
            "hidden": hidden,
            "intermediate": intermediate,
            "experts": experts,
            "valid_tokens": valid_tokens,
            "num_blocks": num_blocks,
        },
        "prim_func_type": str(type(prim_func)),
        "lowering": str(lowering),
        "lowering_bytes": lowering.stat().st_size,
        "lowering_sha256": sha256(lowering),
    }
    summary_path = out / f"{prefix}_lowering_summary.json"
    summary_path.write_text(json.dumps(summary, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, indent=2))


if __name__ == "__main__":
    main()
