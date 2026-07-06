import csv
import importlib.util
import os
from pathlib import Path

import tilelang
from race_tests.mla.test_tilelang_mla import ref_program

ROOT = Path("/root/tilelang-metax")
EXP_DIR = ROOT / "race_tests" / "mla" / "mla_experi"
SRC = ROOT / "race_tests" / "mla" / "test_tilelang_mla.py"
OUT_CSV = EXP_DIR / "v14_layout_compat_sweep.csv"
OUT_MD = EXP_DIR / "v14_layout_compat_sweep.md"

HEADS = 16
KV_HEADS = 1
DIM = 512
PE_DIM = 64
BLOCK_N = 32
BLOCK_H = 16
CASE = (17, 8, 2048)

QK_K_PACKS = [1, 2, 4]
QK_COL_WARPS = [1, 2]
PV_K_PACKS = [1, 2]
PV_COL_WARPS = [1, 2, 4]


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


def patch_assign(src, name, value):
    old_prefix = "    {} = ".format(name)
    lines = src.splitlines()
    for i, line in enumerate(lines):
        if line.startswith(old_prefix):
            lines[i] = "    {} = {}".format(name, value)
            return "\n".join(lines) + "\n"
    raise RuntimeError("assignment not found: {}".format(name))


def build_variant(qk_k_pack, qk_col_warps, pv_k_pack, pv_col_warps):
    src = SRC.read_text()
    prefix = src[: src.index("def ref_program")]
    name = "v14_qkk{}_qkc{}_pvk{}_pvc{}".format(qk_k_pack, qk_col_warps, pv_k_pack, pv_col_warps)
    func_name = "flashattn_{}".format(name)
    prefix = prefix.replace("def flashattn(", "def {}(".format(func_name), 1)
    for key, val in [
        ("qk_k_pack", qk_k_pack),
        ("qk_block_col_warps", qk_col_warps),
        ("pv_k_pack", pv_k_pack),
        ("pv_block_col_warps", pv_col_warps),
    ]:
        prefix = patch_assign(prefix, key, val)
    old = """                T.copy(acc_s, S_shared)
                # 将 softmax 后的 probability 从 fp32 accumulator 转成 dtype fragment，作为 P @ V 的输入。
                T.copy(S_shared, acc_s_cast)
"""
    new = """                # v14 experiment: direct fragment copy/cast without S_shared bridge.
                T.copy(acc_s, acc_s_cast)
"""
    if old not in prefix:
        raise RuntimeError("target acc_s cast block not found")
    prefix = prefix.replace(old, new, 1)
    module_path = EXP_DIR / "v14_generated_{}.py".format(name)
    module_path.write_text(prefix)
    spec = importlib.util.spec_from_file_location("v14_generated_{}".format(name), module_path)
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return name, getattr(module, func_name)


def compile_and_check(func, check=False):
    _, batch, kv_ctx = CASE
    num_split = select_split(batch, kv_ctx)
    softmax_scale = (DIM + PE_DIM) ** -0.5
    kernel = func(batch, HEADS, KV_HEADS, kv_ctx, DIM, PE_DIM, BLOCK_N, BLOCK_H, num_split, softmax_scale)
    profiler = kernel.get_profiler(tensor_supply_type=tilelang.TensorSupplyType.Randn)
    if check:
        profiler.assert_allclose(ref_program, rtol=2e-4, atol=1e-4)
    latency = profiler.do_bench(warmup=50, rep=20)
    return num_split, latency


