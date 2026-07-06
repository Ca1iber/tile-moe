import argparse
import csv
import os
import statistics
import sys

os.environ.setdefault("MACA_PATH", "/opt/maca")
os.environ.setdefault("MACA_CLANG_PATH", os.path.join(os.environ["MACA_PATH"], "mxgpu_llvm/bin"))
os.environ["LD_LIBRARY_PATH"] = (
    f"{os.environ['MACA_PATH']}/lib:"
    f"{os.environ['MACA_PATH']}/ompi/lib:"
    f"{os.environ['MACA_PATH']}/ucx/lib:"
    f"/opt/mxdriver/lib:"
    f"{os.environ.get('LD_LIBRARY_PATH', '')}"
)

SCRIPT_DIR = os.path.dirname(os.path.abspath(__file__))
REPO_ROOT = os.path.abspath(os.path.join(SCRIPT_DIR, "../../.."))
if REPO_ROOT not in sys.path:
    sys.path.insert(0, REPO_ROOT)

import torch
import tilelang
import tilelang.language as T
from einops import einsum
from tilelang.layout import make_swizzled_layout
from tilelang.intrinsics.maca_mma_macro_generator import TensorCoreIntrinEmitter


@tilelang.jit(
    out_idx=[2],
    pass_configs={tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True},
)
def pv_micro(num_blocks, block_H, block_N, dim, pv_block_col_warps, pv_k_pack):
    dtype = T.float16
    accum_dtype = T.float32
    pv_micro_size_k = 16
    pv_block_row_warps = 1
    pv_warp_row_tiles = block_H // pv_block_row_warps
    pv_warp_col_tiles = dim // pv_block_col_warps
    pv_warp_cols = pv_warp_col_tiles // 16
    pv_local_size_b = (16 * pv_micro_size_k) // 64
    pv_mma = TensorCoreIntrinEmitter(
        a_dtype=dtype,
        b_dtype=dtype,
        accum_dtype=accum_dtype,
        a_transposed=False,
        b_transposed=False,
        block_row_warps=pv_block_row_warps,
        block_col_warps=pv_block_col_warps,
        warp_row_tiles=pv_warp_row_tiles,
        warp_col_tiles=pv_warp_col_tiles,
        chunk=block_N,
        k_pack=pv_k_pack,
    )

    @T.prim_func
    def main(
        S: T.Tensor([num_blocks, block_H, block_N], dtype),
        V: T.Tensor([num_blocks, block_N, dim], dtype),
        O: T.Tensor([num_blocks, block_H, dim], dtype),
    ):
        with T.Kernel(num_blocks, threads=64 * pv_block_col_warps) as bid:
            S_shared = T.alloc_shared([block_H, block_N], dtype)
            V_shared = T.alloc_shared([block_N, dim], dtype)
            O_shared = T.alloc_shared([block_H, dim], dtype)
            acc_s_cast = T.alloc_fragment([block_H, block_N], dtype)
            acc_o = T.alloc_fragment([block_H, dim], accum_dtype)
            pv_b_local = T.alloc_local((pv_warp_cols * pv_k_pack * pv_local_size_b), dtype)
            T.annotate_layout(
                {
                    V_shared: make_swizzled_layout(V_shared),
                    acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix="A"),
                    acc_o: pv_mma.make_mma_store_layout(acc_o),
                }
            )
            T.copy(S[bid, :, :], S_shared)
            T.copy(V[bid, :, :], V_shared)
            T.copy(S_shared, acc_s_cast)
            T.fill(acc_o, 0)
            for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                pv_mma.ldmatrix_b(pv_b_local, V_shared, ki)
                pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)
            T.copy(acc_o, O_shared)
            T.copy(O_shared, O[bid, :, :])

    return main


def ref_program(s, v):
    return einsum(s, v, "b h n, b n d -> b h d")


def run_one(num_blocks, col_warps, k_pack, repeats, warmup):
    block_H = 16
    block_N = 32
    dim = 512
    flops = 2 * num_blocks * block_H * block_N * dim
    kernel = pv_micro(num_blocks, block_H, block_N, dim, col_warps, k_pack)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)
    latencies = []
    for _ in range(repeats):
        latency = profiler.do_bench(warmup=warmup)
        latencies.append(latency)
    med = statistics.median(latencies)
    return med, flops / med * 1e-9


def parse_configs(text):
    configs = []
    for item in text.split(","):
        item = item.strip().lower()
        if not item:
            continue
        col_warps, k_pack = item.split("x", 1)
        configs.append((int(col_warps), int(k_pack)))
    return configs


def desc(col_warps, k_pack):
    return f"PV-only：列方向{col_warps}组warp，每组约{512 // col_warps}列；k_pack={k_pack}"


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--num-blocks", type=int, default=4096)
    parser.add_argument("--configs", type=str, default="2x2,4x1,4x2")
    parser.add_argument("--repeats", type=int, default=3)
    parser.add_argument("--warmup", type=int, default=500)
    parser.add_argument("--output", type=str, default="race_tests/mla/mla_experi/v23_pv4x_micro.csv")
    args = parser.parse_args()

    os.makedirs(os.path.dirname(args.output), exist_ok=True)
    fieldnames = [
        "num_blocks",
        "pv_block_col_warps",
        "pv_k_pack",
        "desc",
        "median_latency_ms",
        "tflops",
        "status",
    ]
    with open(args.output, "w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=fieldnames)
        writer.writeheader()
        for col_warps, k_pack in parse_configs(args.configs):
            try:
                latency, tflops = run_one(args.num_blocks, col_warps, k_pack, args.repeats, args.warmup)
                row = {
                    "num_blocks": args.num_blocks,
                    "pv_block_col_warps": col_warps,
                    "pv_k_pack": k_pack,
                    "desc": desc(col_warps, k_pack),
                    "median_latency_ms": round(latency, 6),
                    "tflops": round(tflops, 4),
                    "status": "PASS",
                }
                print(f"{col_warps}x{k_pack}: PASS latency={latency:.6f} ms tflops={tflops:.4f}")
            except Exception as e:
                row = {
                    "num_blocks": args.num_blocks,
                    "pv_block_col_warps": col_warps,
                    "pv_k_pack": k_pack,
                    "desc": desc(col_warps, k_pack),
                    "median_latency_ms": -1,
                    "tflops": -1,
                    "status": f"FAIL: {str(e).splitlines()[0]}",
                }
                print(f"{col_warps}x{k_pack}: FAIL {e}")
            writer.writerow(row)
            f.flush()

    print(f"CSV saved to: {args.output}")
