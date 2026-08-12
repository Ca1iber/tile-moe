#!/usr/bin/env python3
"""Capture paired Case3 mcTracer samples for explicit v013/v014 sources."""

from __future__ import annotations

import argparse
import json
import os
import statistics
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path


def ancestor_pids() -> set[int]:
    pids = {os.getpid()}
    pid = os.getppid()
    while pid > 1 and pid not in pids:
        pids.add(pid)
        try:
            pid = int(Path(f"/proc/{pid}/stat").read_text(encoding="utf-8").split()[3])
        except (FileNotFoundError, IndexError, ValueError):
            break
    return pids


def competing_workload() -> list[str]:
    result = subprocess.run(["ps", "-eo", "pid=,cmd="], check=True, capture_output=True, text=True)
    needles = ("/root/tilelang-pipeline", "mcProfiler", "fusedmoe_benchmark.py", "oj_benchmark.py")
    ignored = ancestor_pids()
    workloads = []
    for line in result.stdout.splitlines():
        fields = line.strip().split(maxsplit=1)
        if len(fields) == 2 and int(fields[0]) not in ignored and any(needle in fields[1] for needle in needles):
            workloads.append(line.strip())
    return workloads


def summarize_trace(trace: Path) -> dict:
    events = json.loads(trace.read_text(encoding="utf-8"))["traceEvents"]
    start = next(event["ts"] for event in events if event.get("name") == "mcProfilerStart" and event.get("ph") == "X")
    stop_event = next(event for event in events if event.get("name") == "mcProfilerStop" and event.get("ph") == "X")
    stop = stop_event["ts"] + stop_event["dur"]
    kernels = [
        event
        for event in events
        if event.get("ph") == "X"
        and event.get("name") in ("kernel_kernel", "kernel_kernel_1")
        and start <= event.get("ts", -1) <= stop
    ]
    step1 = next(event for event in kernels if event["name"] == "kernel_kernel")
    step2 = next(event for event in kernels if event["name"] == "kernel_kernel_1")
    step1_ms = step1["dur"] / 1e6
    step2_ms = step2["dur"] / 1e6
    gap_ms = (step2["ts"] - step1["ts"] - step1["dur"]) / 1e6
    return {
        "trace": str(trace),
        "step1_ms": step1_ms,
        "step2_ms": step2_ms,
        "launch_gap_ms": gap_ms,
        "device_span_ms": step1_ms + gap_ms + step2_ms,
        "step2_share_kernel_pct": step2_ms / (step1_ms + step2_ms) * 100.0,
        "step1_grid": step1.get("args", {}).get("grid"),
        "step2_grid": step2.get("args", {}).get("grid"),
        "step1_memory": step1.get("args", {}).get("mem"),
        "step2_memory": step2.get("args", {}).get("mem"),
    }


