import argparse
import importlib.util
import json
import statistics

import torch
from tilelang.profiler import do_bench


OFFICIAL_CASES = {
    1: (1, 2048),
    2: (1, 4096),
    3: (1, 8192),
    4: (1, 16384),
    5: (1, 32768),
    6: (1, 65536),
}


def load_module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


def reference(q, q_pe, kv, k_pe):
    q_main = q.reshape(1, 1, 16, 512).permute(0, 2, 1, 3).float()
    q_pos = q_pe.reshape(1, 1, 16, 64).permute(0, 2, 1, 3).float()
    kv_main = kv.permute(0, 2, 1, 3).float()
    k_pos = k_pe.permute(0, 2, 1, 3).float()
    scores = torch.einsum(
        "bghd,bhsd->bghs",
        torch.cat((q_main, q_pos), dim=-1),
        torch.cat((kv_main, k_pos), dim=-1),
    )
    probs = torch.softmax(scores * (576 ** -0.5), dim=-1)
    result = torch.einsum("bghs,bhsd->bghd", probs, kv_main)
    return result.permute(0, 2, 1, 3).reshape(1, 16, 512).half()


def invoke(module, tensors, output_index, kv_ctx):
    module.run_kernel(
        tensors[0],
        tensors[1],
        tensors[2],
        tensors[3],
        tensors[output_index],
        1,
        16,
        1,
        kv_ctx,
        512,
        64,
    )


def benchmark_pair(baseline_fn, candidate_fn, warmup, repeat, rounds):
    baseline_samples = []
    candidate_samples = []
    for round_id in range(rounds):
        order = (
            ((baseline_fn, baseline_samples), (candidate_fn, candidate_samples))
            if round_id % 2 == 0
            else ((candidate_fn, candidate_samples), (baseline_fn, baseline_samples))
        )
        for fn, samples in order:
            samples.append(
                do_bench(
                    fn,
                    warmup=0,
                    rep=0,
                    _n_warmup=warmup,
                    _n_repeat=repeat,
                    return_mode="mean",
                )
            )
    return baseline_samples, candidate_samples


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--baseline")
    parser.add_argument("--cases", default="1,2,3,4,5,6")
    parser.add_argument("--warmup", type=int, default=5)
    parser.add_argument("--repeat", type=int, default=50)
    parser.add_argument("--rounds", type=int, default=3)
    parser.add_argument("--output")
    args = parser.parse_args()

    candidate = load_module("mla_candidate", args.candidate)
    baseline = load_module("mla_baseline", args.baseline) if args.baseline else None
    case_ids = [int(value) for value in args.cases.split(",") if value]
    rows = []

    for case_id in case_ids:
        batch, kv_ctx = OFFICIAL_CASES[case_id]
        torch.manual_seed(100000 + kv_ctx)
        q = torch.randn((batch, 16, 512), device="cuda", dtype=torch.float16)
        q_pe = torch.randn((batch, 16, 64), device="cuda", dtype=torch.float16)
        kv = torch.randn((batch, kv_ctx, 1, 512), device="cuda", dtype=torch.float16)
        k_pe = torch.randn((batch, kv_ctx, 1, 64), device="cuda", dtype=torch.float16)
        candidate_output = torch.empty((batch, 16, 512), device="cuda", dtype=torch.float16)
        baseline_output = torch.empty_like(candidate_output)
        tensors = (q, q_pe, kv, k_pe, candidate_output, baseline_output)

        expected = reference(q, q_pe, kv, k_pe)
        invoke(candidate, tensors, 4, kv_ctx)
        torch.cuda.synchronize()
        torch.testing.assert_close(candidate_output, expected, rtol=2e-3, atol=2e-3)
        max_abs = (candidate_output.float() - expected.float()).abs().max().item()

        row = {
            "case": case_id,
            "batch": batch,
            "kv_ctx": kv_ctx,
            "max_abs": max_abs,
            "status": "PASS",
        }
        candidate_fn = lambda: invoke(candidate, tensors, 4, kv_ctx)
        if baseline is None:
            samples = [
                do_bench(
                    candidate_fn,
                    warmup=0,
                    rep=0,
                    _n_warmup=args.warmup,
                    _n_repeat=args.repeat,
                    return_mode="mean",
                )
                for _ in range(args.rounds)
            ]
            row["candidate_ms"] = statistics.median(samples)
            row["candidate_samples_ms"] = samples
        else:
            invoke(baseline, tensors, 5, kv_ctx)
            torch.cuda.synchronize()
            torch.testing.assert_close(baseline_output, expected, rtol=2e-3, atol=2e-3)
            baseline_fn = lambda: invoke(baseline, tensors, 5, kv_ctx)
            baseline_samples, candidate_samples = benchmark_pair(
                baseline_fn,
                candidate_fn,
                args.warmup,
                args.repeat,
                args.rounds,
            )
            baseline_ms = statistics.median(baseline_samples)
            candidate_ms = statistics.median(candidate_samples)
            row.update(
                {
                    "baseline_ms": baseline_ms,
                    "candidate_ms": candidate_ms,
                    "speedup": baseline_ms / candidate_ms,
                    "baseline_samples_ms": baseline_samples,
                    "candidate_samples_ms": candidate_samples,
                }
            )
        rows.append(row)
        print(json.dumps(row, sort_keys=True), flush=True)
        del q, q_pe, kv, k_pe, expected, candidate_output, baseline_output, tensors
        torch.cuda.empty_cache()

    if args.output:
        with open(args.output, "w") as file:
            json.dump(rows, file, indent=2, sort_keys=True)


if __name__ == "__main__":
    main()
