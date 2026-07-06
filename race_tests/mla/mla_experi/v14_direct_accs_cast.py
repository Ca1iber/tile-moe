import csv
import importlib.util
import os
from pathlib import Path

import tilelang
from race_tests.mla.test_tilelang_mla import ref_program

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
SRC = ROOT / "race_tests" / "mla" / "test_tilelang_mla.py"
OUT_CSV = EXP_DIR / "v14_direct_accs_cast_sample.csv"
OUT_MD = EXP_DIR / "v14_direct_accs_cast.md"

HEADS = 16
KV_HEADS = 1
DIM = 512
PE_DIM = 64
BLOCK_N = 32
BLOCK_H = 16
SAMPLE_CASES = [(17, 8, 2048), (21, 8, 65536), (25, 16, 32768), (29, 32, 16384), (31, 32, 65536)]


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


def build_direct_func():
    src = SRC.read_text()
    prefix = src[: src.index("def ref_program")]
    prefix = prefix.replace("def flashattn(", "def flashattn_direct_accs_cast(", 1)
    old = """                T.copy(acc_s, S_shared)
                # 将 softmax 后的 probability 从 fp32 accumulator 转成 dtype fragment，作为 P @ V 的输入。
                T.copy(S_shared, acc_s_cast)
"""
    new = """                # v14 experiment: directly cast/copy fp32 probability fragment to fp16 PV A fragment.
                T.copy(acc_s, acc_s_cast)
"""
    if old not in prefix:
        raise RuntimeError("target acc_s -> S_shared -> acc_s_cast block not found")
    prefix = prefix.replace(old, new, 1)
    module_path = EXP_DIR / "v14_generated_direct_accs_cast.py"
    module_path.write_text(prefix)
    spec = importlib.util.spec_from_file_location("v14_generated_direct_accs_cast", module_path)
    mod = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(mod)
    return mod.flashattn_direct_accs_cast


def bench_case(func, batch, kv_ctx, check=True):
    num_split = select_split(batch, kv_ctx)
    softmax_scale = (DIM + PE_DIM) ** -0.5
    kernel = func(batch, HEADS, KV_HEADS, kv_ctx, DIM, PE_DIM, BLOCK_N, BLOCK_H, num_split, softmax_scale)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    if check:
        profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)
    latency = profiler.do_bench(warmup=300, rep=100)
    return num_split, latency


def main():
    os.chdir(ROOT)
    func = build_direct_func()
    rows = []
    ok = True
    err = ""
    for case, batch, kv_ctx in SAMPLE_CASES:
        row = {"case": case, "batch": batch, "kv_ctx": kv_ctx, "num_split": select_split(batch, kv_ctx), "latency_ms": "", "status": "PASS"}
        try:
            num_split, latency = bench_case(func, batch, kv_ctx, check=True)
            row["num_split"] = num_split
            row["latency_ms"] = latency
            print("case {} PASS latency {:.6f} ms".format(case, latency), flush=True)
        except Exception as e:
            ok = False
            err = "{}: {}".format(type(e).__name__, e)
            row["status"] = "FAIL: " + err[:180]
            print("case {} FAIL {}".format(case, err), flush=True)
        rows.append(row)
        if not ok:
            break
    with OUT_CSV.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)
    lines = [
        "# v14 direct acc_s -> acc_s_cast experiment",
        "",
        "## 目的",
        "",
        "验证是否可以去掉 `S_shared` 中转，把 `T.copy(acc_s, S_shared); T.copy(S_shared, acc_s_cast)` 改成 `T.copy(acc_s, acc_s_cast)`。",
        "",
        "## 结果",
        "",
        "| case | batch | kv_ctx | num_split | status | latency ms |",
        "|---:|---:|---:|---:|---|---:|",
    ]
    for r in rows:
        lat = r["latency_ms"]
        lat_s = "" if lat == "" else "{:.6f}".format(float(lat))
        lines.append("| {case} | {batch} | {kv_ctx} | {num_split} | {status} | {lat} |".format(lat=lat_s, **r))
    if not ok:
        lines += ["", "结论：direct fragment copy 当前不可用或 correctness 不通过，错误：`{}`。".format(err)]
    else:
        lines += ["", "结论：direct fragment copy 可以编译并通过 sampled correctness，下一步需要和 baseline 同场对比 latency。"]
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_CSV))
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
