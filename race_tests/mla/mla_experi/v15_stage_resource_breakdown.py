import csv
import importlib.util
import os
from pathlib import Path

import tilelang
from race_tests.mla.test_tilelang_mla import flashattn as flashattn_full

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
SRC = ROOT / "race_tests" / "mla" / "test_tilelang_mla.py"
OUT_CSV = EXP_DIR / "v15_stage_resource_breakdown.csv"
OUT_MD = EXP_DIR / "v15_stage_resource_breakdown.md"

HEADS = 16
KV_HEADS = 1
DIM = 512
PE_DIM = 64
BLOCK_N = 32
BLOCK_H = 16

SAMPLE_CASES = [17, 21, 29, 31]
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


def replace_once(src, old, new):
    if old not in src:
        raise RuntimeError("target block not found:\n{}".format(old))
    return src.replace(old, new, 1)


def replace_region(src, start_marker, end_marker, new):
    start = src.index(start_marker)
    end = src.index(end_marker, start)
    return src[:start] + new + src[end:]


STAGE_START = "                # 3. 保存旧 max"
FINAL_START = "            # 10. k-loop 结束后归一化"
COMBINE_START = "        # combine:"


def dummy_final(expr):
    return """            for i in T.Parallel(block_H):
                Output[bid, hid * VALID_BLOCK_H + i, bz] = {}

""".format(expr)


def stage_body(kind, repeat=1):
    pre = """                T.copy(scores_max, scores_max_prev)
                T.fill(scores_max, -T.infinity(accum_dtype))
                T.reduce_max(acc_s, scores_max, dim=1, clear=False)
                for i in T.Parallel(block_H):
                    scores_max[i] = T.max(scores_max[i], scores_max_prev[i])
"""
    softmax = pre + """                for i in T.Parallel(block_H):
                    scores_scale[i] = T.exp2(scores_max_prev[i] * scale - scores_max[i] * scale)
                for i, j in T.Parallel(block_H, block_N):
                    acc_s[i, j] = T.exp2(acc_s[i, j] * scale - scores_max[i] * scale)
                T.reduce_sum(acc_s, scores_sum, dim=1)
                for i in T.Parallel(block_H):
                    logsum[i] = logsum[i] * scores_scale[i] + scores_sum[i]
"""
    s_store = softmax + """                T.copy(acc_s, S_shared)
"""
    bridge = s_store + """                T.copy(S_shared, acc_s_cast)
"""
    scale = bridge + """                for i, j in T.Parallel(block_H, dim):
                    acc_o[i, j] *= scores_scale[i]
"""
    pv_loop = """                for ri in T.serial({repeat}):
                    for ki in T.serial(0, block_N // (pv_micro_size_k * pv_k_pack)):
                        pv_mma.ldmatrix_b(pv_b_local, KV_shared, ki)
                        pv_mma.mma(acc_s_cast, pv_b_local, acc_o, ki)
""".format(repeat=repeat)

    if kind == "qk_only":
        return pre
    if kind == "softmax":
        return softmax
    if kind == "s_store":
        return s_store
    if kind == "bridge":
        return bridge
    if kind == "scale":
        return scale
    if kind == "pv":
        return scale + pv_loop
    raise ValueError(kind)


def final_for(kind):
    if kind == "qk_only":
        return dummy_final("scores_max[i]")
    if kind == "softmax":
        return dummy_final("logsum[i]")
    if kind == "s_store":
        return """            for i, j in T.Parallel(block_H, block_N):
                Output[bid, hid * VALID_BLOCK_H + i, j] = S_shared[i, j]

"""
    if kind == "bridge":
        return dummy_final("acc_s_cast[i, 0]")
    if kind == "scale":
        return dummy_final("acc_o[i, 0]")
    if kind == "pv":
        return """            for i, j in T.Parallel(block_H, dim):
                acc_o[i, j] /= logsum[i]
            T.copy(acc_o, O_shared)
            T.copy(O_shared, Output[bid, hid * VALID_BLOCK_H : (hid + 1) * VALID_BLOCK_H, :])

"""
    raise ValueError(kind)


