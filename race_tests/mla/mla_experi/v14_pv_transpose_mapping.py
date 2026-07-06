import importlib.util
import os
from pathlib import Path

import tilelang
from race_tests.mla.test_tilelang_mla import ref_program

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
SRC = ROOT / "race_tests" / "mla" / "test_tilelang_mla.py"
OUT_MD = EXP_DIR / "v14_pv_transpose_mapping.md"

HEADS = 16
KV_HEADS = 1
DIM = 512
PE_DIM = 64
BLOCK_N = 32
BLOCK_H = 16
CASE = (17, 8, 2048)


def select_split(batch, kv_ctx):
    if batch >= 32:
        return 32 if kv_ctx <= 2048 else 16
    if batch == 16:
        return 32
    if batch == 8:
        return 32 if kv_ctx <= 2048 else 64
    if batch == 4:
        return 32 if kv_ctx <= 2048 else 64
    if batch == 2:
        return 32 if kv_ctx <= 16384 else 64
    return 64


def replace_once(src, old, new):
    if old not in src:
        raise RuntimeError("target block not found:\n{}".format(old))
    return src.replace(old, new, 1)


def build_variant():
    src = SRC.read_text()
    prefix = src[: src.index("def ref_program")]
    prefix = prefix.replace("def flashattn(", "def flashattn_v14_pv_t(", 1)

    old_pv_config = """    pv_k_pack = 2
    pv_micro_size_k = 16
    pv_block_row_warps = 1
    pv_block_col_warps = 2
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
"""
    new_pv_config = """    pv_k_pack = 2
    pv_micro_size_k = 16
    # v14 experiment: PV as V^T[D, N] @ P^T[N, H] -> O^T[D, H].
    pv_block_row_warps = 4
    pv_block_col_warps = 1
    pv_warp_row_tiles = dim // pv_block_row_warps
    pv_warp_col_tiles = block_H // pv_block_col_warps
    pv_warp_rows = pv_warp_row_tiles // 16
    pv_warp_cols = pv_warp_col_tiles // 16
    pv_local_size_a = (16 * pv_micro_size_k) // 64
    pv_local_size_b = (16 * pv_micro_size_k) // 64
    pv_mma = TensorCoreIntrinEmitter(
        a_dtype=dtype,
        b_dtype=dtype,
        accum_dtype=accum_dtype,
        a_transposed=True,
        b_transposed=True,
        block_row_warps=pv_block_row_warps,
        block_col_warps=pv_block_col_warps,
        warp_row_tiles=pv_warp_row_tiles,
        warp_col_tiles=pv_warp_col_tiles,
        chunk=block_N,
        k_pack=pv_k_pack,
    )
"""
    prefix = replace_once(prefix, old_pv_config, new_pv_config)

    prefix = replace_once(
        prefix,
        "            acc_o = T.alloc_fragment([block_H, dim], accum_dtype)                               # PV 累加的 Output\n",
        "            acc_o = T.alloc_fragment([dim, block_H], accum_dtype)                               # v14: transposed PV accumulator O^T[D, H]\n",
    )
    prefix = replace_once(
        prefix,
        "            pv_b_local = T.alloc_local((pv_warp_cols * pv_k_pack * pv_local_size_b), dtype)\n",
        "            pv_a_local = T.alloc_local((pv_warp_rows * pv_k_pack * pv_local_size_a), dtype)\n"
        "            pv_b_local = T.alloc_local((pv_warp_cols * pv_k_pack * pv_local_size_b), dtype)\n",
    )
    prefix = replace_once(
        prefix,
        "                    acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix=\"A\"),\n",
        "                    acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix=\"B\"),\n",
    )
    prefix = replace_once(
        prefix,
        """                T.copy(acc_s, S_shared)
                # 将 softmax 后的 probability 从 fp32 accumulator 转成 dtype fragment，作为 P @ V 的输入。
                T.copy(S_shared, acc_s_cast)
""",
        """                # v14 experiment: try direct QK-C accumulator -> PV-B operand.
                T.copy(acc_s, acc_s_cast)
""",
    )
    prefix = replace_once(
        prefix,
        """                for i, j in T.Parallel(block_H, dim):
                    acc_o[i, j] *= scores_scale[i]
""",
        """                for i, j in T.Parallel(dim, block_H):
                    acc_o[i, j] *= scores_scale[j]
""",
    )
    prefix = replace_once(
        prefix,
        """                for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                    pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)
                    pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)
""",
        """                for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                    pv_mma.ldmatrix_a(pv_a_local, KV_shared, ki)
                    pv_mma.mma(pv_a_local, acc_s_cast, acc_o, ki)
""",
    )
    prefix = replace_once(
        prefix,
        """            for i, j in T.Parallel(block_H, dim):
                acc_o[i, j] /= logsum[i]
""",
        """            for i, j in T.Parallel(dim, block_H):
                acc_o[i, j] /= logsum[j]
""",
    )
    prefix = replace_once(
        prefix,
        """            T.copy(acc_o, O_shared)
            # 这里写出的只是当前 split 的局部 output，不是最终 Output。
            T.copy(O_shared, Output_partial[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz, :])
""",
        """            for i, j in T.Parallel(block_H, dim):
                O_shared[i, j] = acc_o[j, i]
            # 这里写出的只是当前 split 的局部 output，不是最终 Output。
            T.copy(O_shared, Output_partial[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz, :])
""",
    )

    module_path = EXP_DIR / "v14_generated_pv_transpose_mapping.py"
    module_path.write_text(prefix)
    spec = importlib.util.spec_from_file_location("v14_generated_pv_transpose_mapping", module_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module.flashattn_v14_pv_t


def main():
    os.chdir(ROOT)
    case_id, batch, kv_ctx = CASE
    num_split = select_split(batch, kv_ctx)
    softmax_scale = (DIM + PE_DIM) ** -0.5
    lines = [
        "# v14 PV transpose mapping",
        "",
        "## 目的",
        "",
        "尝试把 PV 从 `P[H,N] @ V[N,D] -> O[H,D]` 改成 `V^T[D,N] @ P^T[N,H] -> O^T[D,H]`，验证 QK 的 C fragment 是否能直接作为 PV 的 B-transposed operand。",
        "",
        "## 测试 case",
        "",
        "- case{} batch={} kv_ctx={} num_split={}".format(case_id, batch, kv_ctx, num_split),
        "",
    ]
    try:
        func = build_variant()
        kernel = func(batch, HEADS, KV_HEADS, kv_ctx, DIM, PE_DIM, BLOCK_N, BLOCK_H, num_split, softmax_scale)
        profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
        profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)
        latency = profiler.do_bench(warmup=50, rep=20)
        lines += ["## 结果", "", "- status: PASS", "- latency_ms: {:.6f}".format(latency)]
        print("PASS latency {:.6f} ms".format(latency))
    except Exception as e:
        msg = "{}: {}".format(type(e).__name__, e).replace("\n", " ")
        lines += ["## 结果", "", "- status: FAIL", "- error: `{}`".format(msg[:1200])]
        print("FAIL {}".format(msg[:1200]))
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
