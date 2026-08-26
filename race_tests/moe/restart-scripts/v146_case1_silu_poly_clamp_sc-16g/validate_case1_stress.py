#!/usr/bin/env python3
import importlib.util
import json
import math

import torch


PARENT = "/root/tilelang-metax/race_tests/moe/restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py"
CANDIDATE = "/root/tilelang-metax/race_tests/moe/restart-experiments/v146_case1_silu_poly_clamp_sc-16g/candidate_submission.py"
HIDDEN = 2048
INTERMEDIATE = 8192
EXPERTS = 16

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


def counts_for(pattern, seed):
    low = [100] * (EXPERTS // 2)
    high = [184] * (EXPERTS // 2)
    if pattern == "grouped":
        return low + high
    if pattern == "alternating":
        return [184 if i % 2 == 0 else 100 for i in range(EXPERTS)]
    if pattern == "reversed":
        return high + low
    generator = torch.Generator(device="cpu")
    generator.manual_seed(seed)
    order = torch.randperm(EXPERTS, generator=generator).tolist()
    base = low + high
    return [base[i] for i in order]


def build(seed, pattern, input_scale, gate_scale, up_scale, down_scale):
    counts = counts_for(pattern, seed)
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
    stacked = random_tensor((total_padded, HIDDEN), input_scale, generator)
    gate = random_tensor(
        (EXPERTS, INTERMEDIATE, HIDDEN),
        gate_scale / math.sqrt(HIDDEN),
        generator,
    )
    up = random_tensor(
        (EXPERTS, INTERMEDIATE, HIDDEN),
        up_scale / math.sqrt(HIDDEN),
        generator,
    )
    down = random_tensor(
        (EXPERTS, HIDDEN, INTERMEDIATE),
        down_scale / math.sqrt(INTERMEDIATE),
        generator,
    )
    routing = torch.rand((offsets[-1],), device="cuda", dtype=torch.float32, generator=generator)
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
    parent = load(PARENT, "v110_poly_validation_parent")
    candidate = load(CANDIDATE, "v110_poly_validation_candidate")
    rows = []
    for index, variant in enumerate(VARIANTS):
        seed, pattern, input_scale, gate_scale, up_scale, down_scale = variant
        common, valid = build(*variant)
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
            "seed": seed,
            "pattern": pattern,
            "input_scale": input_scale,
            "gate_scale": gate_scale,
            "up_scale": up_scale,
            "down_scale": down_scale,
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
    summary = {
        "all_standard_strict": all(row["strict_mismatch"] == 0 for row in rows[:4]),
        "all_oj": all(row["oj_mismatch"] == 0 for row in rows),
        "all_deterministic": all(row["deterministic"] for row in rows),
        "rows": rows,
    }
    print(json.dumps({"summary": summary}, sort_keys=True))


if __name__ == "__main__":
    main()
