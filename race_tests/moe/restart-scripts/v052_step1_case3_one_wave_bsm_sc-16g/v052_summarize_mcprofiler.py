#!/usr/bin/env python3
"""Summarize wave-matched mcProfiler replay for the v052 Case3 Step1 delta."""

import argparse
import json
import re
from pathlib import Path


def normalize(value):
    if isinstance(value, (int, float)):
        return float(value)
    if not isinstance(value, str):
        return value
    raw = value.replace(",", "").strip()
    match = re.fullmatch(r"([-+0-9.eE]+)(?:\((Kcycles)\)|(%)|(byte))?", raw)
    if not match:
        return value
    number = float(match.group(1))
    if match.group(2) == "Kcycles":
        number *= 1000.0
    return number


def flatten(path):
    payload = json.loads(Path(path).read_text(encoding="utf-8"))
    metrics = {}
    errors = {}
    for rows in payload.values():
        for row in rows:
            metrics[row["name"]] = normalize(row.get("data", row.get("value")))
            if row.get("isError"):
                errors[row["name"]] = row.get("message", "")
    return metrics, errors


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent", required=True)
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--output", required=True)
    args = parser.parse_args()

    parent, parent_errors = flatten(args.parent)
    candidate, candidate_errors = flatten(args.candidate)
    comparison = {}
    for name in sorted(set(parent) & set(candidate)):
        pvalue = parent[name]
        cvalue = candidate[name]
        row = {"parent": pvalue, "candidate": cvalue}
        if isinstance(pvalue, (int, float)) and isinstance(cvalue, (int, float)):
            if pvalue:
                row["change_percent"] = (cvalue / pvalue - 1.0) * 100.0
            if name == "L2C Hit Rate":
                row["change_percentage_points"] = cvalue - pvalue
        comparison[name] = row

    parent_waves = parent.get("Achieved waves")
    candidate_waves = candidate.get("Achieved waves")
    mismatch = None
    if isinstance(parent_waves, (int, float)) and parent_waves:
        mismatch = (candidate_waves / parent_waves - 1.0) * 100.0
    output = {
        "scope": "Case3 two-kernel replay with a Step1-only source delta; achieved waves cover both launches",
        "authority": "diagnostic; clean paired timing and paired mcTracer own elapsed-time decisions",
        "parent": str(Path(args.parent).resolve()),
        "candidate": str(Path(args.candidate).resolve()),
        "parent_errors": parent_errors,
        "candidate_errors": candidate_errors,
        "achieved_wave_mismatch_percent": mismatch,
        "counter_comparison_valid": mismatch is not None and abs(mismatch) <= 1.0,
        "metrics": comparison,
    }
    Path(args.output).write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(output, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
