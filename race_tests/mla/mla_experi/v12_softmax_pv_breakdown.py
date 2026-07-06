import csv
import os
import importlib.util
from pathlib import Path

import tilelang
from race_tests.mla.test_tilelang_mla import flashattn as flashattn_full

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
SRC = ROOT / "race_tests" / "mla" / "test_tilelang_mla.py"
OUT_CSV = EXP_DIR / "v12_softmax_pv_breakdown.csv"
OUT_MD = EXP_DIR / "v12_softmax_pv_breakdown.md"

HEADS = 16
KV_HEADS = 1
DIM = 512
PE_DIM = 64
BLOCK_N = 32
BLOCK_H = 16

SAMPLE_CASES = [5, 9, 13, 17, 21, 22, 25, 27, 29, 31]
CASE_MAP = {
    1: (1, 2048), 2: (1, 4096), 3: (1, 8192), 4: (1, 16384), 5: (1, 32768), 6: (1, 65536),
    7: (2, 2048), 8: (2, 8192), 9: (2, 16384), 10: (2, 32768), 11: (2, 65536),
    12: (4, 2048), 13: (4, 8192), 14: (4, 16384), 15: (4, 32768), 16: (4, 65536),
    17: (8, 2048), 18: (8, 8192), 19: (8, 16384), 20: (8, 32768), 21: (8, 65536),
    22: (16, 2048), 23: (16, 8192), 24: (16, 16384), 25: (16, 32768), 26: (16, 65536),
    27: (32, 2048), 28: (32, 8192), 29: (32, 16384), 30: (32, 32768), 31: (32, 65536),
}


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


def source_prefix():
    src = SRC.read_text()
    return src[: src.index("def ref_program")]


def remove_combine(prefix):
    start = prefix.index("        # combine:")
    end = prefix.index("    @T.prim_func\n    def main_no_split", start)
    return prefix[:start] + prefix[end:]


def rename(prefix, name):
    return prefix.replace("def flashattn(", "def {}(".format(name), 1)


