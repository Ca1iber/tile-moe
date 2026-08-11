#!/usr/bin/env python3
"""Run exactly one current custom_fusedmoe OJ case inside a profiler range."""

import argparse
import json
import sys
from pathlib import Path

import torch


MOE_DIR = next(parent for parent in Path(__file__).resolve().parents if parent.name == "moe")
sys.path.insert(0, str(MOE_DIR))

from oj_benchmark import build_case  # noqa: E402


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--case", type=int, choices=(1, 2, 3), required=True)
    parser.add_argument("--warmup", type=int, default=3)
    parser.add_argument("--torch-profile", action="store_true")
    args = parser.parse_args()

    metadata, kernel, kernel_args = build_case(args.case)
    for _ in range(args.warmup):
        kernel(*kernel_args)
    torch.cuda.synchronize()

    if args.torch_profile:
        with torch.profiler.profile(
            activities=[torch.profiler.ProfilerActivity.CPU, torch.profiler.ProfilerActivity.CUDA],
            record_shapes=False,
        ) as profile:
            kernel(*kernel_args)
            torch.cuda.synchronize()
        print(profile.key_averages().table(sort_by="self_cuda_time_total", row_limit=20))
    else:
        torch.cuda.profiler.start()
        kernel(*kernel_args)
        torch.cuda.synchronize()
        torch.cuda.profiler.stop()

    print(
        json.dumps(
            {
                "event": "CUSTOM_FUSEDMOE_PROFILE_DONE",
                "case": args.case,
                "warmup": args.warmup,
                **metadata,
            },
            sort_keys=True,
        ),
        flush=True,
    )


if __name__ == "__main__":
    main()
