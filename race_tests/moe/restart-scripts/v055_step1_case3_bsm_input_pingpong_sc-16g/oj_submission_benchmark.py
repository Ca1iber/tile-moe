#!/usr/bin/env python3
"""Benchmark an exact archived MoE submission on the three OJ distributions."""

import argparse
import gc
import importlib.util
import json
import math

import torch


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}


def load_run_kernel(path):
    spec = importlib.util.spec_from_file_location("submission_under_test", path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load submission: {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module.run_kernel


def make_random(shape, scale, generator):
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


def build_inputs(case_id):
    cfg = CASES[case_id]
    experts = cfg["experts"]
    hidden = cfg["hidden"]
    intermediate = cfg["intermediate"]
    valid_tokens = cfg["valid_tokens"]
    counts_cpu = [100] * (experts // 2) + [184] * (experts // 2)
    offsets_cpu = [0]
    padded_offsets_cpu = [0]
    group_idx_cpu = []
    for expert_id, count in enumerate(counts_cpu):
        offsets_cpu.append(offsets_cpu[-1] + count)
        padded_blocks = math.ceil((count + 1) / 128)
        padded_offsets_cpu.append(padded_offsets_cpu[-1] + padded_blocks * 128)
        group_idx_cpu.extend([expert_id] * padded_blocks)

    total_padded = padded_offsets_cpu[-1]
    generator = torch.Generator(device="cuda")
    generator.manual_seed(20260717 + case_id)
    stacked = make_random((total_padded, hidden), 1.0, generator)
    gate = make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator)
    up = make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator)
    down = make_random((experts, hidden, intermediate), 1.0 / math.sqrt(intermediate), generator)
    routed = torch.rand((valid_tokens,), device="cuda", dtype=torch.float32, generator=generator)
    sizes = torch.tensor(counts_cpu, device="cuda", dtype=torch.int32)
    offsets = torch.tensor(offsets_cpu, device="cuda", dtype=torch.int32)
    padded_offsets = torch.tensor(padded_offsets_cpu, device="cuda", dtype=torch.int32)
    group_idx = torch.tensor(group_idx_cpu, device="cuda", dtype=torch.int32)
    output = torch.empty_like(stacked)
    return cfg, (
        stacked,
        gate,
        up,
        down,
        routed,
        sizes,
        offsets,
        padded_offsets,
        group_idx,
        output,
    )


def reference(args):
    stacked, gate, up, down, routed, sizes, offsets, padded_offsets = args[:8]
    output = torch.zeros_like(stacked)
    for expert_id in range(int(sizes.numel())):
        count = int(sizes[expert_id].item())
        raw_start = int(offsets[expert_id].item())
        padded_start = int(padded_offsets[expert_id].item())
        x = stacked[padded_start : padded_start + count].float()
        gate_logits = torch.nn.functional.silu(x @ gate[expert_id].float().t())
        up_logits = x @ up[expert_id].float().t()
        value = (gate_logits * up_logits) @ down[expert_id].float().t()
        value *= routed[raw_start : raw_start + count, None]
        output[padded_start : padded_start + count] = value.to(torch.float16)
    return output


def valid_mask(args):
    mask = torch.zeros((args[0].shape[0],), device="cuda", dtype=torch.bool)
    for expert_id in range(int(args[5].numel())):
        count = int(args[5][expert_id].item())
        padded_start = int(args[7][expert_id].item())
        mask[padded_start : padded_start + count] = True
    return mask


def run_case(case_id, run_kernel, warmup, repeat):
    cfg, values = build_inputs(case_id)
    kernel_args = (*values[:9], values[9])
    run_kernel(*kernel_args)
    torch.cuda.synchronize()
    expected = reference(values)
    mask = valid_mask(values)
    torch.testing.assert_close(values[9][mask].float(), expected[mask].float(), rtol=1e-2, atol=1e-2)
    max_abs = float((values[9][mask].float() - expected[mask].float()).abs().max().item())
    padding_max = float(values[9][~mask].abs().max().item())

    for _ in range(warmup):
        run_kernel(*kernel_args)
    torch.cuda.synchronize()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        run_kernel(*kernel_args)
    end.record()
    torch.cuda.synchronize()
    average_ms = start.elapsed_time(end) / repeat
    result = {
        "case": case_id,
        **cfg,
        "total_padded": int(values[0].shape[0]),
        "num_blocks_m": int(values[8].numel()),
        "warmup": warmup,
        "repeat": repeat,
        "average_ms": average_ms,
        "max_abs": max_abs,
        "padding_max": padding_max,
        "status": "PASS",
    }
    print(json.dumps(result, ensure_ascii=False), flush=True)
    del values, kernel_args, expected, mask
    gc.collect()
    torch.cuda.empty_cache()
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--submission", required=True)
    parser.add_argument("--cases", default="1,2,3")
    parser.add_argument("--warmup", type=int, default=20)
    parser.add_argument("--repeat", type=int, default=100)
    args = parser.parse_args()
    run_kernel = load_run_kernel(args.submission)
    results = [
        run_case(int(case_id), run_kernel, args.warmup, args.repeat)
        for case_id in args.cases.split(",")
        if case_id
    ]
    print(json.dumps({"submission": args.submission, "results": results}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
