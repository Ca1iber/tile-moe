#!/usr/bin/env python3
import argparse
import gc
import importlib.util
import json
import math
from pathlib import Path

import torch
import tilelang


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}


def load_run_kernel(path):
    spec = importlib.util.spec_from_file_location("v027_submission_candidate", path)
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
    block_m = 128
    counts_cpu = [100] * (experts // 2) + [184] * (experts // 2)
    assert sum(counts_cpu) == valid_tokens

    offsets_cpu = [0]
    padded_offsets_cpu = [0]
    group_idx_cpu = []
    for expert_id, count in enumerate(counts_cpu):
        offsets_cpu.append(offsets_cpu[-1] + count)
        padded_blocks = math.ceil((count + 1) / block_m)
        padded_offsets_cpu.append(padded_offsets_cpu[-1] + padded_blocks * block_m)
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
    return cfg, total_padded, (
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
        expert_output = (gate_logits * up_logits) @ down[expert_id].float().t()
        expert_output *= routed[raw_start : raw_start + count, None]
        output[padded_start : padded_start + count] = expert_output.to(torch.float16)
    return output


def valid_mask(args):
    mask = torch.zeros((args[0].shape[0],), device="cuda", dtype=torch.bool)
    for expert_id in range(int(args[5].numel())):
        count = int(args[5][expert_id].item())
        padded_start = int(args[7][expert_id].item())
        mask[padded_start : padded_start + count] = True
    return mask


def run_case(case_id, run_kernel):
    cfg, total_padded, args = build_inputs(case_id)
    run_kernel(*args[:9], args[9])
    torch.cuda.synchronize()
    module = run_kernel.__globals__
    kernel = next(iter(module["_KERNEL_CACHE"].values()))
    source_path = Path("/root/moe_runs/v030_case2_generated_device.cpp")
    source_path.write_text(kernel.get_kernel_source(), encoding="utf-8")
    expected = reference(args)
    mask = valid_mask(args)
    actual = args[9]
    delta = (actual[mask].float() - expected[mask].float()).abs()
    max_abs = float(delta.max().item())
    bad = delta > (0.01 + 0.01 * expected[mask].float().abs())
    print(json.dumps({
        "generated_source": str(source_path),
        "generated_bytes": source_path.stat().st_size,
        "bad_total": int(bad.sum().item()),
        "bad_first_128_cols": int(bad[:, :128].sum().item()),
        "bad_second_128_cols": int(bad[:, 128:256].sum().item()),
        "bad_remaining_cols": int(bad[:, 256:].sum().item()),
        "nan_actual": int(torch.isnan(actual[mask].float()).sum().item()),
        "max_abs": max_abs,
    }, ensure_ascii=False), flush=True)
    torch.testing.assert_close(actual[mask].float(), expected[mask].float(), rtol=1e-2, atol=1e-2)
    padding_max = float(actual[~mask].abs().max().item()) if bool((~mask).any()) else 0.0
    result = {
        "case": case_id,
        **cfg,
        "total_padded": total_padded,
        "num_blocks_m": int(args[8].numel()),
        "max_abs": max_abs,
        "padding_max": padding_max,
        "status": "PASS",
    }
    print(json.dumps(result, ensure_ascii=False), flush=True)
    del args, expected, mask, actual
    gc.collect()
    torch.cuda.empty_cache()
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--submission", required=True)
    parser.add_argument("--cases", default="1,2,3")
    args = parser.parse_args()
    run_kernel = load_run_kernel(str(Path(args.submission).resolve()))
    results = [run_case(int(case_id), run_kernel) for case_id in args.cases.split(",") if case_id]
    print(json.dumps({"results": results}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