def build_func(kind, repeat=1):
    name = "flashattn_v15_{}".format(kind if kind != "pv" else "pv_r{}".format(repeat))
    prefix = rename(source_prefix(), name)
    if kind == "scale":
        prefix = replace_once(prefix, "            T.fill(acc_o, 0)\n", "            T.fill(acc_o, 1)\n")
    if kind == "qk_only":
        prefix = replace_once(prefix, "            T.fill(logsum, 0)\n", "")
    prefix = replace_region(prefix, STAGE_START, FINAL_START, stage_body(kind, repeat))
    prefix = replace_region(prefix, FINAL_START, COMBINE_START, final_for(kind) + "\n")
    prefix = remove_combine(prefix)
    module_path = EXP_DIR / "v15_generated_{}.py".format(kind if kind != "pv" else "pv_r{}".format(repeat))
    module_path.write_text(prefix)
    spec = importlib.util.spec_from_file_location(module_path.stem, module_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return getattr(module, name)


def bench_func(func, batch, kv_ctx, num_split):
    softmax_scale = (DIM + PE_DIM) ** -0.5
    kernel = func(batch, HEADS, KV_HEADS, kv_ctx, DIM, PE_DIM, BLOCK_N, BLOCK_H, num_split, softmax_scale)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    return profiler.do_bench(warmup=200, rep=80)


def pct(x, base):
    if base == 0:
        return 0.0
    return x / base


def main():
    os.chdir(ROOT)
    funcs = {
        "full": flashattn_full,
        "qk_only": build_func("qk_only"),
        "softmax": build_func("softmax"),
        "s_store": build_func("s_store"),
        "pv_r1": build_func("pv", repeat=1),
        "pv_r2": build_func("pv", repeat=2),
        "pv_r4": build_func("pv", repeat=4),
    }
    order = ["full", "qk_only", "softmax", "s_store", "pv_r1", "pv_r2", "pv_r4"]
    rows = []
    for case in SAMPLE_CASES:
        batch, kv_ctx = CASE_MAP[case]
        num_split = select_split(batch, kv_ctx)
        vals = {}
        for name in order:
            vals[name] = bench_func(funcs[name], batch, kv_ctx, num_split)
            print("case {} {} {:.6f} ms".format(case, name, vals[name]), flush=True)

        qk = vals["qk_only"]
        full = vals["full"]
        row = {
            "case": case,
            "batch": batch,
            "kv_ctx": kv_ctx,
            "num_split": num_split,
            **{name + "_ms": vals[name] for name in order},
            "softmax_delta_ms": vals["softmax"] - qk,
            "s_store_delta_ms": vals["s_store"] - vals["softmax"],
            "pv_path_delta_ms": vals["pv_r1"] - vals["s_store"],
            "pv_repeat_2_extra_ms": vals["pv_r2"] - vals["pv_r1"],
            "pv_repeat_4_extra_ms": vals["pv_r4"] - vals["pv_r2"],
            "softmax_over_full": pct(vals["softmax"] - qk, full),
            "s_store_over_full": pct(vals["s_store"] - vals["softmax"], full),
            "pv_path_over_full": pct(vals["pv_r1"] - vals["s_store"], full),
            "pv_repeat_2_extra_over_pv_path": pct(vals["pv_r2"] - vals["pv_r1"], vals["pv_r1"] - vals["s_store"]),
            "pv_repeat_4_extra_over_pv_path": pct(vals["pv_r4"] - vals["pv_r2"], vals["pv_r1"] - vals["s_store"]),
        }
        rows.append(row)
        print(
            "case {case} deltas softmax={softmax_delta_ms:.6f} s_store={s_store_delta_ms:.6f} pv_path={pv_path_delta_ms:.6f}".format(**row),
            flush=True,
        )

    with OUT_CSV.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)

    def weighted(field):
        return sum(r[field] for r in rows) / sum(r["full_ms"] for r in rows)

    lines = [
        "# v15 stage resource breakdown",
        "",
        "## 目的",
        "",
        "把 QK 之后的 `online softmax + S_shared bridge + acc_o scale + PV MMA` 阶段拆成多个 ablation，判断主要时间来自 SFU/reduce、shared bridge、还是 PV MMA/ldmatrix。",
        "",
        "## 变体定义",
        "",
        "- `qk_only`: content QK + QK_pe 后只保留 max-reduction 和 dummy output，作为阶段前基线。",
        "- `softmax`: 加回 `scores_scale`、`exp2(score)`、`reduce_sum`、`logsum`。",
        "- `s_store`: 在 `softmax` 上加回 `T.copy(acc_s, S_shared)`。",
        "- `pv_r1/r2/r4`: 在 `s_store` 上加回 `T.copy(S_shared, acc_s_cast)`、`acc_o *= scores_scale`，并分别重复 PV MMA 1/2/4 次，用于判断 PV MMA/ldmatrix 是否近似线性增重。",
        "- 单独的 `S_shared -> acc_s_cast` 变体会触发 TileLang layout inference failure；它必须和 PV MMA operand 使用连在一起才有合法 layout，所以这里把它归入 `pv_path`。",
        "",
        "## 结果",
        "",
        "| case | batch | kv_ctx | split | full | qk_only | softmax | s_store | pv_r1 | pv_r2 | pv_r4 |",
        "|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for r in rows:
        lines.append(
            "| {case} | {batch} | {kv_ctx} | {num_split} | {full_ms:.6f} | {qk_only_ms:.6f} | {softmax_ms:.6f} | {s_store_ms:.6f} | {pv_r1_ms:.6f} | {pv_r2_ms:.6f} | {pv_r4_ms:.6f} |".format(**r)
        )
    lines += [
        "",
        "## Delta 占 full 比例",
        "",
        "| case | softmax | acc_s->S_shared | pv_path = cast+scale+PV | r2 extra / pv_path | r4 extra / pv_path |",
        "|---:|---:|---:|---:|---:|---:|",
    ]
    for r in rows:
        lines.append(
            "| {case} | {softmax_over_full:.2%} | {s_store_over_full:.2%} | {pv_path_over_full:.2%} | {pv_repeat_2_extra_over_pv_path:.2f}x | {pv_repeat_4_extra_over_pv_path:.2f}x |".format(**r)
        )
    lines += [
        "",
        "## 加权汇总",
        "",
        "| 组件 | latency 加权占 full 比例 |",
        "|---|---:|",
        "| softmax/reduce/logsum | {:.2%} |".format(weighted("softmax_delta_ms")),
        "| acc_s -> S_shared | {:.2%} |".format(weighted("s_store_delta_ms")),
        "| pv_path = S_shared -> acc_s_cast + acc_o scale + PV | {:.2%} |".format(weighted("pv_path_delta_ms")),
        "",
        "## 解释口径",
        "",
        "- ablation 会改变 lowering、寄存器压力和调度，delta 是定位主嫌疑人的工程近似值，不是精确 per-instruction profile。",
        "- `pv_r2/pv_r4` 的额外时间如果接近 `pv_path` 的 1x/2x，说明 PV MMA/ldmatrix 确实构成主导资源压力；如果远低于线性，说明更多瓶颈在 bridge/softmax/调度。",
    ]
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_CSV))
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
