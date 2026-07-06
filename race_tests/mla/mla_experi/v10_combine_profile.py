import csv
import os
from pathlib import Path

import tilelang
import tilelang.language as T

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
FULL_CSV = EXP_DIR / "v09_dispatch_full31.csv"
OUT_CSV = EXP_DIR / "v10_combine_profile.csv"
OUT_MD = EXP_DIR / "v10_combine_profile.md"

HEADS = 16
DIM = 512


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


@tilelang.jit(
    out_idx=[2],
    pass_configs={tilelang.PassConfigKey.TL_ENABLE_FAST_MATH: True},
)
def combine_only(batch, heads, num_split, dim):
    dtype = T.float16
    accum_dtype = T.float32

    @T.prim_func
    def main(
        Output_partial: T.Tensor([batch, heads, num_split, dim], dtype),
        glse: T.Tensor([batch, heads, num_split], accum_dtype),
        Output: T.Tensor([batch, heads, dim], dtype),
    ):
        with T.Kernel(heads, batch, threads=128) as (hid, bz):
            po_local = T.alloc_fragment([dim], dtype)
            o_accum_local = T.alloc_fragment([dim], accum_dtype)
            lse_local_split = T.alloc_var(accum_dtype)
            lse_logsum_local = T.alloc_var(accum_dtype)
            lse_max_local = T.alloc_var(accum_dtype)
            scale_local = T.alloc_var(accum_dtype)
            T.clear(lse_logsum_local)
            T.clear(o_accum_local)
            lse_max_local = -T.infinity(accum_dtype)

            for k in T.serial(num_split):
                lse_max_local = T.max(lse_max_local, glse[bz, hid, k])
            for k in T.Pipelined(num_split, num_stages=1):
                lse_local_split = glse[bz, hid, k]
                lse_logsum_local += T.exp2(lse_local_split - lse_max_local)
            lse_logsum_local = T.log2(lse_logsum_local) + lse_max_local

            for k in T.serial(num_split):
                for i in T.Parallel(dim):
                    po_local[i] = Output_partial[bz, hid, k, i]
                lse_local_split = glse[bz, hid, k]
                scale_local = T.exp2(lse_local_split - lse_logsum_local)
                for i in T.Parallel(dim):
                    o_accum_local[i] += po_local[i] * scale_local

            for i in T.Parallel(dim):
                Output[bz, hid, i] = o_accum_local[i]

    return main


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


def bench_case(batch, num_split):
    kernel = combine_only(batch, HEADS, num_split, DIM)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    return profiler.do_bench(warmup=200, rep=100)


def main():
    os.chdir(ROOT)
    full_rows = load_full_rows()
    sample_cases = [5, 9, 13, 17, 21, 22, 25, 27, 29, 30, 31]
    results = []

    for case in sample_cases:
        row = full_rows[case]
        num_split = select_split(row["batch"], row["kv_ctx"])
        combine_ms = bench_case(row["batch"], num_split)
        ratio = combine_ms / row["full_ms"]
        out = {
            "case": case,
            "batch": row["batch"],
            "heads": HEADS,
            "kv_ctx": row["kv_ctx"],
            "dim": DIM,
            "num_split": num_split,
            "full_ms": row["full_ms"],
            "combine_only_ms": combine_ms,
            "combine_over_full": ratio,
        }
        results.append(out)
        print(
            "case {case}: full={full_ms:.6f} ms combine={combine_only_ms:.6f} ms ratio={combine_over_full:.2%}".format(**out),
            flush=True,
        )

    with OUT_CSV.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(results[0].keys()))
        writer.writeheader()
        writer.writerows(results)

    weighted = sum(r["combine_only_ms"] for r in results) / sum(r["full_ms"] for r in results)
    arithmetic = sum(r["combine_over_full"] for r in results) / len(results)

    lines = [
        "# v10 combine 占比 microbench",
        "",
        "## 测量方法",
        "",
        "- full latency 使用当前正式 dispatch 版本的 `v09_dispatch_full31.csv`。",
        "- combine latency 使用一个 standalone TileLang kernel，逻辑等价于 `main_split` 的第二个 `T.Kernel(heads, batch)`。",
        "- 占比计算为 `combine_only_ms / full_ms`。这不是删掉 combine 后做差分，因此会少量受独立 launch、输入 cache 状态影响，但能直接反映 combine 这段 reduce 的量级。",
        "- benchmark: warmup=200, rep=100, heads=16, dim=512，`num_split` 按当前正式 dispatch 选择。",
        "",
        "## 结果",
        "",
        "| case | batch | kv_ctx | num_split | full ms | combine ms | combine/full |",
        "|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for r in results:
        lines.append(
            "| {case} | {batch} | {kv_ctx} | {num_split} | {full_ms:.6f} | {combine_only_ms:.6f} | {combine_over_full:.2%} |".format(**r)
        )
    lines += [
        "",
        "## 汇总判断",
        "",
        "- 采样 case 的算术平均 combine 占比：{:.2%}。".format(arithmetic),
        "- 按 latency 加权后的 combine 占比：{:.2%}。".format(weighted),
        "- combine 的绝对时间主要随 `batch * heads * num_split * dim` 增长；它不直接随 `kv_ctx` 增长，但 `kv_ctx` 变大时 full attention 主体变重，所以 combine/full 通常下降。",
    ]
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_CSV))
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
