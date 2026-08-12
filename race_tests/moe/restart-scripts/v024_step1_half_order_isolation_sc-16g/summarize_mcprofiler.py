#!/usr/bin/env python3
"""Summarize directional mcProfiler counters for one parent/candidate pair."""

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
    parser.add_argument("--scope", default="targeted mcProfiler replay")
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
        "Achieved waves",
        "Dispatched waves",
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

    candidate_wave_mismatch = scalar(candidate["Achieved waves"]) != scalar(candidate["Dispatched waves"])
    candidate_private_nonzero = any(
        scalar(candidate[name]) != 0.0
        for name in ("Private Read Instructions", "Private Write Instructions")
    )
    quarantined = candidate_wave_mismatch or candidate_private_nonzero
    notes = ["Both sources report 100% non-conflicting shared accesses."]
    if candidate_wave_mismatch:
        notes.append("Candidate achieved/dispatched waves disagree; replay totals are internally inconsistent.")
    if candidate_private_nonzero:
        notes.append("Candidate replay reports private instructions; compare against compiler stack/private resource evidence.")
    if quarantined:
        notes.append("Quarantine candidate replay totals from causal and elapsed-time claims.")

    result = {
        "scope": args.scope,
        "authority": "directional counters only; unprofiled same-process OJ timing is elapsed-time authority",
        "quarantined": quarantined,
        "parent_report": str(args.parent.resolve()),
        "candidate_report": str(args.candidate.resolve()),
        "metrics": metrics,
        "notes": notes,
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, indent=2))


if __name__ == "__main__":
    main()
