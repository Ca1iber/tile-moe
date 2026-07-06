import csv
import importlib.util
import os
from pathlib import Path

import tilelang
from race_tests.mla.test_tilelang_mla import ref_program

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
SRC = ROOT / "race_tests" / "mla" / "test_tilelang_mla.py"
OUT_CSV = EXP_DIR / "v14_pv_transpose_sweep.csv"
OUT_MD = EXP_DIR / "v14_pv_transpose_sweep.md"

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


def build_variant(row_warps, k_pack):
    src = SRC.read_text()
    prefix = src[: src.index("def ref_program")]
    name = "flashattn_v14_pvt_r{}_k{}".format(row_warps, k_pack)
    prefix = prefix.replace("def flashattn(", "def {}(".format(name), 1)
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
    new_pv_config = """    pv_k_pack = {k_pack}
    pv_micro_size_k = 16
    # v14 experiment: PV as V^T[D, N] @ P^T[N, H] -> O^T[D, H].
    pv_block_row_warps = {row_warps}
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
""".format(row_warps=row_warps, k_pack=k_pack)
    prefix = replace_once(prefix, old_pv_config, new_pv_config)
    edits = [
        ("            acc_o = T.alloc_fragment([block_H, dim], accum_dtype)                               # PV 累加的 Output\n",
         "            acc_o = T.alloc_fragment([dim, block_H], accum_dtype)                               # v14: transposed PV accumulator O^T[D, H]\n"),
        ("            pv_b_local = T.alloc_local((pv_warp_cols * pv_k_pack * pv_local_size_b), dtype)\n",
         "            pv_a_local = T.alloc_local((pv_warp_rows * pv_k_pack * pv_local_size_a), dtype)\n"
         "            pv_b_local = T.alloc_local((pv_warp_cols * pv_k_pack * pv_local_size_b), dtype)\n"),
        ("                    acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix=\"A\"),\n",
         "                    acc_s_cast: pv_mma.make_mma_load_layout(acc_s_cast, matrix=\"B\"),\n"),
        ("""                T.copy(acc_s, S_shared)
                # 将 softmax 后的 probability 从 fp32 accumulator 转成 dtype fragment，作为 P @ V 的输入。
                T.copy(S_shared, acc_s_cast)
""",
         """                # v14 experiment: try direct QK-C accumulator -> PV-B operand.
                T.copy(acc_s, acc_s_cast)
"""),
        ("""                for i, j in T.Parallel(block_H, dim):
                    acc_o[i, j] *= scores_scale[i]
""",
         """                for i, j in T.Parallel(dim, block_H):
                    acc_o[i, j] *= scores_scale[j]
"""),
        ("""                for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                    pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)
                    pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)
""",
         """                for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                    pv_mma.ldmatrix_a(pv_a_local, KV_shared, ki)
                    pv_mma.mma(pv_a_local, acc_s_cast, acc_o, ki)
"""),
        ("""            for i, j in T.Parallel(block_H, dim):
                acc_o[i, j] /= logsum[i]
""",
         """            for i, j in T.Parallel(dim, block_H):
                acc_o[i, j] /= logsum[j]
"""),
        ("""            T.copy(acc_o, O_shared)
            # 这里写出的只是当前 split 的局部 output，不是最终 Output。
            T.copy(O_shared, Output_partial[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz, :])
""",
         """            for i, j in T.Parallel(block_H, dim):
                O_shared[i, j] = acc_o[j, i]
            # 这里写出的只是当前 split 的局部 output，不是最终 Output。
            T.copy(O_shared, Output_partial[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz, :])
"""),
    ]
    for old, new in edits:
        prefix = replace_once(prefix, old, new)
    module_path = EXP_DIR / "v14_generated_pvt_r{}_k{}.py".format(row_warps, k_pack)
    module_path.write_text(prefix)
    spec = importlib.util.spec_from_file_location(module_path.stem, module_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return getattr(module, name)


def main():
    os.chdir(ROOT)
    case_id, batch, kv_ctx = CASE
    num_split = select_split(batch, kv_ctx)
    softmax_scale = (DIM + PE_DIM) ** -0.5
    rows = []
    for row_warps in [1, 2, 4]:
        for k_pack in [1, 2]:
            row = {"row_warps": row_warps, "k_pack": k_pack, "status": "FAIL", "latency_ms": "", "error": ""}
            try:
                func = build_variant(row_warps, k_pack)
                kernel = func(batch, HEADS, KV_HEADS, kv_ctx, DIM, PE_DIM, BLOCK_N, BLOCK_H, num_split, softmax_scale)
                profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
                profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)
                latency = profiler.do_bench(warmup=50, rep=20)
                row.update(status="PASS", latency_ms=latency)
                print("PASS row_warps={} k_pack={} latency={:.6f}".format(row_warps, k_pack, latency), flush=True)
            except Exception as e:
                msg = "{}: {}".format(type(e).__name__, e).replace("\n", " ")
                row["error"] = msg[:700]
                print("FAIL row_warps={} k_pack={} {}".format(row_warps, k_pack, msg[:220]), flush=True)
            rows.append(row)
    with OUT_CSV.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)
    pass_rows = [r for r in rows if r["status"] == "PASS"]
    lines = [
        "# v14 PV transpose sweep",
        "",
        "## 目的",
        "",
        "扫 `V^T @ P^T` 形式的 PV mapping，验证 direct `acc_s -> acc_s_cast` 是否能编译并正确。",
        "",
        "## 汇总",
        "",
        "- 总组合数：{}。".format(len(rows)),
        "- PASS：{}。".format(len(pass_rows)),
    ]
    if pass_rows:
        lines += ["", "| row_warps | k_pack | latency_ms |", "|---:|---:|---:|"]
        for r in pass_rows:
            lines.append("| {row_warps} | {k_pack} | {latency_ms:.6f} |".format(**r))
    else:
        lines.append("- 结论：转置 PV mapping 也没有找到可直接复用 QK C fragment 的组合。")
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_CSV))
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
