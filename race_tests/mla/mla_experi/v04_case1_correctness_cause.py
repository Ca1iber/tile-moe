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


def stats(name, out, ref):
    diff = (out - ref).abs()
    bad = ~torch.isclose(out, ref, rtol=RTOL, atol=ATOL)
    nbad = bad.sum().item()
    total = out.numel()
    flat_bad = bad.reshape(-1)
    flat_diff = diff.reshape(-1)
    maxv, maxi = flat_diff.max(dim=0)
    maxi = maxi.item()
    idx = tuple(int(x) for x in torch.unravel_index(torch.tensor(maxi, device=out.device), out.shape))
    print(
        f"{name}: bad={nbad}/{total} {nbad/total*100:.4f}% "
        f"max_abs={maxv.item():.8f} idx={idx} out={out[idx].item():.8f} ref={ref[idx].item():.8f}"
    )
    # Show several mismatches near the tolerance boundary.
    bad_idx = flat_bad.nonzero().flatten()
    for t in range(min(5, bad_idx.numel())):
        i = bad_idx[t].item()
        idx2 = tuple(int(x) for x in torch.unravel_index(torch.tensor(i, device=out.device), out.shape))
        rhs = ref[idx2].item()
        lhs = out[idx2].item()
        tol = ATOL + RTOL * abs(rhs)
        print(f"  bad[{idx2}] out={lhs:.8f} ref={rhs:.8f} diff={abs(lhs-rhs):.8f} tol={tol:.8f}")


def main():
    prof = mod.flashattn(1, 16, 1, 2048, 512, 64, 32, 16, 64, (512 + 64) ** -0.5).get_profiler()
    # Pick a seed that previously crosses the 1% mismatch threshold.
    ins = make_inputs(15)
    ref_half = mod.ref_program(*ins)
    ref_full = ref_fp32(*ins)
    torch.cuda.synchronize()
    outs = []
    for i in range(5):
        out = prof.func(*ins)
        torch.cuda.synchronize()
        if isinstance(out, (list, tuple)):
            out = out[0]
        outs.append(out.clone())
    for i, out in enumerate(outs):
        stats(f"run{i}_vs_ref_half", out, ref_half)
    for i in range(1, len(outs)):
        same = torch.equal(outs[0], outs[i])
        max_diff = (outs[0] - outs[i]).abs().max().item()
        print(f"run0_vs_run{i}: bit_equal={same} max_abs={max_diff:.8f}")
    stats("ref_fp32_vs_ref_half", ref_full, ref_half)
    stats("kernel_vs_ref_fp32", outs[0], ref_full)


if __name__ == "__main__":
    main()
