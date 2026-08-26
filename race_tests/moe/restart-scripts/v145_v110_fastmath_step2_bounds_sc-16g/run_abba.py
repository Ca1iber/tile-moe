#!/usr/bin/env python3
import importlib.util
import json
import math
import statistics

import torch


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}
PARENT = (
    "/root/tilelang-metax/race_tests/moe/restart-submission/"
    "v110_case1_unpredicated_native_up_logits_sc-16g/submission.py"
)
CANDIDATE = (
    "/root/tilelang-metax/race_tests/moe/restart-experiments/"
    "v145_v110_fastmath_step2_bounds_sc-16g/candidate_submission.py"
)


def load(path, tag):
    spec = importlib.util.spec_from_file_location(tag, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


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
    common = (
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
    )
    return common, total_padded


def timed(mod, args, repeat):
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        mod.run_kernel(*args)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / repeat


def main():
    parent = load(PARENT, "v110_parent_formal")
    candidate = load(CANDIDATE, "v145_candidate_formal")
    results = []
    for case_id in (1, 2, 3):
        cfg = CASES[case_id]
        common, total_padded = build_inputs(case_id)
        parent_out = torch.empty((total_padded, cfg["hidden"]), device="cuda", dtype=torch.float16)
        candidate_out = torch.empty_like(parent_out)
        pargs = common + (parent_out,)
        cargs = common + (candidate_out,)
        for _ in range(10):
            parent.run_kernel(*pargs)
            candidate.run_kernel(*cargs)
        torch.cuda.synchronize()
        diff = (candidate_out.float() - parent_out.float()).abs()
        correctness = {
            "max_abs": float(diff.max().item()),
            "mean_abs": float(diff.mean().item()),
            "strict_mismatch": int(
                (diff > (0.01 + 0.01 * parent_out.float().abs())).sum().item()
            ),
            "oj_mismatch": int(
                (diff > (0.05 + 0.05 * parent_out.float().abs())).sum().item()
            ),
        }
        parent_ms = []
        candidate_ms = []
        changes = []
        for _ in range(5):
            p1 = timed(parent, pargs, 50)
            c1 = timed(candidate, cargs, 50)
            c2 = timed(candidate, cargs, 50)
            p2 = timed(parent, pargs, 50)
            p = (p1 + p2) / 2
            c = (c1 + c2) / 2
            parent_ms.append(p)
            candidate_ms.append(c)
            changes.append((c / p - 1.0) * 100.0)
        result = {
            "case": case_id,
            "correctness": correctness,
            "parent_ms": parent_ms,
            "candidate_ms": candidate_ms,
            "change_pct": changes,
            "median_change_pct": statistics.median(changes),
            "mean_change_pct": statistics.mean(changes),
        }
        print(json.dumps(result, sort_keys=True), flush=True)
        results.append(result)
        del common, pargs, cargs, parent_out, candidate_out, diff
        torch.cuda.empty_cache()
    print(json.dumps({"summary": results}, sort_keys=True))


if __name__ == "__main__":
    main()
