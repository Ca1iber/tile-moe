#!/usr/bin/env python3
"""Run the project OJ benchmark against an explicit kernel source snapshot."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import json
import os
import sys
from pathlib import Path


def load_kernel_module(source: Path) -> None:
    spec = importlib.util.spec_from_file_location("custom_fusedmoe", source)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot import kernel source: {source}")
    module = importlib.util.module_from_spec(spec)
    sys.modules["custom_fusedmoe"] = module
    spec.loader.exec_module(module)


def sha256(path: Path) -> str:
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--kernel-source", type=Path, required=True)
    parser.add_argument("--source-tag", required=True)
    parser.add_argument("--cases", default="1,2,3")
    parser.add_argument("--warmup", type=int, default=10)
    parser.add_argument("--repeat", type=int, default=100)
    args = parser.parse_args()

    project_root = Path(os.environ.get("MOE_PROJECT_ROOT", "/root/tilelang-metax"))
    moe_dir = project_root / "race_tests/moe"
    sys.path.insert(0, str(moe_dir))
    source = args.kernel_source.resolve()
    load_kernel_module(source)
    from oj_benchmark import CASES, run_case

    case_ids = [int(value) for value in args.cases.split(",") if value]
    unknown = [case_id for case_id in case_ids if case_id not in CASES]
    if unknown:
        raise ValueError(f"unknown case ids: {unknown}")

    identity = {
        "event": "SOURCE_IDENTITY",
        "source_tag": args.source_tag,
        "kernel_source": str(source),
        "kernel_sha256": sha256(source),
    }
    print(json.dumps(identity, sort_keys=True), flush=True)
    results = [run_case(case_id, args.warmup, args.repeat) for case_id in case_ids]
    print(json.dumps({**identity, "results": results}, ensure_ascii=False, indent=2), flush=True)


if __name__ == "__main__":
    main()
