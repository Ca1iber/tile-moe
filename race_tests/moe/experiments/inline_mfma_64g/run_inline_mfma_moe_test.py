import importlib.util
import math
import sys
from pathlib import Path

import torch


ROOT = Path("/root/tilelang-metax/race_tests/moe/experiments/inline_mfma_64g")
MODULE = ROOT / "submission_moe_mfma_inline.py"


CASES = [
    {"case": 1, "hidden": 2048, "intermediate": 8192, "experts": 16, "group_sum": 2272},
    {"case": 2, "hidden": 7168, "intermediate": 2048, "experts": 32, "group_sum": 4544},
    {"case": 3, "hidden": 7168, "intermediate": 2048, "experts": 64, "group_sum": 9088},
]


def load_run_kernel():
    spec = importlib.util.spec_from_file_location("submission_moe_mfma_inline", MODULE)
    mod = importlib.util.module_from_spec(spec)
    sys.modules[spec.name] = mod
    spec.loader.exec_module(mod)
    return mod.run_kernel


def group_sizes_for_case(case):
    experts = case["experts"]
    group_sum = case["group_sum"]
    if case["case"] == 1:
        return [200] * 8 + [84] * 8
    base = group_sum // experts
    rem = group_sum % experts
    return [base + (1 if i < rem else 0) for i in range(experts)]


def make_inputs(case):
    block = 128
    hidden = case["hidden"]
    intermediate = case["intermediate"]
    experts = case["experts"]
    sizes = group_sizes_for_case(case)
    offsets = [0]
    padded_offsets = [0]
    for size in sizes:
        offsets.append(offsets[-1] + size)
        padded_offsets.append(padded_offsets[-1] + math.ceil((size + 1) / block) * block)
    total_padded = padded_offsets[-1]
    group_idx = torch.empty((total_padded // block,), device="cuda", dtype=torch.int32)
    for expert in range(experts):
        start = padded_offsets[expert] // block
        end = padded_offsets[expert + 1] // block
        group_idx[start:end] = expert

    gen = torch.Generator(device="cuda")
    gen.manual_seed(1000 + case["case"])
    stacked = torch.randn((total_padded, hidden), device="cuda", dtype=torch.float16, generator=gen)
    gate = torch.randn((experts, intermediate, hidden), device="cuda", dtype=torch.float16, generator=gen) / math.sqrt(hidden)
    up = torch.randn((experts, intermediate, hidden), device="cuda", dtype=torch.float16, generator=gen) / math.sqrt(hidden)
    down = torch.randn((experts, hidden, intermediate), device="cuda", dtype=torch.float16, generator=gen) / math.sqrt(intermediate)
    routed = torch.rand((case["group_sum"],), device="cuda", dtype=torch.float32, generator=gen)
    group_sizes = torch.tensor(sizes, device="cuda", dtype=torch.int32)
    group_offsets = torch.tensor(offsets, device="cuda", dtype=torch.int32)
    group_padded_offsets = torch.tensor(padded_offsets, device="cuda", dtype=torch.int32)
    out = torch.empty_like(stacked)
    return (
        stacked,
        gate,
        up,
        down,
        routed,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        group_idx,
        out,
    )


def reference(args):
    (
        stacked,
        gate_w,
        up_w,
        down_w,
        routed,
        group_sizes,
        group_offsets,
        group_padded_offsets,
        _group_idx,
        _out,
    ) = args
    out = torch.zeros_like(stacked)
    experts = int(gate_w.shape[0])
    for expert in range(experts):
        count = int(group_sizes[expert].item())
        if count == 0:
            continue
        raw_start = int(group_offsets[expert].item())
        padded_start = int(group_padded_offsets[expert].item())
        x = stacked[padded_start:padded_start + count].float()
        gate = torch.nn.functional.silu(x @ gate_w[expert].float().t())
        up = x @ up_w[expert].float().t()
        y = (gate * up) @ down_w[expert].float().t()
        y = y * routed[raw_start:raw_start + count].float().view(-1, 1)
        out[padded_start:padded_start + count] = y.to(torch.float16)
    return out


def valid_mask(args):
    mask = torch.zeros((args[0].shape[0],), device="cuda", dtype=torch.bool)
    group_sizes = args[5]
    group_padded_offsets = args[7]
    for expert in range(int(group_sizes.shape[0])):
        count = int(group_sizes[expert].item())
        start = int(group_padded_offsets[expert].item())
        mask[start:start + count] = True
    return mask


def bench(fn, args, warmup=10, iters=100):
    torch.cuda.synchronize()
    for _ in range(warmup):
        fn(*args[:9], args[9])
    torch.cuda.synchronize()
    start = torch.cuda.Event(enable_timing=True)
    end = torch.cuda.Event(enable_timing=True)
    start.record()
    for _ in range(iters):
        fn(*args[:9], args[9])
    end.record()
    torch.cuda.synchronize()
    return start.elapsed_time(end) / iters


def main():
    torch.set_grad_enabled(False)
    run_kernel = load_run_kernel()
    for case in CASES:
        args = make_inputs(case)
        print(
            f"case={case['case']} hidden={case['hidden']} intermediate={case['intermediate']} "
            f"experts={case['experts']} valid={case['group_sum']} padded={args[0].shape[0]}",
            flush=True,
        )
        run_kernel(*args[:9], args[9])
        torch.cuda.synchronize()
        ref = reference(args)
        mask = valid_mask(args)
        torch.testing.assert_close(args[9][mask].float(), ref[mask].float(), atol=1e-2, rtol=1e-2)
        zero_max = args[9][~mask].abs().max().item() if (~mask).any() else 0.0
        print(f"  correctness=PASS padding_max={zero_max:.6f}", flush=True)
        ms = bench(run_kernel, args)
        print(f"  latency_ms={ms:.6f}", flush=True)
        del args, ref, mask
        torch.cuda.empty_cache()


if __name__ == "__main__":
    main()
