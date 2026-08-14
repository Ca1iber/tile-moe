#!/usr/bin/env python3
"""Capture AB/BA paired mcTracer samples for exact v049/v050 submissions."""

import argparse
import json
import os
import statistics
import subprocess
from pathlib import Path


def summarize_trace(trace):
    events = json.loads(trace.read_text(encoding="utf-8"))["traceEvents"]
    start = next(event["ts"] for event in events if event.get("name") == "mcProfilerStart" and event.get("ph") == "X")
    stop_event = next(event for event in events if event.get("name") == "mcProfilerStop" and event.get("ph") == "X")
    stop = stop_event["ts"] + stop_event["dur"]
    kernels = [
        event for event in events
        if event.get("ph") == "X"
        and event.get("name") in ("kernel_kernel", "kernel_kernel_1")
        and start <= event.get("ts", -1) <= stop
    ]
    step1 = next(event for event in kernels if event["name"] == "kernel_kernel")
    step2 = next(event for event in kernels if event["name"] == "kernel_kernel_1")
    return {
        "trace": str(trace),
        "step1_ms": step1["dur"] / 1e6,
        "step2_ms": step2["dur"] / 1e6,
        "launch_gap_ms": (step2["ts"] - step1["ts"] - step1["dur"]) / 1e6,
        "step1_grid": step1.get("args", {}).get("grid"),
        "step2_grid": step2.get("args", {}).get("grid"),
        "step1_memory": step1.get("args", {}).get("mem"),
        "step2_memory": step2.get("args", {}).get("mem"),
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


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo", type=Path, default=Path("/root/tilelang-metax"))
    parser.add_argument("--profile-script", type=Path, required=True)
    parser.add_argument("--parent", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output-root", type=Path, required=True)
    parser.add_argument("--pairs", type=int, default=3)
    parser.add_argument("--warmup", type=int, default=5)
    parser.add_argument("--case", type=int, choices=(1, 2, 3), default=1)
    args = parser.parse_args()
    repo = args.repo.resolve()
    output_root = args.output_root.resolve()
    if output_root.exists():
        raise RuntimeError(f"refusing to overwrite: {output_root}")
    output_root.mkdir(parents=True)
    sources = {"v049": args.parent.resolve(), "v050": args.candidate.resolve()}
    rows = []
    base_env = os.environ.copy()
    base_env.update({
        "MACA_PATH": "/opt/maca",
        "PYTHONDONTWRITEBYTECODE": "1",
        "PYTHONPATH": str(repo),
    })
    for pair in range(1, args.pairs + 1):
        order = ("v049", "v050") if pair % 2 else ("v050", "v049")
        for order_index, tag in enumerate(order, 1):
            scope = f"pair{pair}_{order_index}_{tag}"
            out = output_root / scope
            out.mkdir()
            command = [
                "/opt/maca-3.7.1/bin/mcTracer", "--mctx",
                # Keep all in-flight traces out of the repository.  mcTracer
                # accepts an absolute output directory while the target still
                # runs with the repository as its working directory.
                "--odname", str(out),
                "--name", f"v050_case{args.case}_{scope}",
                "/opt/conda/bin/python", str(args.profile_script.resolve()),
                "--submission", str(sources[tag]), "--source-tag", tag,
                "--case", str(args.case), "--warmup", str(args.warmup),
            ]
            (out / "command.json").write_text(json.dumps(command, indent=2) + "\n", encoding="utf-8")
            with (out / "mctracer_console.log").open("w", encoding="utf-8") as stream:
                # mcTracer 3.7.1 prepends its process cwd even when --odname is
                # absolute.  Running the wrapper from / makes /tmp/... resolve
                # to the intended system scratch path instead of <repo>/tmp/....
                completed = subprocess.run(command, cwd=Path("/"), env=base_env, stdout=stream, stderr=subprocess.STDOUT)
            log = (out / "mctracer_console.log").read_text(encoding="utf-8")
            if completed.returncode or "[FATAL]" in log or '"event": "PROFILE_DONE"' not in log:
                raise RuntimeError(f"mcTracer failed: {out}")
            traces = [path for path in out.glob("*.json") if path.name != "command.json"]
            if len(traces) != 1:
                raise RuntimeError(f"expected one trace in {out}: {traces}")
            row = {"pair": pair, "order_in_pair": order_index, "tag": tag, **summarize_trace(traces[0])}
            (out / "summary.json").write_text(json.dumps(row, indent=2) + "\n", encoding="utf-8")
            rows.append(row)
    aggregate = {}
    for tag in sources:
        tag_rows = [row for row in rows if row["tag"] == tag]
        aggregate[tag] = {
            "step1_ms": stats([row["step1_ms"] for row in tag_rows]),
            "step2_ms": stats([row["step2_ms"] for row in tag_rows]),
            "launch_gap_ms": stats([row["launch_gap_ms"] for row in tag_rows]),
        }
    paired = []
    for pair in range(1, args.pairs + 1):
        parent = next(row for row in rows if row["pair"] == pair and row["tag"] == "v049")
        candidate = next(row for row in rows if row["pair"] == pair and row["tag"] == "v050")
        paired.append({
            "pair": pair,
            "step1_change_percent": (candidate["step1_ms"] / parent["step1_ms"] - 1) * 100,
            "step2_change_percent": (candidate["step2_ms"] / parent["step2_ms"] - 1) * 100,
        })
    summary = {
        "protocol": {"case": args.case, "pairs": args.pairs, "order": "AB/BA alternating", "warmup": args.warmup},
        "sources": {tag: str(path) for tag, path in sources.items()},
        "rows": rows,
        "aggregate": aggregate,
        "paired": {
            "rows": paired,
            "step1_median_change_percent": statistics.median(row["step1_change_percent"] for row in paired),
            "step2_median_change_percent": statistics.median(row["step2_change_percent"] for row in paired),
        },
    }
    summary_path = output_root / f"v050_vs_v049_case{args.case}_mctracer_summary.json"
    summary_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
