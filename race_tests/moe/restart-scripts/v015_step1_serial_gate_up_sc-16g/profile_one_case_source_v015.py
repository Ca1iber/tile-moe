#!/usr/bin/env python3
"""Profile one v015 OJ case from an explicit kernel source snapshot."""

from __future__ import annotations

import argparse
import importlib.util
import json
import os
import sys
from pathlib import Path

import torch


def load_kernel_module(source: Path) -> None:
    spec = importlib.util.spec_from_file_location("custom_fusedmoe", source)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot import kernel source: {source}")
    module = importlib.util.module_from_spec(spec)
    sys.modules["custom_fusedmoe"] = module
    spec.loader.exec_module(module)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--case", type=int, choices=(1, 2, 3), required=True)
    parser.add_argument("--warmup", type=int, default=3)
    parser.add_argument("--kernel-source", type=Path, required=True)
    parser.add_argument("--source-tag", required=True)
    args = parser.parse_args()

    project_root = Path(os.environ.get("MOE_PROJECT_ROOT", "/root/tilelang-metax"))
    moe_dir = project_root / "race_tests/moe"
    sys.path.insert(0, str(moe_dir))
    source = args.kernel_source.resolve()
    load_kernel_module(source)
    from oj_benchmark import build_case

    metadata, kernel, kernel_args = build_case(args.case)
    for _ in range(args.warmup):
        kernel(*kernel_args)
    torch.cuda.synchronize()
    torch.cuda.profiler.start()
    kernel(*kernel_args)
    torch.cuda.synchronize()
    torch.cuda.profiler.stop()
    print(
        json.dumps(
            {
                "event": "PROFILE_DONE",
                "case": args.case,
                "warmup": args.warmup,
                "source_tag": args.source_tag,
                "kernel_source": str(source),
                **metadata,
            },
            sort_keys=True,
        )
    )


if __name__ == "__main__":
    main()
