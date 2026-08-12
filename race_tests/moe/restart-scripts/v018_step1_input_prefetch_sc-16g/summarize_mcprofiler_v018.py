#!/usr/bin/env python3
"""Summarize directional mcProfiler counters for v018 parent/candidate."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


def flatten(report: dict) -> dict:
    return {
        item["name"]: item["value"]
        for section in report.values()
        for item in section
    }


def scalar(value) -> float:
    if isinstance(value, (int, float)):
        return float(value)
    match = re.search(r"[-+]?\d[\d,]*(?:\.\d+)?", value)
    if not match:
        raise ValueError(f"cannot parse scalar: {value!r}")
    return float(match.group(0).replace(",", ""))


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()

    parent = flatten(json.loads(args.parent.read_text(encoding="utf-8")))
    candidate = flatten(json.loads(args.candidate.read_text(encoding="utf-8")))
    names = [
        "Total Cycles",
        "Average Wave life cycles",
        "AP active cycles",
        "AP MTE Duty ratio",
        "AP MMA Duty ratio",
        "Global Memory Read bytes",
        "Global Memory Write bytes",
        "average latency of all stages per instruction",
        "Private Read Instructions",
        "Private Write Instructions",
    ]
    metrics = {}
    for name in names:
        before = scalar(parent[name])
        after = scalar(candidate[name])
        metrics[name] = {
            "parent": before,
            "candidate": after,
            "change_percent": (after / before - 1.0) * 100.0 if before else None,
        }

    for name, key in (
        ("ISU stall cycles layout", "vls_pipeline_stall"),
        ("ISU stall cycles layout", "vls_wdata_stall"),
    ):
        metric_name = key
        before = float(parent[name]["data"][key])
        after = float(candidate[name]["data"][key])
        metrics[metric_name] = {
            "parent": before,
            "candidate": after,
            "change_percent": (after / before - 1.0) * 100.0 if before else None,
        }

    result = {
        "scope": "case3 Step1 targeted mcProfiler replay",
        "authority": "directional counters only; OJ timing and mcTracer are elapsed-time authority",
        "parent_report": str(args.parent.resolve()),
        "candidate_report": str(args.candidate.resolve()),
        "metrics": metrics,
        "notes": [
            "Both sources report identical achieved/dispatched waves.",
            "Both sources report 100% non-conflicting shared accesses.",
            "Private read/write instructions remain zero.",
        ],
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
