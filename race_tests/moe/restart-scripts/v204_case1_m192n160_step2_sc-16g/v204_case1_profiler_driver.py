#!/usr/bin/env python3
"""Run exact v204 Case1 repeatedly for mcProfiler collection on machine mate."""

from __future__ import annotations

import argparse
import importlib.util
from pathlib import Path

import torch


def load_module(path: Path, name: str):
    spec = importlib.util.spec_from_file_location(name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot import {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--submission", type=Path, required=True)
    parser.add_argument("--helper", type=Path, required=True)
    parser.add_argument("--warmup", type=int, default=3)
    parser.add_argument("--replays", type=int, default=2)
    args = parser.parse_args()

    helper = load_module(args.helper.resolve(), "v204_profile_helper")
    submission = helper.load_module(str(args.submission.resolve()), "v204_case1_exact")
    values = helper.build_inputs(1)
    for _ in range(args.warmup):
        submission.run_kernel(*values)
    torch.cuda.synchronize()
    for _ in range(args.replays):
        submission.run_kernel(*values)
    torch.cuda.synchronize()
    print(
        f"V204_CASE1_PROFILE_DONE warmup={args.warmup} replays={args.replays} "
        f"submission={args.submission.resolve()}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
