import os
import re
import statistics
import subprocess
import sys

CASES = {
    1: {"batch": 1, "kv_ctx": 2048},
    17: {"batch": 8, "kv_ctx": 2048},
    29: {"batch": 32, "kv_ctx": 16384},
}


def run_case(case_id, batch, kv_ctx):
    env = os.environ.copy()
    env.update(
        {
            "MACA_PATH": "/opt/maca",
            "MACA_CLANG_PATH": "/opt/maca/mxgpu_llvm/bin",
            "LD_LIBRARY_PATH": "/opt/maca/lib:/opt/maca/ompi/lib:/opt/maca/ucx/lib:/opt/mxdriver/lib:"
            + env.get("LD_LIBRARY_PATH", ""),
            "PATH": "/opt/conda/bin:/opt/maca/mxgpu_llvm/bin:/opt/maca/ompi/bin:/opt/maca/ucx/bin:/opt/mxdriver/bin:"
            + env.get("PATH", ""),
            "PYTHONPATH": "/root/tilelang-metax",
            "PYTORCH_CUDA_ALLOC_CONF": "expandable_segments:True",
        }
    )
    cmd = [
        "/opt/conda/bin/python",
        "race_tests/mla/test_tilelang_mla.py",
        "--no-json",
        "--batch",
        str(batch),
        "--heads",
        "16",
        "--kv_heads",
        "1",
        "--kv_ctx",
        str(kv_ctx),
        "--dim",
        "512",
        "--pe_dim",
        "64",
    ]
    proc = subprocess.run(cmd, env=env, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
    sys.stdout.write(proc.stdout)
    sys.stdout.flush()
    match = re.search(r"Latency:\s*([0-9.]+)\s*ms", proc.stdout)
    if proc.returncode != 0 or match is None:
        raise RuntimeError("case {} failed with return code {}".format(case_id, proc.returncode))
    return float(match.group(1))


def main():
    results = {}
    for case_id, cfg in CASES.items():
        vals = []
        print(
            "===== case {} batch={} kv_ctx={} =====".format(case_id, cfg["batch"], cfg["kv_ctx"]),
            flush=True,
        )
        for i in range(1, 6):
            lat = run_case(case_id, cfg["batch"], cfg["kv_ctx"])
            vals.append(lat)
            print("CASE {} RUN {} LAT {:.6f} ms".format(case_id, i, lat), flush=True)
        results[case_id] = vals
        print(
            "SUMMARY case {}: values={} min={:.6f} max={:.6f} mean={:.6f} stdev={:.6f}".format(
                case_id,
                [round(v, 6) for v in vals],
                min(vals),
                max(vals),
                statistics.mean(vals),
                statistics.stdev(vals),
            ),
            flush=True,
        )
    print("===== FINAL SUMMARY =====")
    for case_id, vals in results.items():
        print("case {}: {}".format(case_id, [round(v, 6) for v in vals]))


if __name__ == "__main__":
    main()
