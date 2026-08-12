#!/usr/bin/env python3
"""Summarize synchronized v013 mx-smi HBM and AP samples."""

from __future__ import annotations

import json
import re
import statistics
import argparse
from pathlib import Path


IID = "v013_step2_split_accumulator_sc-16g"
ROOT = Path("/root/tilelang-metax/race_tests/moe/restart-rep") / IID / "profiler/mxsmi"
HBM_RE = re.compile(r"throughput\s*:\s*(\d+)\s+MBytes/s")
DPC_RE = re.compile(r"^dpc[0-7]\s+((?:\d+\s+){12}\d+)\s*$", re.M)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--scope", default="retry2_20260812")
    args = parser.parse_args()
    source = ROOT / f"{IID}_{args.scope}_hbm_ap_samples.txt"
    blocks = source.read_text(encoding="utf-8", errors="replace").split("sample_end")
    samples = []
    for block in blocks:
        hbm_match = HBM_RE.search(block)
        rows = DPC_RE.findall(block)
        if not hbm_match or len(rows) != 8:
            continue
        ap_values = [int(value) for row in rows for value in row.split()]
        if len(ap_values) != 104:
            raise RuntimeError(f"expected 104 AP values, found {len(ap_values)}")
        samples.append(
            {
                "hbm_mbytes_per_s": int(hbm_match.group(1)),
                "ap_mean_pct": statistics.fmean(ap_values),
                "ap_median_pct": statistics.median(ap_values),
                "ap_min_pct": min(ap_values),
                "ap_max_pct": max(ap_values),
                "active_ap_count": sum(value > 0 for value in ap_values),
            }
        )
    active = [sample for sample in samples if sample["hbm_mbytes_per_s"] > 100_000]
    if not active:
        raise RuntimeError("no active HBM samples found")
    hbm = [sample["hbm_mbytes_per_s"] / 1000.0 for sample in active]
    reference_phase = [sample for sample in active if sample["hbm_mbytes_per_s"] < 900_000]
    candidate_phase = [sample for sample in active if sample["hbm_mbytes_per_s"] >= 900_000]
    if not candidate_phase:
        raise RuntimeError("no candidate steady-state HBM samples found")

    def phase_summary(phase: list[dict]) -> dict:
        values = [sample["hbm_mbytes_per_s"] / 1000.0 for sample in phase]
        median = statistics.median(values)
        return {
            "sample_count": len(phase),
            "hbm_gb_per_s": {
                "median": median,
                "mean": statistics.fmean(values),
                "min": min(values),
                "max": max(values),
                "vs_sc16_1400_roof_pct": median / 1400.0 * 100.0,
                "vs_physical_1843_2_roof_pct": median / 1843.2 * 100.0,
            },
            "ap": {
                "mean_pct": statistics.fmean(sample["ap_mean_pct"] for sample in phase),
                "median_pct": statistics.median(sample["ap_median_pct"] for sample in phase),
                "median_active_ap_count": statistics.median(sample["active_ap_count"] for sample in phase),
            },
        }
    payload = {
        "iteration_id": IID,
        "scope": args.scope,
        "source": str(source),
        "all_sample_count": len(samples),
        "active_sample_rule": "hbm_mbytes_per_s > 100000",
        "active_sample_count": len(active),
        "hbm_gb_per_s": {
            "values": hbm,
            "median": statistics.median(hbm),
            "mean": statistics.fmean(hbm),
            "min": min(hbm),
            "max": max(hbm),
            "vs_sc16_1400_roof_pct": statistics.median(hbm) / 1400.0 * 100.0,
            "vs_physical_1843_2_roof_pct": statistics.median(hbm) / 1843.2 * 100.0,
        },
        "ap": {
            "mean_pct_across_active_samples": statistics.fmean(sample["ap_mean_pct"] for sample in active),
            "median_of_sample_medians_pct": statistics.median(sample["ap_median_pct"] for sample in active),
            "min_pct": min(sample["ap_min_pct"] for sample in active),
            "max_pct": max(sample["ap_max_pct"] for sample in active),
            "median_active_ap_count": statistics.median(sample["active_ap_count"] for sample in active),
        },
        "phase_split": {
            "rule": "The harness executes reference_output before elapsed_ms; a sample-free valley separates <900000 MB/s and >=900000 MB/s plateaus.",
            "reference_and_transition_lt_900000_mbytes_per_s": phase_summary(reference_phase),
            "candidate_steady_state_ge_900000_mbytes_per_s": phase_summary(candidate_phase),
        },
        "active_samples": active,
        "interpretation": [
            "mx-smi is the physical-card counter view synchronized with repeated v013 Case3 work.",
            "The sample is not a per-Step2 counter and must not replace mcProfiler per-kernel traffic data.",
            "Observed bandwidth is workload demand, not a guaranteed or hard slice cap.",
        ],
    }
    path = ROOT / f"{IID}_{args.scope}_mxsmi_summary.json"
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
