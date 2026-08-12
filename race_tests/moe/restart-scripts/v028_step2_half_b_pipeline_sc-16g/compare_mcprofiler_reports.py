#!/usr/bin/env python3
"""Flatten and compare two mcProfiler report.txt.json files."""

from __future__ import annotations

import argparse
import json
import re
from pathlib import Path


def numeric(value):
    if isinstance(value, (int, float)):
        return float(value)
    if isinstance(value, str):
        match = re.search(r"[-+]?(?:\d[\d,]*)(?:\.\d+)?", value)
        if match:
            return float(match.group(0).replace(",", ""))
    return None


def flatten(report: dict) -> dict[str, dict]:
    result = {}
    for section, entries in report.items():
        for entry in entries:
            name = entry["name"]
            value = entry["value"]
            key = f"{section}/{name}"
            if isinstance(value, dict) and isinstance(value.get("data"), dict):
                for child, child_value in value["data"].items():
                    result[f"{key}/{child}"] = {
                        "raw": child_value,
                        "numeric": numeric(child_value),
                    }
            else:
                result[key] = {"raw": value, "numeric": numeric(value)}
    return result


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output-json", type=Path, required=True)
    parser.add_argument("--output-md", type=Path, required=True)
    args = parser.parse_args()

    parent = flatten(json.loads(args.parent.read_text()))
    candidate = flatten(json.loads(args.candidate.read_text()))
    rows = []
    for metric in sorted(parent.keys() & candidate.keys()):
        p = parent[metric]
        c = candidate[metric]
        change = None
        if p["numeric"] not in (None, 0.0) and c["numeric"] is not None:
            change = (c["numeric"] / p["numeric"] - 1.0) * 100.0
        rows.append(
            {
                "metric": metric,
                "parent_raw": p["raw"],
                "candidate_raw": c["raw"],
                "parent_numeric": p["numeric"],
                "candidate_numeric": c["numeric"],
                "candidate_vs_parent_percent": change,
            }
        )

    result = {
        "parent_report": str(args.parent.resolve()),
        "candidate_report": str(args.candidate.resolve()),
        "rows": rows,
    }
    args.output_json.parent.mkdir(parents=True, exist_ok=True)
    args.output_json.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n")

    lines = [
        "# v028l vs v027 mcProfiler — OJ Case2 Step2",
        "",
        "Both reports use the same targeted metric set and one profiled kernel per replay batch.",
        "A negative change means the candidate reduced the counter; for duty ratios it is a relative change, not percentage points.",
        "",
        "| Metric | v027 | v028l | Relative change |",
        "|---|---:|---:|---:|",
    ]
    for row in rows:
        change = row["candidate_vs_parent_percent"]
        change_text = "n/a" if change is None else f"{change:+.3f}%"
        lines.append(
            f"| {row['metric']} | {row['parent_raw']} | {row['candidate_raw']} | {change_text} |"
        )
    args.output_md.write_text("\n".join(lines) + "\n")


if __name__ == "__main__":
    main()
