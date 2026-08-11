#!/usr/bin/env python3
"""Run one v004 OJ case inside an explicit profiler range."""

from __future__ import annotations

import argparse
import json
import sys
from pathlib import Path

import torch


MOE_DIR = Path("/root/tilelang-metax/race_tests/moe")
sys.path.insert(0, str(MOE_DIR))
from oj_benchmark import build_case  # noqa: E402


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--case", type=int, choices=(1, 2, 3), required=True)
    parser.add_argument("--warmup", type=int, default=3)
    args = parser.parse_args()
    metadata, kernel, kernel_args = build_case(args.case)
    for _ in range(args.warmup):
        kernel(*kernel_args)
    torch.cuda.synchronize()
    torch.cuda.profiler.start()
    kernel(*kernel_args)
    torch.cuda.synchronize()
    torch.cuda.profiler.stop()
    print(json.dumps({"event": "PROFILE_DONE", "case": args.case, "warmup": args.warmup, **metadata}, sort_keys=True))


if __name__ == "__main__":
    main()
