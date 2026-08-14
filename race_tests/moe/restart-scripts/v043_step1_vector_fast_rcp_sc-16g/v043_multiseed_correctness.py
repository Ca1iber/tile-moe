#!/usr/bin/env python3
import argparse
import importlib.util
import json
import math

import torch


def load_module(tag, path):
    spec = importlib.util.spec_from_file_location(tag, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def make_random(shape, scale, generator):
    value = torch.randn(shape, device="cuda", dtype=torch.float16, generator=generator)
    value.mul_(scale)
    return value


def make_case(seed, input_scale):
    experts, hidden, intermediate, valid_tokens = 16, 2048, 8192, 2272
    counts = [100] * 8 + [184] * 8
    offsets = [0]
    padded_offsets = [0]
    group_idx = []
    for expert_id, count in enumerate(counts):
        offsets.append(offsets[-1] + count)
        blocks = math.ceil((count + 1) / 128)
        padded_offsets.append(padded_offsets[-1] + blocks * 128)
        group_idx.extend([expert_id] * blocks)
    generator = torch.Generator(device="cuda")
    generator.manual_seed(seed)
    total_padded = padded_offsets[-1]
    common = (
        make_random((total_padded, hidden), input_scale, generator),
        make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator),
        make_random((experts, intermediate, hidden), 1.0 / math.sqrt(hidden), generator),
        make_random((experts, hidden, intermediate), 1.0 / math.sqrt(intermediate), generator),
        torch.rand((valid_tokens,), device="cuda", dtype=torch.float32, generator=generator),
        torch.tensor(counts, device="cuda", dtype=torch.int32),
        torch.tensor(offsets, device="cuda", dtype=torch.int32),
        torch.tensor(padded_offsets, device="cuda", dtype=torch.int32),
        torch.tensor(group_idx, device="cuda", dtype=torch.int32),
    )
    mask = torch.zeros((total_padded,), device="cuda", dtype=torch.bool)
    for expert_id, count in enumerate(counts):
        mask[padded_offsets[expert_id] : padded_offsets[expert_id] + count] = True
    return common, mask


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent", required=True)
    parser.add_argument("--candidate", required=True)
    args = parser.parse_args()
    parent = load_module("v043_multiseed_parent", args.parent)
    candidate = load_module("v043_multiseed_candidate", args.candidate)
    rows = []
    for seed in (17, 20260718, 314159):
        for input_scale in (0.25, 1.0, 2.0):
            common, mask = make_case(seed, input_scale)
            outputs = {
                "parent": torch.empty_like(common[0]),
                "candidate": torch.empty_like(common[0]),
            }
            parent.run_kernel(*common, outputs["parent"])
            candidate.run_kernel(*common, outputs["candidate"])
            torch.cuda.synchronize()
            p = outputs["parent"][mask].float()
            c = outputs["candidate"][mask].float()
            torch.testing.assert_close(c, p, rtol=1e-2, atol=1e-2)
            diff = (c - p).abs()
            row = {
                "seed": seed,
                "input_scale": input_scale,
                "max_abs_parent_candidate": float(diff.max().item()),
                "mean_abs_parent_candidate": float(diff.mean().item()),
                "different_fp16_elements": int((c != p).sum().item()),
                "valid_fp16_elements": int(c.numel()),
                "padding_parent_max": float(outputs["parent"][~mask].abs().max().item()),
                "padding_candidate_max": float(outputs["candidate"][~mask].abs().max().item()),
                "status": "PASS",
            }
            rows.append(row)
            print(json.dumps(row, ensure_ascii=False), flush=True)
            del common, mask, outputs, p, c, diff
            torch.cuda.empty_cache()
    print(json.dumps({"rows": rows, "status": "PASS"}, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
