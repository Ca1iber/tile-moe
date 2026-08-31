"""Collect matched exact-v197 Case-2/3 counters with mcProfiler.

Case 3 is bracketed around Case 2 for each phase.  This is a read-only audit
of the current OJ-84.33 parent, not an OJ submission or candidate generator.
"""

from __future__ import annotations

import argparse
import json
import shutil
import subprocess
from pathlib import Path


METRICS = (
    "L2C Hit Rate",
    "Global Memory Read bytes",
    "AP MMA Duty ratio",
    "instruction number",
)

# v197 Case 2/3 emits physical prepack, Stage 1 and Stage 2 in this order.
TARGETS = (
    (3, "prepack_a", "kernel_kernel"),
    (2, "prepack", "kernel_kernel"),
    (3, "prepack_b", "kernel_kernel"),
    (3, "stage1_a", "kernel_kernel_1"),
    (2, "stage1", "kernel_kernel_1"),
    (3, "stage1_b", "kernel_kernel_1"),
    (3, "stage2_a", "kernel_kernel_2"),
    (2, "stage2", "kernel_kernel_2"),
    (3, "stage2_b", "kernel_kernel_2"),
)


def metric_map(path: Path) -> dict[str, float | str]:
    payload = json.loads(path.read_text(encoding="utf-8"))
    result: dict[str, float | str] = {}
    for group in payload.values():
        if not isinstance(group, list):
            continue
        for metric in group:
            if isinstance(metric, dict) and metric.get("name") in METRICS:
                result[str(metric["name"])] = metric.get("data")
    return result


def numeric_mean(rows: list[dict[str, float | str]]) -> dict[str, float | str]:
    result: dict[str, float | str] = {}
    for metric in METRICS:
        values = [row[metric] for row in rows if metric in row]
        if values and all(isinstance(value, (int, float)) for value in values):
            result[metric] = sum(float(value) for value in values) / len(values)
        elif values:
            result[metric] = values[-1]
    return result


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--repo", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument(
        "--profiler-root", type=Path, default=Path("/opt/mcProfiler-ubuntu18.04")
    )
    parser.add_argument("--python", default="/opt/conda/bin/python")
    parser.add_argument("--tilelang-root", default="/opt/tilelang-metax-v0.1.10")
    args = parser.parse_args()

    repo = args.repo.resolve()
    moe_dir = repo / "race_tests" / "moe"
    driver = moe_dir / "experiments" / "d212_v197_profile_driver.py"
    submission = moe_dir / "xpuoj_submission_pure_v197_v191_case1_m192n160_step2.py"
    output_dir = args.output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    summary: dict[str, dict[str, object]] = {}

    for case_id, phase, kernel_name in TARGETS:
        label = f"case{case_id}_{phase}"
        # ``kernel_kernel`` is a prefix of later symbols, so retain one replay
        # for prepack.  Exact Stage-1/2 symbols can safely average two replays.
        replays = 1 if kernel_name == "kernel_kernel" else 2
        before = set(args.profiler_root.glob("output*"))
        cmdline = (
            "env MACA_PATH=/opt/maca "
            "PATH=/opt/maca/mxgpu_llvm/bin:/opt/conda/bin:/usr/local/bin:/usr/bin:/bin "
            f"PYTHONPATH={args.tilelang_root}:{repo}:{moe_dir}:{moe_dir / 'experiments'} "
            f"{args.python} {driver} --submission {submission} "
            f"--case {case_id} --replays {replays}"
        )
        command = [
            str(args.profiler_root / "mcProfiler"),
            "perf_exec",
            "--cmdline",
            cmdline,
            "--casename",
            f"d212_v197_{label}_0831",
            "--cwd",
            str(moe_dir),
            "--metrics",
            *METRICS,
            "--per-kernel",
            "--counts",
            str(replays),
            "--kernelnames",
            kernel_name,
        ]
        log_path = output_dir / f"{label}.profiler.log"
        with log_path.open("w", encoding="utf-8") as log:
            completed = subprocess.run(
                command,
                cwd=args.profiler_root,
                stdout=log,
                stderr=subprocess.STDOUT,
                text=True,
                check=False,
            )
        if completed.returncode != 0:
            tail = "\n".join(log_path.read_text(errors="replace").splitlines()[-100:])
            raise RuntimeError(f"mcProfiler failed for {label}:\n{tail}")

        created = sorted(set(args.profiler_root.glob("output*")) - before)
        if len(created) != 1:
            raise RuntimeError(f"expected one profiler output for {label}: {created}")
        rows: list[dict[str, float | str]] = []
        retained: list[str] = []
        for replay in range(1, replays + 1):
            source = created[0] / f"{replay}_{kernel_name}_dumped_result.json"
            if not source.exists():
                found = sorted(created[0].glob("*_dumped_result.json"))
                raise RuntimeError(f"missing {source}; found {found}")
            destination = output_dir / f"{label}.replay{replay}.json"
            shutil.copy2(source, destination)
            retained.append(str(destination))
            rows.append(metric_map(destination))
        summary[label] = {
            "case": case_id,
            "kernel": kernel_name,
            "replays": rows,
            "mean": numeric_mean(rows),
            "retained": retained,
            "profiler_output": str(created[0]),
        }
        print(json.dumps({label: summary[label]}, sort_keys=True), flush=True)

    summary_path = output_dir / "summary.json"
    summary_path.write_text(
        json.dumps(summary, indent=2, sort_keys=True) + "\n", encoding="utf-8"
    )
    print(f"summary={summary_path}", flush=True)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
