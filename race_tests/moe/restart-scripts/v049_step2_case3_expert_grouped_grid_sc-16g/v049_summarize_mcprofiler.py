#!/usr/bin/env python3
"""Summarize the per-Step2 mcProfiler replay for v049 versus v048."""

import argparse
import json
from pathlib import Path


def flatten(path):
    payload = json.loads(Path(path).read_text(encoding="utf-8"))
    metrics = {}
    errors = {}
    for section, rows in payload.items():
        for row in rows:
            metrics[row["name"]] = row.get("data")
            if row.get("isError"):
                errors[row["name"]] = row.get("message", "")
    return metrics, errors


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--parent", required=True)
    parser.add_argument("--candidate", required=True)
    parser.add_argument("--output", required=True)
    parser.add_argument("--case", type=int, default=3)
    args = parser.parse_args()

    parent, parent_errors = flatten(args.parent)
    candidate, candidate_errors = flatten(args.candidate)
    comparison = {}
    for name in sorted(set(parent) & set(candidate)):
        pvalue = parent[name]
        cvalue = candidate[name]
        row = {"parent": pvalue, "candidate": cvalue}
        if isinstance(pvalue, (int, float)) and isinstance(cvalue, (int, float)):
            if pvalue != 0:
                row["change_percent"] = (cvalue / pvalue - 1.0) * 100.0
            if name == "L2C Hit Rate":
                row["change_percentage_points"] = cvalue - pvalue
        comparison[name] = row

    parent_waves = parent.get("Achieved waves")
    candidate_waves = candidate.get("Achieved waves")
    wave_mismatch = None
    if isinstance(parent_waves, (int, float)) and parent_waves:
        wave_mismatch = (candidate_waves / parent_waves - 1.0) * 100.0
    output = {
        "scope": f"Case{args.case} two-kernel submission replay with a Step2-only source delta; achieved waves cover both launches",
        "authority": "diagnostic; clean AB/BA timing and paired mcTracer own elapsed-time decisions",
        "parent": str(Path(args.parent).resolve()),
        "candidate": str(Path(args.candidate).resolve()),
        "parent_errors": parent_errors,
        "candidate_errors": candidate_errors,
        "achieved_wave_mismatch_percent": wave_mismatch,
        "counter_comparison_valid": wave_mismatch is not None and abs(wave_mismatch) <= 1.0,
        "metrics": comparison,
    }
    Path(args.output).write_text(json.dumps(output, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(output, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