def main():
    os.chdir(ROOT)
    rows = []
    compatible = []
    for qk_k in QK_K_PACKS:
        for qk_c in QK_COL_WARPS:
            for pv_k in PV_K_PACKS:
                for pv_c in PV_COL_WARPS:
                    row = {
                        "variant": "",
                        "qk_k_pack": qk_k,
                        "qk_block_col_warps": qk_c,
                        "pv_k_pack": pv_k,
                        "pv_block_col_warps": pv_c,
                        "case": CASE[0],
                        "batch": CASE[1],
                        "kv_ctx": CASE[2],
                        "num_split": select_split(CASE[1], CASE[2]),
                        "status": "PASS",
                        "latency_ms": "",
                        "error": "",
                    }
                    try:
                        name, func = build_variant(qk_k, qk_c, pv_k, pv_c)
                        row["variant"] = name
                        num_split, latency = compile_and_check(func, check=False)
                        row["num_split"] = num_split
                        row["latency_ms"] = latency
                        compatible.append((name, func, row))
                        print("PASS {} latency {:.6f} ms".format(name, latency), flush=True)
                    except Exception as e:
                        msg = "{}: {}".format(type(e).__name__, e).replace("\n", " ")
                        row["status"] = "FAIL"
                        row["error"] = msg[:500]
                        print("FAIL qk_k={} qk_c={} pv_k={} pv_c={} {}".format(qk_k, qk_c, pv_k, pv_c, msg[:180]), flush=True)
                    rows.append(row)
    # For any compile-compatible variants, run correctness on the first few.
    for name, func, row in compatible[:8]:
        try:
            compile_and_check(func, check=True)
            row["status"] = "PASS_CORRECT"
            print("CORRECT {}".format(name), flush=True)
        except Exception as e:
            row["status"] = "COMPILE_PASS_CORRECT_FAIL"
            row["error"] = ("{}: {}".format(type(e).__name__, e).replace("\n", " "))[:500]
            print("CORRECT_FAIL {} {}".format(name, row["error"][:180]), flush=True)
    with OUT_CSV.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=list(rows[0].keys()))
        writer.writeheader()
        writer.writerows(rows)
    pass_rows = [r for r in rows if r["status"].startswith("PASS") or r["status"].startswith("COMPILE_PASS")]
    lines = [
        "# v14 layout compatibility sweep",
        "",
        "## 目的",
        "",
        "扫 QK/PV MMA mapping 参数，验证是否存在自然兼容的 fragment layout，使 `T.copy(acc_s, acc_s_cast)` 可以绕过 `S_shared` 中转。",
        "",
        "## 参数空间",
        "",
        "- qk_k_pack: {}".format(QK_K_PACKS),
        "- qk_block_col_warps: {}".format(QK_COL_WARPS),
        "- pv_k_pack: {}".format(PV_K_PACKS),
        "- pv_block_col_warps: {}".format(PV_COL_WARPS),
        "- compile/bench case: case{} batch={} kv_ctx={}。".format(*CASE),
        "",
        "## 兼容结果",
        "",
    ]
    if pass_rows:
        lines += ["| variant | qk_k | qk_col | pv_k | pv_col | status | latency ms |", "|---|---:|---:|---:|---:|---|---:|"]
        for r in pass_rows:
            lat = "" if r["latency_ms"] == "" else "{:.6f}".format(float(r["latency_ms"]))
            lines.append("| {variant} | {qk_k_pack} | {qk_block_col_warps} | {pv_k_pack} | {pv_block_col_warps} | {status} | {lat} |".format(lat=lat, **r))
    else:
        lines.append("没有任何组合通过 direct `T.copy(acc_s, acc_s_cast)` 的编译。")
    fail_count = sum(1 for r in rows if r["status"] == "FAIL")
    lines += ["", "## 汇总", "", "- 总组合数：{}。".format(len(rows)), "- 编译兼容组合数：{}。".format(len(pass_rows)), "- 编译失败组合数：{}。".format(fail_count)]
    if not pass_rows:
        lines.append("- 结论：在当前参数空间里，QK C accumulator layout 与 PV A operand layout 没有自然兼容组合；直接 fragment copy 路线暂时不现实。")
    else:
        lines.append("- 结论：存在编译兼容组合，需要进一步和 baseline 做 correctness/full latency 对比。")
    OUT_MD.write_text("\n".join(lines) + "\n")
    print("wrote {}".format(OUT_CSV))
    print("wrote {}".format(OUT_MD))


if __name__ == "__main__":
    main()