def stats(values: list[float]) -> dict:
    return {
        "samples": values,
        "mean": statistics.fmean(values),
        "median": statistics.median(values),
        "min": min(values),
        "max": max(values),
        "pstdev": statistics.pstdev(values),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo", type=Path, default=Path("/root/tilelang-metax"))
    parser.add_argument("--profile-script", type=Path, required=True)
    parser.add_argument("--parent-source", type=Path, required=True)
    parser.add_argument("--candidate-source", type=Path, required=True)
    parser.add_argument("--output-root", type=Path, required=True)
    parser.add_argument("--pairs", type=int, default=3)
    parser.add_argument("--warmup", type=int, default=3)
    args = parser.parse_args()

    repo = args.repo.resolve()
    output_root = args.output_root.resolve()
    output_root.mkdir(parents=True, exist_ok=True)
    sources = {"v013_parent": args.parent_source.resolve(), "v014_candidate": args.candidate_source.resolve()}
    rows = []

    for pair_index in range(args.pairs):
        order = ["v013_parent", "v014_candidate"] if pair_index % 2 == 0 else ["v014_candidate", "v013_parent"]
        for order_index, tag in enumerate(order):
            busy = competing_workload()
            if busy:
                raise RuntimeError("competing GPU workload detected before trace:\n" + "\n".join(busy))
            scope = f"pair{pair_index + 1}_{order_index + 1}_{tag}"
            output_dir = output_root / scope
            if output_dir.exists():
                raise RuntimeError(f"refusing to overwrite trace directory: {output_dir}")
            output_dir.mkdir(parents=True)
            output_rel = output_dir.relative_to(repo)
            target = [
                "/usr/bin/env",
                "MACA_PATH=/opt/maca",
                "PYTHONDONTWRITEBYTECODE=1",
                f"PYTHONPATH={repo}",
                f"MOE_PROJECT_ROOT={repo}",
                "/opt/conda/bin/python",
                str(args.profile_script.resolve()),
                "--case",
                "3",
                "--warmup",
                str(args.warmup),
                "--kernel-source",
                str(sources[tag]),
                "--source-tag",
                tag,
            ]
            name = f"v014_case3_{scope}"
            command = [
                "/opt/maca-3.7.1/bin/mcTracer",
                "--mctx",
                "--odname",
                str(output_rel),
                "--name",
                name,
                *target,
            ]
            (output_dir / "command.json").write_text(json.dumps(command, indent=2) + "\n", encoding="utf-8")
            log_path = output_dir / "mctracer_console.log"
            with log_path.open("w", encoding="utf-8") as stream:
                completed = subprocess.run(command, cwd=repo, stdout=stream, stderr=subprocess.STDOUT)
            log = log_path.read_text(encoding="utf-8")
            if completed.returncode != 0 or "[FATAL]" in log or '"event": "PROFILE_DONE"' not in log:
                raise RuntimeError(f"mcTracer failed with {completed.returncode}: {log_path}")
            traces = [path for path in output_dir.glob("*.json") if path.name != "command.json"]
            if len(traces) != 1:
                raise RuntimeError(f"expected one trace JSON in {output_dir}, got {traces}")
            result = {
                "pair": pair_index + 1,
                "order_in_pair": order_index + 1,
                "tag": tag,
                **summarize_trace(traces[0]),
            }
            (output_dir / "summary.json").write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
            rows.append(result)

    aggregate = {}
    paired = {}
    for tag in sources:
        tag_rows = [row for row in rows if row["tag"] == tag]
        aggregate[tag] = {
            "step1_ms": stats([row["step1_ms"] for row in tag_rows]),
            "step2_ms": stats([row["step2_ms"] for row in tag_rows]),
            "launch_gap_ms": stats([row["launch_gap_ms"] for row in tag_rows]),
            "device_span_ms": stats([row["device_span_ms"] for row in tag_rows]),
        }
    pair_rows = []
    for pair_index in range(1, args.pairs + 1):
        parent = next(row for row in rows if row["pair"] == pair_index and row["tag"] == "v013_parent")
        candidate = next(row for row in rows if row["pair"] == pair_index and row["tag"] == "v014_candidate")
        pair_rows.append(
            {
                "pair": pair_index,
                "step1_change_percent": (candidate["step1_ms"] / parent["step1_ms"] - 1.0) * 100.0,
                "step2_change_percent": (candidate["step2_ms"] / parent["step2_ms"] - 1.0) * 100.0,
                "device_span_change_percent": (candidate["device_span_ms"] / parent["device_span_ms"] - 1.0) * 100.0,
            }
        )
    paired = {
        "pairs": pair_rows,
        "step2_median_change_percent": statistics.median(row["step2_change_percent"] for row in pair_rows),
        "step2_mean_change_percent": statistics.fmean(row["step2_change_percent"] for row in pair_rows),
        "device_span_median_change_percent": statistics.median(row["device_span_change_percent"] for row in pair_rows),
    }
    summary = {
        "created_at_utc": datetime.now(timezone.utc).isoformat(),
        "protocol": {"case": 3, "pairs": args.pairs, "orders": "AB, BA, AB ...", "warmup": args.warmup},
        "sources": {tag: str(path) for tag, path in sources.items()},
        "rows": rows,
        "aggregate": aggregate,
        "paired": paired,
    }
    summary_path = output_root / "v014_vs_v013_case3_mctracer_summary.json"
    summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
