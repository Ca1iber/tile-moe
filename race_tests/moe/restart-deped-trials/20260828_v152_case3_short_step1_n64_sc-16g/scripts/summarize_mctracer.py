#!/usr/bin/env python3
import json
import statistics
import sys


def summarize(path):
    with open(path, "r", encoding="utf-8") as handle:
        events = json.load(handle)["traceEvents"]
    starts = [e for e in events if e.get("ph") == "X" and e.get("name") == "mcProfilerStart"]
    stops = [e for e in events if e.get("ph") == "X" and e.get("name") == "mcProfilerStop"]
    if len(starts) != 1 or len(stops) != 1:
        raise RuntimeError(f"expected one profiler range, got starts={len(starts)} stops={len(stops)}")
    range_start = starts[0]["ts"]
    range_stop = stops[0]["ts"] + stops[0].get("dur", 0)
    kernels = sorted(
        (
            e for e in events
            if e.get("ph") == "X"
            and e.get("name", "").startswith("kernel_kernel")
            and range_start <= e["ts"] <= range_stop
        ),
        key=lambda e: e["ts"],
    )
    print(path)
    print(f"profiler_range_ns={range_stop - range_start}")
    total = 0
    previous_end = None
    for event in kernels:
        args = event.get("args", {})
        grid = args.get("grid", {})
        mem = args.get("mem", {})
        gap = 0 if previous_end is None else event["ts"] - previous_end
        total += event["dur"]
        previous_end = event["ts"] + event["dur"]
        print(
            f"{event['name']:16s} dur_us={event['dur']/1000:9.3f} "
            f"gap_us={gap/1000:7.3f} grid={grid.get('x')}x{grid.get('y')} "
            f"threads={args.get('block',{}).get('x')} regs={mem.get('registers_per_thread')} "
            f"shared={mem.get('dynamic_shared')}"
        )
    if kernels:
        span = kernels[-1]["ts"] + kernels[-1]["dur"] - kernels[0]["ts"]
        print(f"kernel_count={len(kernels)} sum_ms={total/1e6:.6f} span_ms={span/1e6:.6f} gaps_ms={(span-total)/1e6:.6f}")


if __name__ == "__main__":
    for input_path in sys.argv[1:]:
        summarize(input_path)
