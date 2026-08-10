import argparse
import gc
import importlib.util
import json
import math
import statistics
from pathlib import Path

import torch


CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088},
}


def load_submission(path, module_name):
    spec = importlib.util.spec_from_file_location(module_name, path)
    if spec is None or spec.loader is None:
        raise RuntimeError(f"cannot load submission: {path}")
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


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

    # The known OJ case-1 diagnostic has 2272 valid rows and 24 padded blocks.
    # Repeating the same 100/184-token expert distribution gives 24/48/96
    # blocks for the three proportionally scaled official cases.
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

    input_scale = 1.0
    gate_scale = 1.0 / math.sqrt(hidden)
    down_scale = 1.0 / math.sqrt(intermediate)
    stacked = make_random((total_padded, hidden), input_scale, generator)
    gate = make_random((experts, intermediate, hidden), gate_scale, generator)
    up = make_random((experts, intermediate, hidden), gate_scale, generator)
    down = make_random((experts, hidden, intermediate), down_scale, generator)
    routed_weights = torch.rand((valid_tokens,), device="cuda", dtype=torch.float32, generator=generator)
    group_sizes = torch.tensor(counts_cpu, device="cuda", dtype=torch.int32)
    group_offsets = torch.tensor(offsets_cpu, device="cuda", dtype=torch.int32)
    group_padded_offsets = torch.tensor(padded_offsets_cpu, device="cuda", dtype=torch.int32)
    group_idx = torch.tensor(group_idx_cpu, device="cuda", dtype=torch.int32)

    args = (
        stacked,
        gate,
        up,
        down,
        routed_weights,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        group_idx,
    )
    return cfg, total_padded, args


def elapsed_ms(run_kernel, args, output, warmup, repeat):
    for _ in range(warmup):
        run_kernel(*args, output)
    torch.cuda.synchronize()

    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(repeat):
        run_kernel(*args, output)
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / repeat


def compare_outputs(reference, candidate):
    torch.testing.assert_close(candidate.float(), reference.float(), rtol=1e-2, atol=1e-2)
    return (candidate.float() - reference.float()).abs().max().item()


def run_case(case_id, baseline, candidate, warmup, repeat, rounds):
    cfg, total_padded, args = build_inputs(case_id)
    baseline_output = torch.empty_like(args[0])
    candidate_output = torch.empty_like(args[0])

    # Compile kernels and allocate cached workspaces before correctness/timing.
    baseline.run_kernel(*args, baseline_output)
    candidate.run_kernel(*args, candidate_output)
    torch.cuda.synchronize()
    max_abs = compare_outputs(baseline_output, candidate_output)

    baseline_samples = []
    candidate_samples = []
    for round_id in range(rounds):
        if round_id % 2 == 0:
            baseline_samples.append(elapsed_ms(baseline.run_kernel, args, baseline_output, warmup, repeat))
            candidate_samples.append(elapsed_ms(candidate.run_kernel, args, candidate_output, warmup, repeat))
        else:
            candidate_samples.append(elapsed_ms(candidate.run_kernel, args, candidate_output, warmup, repeat))
            baseline_samples.append(elapsed_ms(baseline.run_kernel, args, baseline_output, warmup, repeat))

    baseline_ms = statistics.median(baseline_samples)
    candidate_ms = statistics.median(candidate_samples)
    result = {
        "case": case_id,
        **cfg,
        "total_padded": total_padded,
        "num_blocks_m": int(args[8].numel()),
        "baseline_ms": baseline_ms,
        "candidate_ms": candidate_ms,
        "speedup": baseline_ms / candidate_ms,
        "baseline_samples_ms": baseline_samples,
        "candidate_samples_ms": candidate_samples,
        "max_abs": max_abs,
        "status": "PASS",
    }
    print(json.dumps(result, ensure_ascii=False))

    del args, baseline_output, candidate_output
    gc.collect()
    torch.cuda.empty_cache()
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--baseline", required=True)
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--cases", default="1,2,3")
    parser.add_argument("--warmup", type=int, default=5)
    parser.add_argument("--repeat", type=int, default=30)
    parser.add_argument("--rounds", type=int, default=3)
    parser.add_argument("--output")
    args = parser.parse_args()

    baseline_path = str(Path(args.baseline).resolve())
    candidate_path = str(Path(args.candidate).resolve())
    baseline = load_submission(baseline_path, "moe_baseline_submission")
    candidate = load_submission(candidate_path, "moe_candidate_submission")

    results = []
    for case_id in [int(value) for value in args.cases.split(",") if value]:
        results.append(
            run_case(case_id, baseline, candidate, args.warmup, args.repeat, args.rounds)
        )

    payload = {
        "baseline": baseline_path,
        "candidate": candidate_path,
        "warmup": args.warmup,
        "repeat": args.repeat,
        "rounds": args.rounds,
        "results": results,
    }
    if args.output:
        Path(args.output).write_text(json.dumps(payload, indent=2, ensure_ascii=False) + "\n")


if __name__ == "__main__":
    main()
