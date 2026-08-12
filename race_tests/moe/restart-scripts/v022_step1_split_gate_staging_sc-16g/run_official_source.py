#!/usr/bin/env python3
"""Run the repository official fusedmoe benchmark from an explicit source."""

from __future__ import annotations

import argparse
import hashlib
import importlib.util
import os
import runpy
import sys
from pathlib import Path


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--kernel-source", type=Path, required=True)
    parser.add_argument("--source-tag", required=True)
    args = parser.parse_args()

    repo = Path(os.environ.get("MOE_PROJECT_ROOT", "/root/tilelang-metax"))
    moe_dir = repo / "race_tests/moe"
    source = args.kernel_source.resolve()
    spec = importlib.util.spec_from_file_location("custom_fusedmoe", source)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load {source}")
    module = importlib.util.module_from_spec(spec)
    sys.modules["custom_fusedmoe"] = module
    spec.loader.exec_module(module)
    print(
        f"SOURCE_IDENTITY tag={args.source_tag} path={source} "
        f"sha256={hashlib.sha256(source.read_bytes()).hexdigest()}",
        flush=True,
    )
    sys.path.insert(0, str(moe_dir))
    os.chdir(moe_dir)
    runpy.run_path(str(moe_dir / "fusedmoe_benchmark.py"), run_name="__main__")


if __name__ == "__main__":
    main()
