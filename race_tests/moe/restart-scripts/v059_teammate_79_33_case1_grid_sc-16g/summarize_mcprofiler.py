#!/usr/bin/env python3
"""Compare two mcProfiler metric JSON files."""

import argparse
import json
import re
from pathlib import Path


def normalize(value):
    if isinstance(value, (int, float)):
        return float(value)
    if not isinstance(value, str):
        return value
    match = re.fullmatch(r"([-+0-9.eE]+)(?:\((Kcycles)\)|(%)|(byte))?", value.replace(",", "").strip())
    if not match:
        return value
    number = float(match.group(1))
    return number * 1000.0 if match.group(2) == "Kcycles" else number


def flatten(path):
    payload = json.loads(Path(path).read_text(encoding="utf-8"))
    metrics, errors = {}, {}
    for rows in payload.values():
        for row in rows:
            metrics[row["name"]] = normalize(row.get("data", row.get("value")))
            if row.get("isError"):
                errors[row["name"]] = row.get("message", "")
    return metrics, errors


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--baseline", required=True)
    p.add_argument("--candidate", required=True)
    p.add_argument("--output", required=True)
    args = p.parse_args()
    baseline, baseline_errors = flatten(args.baseline)
    candidate, candidate_errors = flatten(args.candidate)
    comparison = {}
    for name in sorted(set(baseline) & set(candidate)):
        bvalue, cvalue = baseline[name], candidate[name]
        row = {"baseline": bvalue, "candidate": cvalue}
        if isinstance(bvalue, (int, float)) and isinstance(cvalue, (int, float)):
            if bvalue:
                row["change_percent"] = (cvalue / bvalue - 1.0) * 100.0
            if name == "L2C Hit Rate":
                row["change_percentage_points"] = cvalue - bvalue
        comparison[name] = row
    bwaves, cwaves = baseline.get("Achieved waves"), candidate.get("Achieved waves")
    mismatch = (cwaves / bwaves - 1.0) * 100.0 if isinstance(bwaves, (int, float)) and bwaves else None
    result = {"authority": "diagnostic; paired timing and mcTracer own elapsed-time decisions",
              "baseline": str(Path(args.baseline).resolve()), "candidate": str(Path(args.candidate).resolve()),
              "baseline_errors": baseline_errors, "candidate_errors": candidate_errors,
              "achieved_wave_mismatch_percent": mismatch,
              "counter_comparison_valid": mismatch is not None and abs(mismatch) <= 1.0,
              "metrics": comparison}
    Path(args.output).write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
