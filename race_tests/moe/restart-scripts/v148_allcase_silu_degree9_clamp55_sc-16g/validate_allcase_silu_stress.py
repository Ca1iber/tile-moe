#!/usr/bin/env python3
import argparse
import importlib.util
import json
import math
from pathlib import Path

import torch


PARENT = "/root/tilelang-metax/race_tests/moe/restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py"
CASES = {
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048},
}
VARIANTS = (
    (20260718, "grouped", 1.0, 1.0, 1.0, 1.0),
    (81394, "alternating", 1.0, 1.0, 1.0, 1.0),
    (42, "reversed", 1.0, 1.0, 1.0, 1.0),
    (150709, "permuted", 1.0, 1.0, 1.0, 1.0),
    (20260826, "grouped", 0.5, 1.0, 1.0, 1.0),
    (20260827, "alternating", 1.5, 1.0, 1.0, 1.0),
    (20260828, "reversed", 1.0, 1.5, 1.0, 1.0),
    (20260829, "permuted", 1.0, 1.0, 1.5, 1.5),
)


def load(path, tag):
    spec = importlib.util.spec_from_file_location(tag, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def random_tensor(shape, scale, generator):
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


def counts_for(experts, pattern, seed):
    low = [100] * (experts // 2)
    high = [184] * (experts // 2)
    if pattern == "grouped":
        return low + high
    if pattern == "alternating":
        return [184 if i % 2 == 0 else 100 for i in range(experts)]
    if pattern == "reversed":
        return high + low
    generator = torch.Generator(device="cpu")
    generator.manual_seed(seed)
    order = torch.randperm(experts, generator=generator).tolist()
    base = low + high
    return [base[i] for i in order]


def build(cfg, seed, pattern, input_scale, gate_scale, up_scale, down_scale):
    experts = cfg["experts"]
    hidden = cfg["hidden"]
    intermediate = cfg["intermediate"]
    counts = counts_for(experts, pattern, seed)
    offsets = [0]
    padded_offsets = [0]
    group_idx = []
    for expert_id, count in enumerate(counts):
        offsets.append(offsets[-1] + count)
        blocks = math.ceil((count + 1) / 128)
        padded_offsets.append(padded_offsets[-1] + blocks * 128)
        group_idx.extend([expert_id] * blocks)
    total_padded = padded_offsets[-1]
    generator = torch.Generator(device="cuda")
    generator.manual_seed(seed)
    stacked = random_tensor((total_padded, hidden), input_scale, generator)
    gate = random_tensor(
        (experts, intermediate, hidden), gate_scale / math.sqrt(hidden), generator
    )
    up = random_tensor(
        (experts, intermediate, hidden), up_scale / math.sqrt(hidden), generator
    )
    down = random_tensor(
        (experts, hidden, intermediate), down_scale / math.sqrt(intermediate), generator
    )
    routing = torch.rand(
        (offsets[-1],), device="cuda", dtype=torch.float32, generator=generator
    )
    common = (
        stacked,
        gate,
        up,
        down,
        routing,
        torch.tensor(counts, device="cuda", dtype=torch.int32),
        torch.tensor(offsets, device="cuda", dtype=torch.int32),
        torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
        torch.tensor(group_idx, device="cuda", dtype=torch.int32),
    )
    valid = torch.zeros((total_padded,), device="cuda", dtype=torch.bool)
    for expert_id, count in enumerate(counts):
        start = padded_offsets[expert_id]
        valid[start : start + count] = True
    return common, valid


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--case", type=int, choices=(2, 3), required=True)
    parser.add_argument("--output", type=Path, required=True)
    parser.add_argument("--variant-index", type=int, choices=range(len(VARIANTS)))
    args = parser.parse_args()
    cfg = CASES[args.case]
    parent = load(PARENT, f"stress_parent_case{args.case}")
    candidate = load(args.candidate, f"stress_candidate_case{args.case}")
    rows = []
    selected = list(enumerate(VARIANTS))
    if args.variant_index is not None:
        selected = [selected[args.variant_index]]
    for index, variant in selected:
        common, valid = build(cfg, *variant)
        parent_out = torch.empty_like(common[0])
        candidate_out = torch.empty_like(parent_out)
        repeat_out = torch.empty_like(parent_out)
        if index % 2 == 0:
            parent.run_kernel(*common, parent_out)
            candidate.run_kernel(*common, candidate_out)
        else:
            candidate.run_kernel(*common, candidate_out)
            parent.run_kernel(*common, parent_out)
        candidate.run_kernel(*common, repeat_out)
        torch.cuda.synchronize()
        parent_valid = parent_out[valid].float()
        candidate_valid = candidate_out[valid].float()
        repeat_valid = repeat_out[valid]
        diff = (candidate_valid - parent_valid).abs()
        strict_limit = 0.01 + 0.01 * parent_valid.abs()
        oj_limit = 0.05 + 0.05 * parent_valid.abs()
        row = {
            "seed": variant[0],
            "pattern": variant[1],
            "input_scale": variant[2],
            "gate_scale": variant[3],
            "up_scale": variant[4],
            "down_scale": variant[5],
            "max_abs": float(diff.max().item()),
            "mean_abs": float(diff.mean().item()),
            "strict_mismatch": int((diff > strict_limit).sum().item()),
            "oj_mismatch": int((diff > oj_limit).sum().item()),
            "deterministic": bool(torch.equal(candidate_out[valid], repeat_valid)),
            "parent_absmax": float(parent_valid.abs().max().item()),
        }
        rows.append(row)
        print(json.dumps(row, sort_keys=True), flush=True)
        del common, valid, parent_out, candidate_out, repeat_out
        del parent_valid, candidate_valid, repeat_valid, diff, strict_limit, oj_limit
        torch.cuda.empty_cache()
    standard_rows = [r for r in rows if r["pattern"] in ("grouped", "alternating", "reversed", "permuted") and r["input_scale"] == 1.0 and r["gate_scale"] == 1.0 and r["up_scale"] == 1.0 and r["down_scale"] == 1.0]
    payload = {
        "case": args.case,
        "candidate": args.candidate,
        "all_standard_strict": all(r["strict_mismatch"] == 0 for r in standard_rows),
        "all_oj": all(r["oj_mismatch"] == 0 for r in rows),
        "all_deterministic": all(r["deterministic"] for r in rows),
        "rows": rows,
    }
    args.output.write_text(json.dumps(payload, indent=2) + "\n")
    print(json.dumps({"summary": payload}, sort_keys=True))


if __name__ == "__main__":
    main()
