#!/usr/bin/env python3
"""Run paired clean OJ samples for v020 and v021 gate-A-up ordering."""

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
            fields = Path(f"/proc/{pid}/stat").read_text(encoding="utf-8").split()
            pid = int(fields[3])
        except (FileNotFoundError, IndexError, ValueError):
            break
    return pids


def competing_workload() -> list[str]:
    result = subprocess.run(["ps", "-eo", "pid=,cmd="], check=True, capture_output=True, text=True)
    needles = ("/root/tilelang-pipeline", "mcProfiler", "mcTracer", "fusedmoe_benchmark.py")
    ignored = ancestor_pids()
    workloads = []
    for line in result.stdout.splitlines():
        fields = line.strip().split(maxsplit=1)
        if len(fields) != 2:
            continue
        pid, command = int(fields[0]), fields[1]
        if pid not in ignored and any(needle in command for needle in needles):
            workloads.append(line.strip())
    return workloads


def parse_case_lines(log_path: Path, expected_cases: list[int]) -> list[dict]:
    results = []
    for line in log_path.read_text(encoding="utf-8").splitlines():
        if line.startswith('{"case":'):
            results.append(json.loads(line))
    if [item["case"] for item in results] != expected_cases:
        raise RuntimeError(f"expected cases {expected_cases} in {log_path}, got {[item.get('case') for item in results]}")
    if any(item.get("status") != "PASS" for item in results):
        raise RuntimeError(f"correctness failure in {log_path}")
    return results


def stats(values: list[float]) -> dict:
    return {
        "samples": values,
        "mean_ms": statistics.fmean(values),
        "median_ms": statistics.median(values),
        "min_ms": min(values),
        "max_ms": max(values),
        "pstdev_ms": statistics.pstdev(values),
    }


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--runner", type=Path, required=True)
    parser.add_argument("--parent-source", type=Path, required=True)
    parser.add_argument("--candidate-source", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--pairs", type=int, default=3)
    parser.add_argument("--warmup", type=int, default=10)
    parser.add_argument("--repeat", type=int, default=100)
    parser.add_argument("--cases", default="1,2,3")
    args = parser.parse_args()

    output_dir = args.output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    case_ids = [int(value) for value in args.cases.split(",") if value]
    sources = {
        "v020_parent": args.parent_source.resolve(),
        "v021_gate_input_up": args.candidate_source.resolve(),
    }
    raw: list[dict] = []
    env = os.environ.copy()
    env["PYTHONDONTWRITEBYTECODE"] = "1"
    env["PYTHONPATH"] = "/root/tilelang-metax"

    for pair_index in range(args.pairs):
        order = (
            ["v020_parent", "v021_gate_input_up"]
            if pair_index % 2 == 0
            else ["v021_gate_input_up", "v020_parent"]
        )
        for order_index, tag in enumerate(order):
            busy = competing_workload()
            if busy:
                raise RuntimeError("competing GPU workload detected before sample:\n" + "\n".join(busy))
            log_path = output_dir / f"pair{pair_index + 1}_{order_index + 1}_{tag}.log"
            command = [
                sys.executable,
                str(args.runner.resolve()),
                "--kernel-source",
                str(sources[tag]),
                "--source-tag",
                tag,
                "--cases",
                args.cases,
                "--warmup",
                str(args.warmup),
                "--repeat",
                str(args.repeat),
            ]
            with log_path.open("w", encoding="utf-8") as stream:
                completed = subprocess.run(command, env=env, stdout=stream, stderr=subprocess.STDOUT)
            if completed.returncode != 0:
                raise RuntimeError(f"sample failed with {completed.returncode}: {log_path}")
            for result in parse_case_lines(log_path, case_ids):
                raw.append(
                    {
                        "pair": pair_index + 1,
                        "order_in_pair": order_index + 1,
                        "tag": tag,
                        "case": result["case"],
                        "average_ms": result["average_ms"],
                        "max_abs": result["max_abs"],
                        "log": str(log_path),
                    }
                )

    aggregate = {}
    paired = {}
    for case_id in case_ids:
        aggregate[str(case_id)] = {}
        for tag in sources:
            values = [item["average_ms"] for item in raw if item["case"] == case_id and item["tag"] == tag]
            aggregate[str(case_id)][tag] = stats(values)
        pair_rows = []
        for pair_index in range(1, args.pairs + 1):
            parent = next(item["average_ms"] for item in raw if item["case"] == case_id and item["tag"] == "v020_parent" and item["pair"] == pair_index)
            candidate = next(
                item["average_ms"]
                for item in raw
                if item["case"] == case_id
                and item["tag"] == "v021_gate_input_up"
                and item["pair"] == pair_index
            )
            pair_rows.append(
                {
                    "pair": pair_index,
                    "parent_ms": parent,
                    "candidate_ms": candidate,
                    "candidate_change_percent": (candidate / parent - 1.0) * 100.0,
                    "candidate_speedup_percent": (parent / candidate - 1.0) * 100.0,
                }
            )
        paired[str(case_id)] = {
            "pairs": pair_rows,
            "median_change_percent": statistics.median(row["candidate_change_percent"] for row in pair_rows),
            "mean_change_percent": statistics.fmean(row["candidate_change_percent"] for row in pair_rows),
        }

    summary = {
        "created_at_utc": datetime.now(timezone.utc).isoformat(),
        "protocol": {
            "pairs": args.pairs,
            "orders": "AB, BA, AB ...",
            "warmup": args.warmup,
            "repeat": args.repeat,
            "cases": case_ids,
            "fresh_process_per_variant_sample": True,
        },
        "sources": {tag: str(path) for tag, path in sources.items()},
        "raw": raw,
        "aggregate": aggregate,
        "paired": paired,
    }
    summary_path = output_dir / "v021_gate_input_up_vs_v020_paired_oj_summary.json"
    summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
