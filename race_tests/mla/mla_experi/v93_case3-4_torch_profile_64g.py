import argparse
import importlib.util
import json
from pathlib import Path

import torch
from torch.profiler import ProfilerActivity, profile


OFFICIAL_KV_CTX = {3: 8192, 4: 16384}


def load_module(path):
    spec = importlib.util.spec_from_file_location("mla_profile_target", path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--submission", required=True)
    parser.add_argument("--case", type=int, choices=OFFICIAL_KV_CTX, required=True)
    parser.add_argument("--warmup", type=int, default=10)
    parser.add_argument("--iterations", type=int, default=20)
    parser.add_argument("--output", required=True)
    parser.add_argument("--trace")
    args = parser.parse_args()

    module = load_module(args.submission)
    kv_ctx = OFFICIAL_KV_CTX[args.case]
    torch.manual_seed(100000 + kv_ctx)
    q = torch.randn((1, 16, 512), device="cuda", dtype=torch.float16)
    q_pe = torch.randn((1, 16, 64), device="cuda", dtype=torch.float16)
    kv = torch.randn((1, kv_ctx, 1, 512), device="cuda", dtype=torch.float16)
    k_pe = torch.randn((1, kv_ctx, 1, 64), device="cuda", dtype=torch.float16)
    output = torch.empty((1, 16, 512), device="cuda", dtype=torch.float16)

    def invoke():
        module.run_kernel(q, q_pe, kv, k_pe, output, 1, 16, 1, kv_ctx, 512, 64)

    for _ in range(args.warmup):
        invoke()
    torch.cuda.synchronize()

    activities = [ProfilerActivity.CPU, ProfilerActivity.CUDA]
    with profile(activities=activities, record_shapes=False) as prof:
        for _ in range(args.iterations):
            invoke()
        torch.cuda.synchronize()

    kernels = []
    for event in prof.key_averages():
        device_total = getattr(event, "cuda_time_total", 0.0)
        if device_total <= 0:
            device_total = getattr(event, "device_time_total", 0.0)
        if event.key.startswith("main_split_kernel") and event.count:
            kernels.append(
                {
                    "name": event.key,
                    "count": event.count,
                    "total_us": device_total,
                    "average_us": device_total / event.count,
                }
            )

    device_total = sum(item["total_us"] for item in kernels)
    for item in kernels:
        item["device_share"] = item["total_us"] / device_total if device_total else 0.0

    result = {
        "case": args.case,
        "batch": 1,
        "heads": 16,
        "kv_ctx": kv_ctx,
        "dim": 512,
        "pe_dim": 64,
        "warmup": args.warmup,
        "iterations": args.iterations,
        "kernels": kernels,
    }
    Path(args.output).write_text(json.dumps(result, indent=2) + "\n")
    if args.trace:
        prof.export_chrome_trace(args.trace)
    print(json.dumps(result, sort_keys=True))


if __name__ == "__main__":
    main()
