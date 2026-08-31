"""Capture steady exact-v197 Case-2/3 phase times with Torch profiler."""

from __future__ import annotations

import argparse
from pathlib import Path

import torch

from d212_v197_profile_driver import load, make_inputs


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--submission", type=Path, required=True)
    parser.add_argument("--case", type=int, choices=(2, 3), required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--warmup", type=int, default=5)
    parser.add_argument("--iterations", type=int, default=5)
    args = parser.parse_args()

    module = load(args.submission.resolve())
    kernel_args = make_inputs(args.case)
    call = lambda: module.run_kernel(*kernel_args)
    for _ in range(args.warmup):
        call()
    torch.cuda.synchronize()

    activities = [
        torch.profiler.ProfilerActivity.CPU,
        torch.profiler.ProfilerActivity.CUDA,
    ]
    with torch.profiler.profile(activities=activities, record_shapes=False) as profile:
        for _ in range(args.iterations):
            call()
        torch.cuda.synchronize()

    args.output.parent.mkdir(parents=True, exist_ok=True)
    profile.export_chrome_trace(str(args.output))
    print(profile.key_averages().table(sort_by="self_cuda_time_total", row_limit=20))
    print(f"trace={args.output.resolve()}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
