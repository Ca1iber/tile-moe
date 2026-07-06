import importlib.util
import torch
import torch.nn.functional as F
from einops import rearrange, einsum

RTOL = 2e-4
ATOL = 1e-4


def load_module(name, path):
    spec = importlib.util.spec_from_file_location(name, path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod


mod = load_module("manual_pv", "/root/tilelang-metax/race_tests/mla/test_tilelang_mla.py")


def ref_fp32(q, q_pe, kv, k_pe):
    dim = q.shape[-1]
    pe_dim = q_pe.shape[-1]
    num_head_groups = q.shape[1] // kv.shape[2]
    scale = (dim + pe_dim) ** 0.5
    q = rearrange(q.float(), "b (h g) d -> b g h d", g=num_head_groups)
    q_pe = rearrange(q_pe.float(), "b (h g) d -> b g h d", g=num_head_groups)
    kv_f = rearrange(kv.float(), "b n h d -> b h n d")
    k_pe_f = rearrange(k_pe.float(), "b n h d -> b h n d")
    query = torch.concat([q, q_pe], dim=-1)
    key = torch.concat([kv_f, k_pe_f], dim=-1)
    scores = einsum(query, key, "b g h d, b h s d -> b g h s")
    attention = F.softmax(scores / scale, dim=-1)
    out = einsum(attention, kv_f, "b g h s, b h s d -> b g h d")
    return rearrange(out, "b g h d -> b (h g) d").to(torch.float16)


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


def count(out, ref):
    bad = ~torch.isclose(out, ref, rtol=RTOL, atol=ATOL)
    return bad.sum().item(), bad.sum().item() / out.numel() * 100, (out - ref).abs().max().item()


def main():
    prof = mod.flashattn(1, 16, 1, 2048, 512, 64, 32, 16, 64, (512 + 64) ** -0.5).get_profiler()
    worst = None
    for seed in range(128):
        ins = make_inputs(seed)
        ref_h = mod.ref_program(*ins)
        out = prof.func(*ins)
        torch.cuda.synchronize()
        if isinstance(out, (tuple, list)):
            out = out[0]
        n, pct, mx = count(out, ref_h)
        if worst is None or pct > worst[1]:
            worst = (seed, pct, n, mx)
        if pct > 1.0:
            ref_f = ref_fp32(*ins)
            n_f, pct_f, mx_f = count(out, ref_f)
            n_ref, pct_ref, mx_ref = count(ref_f, ref_h)
            print(f"first_bad seed={seed} kernel_vs_half={n} {pct:.4f}% max={mx:.8f}")
            print(f"  kernel_vs_fp32={n_f} {pct_f:.4f}% max={mx_f:.8f}")
            print(f"  fp32_vs_half={n_ref} {pct_ref:.4f}% max={mx_ref:.8f}")
            return
    print(f"no_bad_under_128 worst seed={worst[0]} pct={worst[1]:.4f}% n={worst[2]} max={worst[3]:.8f}")


if __name__ == "__main__":
    main()
