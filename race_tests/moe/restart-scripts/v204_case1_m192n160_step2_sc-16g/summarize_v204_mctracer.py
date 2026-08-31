#!/usr/bin/env python3
"""Summarize mcTracer GPU-kernel timing for the exact v204 submission."""

from __future__ import annotations

import json
import statistics
import sys
from pathlib import Path


def main() -> int:
    for source_arg in sys.argv[1:]:
        source = Path(source_arg)
        payload = json.loads(source.read_text())
        events = payload["traceEvents"]
        kernels = [
            event
            for event in events
            if event.get("ph") == "X"
            and str(event.get("name", "")).startswith("kernel_kernel")
            and "dur" in event
        ]
        kernels.sort(key=lambda event: event["ts"])
        print(f"FILE {source.name} kernel_events={len(kernels)}")
        for event in kernels:
            print(
                f"  {event['name']:<18} ts={event['ts']} "
                f"dur_us={event['dur'] / 1_000:.3f} pid={event.get('pid')} "
                f"tid={event.get('tid')}"
            )

        # mcTracer emits a host and a device copy for each launch.  The device
        # events carry grid/block launch metadata; retain only those copies.
        gpu = [
            event
            for event in kernels
            if isinstance(event.get("args"), dict)
            and "grid" in event["args"]
            and "block" in event["args"]
        ]
        print(f"  device_kernel_events={len(gpu)}")
        by_name: dict[str, list[float]] = {}
        gaps_us: list[float] = []
        for index, event in enumerate(gpu):
            by_name.setdefault(event["name"], []).append(event["dur"] / 1_000)
            if index:
                previous = gpu[index - 1]
                gap = event["ts"] - (previous["ts"] + previous["dur"])
                gaps_us.append(gap / 1_000)
        for name, samples in by_name.items():
            print(
                f"  SUMMARY {name} n={len(samples)} "
                f"mean_us={statistics.fmean(samples):.3f} "
                f"median_us={statistics.median(samples):.3f} "
                f"min_us={min(samples):.3f} max_us={max(samples):.3f}"
            )
        if gaps_us:
            print(
                f"  GAPS n={len(gaps_us)} mean_us={statistics.fmean(gaps_us):.3f} "
                f"median_us={statistics.median(gaps_us):.3f} "
                f"max_us={max(gaps_us):.3f}"
            )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
