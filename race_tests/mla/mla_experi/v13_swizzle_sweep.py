import csv
import importlib.util
import os
from pathlib import Path

import tilelang

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
SRC = ROOT / "race_tests" / "mla" / "test_tilelang_mla.py"
OUT_CSV = EXP_DIR / "v13_swizzle_sweep.csv"
OUT_SUMMARY = EXP_DIR / "v13_swizzle_sweep_summary.csv"
OUT_MD = EXP_DIR / "v13_swizzle_sweep.md"

HEADS = 16
KV_HEADS = 1
DIM = 512
PE_DIM = 64
BLOCK_N = 32
BLOCK_H = 16

SAMPLE_CASES = [5, 9, 17, 21, 22, 25, 27, 29, 31]
CASE_MAP = {
    1: (1, 2048), 2: (1, 4096), 3: (1, 8192), 4: (1, 16384), 5: (1, 32768), 6: (1, 65536),
    7: (2, 2048), 8: (2, 8192), 9: (2, 16384), 10: (2, 32768), 11: (2, 65536),
    12: (4, 2048), 13: (4, 8192), 14: (4, 16384), 15: (4, 32768), 16: (4, 65536),
    17: (8, 2048), 18: (8, 8192), 19: (8, 16384), 20: (8, 32768), 21: (8, 65536),
    22: (16, 2048), 23: (16, 8192), 24: (16, 16384), 25: (16, 32768), 26: (16, 65536),
    27: (32, 2048), 28: (32, 8192), 29: (32, 16384), 30: (32, 32768), 31: (32, 65536),
}

VARIANTS = [
    ("none", None, None),
    ("row2", 2, "row"),
    ("row4", 4, "row"),
    ("row8", 8, "row"),
    ("row10", 10, "row"),
    ("row16", 16, "row"),
    ("row32", 32, "row"),
    ("col4", 4, "column"),
    ("col8", 8, "column"),
    ("col10", 10, "column"),
    ("col16", 16, "column"),
]


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


def make_func(name, panel, order):
    src = SRC.read_text()
    prefix = src[: src.index("def ref_program")]
    func_name = "flashattn_v13_{}".format(name)
    prefix = prefix.replace("def flashattn(", "def {}(".format(func_name), 1)
    target = "            T.use_swizzle(10)"
    if target not in prefix:
        raise RuntimeError("T.use_swizzle(10) target not found")
    if panel is None:
        repl = "            # v13: no threadblock swizzle"
    elif order == "row":
        repl = "            T.use_swizzle({})".format(panel)
    else:
        repl = "            T.use_swizzle({}, order=\"{}\")".format(panel, order)
    prefix = prefix.replace(target, repl, 1)
    module_path = EXP_DIR / "v13_generated_{}.py".format(name)
    module_path.write_text(prefix)
    spec = importlib.util.spec_from_file_location("v13_generated_{}".format(name), module_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return getattr(module, func_name)


def bench_func(func, batch, kv_ctx, num_split):
    softmax_scale = (DIM + PE_DIM) ** -0.5
    kernel = func(batch, HEADS, KV_HEADS, kv_ctx, DIM, PE_DIM, BLOCK_N, BLOCK_H, num_split, softmax_scale)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    return profiler.do_bench(warmup=300, rep=100)


def main():
    os.chdir(ROOT)
    funcs = {}
    for name, panel, order in VARIANTS:
        funcs[name] = make_func(name, panel, order)

    rows = []
    for case in SAMPLE_CASES:
        batch, kv_ctx = CASE_MAP[case]
        num_split = select_split(batch, kv_ctx)
        print("case {} batch={} kv_ctx={} split={}".format(case, batch, kv_ctx, num_split), flush=True)
        for name, panel, order in VARIANTS:
            row = {
                "case": case,
                "batch": batch,
                "heads": HEADS,
                "kv_ctx": kv_ctx,
                "num_split": num_split,
                "variant": name,
                "panel": "" if panel is None else panel,
                "order": "none" if order is None else order,
                "latency_ms": None,
                "status": "PASS",
            }
            try:
                lat = bench_func(funcs[name], batch, kv_ctx, num_split)
                row["latency_ms"] = lat
                print("  {} {:.6f} ms".format(name, lat), flush=True)
            except Exception as e:
                row["status"] = "FAIL: {}".format(type(e).__name__)
                print("  {} FAIL {}".format(name, e), flush=True)
            rows.append(row)

    with OUT_CSV.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)

    summary = []
    by_case = {}
    for r in rows:
        by_case.setdefault(r["case"], []).append(r)
    for case in SAMPLE_CASES:
        valid = [r for r in by_case[case] if r["latency_ms"] is not None]
        base = next(r for r in valid if r["variant"] == "row10")
        best = min(valid, key=lambda r: r["latency_ms"])
        summary.append({
            "case": case,
            "batch": base["batch"],
            "kv_ctx": base["kv_ctx"],
            "num_split": base["num_split"],
            "base_variant": "row10",
            "base_latency_ms": base["latency_ms"],
            "best_variant": best["variant"],
            "best_latency_ms": best["latency_ms"],
            "speedup_vs_row10": base["latency_ms"] / best["latency_ms"],
        })

    with OUT_SUMMARY.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(summary[0].keys()))
        writer.writeheader()
        writer.writerows(summary)

    total_base = sum(r["base_latency_ms"] for r in summary)
    total_best = sum(r["best_latency_ms"] for r in summary)
    mean_speedup = sum(r["speedup_vs_row10"] for r in summary) / len(summary)
    weighted_speedup = total_base / total_best

    lines = [
        "# v13 swizzle sweep",
        "",
        "## 测量目的",
        "",
        "在正式优化 PV path 前，先调 `T.use_swizzle` 的 panel/order，确认当前默认 `row10` 是否合适。",
        "",
        "## 配置",
        "",
        "- 候选：`none`, `row2`, `row4`, `row8`, `row10`, `row16`, `row32`, `col4`, `col8`, `col10`, `col16`。",
        "- sample cases: {}。".format(SAMPLE_CASES),
        "- benchmark: warmup=300, rep=100, heads=16, kv_heads=1, dim=512, pe_dim=64, BLOCK_N=32, BLOCK_H=16，num_split 使用当前正式 dispatch。",
        "- 不跑 correctness；只比较同一源码变体的 runtime。",
        "",
        "## 每个 case 最优",
        "",
        "| case | batch | kv_ctx | split | row10 ms | best | best ms | speedup |",
        "|---:|---:|---:|---:|---:|---|---:|---:|",
    ]
    for r in summary:
        lines.append("| {case} | {batch} | {kv_ctx} | {num_split} | {base_latency_ms:.6f} | {best_variant} | {best_latency_ms:.6f} | {speedup_vs_row10:.4f}x |".format(**r))
    lines += [
        "",
        "## 汇总",
        "",
        "- 算术平均 best/row10 speedup: {:.4f}x。".format(mean_speedup),
        "- 按 sample latency 加权 best/row10 speedup: {:.4f}x。".format(weighted_speedup),
        "- 如果最优配置分散且加权收益很小，说明 swizzle 不是当前主线优化点；如果某个配置稳定优于 row10，再合入正式 kernel。",
    ]
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_CSV))
    print("wrote {}".format(OUT_SUMMARY))
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
