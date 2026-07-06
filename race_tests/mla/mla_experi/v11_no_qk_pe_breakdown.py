import csv
import os
from pathlib import Path

import tilelang

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
SRC = ROOT / "race_tests" / "mla" / "test_tilelang_mla.py"
FULL_CSV = EXP_DIR / "v09_dispatch_full31.csv"
OUT_CSV = EXP_DIR / "v11_no_qk_pe_breakdown.csv"
OUT_MD = EXP_DIR / "v11_no_qk_pe_breakdown.md"

HEADS = 16
KV_HEADS = 1
DIM = 512
PE_DIM = 64
BLOCK_N = 32
BLOCK_H = 16


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


def load_full_rows():
    rows = {}
    with FULL_CSV.open() as f:
        reader = csv.DictReader(f)
        for row in reader:
            case = int(row.get("case", row.get("case_id")))
            rows[case] = {
                "case": case,
                "batch": int(row["batch"]),
                "kv_ctx": int(row["kv_ctx"]),
                "full_ms": float(row["latency_ms"]),
            }
    return rows


def build_no_qk_pe_func():
    src = SRC.read_text()
    prefix = src[: src.index("def ref_program")]
    prefix = prefix.replace("def flashattn(", "def flashattn_no_qk_pe(", 1)
    target = "                T.gemm(Q_pe_shared, K_pe_shared, acc_s, transpose_B=True, policy=T.GemmWarpPolicy.FullCol)\n"
    if target not in prefix:
        raise RuntimeError("target QK_pe gemm line not found")
    prefix = prefix.replace(target, "                # v11 ablation: disable QK_pe path.\n")
    ns = {"__name__": "v11_no_qk_pe_generated"}
    exec(compile(prefix, str(SRC), "exec"), ns)
    return ns["flashattn_no_qk_pe"]


def bench_case(func, batch, kv_ctx, num_split):
    softmax_scale = (DIM + PE_DIM) ** -0.5
    kernel = func(batch, HEADS, KV_HEADS, kv_ctx, DIM, PE_DIM, BLOCK_N, BLOCK_H, num_split, softmax_scale)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    return profiler.do_bench(warmup=300, rep=100)


def main():
    os.chdir(ROOT)
    func = build_no_qk_pe_func()
    full_rows = load_full_rows()
    sample_cases = [5, 9, 13, 17, 21, 22, 25, 27, 29, 30, 31]
    results = []

    for case in sample_cases:
        row = full_rows[case]
        batch = row["batch"]
        kv_ctx = row["kv_ctx"]
        num_split = select_split(batch, kv_ctx)
        no_qk_pe_ms = bench_case(func, batch, kv_ctx, num_split)
        full_ms = row["full_ms"]
        delta_ms = full_ms - no_qk_pe_ms
        delta_pct_full = delta_ms / full_ms
        qk_pe_flops = 2 * batch * HEADS * kv_ctx * PE_DIM
        total_flops = 2 * batch * HEADS * kv_ctx * (DIM + PE_DIM) + 2 * batch * HEADS * kv_ctx * DIM
        qk_pe_flops_pct = qk_pe_flops / total_flops
        out = {
            "case": case,
            "batch": batch,
            "heads": HEADS,
            "kv_ctx": kv_ctx,
            "dim": DIM,
            "pe_dim": PE_DIM,
            "num_split": num_split,
            "full_ms": full_ms,
            "no_qk_pe_ms": no_qk_pe_ms,
            "delta_ms": delta_ms,
            "delta_pct_full": delta_pct_full,
            "qk_pe_flops_pct": qk_pe_flops_pct,
        }
        results.append(out)
        print(
            "case {case}: full={full_ms:.6f} no_qk_pe={no_qk_pe_ms:.6f} delta={delta_ms:.6f} ({delta_pct_full:.2%})".format(**out),
            flush=True,
        )

    with OUT_CSV.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(results[0].keys()))
        writer.writeheader()
        writer.writerows(results)

    arithmetic = sum(r["delta_pct_full"] for r in results) / len(results)
    weighted = sum(r["delta_ms"] for r in results) / sum(r["full_ms"] for r in results)
    qk_pe_flops_pct = results[0]["qk_pe_flops_pct"]

    lines = [
        "# v11 no_qk_pe breakdown",
        "",
        "## 测量目的",
        "",
        "验证 RoPE 分支 `T.gemm(Q_pe_shared, K_pe_shared, acc_s, transpose_B=True, ...)` 在当前 split kernel 里的实际 runtime 占比，判断是否值得继续手写或专门优化。",
        "",
        "## 测量方法",
        "",
        "- full latency 使用当前正式 dispatch 版本的 `v09_dispatch_full31.csv`。",
        "- no_qk_pe latency 使用源码变换生成的 ablation kernel：删除 split/no_split 中的 QK_pe `T.gemm` 行，其他逻辑尽量保持不变。",
        "- 这里测到的是 RoPE QK 分支整体代价的近似值；由于 `K_pe_shared` 失去使用点，编译器可能同时消掉相关 copy，因此不是严格单独一条 GEMM 指令的耗时。",
        "- benchmark: warmup=300, rep=100, heads=16, kv_heads=1, dim=512, pe_dim=64, BLOCK_N=32, BLOCK_H=16，`num_split` 按当前正式 dispatch 选择。",
        "",
        "## 结果",
        "",
        "| case | batch | kv_ctx | num_split | full ms | no_qk_pe ms | delta ms | delta/full | QK_pe 理论 FLOPs 占比 |",
        "|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for r in results:
        lines.append(
            "| {case} | {batch} | {kv_ctx} | {num_split} | {full_ms:.6f} | {no_qk_pe_ms:.6f} | {delta_ms:.6f} | {delta_pct_full:.2%} | {qk_pe_flops_pct:.2%} |".format(**r)
        )
    lines += [
        "",
        "## 汇总判断",
        "",
        "- 采样 case 的算术平均 QK_pe runtime 占比：{:.2%}。".format(arithmetic),
        "- 按 latency 加权后的 QK_pe runtime 占比：{:.2%}。".format(weighted),
        "- QK_pe 理论 FLOPs 占总 FLOPs 固定为 {:.2%}，因为它只覆盖 pe_dim=64，而主路径还有 content QK dim=512 和 PV dim=512。".format(qk_pe_flops_pct),
        "- 如果实测占比接近或低于理论 FLOPs 占比，说明 QK_pe 不是当前主瓶颈；如果显著高于理论值，才值得继续手写或改 layout。",
    ]
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_CSV))
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
