#!/usr/bin/env python3
import json
import sys
from pathlib import Path


def summarize(root):
    traces = [p for p in Path(root).glob("*.json") if p.name != "summary.json"]
    if len(traces) != 1:
        raise RuntimeError(f"expected one trace in {root}: {traces}")
    events = json.loads(traces[0].read_text())["traceEvents"]
    start_event = next(e for e in events if e.get("name") == "mcProfilerStart" and e.get("ph") == "X")
    stop_event = next(e for e in events if e.get("name") == "mcProfilerStop" and e.get("ph") == "X")
    start = start_event["ts"]
    stop = stop_event["ts"] + stop_event["dur"]
    kernels = sorted(
        (
            e for e in events
            if e.get("ph") == "X"
            and e.get("name", "").startswith("kernel_kernel")
            and start <= e.get("ts", -1) <= stop
        ),
        key=lambda e: e["ts"],
    )
    rows = []
    for index, event in enumerate(kernels):
        previous_end = kernels[index - 1]["ts"] + kernels[index - 1]["dur"] if index else event["ts"]
        rows.append(
            {
                "name": event["name"],
                "duration_ms": event["dur"] / 1e6,
                "gap_from_previous_ms": (event["ts"] - previous_end) / 1e6,
                "grid": event.get("args", {}).get("grid"),
                "block": event.get("args", {}).get("block"),
                "mem": event.get("args", {}).get("mem"),
            }
        )
    result = {
        "trace": str(traces[0]),
        "kernel_count": len(rows),
        "gpu_span_ms": (kernels[-1]["ts"] + kernels[-1]["dur"] - kernels[0]["ts"]) / 1e6,
        "sum_kernel_ms": sum(row["duration_ms"] for row in rows),
        "kernels": rows,
    }
    output = Path(root) / "summary.json"
    output.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))


for directory in sys.argv[1:]:
    summarize(directory)
