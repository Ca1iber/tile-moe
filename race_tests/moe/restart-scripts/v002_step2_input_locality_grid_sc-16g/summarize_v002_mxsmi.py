#!/usr/bin/env python3
"""Summarize synchronized mx-smi HBM and AP samples for v001."""

from __future__ import annotations

import json
import re
import statistics
from pathlib import Path


IID = "v002_step2_input_locality_grid_sc-16g"
ROOT = Path("/root/tilelang-metax/race_tests/moe/restart-rep") / IID / "profiler/mxsmi"
SOURCE = ROOT / f"{IID}_hbm_ap_samples.txt"
HBM_RE = re.compile(r"throughput\s*:\s*(\d+)\s+MBytes/s")
DPC_RE = re.compile(r"^dpc[0-7]\s+((?:\d+\s+){12}\d+)\s*$", re.M)


def main() -> None:
    blocks = SOURCE.read_text(encoding="utf-8", errors="replace").split("sample_end")
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
    payload = {
        "iteration_id": IID,
        "source": str(SOURCE),
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
        "active_samples": active,
    }
    path = ROOT / f"{IID}_mxsmi_summary.json"
    path.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(payload, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
