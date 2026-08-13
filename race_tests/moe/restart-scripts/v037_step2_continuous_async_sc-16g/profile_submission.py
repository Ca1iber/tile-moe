#!/usr/bin/env python3
"""Profile one exact OJ submission invocation for mcTracer/mcProfiler."""

import argparse
import importlib.util
import json
import math

import torch


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}


def load_module(path, tag):
    spec = importlib.util.spec_from_file_location(f"submission_{tag}", path)
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
    return (
        random_tensor((total_padded, cfg["hidden"]), 1.0, generator),
        random_tensor(
            (cfg["experts"], cfg["intermediate"], cfg["hidden"]),
            1.0 / math.sqrt(cfg["hidden"]),
            generator,
        ),
        random_tensor(
            (cfg["experts"], cfg["intermediate"], cfg["hidden"]),
            1.0 / math.sqrt(cfg["hidden"]),
            generator,
        ),
        random_tensor(
            (cfg["experts"], cfg["hidden"], cfg["intermediate"]),
            1.0 / math.sqrt(cfg["intermediate"]),
            generator,
        ),
        torch.rand((cfg["valid_tokens"],), device="cuda", dtype=torch.float32, generator=generator),
        torch.tensor(counts, device="cuda", dtype=torch.int32),
        torch.tensor(offsets, device="cuda", dtype=torch.int32),
        torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
        torch.tensor(group_idx, device="cuda", dtype=torch.int32),
        torch.empty((total_padded, cfg["hidden"]), device="cuda", dtype=torch.float16),
    )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--submission", required=True)
    parser.add_argument("--source-tag", required=True)
    parser.add_argument("--case", type=int, choices=(1, 2, 3), default=2)
    parser.add_argument("--warmup", type=int, default=5)
    args = parser.parse_args()
    module = load_module(args.submission, args.source_tag)
    values = build_inputs(args.case)
    for _ in range(args.warmup):
        module.run_kernel(*values)
    torch.cuda.synchronize()
    torch.cuda.profiler.start()
    module.run_kernel(*values)
    torch.cuda.synchronize()
    torch.cuda.profiler.stop()
    print(
        json.dumps(
            {
                "event": "PROFILE_DONE",
                "case": args.case,
                "warmup": args.warmup,
                "source_tag": args.source_tag,
                "submission": args.submission,
                **CASES[args.case],
                "total_padded": int(values[0].shape[0]),
            },
            sort_keys=True,
        )
    )


if __name__ == "__main__":
    main()