def build_func(kind):
    prefix = rename(source_prefix(), "flashattn_{}".format(kind))

    pv_block = """                # 将 softmax 后的 probability 从 fp32 accumulator 转成 dtype fragment，作为 P @ V 的输入。\n                T.copy(S_shared, acc_s_cast)\n                for i in T.Parallel(block_H):\n                    logsum[i] = logsum[i] * scores_scale[i] + scores_sum[i]\n                for i, j in T.Parallel(block_H, dim):\n                    acc_o[i, j] *= scores_scale[i]\n                for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):\n                    pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)\n                    pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)\n"""
    no_pv_block = """                # v12 ablation: skip PV path, keep online softmax/logsum.\n                for i in T.Parallel(block_H):\n                    logsum[i] = logsum[i] * scores_scale[i] + scores_sum[i]\n"""
    softmax_pv_block = """                T.copy(scores_max, scores_max_prev)\n                T.fill(scores_max, -T.infinity(accum_dtype))\n                T.reduce_max(acc_s, scores_max, dim=1, clear=False)\n                for i in T.Parallel(block_H):\n                    scores_max[i] = T.max(scores_max[i], scores_max_prev[i])\n                for i in T.Parallel(block_H):\n                    scores_scale[i] = T.exp2(scores_max_prev[i] * scale - scores_max[i] * scale)\n                for i, j in T.Parallel(block_H, block_N):\n                    acc_s[i, j] = T.exp2(acc_s[i, j] * scale - scores_max[i] * scale)\n                T.reduce_sum(acc_s, scores_sum, dim=1)\n                T.copy(acc_s, S_shared)\n                # 将 softmax 后的 probability 从 fp32 accumulator 转成 dtype fragment，作为 P @ V 的输入。\n                T.copy(S_shared, acc_s_cast)\n                for i in T.Parallel(block_H):\n                    logsum[i] = logsum[i] * scores_scale[i] + scores_sum[i]\n                for i, j in T.Parallel(block_H, dim):\n                    acc_o[i, j] *= scores_scale[i]\n                for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):\n                    pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)\n                    pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)\n"""
    qk_only_block = """                # v12 ablation: keep QK result alive with max-reduction only.\n                T.copy(scores_max, scores_max_prev)\n                T.fill(scores_max, -T.infinity(accum_dtype))\n                T.reduce_max(acc_s, scores_max, dim=1, clear=False)\n                for i in T.Parallel(block_H):\n                    scores_max[i] = T.max(scores_max[i], scores_max_prev[i])\n"""
    final_block = """            for i, j in T.Parallel(block_H, dim):\n                acc_o[i, j] /= logsum[i]\n            for i in T.Parallel(block_H):\n                # loop 内的 logsum 是当前 split 的 softmax 分母；这里转成 logsumexp，combine 用它算权重。\n                logsum[i] = T.log2(logsum[i]) + scores_max[i] * scale\n            T.copy(logsum, glse[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz])\n            T.copy(acc_o, O_shared)\n            # 这里写出的只是当前 split 的局部 output，不是最终 Output。\n            T.copy(O_shared, Output_partial[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz, :])\n"""
    final_qk_softmax = """            for i in T.Parallel(block_H):\n                logsum[i] = T.log2(logsum[i]) + scores_max[i] * scale\n            T.copy(logsum, glse[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz])\n            for i in T.Parallel(block_H):\n                Output[bid, hid * VALID_BLOCK_H + i, 0] = logsum[i]\n"""
    final_qk_only = """            for i in T.Parallel(block_H):\n                logsum[i] = scores_max[i] * scale\n            T.copy(logsum, glse[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, bz])\n            for i in T.Parallel(block_H):\n                Output[bid, hid * VALID_BLOCK_H + i, 0] = logsum[i]\n"""

    if kind == "no_pv":
        if pv_block not in prefix:
            raise RuntimeError("pv_block not found")
        prefix = prefix.replace(pv_block, no_pv_block, 1)
    elif kind == "qk_softmax":
        if pv_block not in prefix or final_block not in prefix:
            raise RuntimeError("qk_softmax replacement target not found")
        prefix = prefix.replace(pv_block, no_pv_block, 1)
        prefix = prefix.replace(final_block, final_qk_softmax, 1)
        prefix = remove_combine(prefix)
    elif kind == "qk_only":
        if softmax_pv_block not in prefix or final_block not in prefix:
            raise RuntimeError("qk_only replacement target not found")
        prefix = prefix.replace(softmax_pv_block, qk_only_block, 1)
        prefix = prefix.replace(final_block, final_qk_only, 1)
        prefix = remove_combine(prefix)
    else:
        raise ValueError(kind)

    module_path = EXP_DIR / "v12_generated_{}.py".format(kind)
    module_path.write_text(prefix)
    spec = importlib.util.spec_from_file_location("v12_generated_{}".format(kind), module_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return getattr(module, "flashattn_{}".format(kind))


def bench_func(func, batch, kv_ctx, num_split):
    softmax_scale = (DIM + PE_DIM) ** -0.5
    kernel = func(batch, HEADS, KV_HEADS, kv_ctx, DIM, PE_DIM, BLOCK_N, BLOCK_H, num_split, softmax_scale)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    return profiler.do_bench(warmup=300, rep=100)


def main():
    os.chdir(ROOT)
    funcs = {
        "full": flashattn_full,
        "qk_only": build_func("qk_only"),
        "qk_softmax": build_func("qk_softmax"),
        "no_pv": build_func("no_pv"),
    }
    rows = []
    for case in SAMPLE_CASES:
        batch, kv_ctx = CASE_MAP[case]
        num_split = select_split(batch, kv_ctx)
        vals = {}
        for name in ["full", "qk_only", "qk_softmax", "no_pv"]:
            vals[name] = bench_func(funcs[name], batch, kv_ctx, num_split)
            print("case {} {} {:.6f} ms".format(case, name, vals[name]), flush=True)
        full = vals["full"]
        qk_only = vals["qk_only"]
        qk_softmax = vals["qk_softmax"]
        no_pv = vals["no_pv"]
        row = {
            "case": case,
            "batch": batch,
            "heads": HEADS,
            "kv_ctx": kv_ctx,
            "num_split": num_split,
            "full_ms": full,
            "qk_only_ms": qk_only,
            "qk_softmax_ms": qk_softmax,
            "no_pv_ms": no_pv,
            "softmax_delta_ms": qk_softmax - qk_only,
            "softmax_delta_over_full": (qk_softmax - qk_only) / full,
            "pv_delta_ms": full - no_pv,
            "pv_delta_over_full": (full - no_pv) / full,
            "partial_combine_no_pv_ms": no_pv - qk_softmax,
            "partial_combine_no_pv_over_full": (no_pv - qk_softmax) / full,
        }
        rows.append(row)
        print(
            "case {case} breakdown: softmax_delta={softmax_delta_ms:.6f} ({softmax_delta_over_full:.2%}) pv_delta={pv_delta_ms:.6f} ({pv_delta_over_full:.2%}) partial+combine(no_pv)={partial_combine_no_pv_ms:.6f} ({partial_combine_no_pv_over_full:.2%})".format(**row),
            flush=True,
        )

    with OUT_CSV.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)

    weighted_softmax = sum(r["softmax_delta_ms"] for r in rows) / sum(r["full_ms"] for r in rows)
    weighted_pv = sum(r["pv_delta_ms"] for r in rows) / sum(r["full_ms"] for r in rows)
    weighted_partial = sum(r["partial_combine_no_pv_ms"] for r in rows) / sum(r["full_ms"] for r in rows)
    mean_softmax = sum(r["softmax_delta_over_full"] for r in rows) / len(rows)
    mean_pv = sum(r["pv_delta_over_full"] for r in rows) / len(rows)
    mean_partial = sum(r["partial_combine_no_pv_over_full"] for r in rows) / len(rows)

    lines = [
        "# v12 softmax / PV breakdown",
        "",
        "## 测量目的",
        "",
        "继续拆 current split kernel 的内部成本，回答 PV、online softmax、partial/combine plumbing 哪个更值得继续优化。",
        "",
        "## 变体定义",
        "",
        "- `full`: 当前正式 `flashattn`，不做 correctness，只 benchmark。",
        "- `qk_only`: 保留 content QK + QK_pe，并用 max-reduction + dummy Output 写回防止 DCE；跳过 exp/sum/PV/partial/combine。",
        "- `qk_softmax`: 保留 QK + online softmax/logsum，并 dummy 写回；跳过 PV/partial/combine。",
        "- `no_pv`: 保留 QK + online softmax/logsum + partial store + combine，但跳过 `acc_s_cast` 和 PV MMA。",
        "",
        "因此：`qk_softmax - qk_only` 近似 softmax/reduce/exp2 成本；`full - no_pv` 近似 PV path 成本；`no_pv - qk_softmax` 近似无 PV 情况下 partial store + combine/plumbing 成本。",
        "",
        "## 结果",
        "",
        "| case | batch | kv_ctx | split | full | qk_only | qk_softmax | no_pv | softmax/full | PV/full | partial+combine/full |",
        "|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for r in rows:
        lines.append(
            "| {case} | {batch} | {kv_ctx} | {num_split} | {full_ms:.6f} | {qk_only_ms:.6f} | {qk_softmax_ms:.6f} | {no_pv_ms:.6f} | {softmax_delta_over_full:.2%} | {pv_delta_over_full:.2%} | {partial_combine_no_pv_over_full:.2%} |".format(**r)
        )
    lines += [
        "",
        "## 汇总",
        "",
        "| 指标 | 算术平均占比 | latency 加权占比 |",
        "|---|---:|---:|",
        "| softmax_delta | {:.2%} | {:.2%} |".format(mean_softmax, weighted_softmax),
        "| pv_delta | {:.2%} | {:.2%} |".format(mean_pv, weighted_pv),
        "| partial+combine(no_pv) | {:.2%} | {:.2%} |".format(mean_partial, weighted_partial),
        "",
        "## 注意事项",
        "",
        "- 这些是 ablation 近似值，不是硬件 profiler 的精确 per-instruction attribution；变体改变了编译器 lowering 和寄存器/占用情况，因此负数或很小的 delta 应视为测量噪声。",
        "- `qk_only` 为了防止 DCE 保留了 reduce_max 和少量 dummy output 写回，所以它不是纯 MMA 时间。",
    ]
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_CSV))
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
