#!/usr/bin/env python3
"""Same-process AB/BA benchmark for function-style MoE submissions."""

import argparse
import importlib.util
import json
import math
import statistics
from pathlib import Path

import tilelang
import torch


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}


def load_module(path, tag):
    spec = importlib.util.spec_from_file_location(f"paired_{tag}", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load submission: {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def random_tensor(shape, scale, generator):
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


def build_inputs(case_id):
    cfg = CASES[case_id]
    counts = [100] * (cfg["experts"] // 2) + [184] * (cfg["experts"] // 2)
    offsets = [0]
    padded_offsets = [0]
    group_idx = []
    for expert_id, count in enumerate(counts):
        offsets.append(offsets[-1] + count)
        blocks = math.ceil((count + 1) / 128)
        padded_offsets.append(padded_offsets[-1] + blocks * 128)
        group_idx.extend([expert_id] * blocks)
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260717 + case_id)
    total_padded = padded_offsets[-1]
    shared = (
        random_tensor((total_padded, cfg["hidden"]), 1.0, generator),
        random_tensor((cfg["experts"], cfg["intermediate"], cfg["hidden"]), 1.0 / math.sqrt(cfg["hidden"]), generator),
        random_tensor((cfg["experts"], cfg["intermediate"], cfg["hidden"]), 1.0 / math.sqrt(cfg["hidden"]), generator),
        random_tensor((cfg["experts"], cfg["hidden"], cfg["intermediate"]), 1.0 / math.sqrt(cfg["intermediate"]), generator),
        torch.rand((cfg["valid_tokens"],), device="cuda", dtype=torch.float32, generator=generator),
        torch.tensor(counts, device="cuda", dtype=torch.int32),
        torch.tensor(offsets, device="cuda", dtype=torch.int32),
        torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
        torch.tensor(group_idx, device="cuda", dtype=torch.int32),
    )
    return shared, total_padded


def elapsed_ms(run_kernel, args, warmup, repeat):
    for _ in range(warmup):
        run_kernel(*args)
    torch.cuda.synchronize()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        run_kernel(*args)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / repeat


def aggregate(values):
    return {
        "samples_ms": values,
        "mean_ms": statistics.fmean(values),
        "median_ms": statistics.median(values),
        "pstdev_ms": statistics.pstdev(values),
    }


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--baseline", required=True)
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--rounds", type=int, default=13)
    parser.add_argument("--warmup", type=int, default=20)
    parser.add_argument("--repeat", type=int, default=100)
    parser.add_argument("--cases", default="1,2,3")
    args = parser.parse_args()

    # The process-wide TileLang cache keys same-shape kernels too coarsely for
    # source A/B tests. Force independent compilation for each submission.
    tilelang.disable_cache()
    modules = {
        "baseline": load_module(args.baseline, "baseline"),
        "candidate": load_module(args.candidate, "candidate"),
    }
    results = []
    selected_cases = [int(value) for value in args.cases.split(",") if value]
    for case_id in selected_cases:
        cfg = CASES[case_id]
        shared, total_padded = build_inputs(case_id)
        call_args = {
            tag: (*shared, torch.empty((total_padded, cfg["hidden"]), device="cuda", dtype=torch.float16))
            for tag in modules
        }
        for tag in modules:
            modules[tag].run_kernel(*call_args[tag])
        torch.cuda.synchronize()

        samples = {"baseline": [], "candidate": []}
        rows = []
        for round_index in range(1, args.rounds + 1):
            order = ("baseline", "candidate") if round_index % 2 else ("candidate", "baseline")
            row = {"round": round_index, "order": list(order)}
            for tag in order:
                value = elapsed_ms(modules[tag].run_kernel, call_args[tag], args.warmup, args.repeat)
                samples[tag].append(value)
                row[f"{tag}_ms"] = value
            rows.append(row)

        baseline = aggregate(samples["baseline"])
        candidate = aggregate(samples["candidate"])
        results.append({
            "case": case_id,
            **cfg,
            "total_padded": total_padded,
            "baseline": baseline,
            "candidate": candidate,
            "speedup": baseline["median_ms"] / candidate["median_ms"],
            "rows": rows,
        })

    result = {
        "protocol": {"same_process": True, "order": "AB/BA alternating", "rounds": args.rounds,
                     "warmup_per_window": args.warmup, "repeat_per_window": args.repeat},
        "sources": {"baseline": str(Path(args.baseline).resolve()), "candidate": str(Path(args.candidate).resolve())},
        "results": results,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
