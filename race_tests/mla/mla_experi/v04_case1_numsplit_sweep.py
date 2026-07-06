import importlib.util
import torch

RTOL = 2e-4
ATOL = 1e-4


def load_module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


mod = load_module("manual_pv", "/root/tilelang-metax/race_tests/mla/test_tilelang_mla.py")


def make_inputs(seed):
    torch.manual_seed(seed)
    device = "cuda"
    dtype = torch.float16
    return [
        torch.randn((1, 16, 512), device=device, dtype=dtype),
        torch.randn((1, 16, 64), device=device, dtype=dtype),
        torch.randn((1, 2048, 1, 512), device=device, dtype=dtype),
        torch.randn((1, 2048, 1, 64), device=device, dtype=dtype),
    ]


def build(num_split):
    kernel = mod.flashattn(1, 16, 1, 2048, 512, 64, 32, 16, num_split, (512 + 64) ** -0.5)
    return kernel.get_profiler()


def bad_ratio(prof, ins, ref):
    out = prof.func(*ins)
    torch.cuda.synchronize()
    if isinstance(out, (tuple, list)):
        out = out[0]
    bad = ~torch.isclose(out, ref, rtol=RTOL, atol=ATOL)
    return bad.sum().item() / out.numel(), (out - ref).abs().max().item()


def main():
    for num_split in [1, 2, 4, 8, 16, 32, 64]:
        prof = build(num_split)
        ratios = []
        maxes = []
        for seed in range(16):
            ins = make_inputs(seed)
            ref = mod.ref_program(*ins)
            torch.cuda.synchronize()
            ratio, max_abs = bad_ratio(prof, ins, ref)
            ratios.append(ratio)
            maxes.append(max_abs)
        # Use seed 0 inputs for timing so compilation is already done and timing is comparable enough.
        ins = make_inputs(0)
        latency = prof.do_bench(input_tensors=ins, warmup=100, rep=100)
        print(
            f"num_split={num_split:2d} latency={latency:.6f}ms "
            f"bad_avg={sum(ratios)/len(ratios)*100:.4f}% bad_max={max(ratios)*100:.4f}% "
            f"max_abs_max={max(maxes):.8f}"
        )


if __name__ == "__main__":
    main()
