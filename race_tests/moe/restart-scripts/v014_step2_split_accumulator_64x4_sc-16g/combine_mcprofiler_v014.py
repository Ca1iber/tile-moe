#!/usr/bin/env python3
"""Combine forward and reverse v013/v014 targeted mcProfiler comparisons."""

from __future__ import annotations

import argparse
import json
import statistics
from pathlib import Path


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--forward", type=Path, required=True)
    parser.add_argument("--reverse", type=Path, required=True)
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    profiles = [json.loads(args.forward.read_text(encoding="utf-8")), json.loads(args.reverse.read_text(encoding="utf-8"))]
    keys = tuple(profiles[0]["candidate_delta_percent"])
    deltas = {key: [profile["candidate_delta_percent"][key] for profile in profiles] for key in keys}
    aggregate = {}
    for key, values in deltas.items():
        valid = [value for value in values if value is not None]
        aggregate[key] = {
            "samples_percent": values,
            "mean_percent": statistics.fmean(valid) if valid else None,
            "median_percent": statistics.median(valid) if valid else None,
        }
    result = {
        "scope": "two order-balanced targeted mcProfiler campaigns; Case3 Step2; explicit source snapshots",
        "orders": ["v013_parent -> v014_candidate", "v014_candidate -> v013_parent"],
        "source_sha256": {
            "v013_parent": profiles[0]["v013_parent"]["source_sha256"],
            "v014_candidate": profiles[0]["v014_candidate"]["source_sha256"],
        },
        "per_campaign_delta_percent": deltas,
        "aggregate_delta_percent": aggregate,
        "stable_observations": {
            "total_cycles": "lower by 12.24% and 9.75%, but this is multi-pass aggregate Kcycles, not single-invocation latency",
            "average_wave_life": "higher by 0.57% and 0.32%",
            "private_traffic": "zero in both variants and both campaigns",
            "global_read": "higher by 0.45% and 0.43%",
            "vl1_stall_sum": "higher by 0.12% and 0.33%",
            "shared_latency": "higher by 0.55% and 0.59%",
            "occupancy": "achieved/dispatched wave totals equal within each paired campaign; compiler static maximum remains 2 waves/PEU",
        },
        "interpretation": {
            "accepted_signal": "v014 reduces MT registers from 196 to 188 and reduces aggregate CE Total Cycles",
            "falsified_latency_mechanism": "the register reduction does not cross an occupancy tier and does not reduce wave life, stalls, mcTracer Step2 time, or clean OJ latency outside noise",
            "counter_precedence": "clean device-event benchmark and mcTracer stage duration outrank multi-pass aggregate Total Cycles for latency claims",
        },
    }
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
