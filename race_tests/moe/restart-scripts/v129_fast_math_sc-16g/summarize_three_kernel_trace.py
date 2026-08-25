#!/usr/bin/env python3
"""Re-summarize paired MoE traces with prepack, Step1, and Step2 identities."""

import argparse
import json
import statistics
from pathlib import Path


KERNELS = {
    "kernel_kernel": "prepack",
    "kernel_kernel_1": "step1",
    "kernel_kernel_2": "step2",
}


def stats(values):
    return {
        "samples": values,
        "mean": statistics.fmean(values),
        "median": statistics.median(values),
        "min": min(values),
        "max": max(values),
        "pstdev": statistics.pstdev(values),
    }


def parse_trace(path):
    events = json.loads(path.read_text(encoding="utf-8"))["traceEvents"]
    start = next(e["ts"] for e in events if e.get("name") == "mcProfilerStart" and e.get("ph") == "X")
    stop_event = next(e for e in events if e.get("name") == "mcProfilerStop" and e.get("ph") == "X")
    stop = stop_event["ts"] + stop_event["dur"]
    selected = {
        e["name"]: e
        for e in events
        if e.get("ph") == "X" and e.get("name") in KERNELS and start <= e.get("ts", -1) <= stop
    }
    if set(selected) != set(KERNELS):
        raise RuntimeError(f"expected all three kernels in {path}, got {sorted(selected)}")
    ordered = [selected[name] for name in KERNELS]
    result = {"trace": str(path)}
    for name, stage in KERNELS.items():
        event = selected[name]
        result[f"{stage}_ms"] = event["dur"] / 1e6
        result[f"{stage}_grid"] = event.get("args", {}).get("grid")
        result[f"{stage}_memory"] = event.get("args", {}).get("mem")
    result["prepack_to_step1_gap_ms"] = (ordered[1]["ts"] - ordered[0]["ts"] - ordered[0]["dur"]) / 1e6
    result["step1_to_step2_gap_ms"] = (ordered[2]["ts"] - ordered[1]["ts"] - ordered[1]["dur"]) / 1e6
    result["gpu_span_ms"] = (ordered[2]["ts"] + ordered[2]["dur"] - ordered[0]["ts"]) / 1e6
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, required=True)
    parser.add_argument("--baseline-tag", default="v091")
    parser.add_argument("--candidate-tag", default="v092")
    parser.add_argument("--output", type=Path, required=True)
    args = parser.parse_args()
    rows = []
    for directory in sorted(path for path in args.root.iterdir() if path.is_dir()):
        parts = directory.name.split("_", 2)
        if len(parts) != 3:
            continue
        pair = int(parts[0].removeprefix("pair"))
        order_in_pair = int(parts[1])
        tag = parts[2]
        traces = [path for path in directory.glob("*.json") if path.name not in ("command.json", "summary.json")]
        if len(traces) != 1:
            raise RuntimeError(f"expected one raw trace in {directory}, got {traces}")
        rows.append({"pair": pair, "order_in_pair": order_in_pair, "tag": tag, **parse_trace(traces[0])})

    metrics = ("prepack_ms", "step1_ms", "step2_ms", "prepack_to_step1_gap_ms", "step1_to_step2_gap_ms", "gpu_span_ms")
    aggregate = {
        tag: {metric: stats([row[metric] for row in rows if row["tag"] == tag]) for metric in metrics}
        for tag in (args.baseline_tag, args.candidate_tag)
    }
    paired_rows = []
    for pair in sorted({row["pair"] for row in rows}):
        baseline = next(row for row in rows if row["pair"] == pair and row["tag"] == args.baseline_tag)
        candidate = next(row for row in rows if row["pair"] == pair and row["tag"] == args.candidate_tag)
        paired_rows.append({
            "pair": pair,
            **{
                f"{metric}_change_percent": (candidate[metric] / baseline[metric] - 1.0) * 100.0
                for metric in ("prepack_ms", "step1_ms", "step2_ms", "gpu_span_ms")
            },
        })
    result = {
        "kernel_identity": KERNELS,
        "rows": rows,
        "aggregate": aggregate,
        "paired": {
            "rows": paired_rows,
            **{
                f"{metric}_median_change_percent": statistics.median(row[f"{metric}_change_percent"] for row in paired_rows)
                for metric in ("prepack_ms", "step1_ms", "step2_ms", "gpu_span_ms")
            },
        },
    }
    args.output.write_text(json.dumps(result, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
