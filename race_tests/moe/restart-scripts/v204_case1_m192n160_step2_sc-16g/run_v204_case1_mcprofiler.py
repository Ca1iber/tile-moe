#!/usr/bin/env python3
"""Collect exact v204 Case1 counters on the machine labeled mate."""

from __future__ import annotations

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
TARGETS = (
    ("rank", "kernel_kernel", 1),
    ("short_input", "kernel_kernel_1", 1),
    ("prepack", "kernel_kernel_2", 1),
    ("stage1", "kernel_kernel_3", 2),
    ("stage2", "kernel_kernel_4", 2),
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
    profiler_root = Path("/opt/mcProfiler-ubuntu18.04")
    output_dir = Path("/root/codex-d212-v197-20260831/profile_v204_case1_mate_0831")
    output_dir.mkdir(parents=True, exist_ok=True)
    submission = Path(
        "/root/codex-d212-v197-20260831/race_tests/moe/"
        "xpuoj_submission_pure_v197_v191_case1_m192n160_step2.py"
    )
    driver = Path("/tmp/v204_case1_profiler_driver.py")
    helper = Path("/tmp/v204_profile_submission.py")
    summary: dict[str, dict[str, object]] = {}

    for phase, symbol, replays in TARGETS:
        before = set(profiler_root.glob("output*"))
        workload = (
            "env MACA_PATH=/opt/maca "
            "PATH=/opt/maca/mxgpu_llvm/bin:/opt/conda/bin:/usr/local/bin:/usr/bin:/bin "
            "PYTHONPATH=/opt/tilelang-metax-v0.1.10:/root/codex-d212-v197-20260831 "
            f"/opt/conda/bin/python {driver} --submission {submission} --helper {helper} "
            f"--warmup 3 --replays {replays}"
        )
        command = [
            str(profiler_root / "mcProfiler"),
            "perf_exec",
            "--cmdline",
            workload,
            "--casename",
            f"v204_case1_{phase}_mate_0831",
            "--cwd",
            "/root/codex-d212-v197-20260831",
            "--metrics",
            *METRICS,
            "--per-kernel",
            "--counts",
            str(replays),
            "--kernelnames",
            symbol,
        ]
        log_path = output_dir / f"{phase}.profiler.log"
        with log_path.open("w", encoding="utf-8") as log:
            completed = subprocess.run(
                command,
                cwd=profiler_root,
                stdout=log,
                stderr=subprocess.STDOUT,
                text=True,
                check=False,
            )
        if completed.returncode != 0:
            tail = "\n".join(log_path.read_text(errors="replace").splitlines()[-100:])
            raise RuntimeError(f"mcProfiler failed for {phase}:\n{tail}")
        created = sorted(set(profiler_root.glob("output*")) - before)
        if len(created) != 1:
            raise RuntimeError(f"expected one profiler output for {phase}: {created}")
        rows: list[dict[str, float | str]] = []
        retained: list[str] = []
        for replay in range(1, replays + 1):
            source = created[0] / f"{replay}_{symbol}_dumped_result.json"
            if not source.exists():
                raise RuntimeError(f"missing {source}")
            destination = output_dir / f"{phase}.replay{replay}.json"
            shutil.copy2(source, destination)
            retained.append(str(destination))
            rows.append(metric_map(destination))
        summary[phase] = {
            "machine_label": "mate",
            "case": 1,
            "kernel": symbol,
            "replays": rows,
            "mean": numeric_mean(rows),
            "retained": retained,
            "profiler_output": str(created[0]),
        }
        print(json.dumps({phase: summary[phase]}, sort_keys=True), flush=True)

    summary_path = output_dir / "summary.json"
    summary_path.write_text(json.dumps(summary, indent=2, sort_keys=True) + "\n", encoding="utf-8")
    print(f"summary={summary_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
