#!/usr/bin/env python3
"""Run three TileLang source variants in balanced fresh-process rotations."""

from __future__ import annotations

import argparse
import json
import os
import statistics
import subprocess
import sys
from datetime import datetime, timezone
from pathlib import Path


ORDERS = (
    ("parent", "gua", "agu"),
    ("gua", "agu", "parent"),
    ("agu", "parent", "gua"),
    ("agu", "gua", "parent"),
    ("parent", "agu", "gua"),
    ("gua", "parent", "agu"),
)


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
    result = subprocess.run(
        ["ps", "-eo", "pid=,cmd="], check=True, capture_output=True, text=True
    )
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


def parse_result(path: Path, case_id: int) -> dict:
    rows = [
        json.loads(line)
        for line in path.read_text(encoding="utf-8").splitlines()
        if line.startswith('{"case":')
    ]
    if len(rows) != 1 or rows[0].get("case") != case_id:
        raise RuntimeError(f"expected one Case{case_id} row in {path}, got {rows}")
    if rows[0].get("status") != "PASS":
        raise RuntimeError(f"correctness failure in {path}")
    return rows[0]


def sample_stats(values: list[float]) -> dict:
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
    parser.add_argument("--gua-source", type=Path, required=True)
    parser.add_argument("--agu-source", type=Path, required=True)
    parser.add_argument("--output-dir", type=Path, required=True)
    parser.add_argument("--rounds", type=int, default=6)
    parser.add_argument("--case", type=int, default=2)
    parser.add_argument("--warmup", type=int, default=10)
    parser.add_argument("--repeat", type=int, default=100)
    args = parser.parse_args()
    if args.rounds < 1:
        raise ValueError("rounds must be positive")

    output_dir = args.output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    sources = {
        "parent": args.parent_source.resolve(),
        "gua": args.gua_source.resolve(),
        "agu": args.agu_source.resolve(),
    }
    env = os.environ.copy()
    env["PYTHONDONTWRITEBYTECODE"] = "1"
    env["PYTHONPATH"] = "/root/tilelang-metax"
    raw = []

    for round_index in range(args.rounds):
        order = ORDERS[round_index % len(ORDERS)]
        for position, tag in enumerate(order, start=1):
            busy = competing_workload()
            if busy:
                raise RuntimeError("competing GPU workload detected:\n" + "\n".join(busy))
            log = output_dir / f"round{round_index + 1}_pos{position}_{tag}.log"
            command = [
                sys.executable,
                str(args.runner.resolve()),
                "--kernel-source",
                str(sources[tag]),
                "--source-tag",
                tag,
                "--cases",
                str(args.case),
                "--warmup",
                str(args.warmup),
                "--repeat",
                str(args.repeat),
            ]
            with log.open("w", encoding="utf-8") as stream:
                completed = subprocess.run(command, env=env, stdout=stream, stderr=subprocess.STDOUT)
            if completed.returncode != 0:
                raise RuntimeError(f"sample failed with {completed.returncode}: {log}")
            result = parse_result(log, args.case)
            raw.append(
                {
                    "round": round_index + 1,
                    "position": position,
                    "tag": tag,
                    "average_ms": result["average_ms"],
                    "max_abs": result["max_abs"],
                    "log": str(log),
                }
            )

    aggregate = {
        tag: sample_stats([row["average_ms"] for row in raw if row["tag"] == tag])
        for tag in sources
    }
    comparisons = {}
    for tag in ("gua", "agu"):
        rows = []
        for round_index in range(1, args.rounds + 1):
            parent_ms = next(
                row["average_ms"]
                for row in raw
                if row["round"] == round_index and row["tag"] == "parent"
            )
            candidate_ms = next(
                row["average_ms"]
                for row in raw
                if row["round"] == round_index and row["tag"] == tag
            )
            rows.append(
                {
                    "round": round_index,
                    "parent_ms": parent_ms,
                    "candidate_ms": candidate_ms,
                    "change_percent": (candidate_ms / parent_ms - 1.0) * 100.0,
                }
            )
        comparisons[tag] = {
            "rounds": rows,
            "median_change_percent": statistics.median(row["change_percent"] for row in rows),
            "mean_change_percent": statistics.fmean(row["change_percent"] for row in rows),
            "improved_rounds": sum(row["change_percent"] < 0.0 for row in rows),
        }

    summary = {
        "created_at_utc": datetime.now(timezone.utc).isoformat(),
        "protocol": {
            "rounds": args.rounds,
            "base_orders": ORDERS,
            "case": args.case,
            "warmup": args.warmup,
            "repeat": args.repeat,
            "fresh_process_per_variant_sample": True,
        },
        "sources": {tag: str(path) for tag, path in sources.items()},
        "raw": raw,
        "aggregate": aggregate,
        "comparisons_vs_parent": comparisons,
    }
    summary_path = output_dir / "v024_half_order_rotating_oj_summary.json"
    summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
