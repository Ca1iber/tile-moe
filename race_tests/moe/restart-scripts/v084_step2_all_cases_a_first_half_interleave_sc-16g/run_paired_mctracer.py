#!/usr/bin/env python3
"""Capture AB/BA paired mcTracer samples for two exact submission sources."""

import argparse
import json
import os
import statistics
import subprocess
from pathlib import Path


def summarize_trace(trace):
    events = json.loads(trace.read_text(encoding="utf-8"))["traceEvents"]
    start = next(e["ts"] for e in events if e.get("name") == "mcProfilerStart" and e.get("ph") == "X")
    stop_event = next(e for e in events if e.get("name") == "mcProfilerStop" and e.get("ph") == "X")
    stop = stop_event["ts"] + stop_event["dur"]
    kernels = sorted(
        [e for e in events if e.get("ph") == "X"
         and e.get("name") in ("kernel_kernel", "kernel_kernel_1", "kernel_kernel_2")
         and start <= e.get("ts", -1) <= stop],
        key=lambda event: event["ts"],
    )
    if len(kernels) == 2:
        short, step2 = kernels
        long = None
        step1_ms = short["dur"] / 1e6
        short_long_gap_ms = 0.0
        launch_gap_ms = (step2["ts"] - short["ts"] - short["dur"]) / 1e6
    elif len(kernels) == 3:
        short, long, step2 = kernels
        step1_ms = (short["dur"] + long["dur"]) / 1e6
        short_long_gap_ms = (long["ts"] - short["ts"] - short["dur"]) / 1e6
        launch_gap_ms = (step2["ts"] - long["ts"] - long["dur"]) / 1e6
    else:
        raise RuntimeError(f"expected two or three kernels, got {[(e.get('name'), e.get('dur')) for e in kernels]}")
    return {
        "trace": str(trace),
        "step1_ms": step1_ms,
        "step1_short_ms": short["dur"] / 1e6,
        "step1_long_ms": 0.0 if long is None else long["dur"] / 1e6,
        "short_long_gap_ms": short_long_gap_ms,
        "step2_ms": step2["dur"] / 1e6,
        "launch_gap_ms": launch_gap_ms,
        "step1_grids": [event.get("args", {}).get("grid") for event in kernels[:-1]],
        "step2_grid": step2.get("args", {}).get("grid"),
        "step1_memory": [event.get("args", {}).get("mem") for event in kernels[:-1]],
        "step2_memory": step2.get("args", {}).get("mem"),
    }


def stats(values):
    return {"samples": values, "mean": statistics.fmean(values), "median": statistics.median(values),
            "min": min(values), "max": max(values), "pstdev": statistics.pstdev(values)}


def main():
    p = argparse.ArgumentParser()
    p.add_argument("--repo", type=Path, default=Path("/root/tilelang-metax"))
    p.add_argument("--profile-script", type=Path, required=True)
    p.add_argument("--baseline", type=Path, required=True)
    p.add_argument("--candidate", type=Path, required=True)
    p.add_argument("--baseline-tag", default="baseline")
    p.add_argument("--candidate-tag", default="candidate")
    p.add_argument("--output-root", type=Path, required=True)
    p.add_argument("--pairs", type=int, default=3)
    p.add_argument("--warmup", type=int, default=5)
    p.add_argument("--case", type=int, choices=(1, 2, 3), required=True)
    args = p.parse_args()
    repo = args.repo.resolve()
    output_root = args.output_root.resolve()
    if output_root.exists():
        raise RuntimeError(f"refusing to overwrite: {output_root}")
    output_root.mkdir(parents=True)
    sources = {args.baseline_tag: args.baseline.resolve(), args.candidate_tag: args.candidate.resolve()}
    rows = []
    env = os.environ.copy()
    env.update({"MACA_PATH": "/opt/maca", "PYTHONDONTWRITEBYTECODE": "1", "PYTHONPATH": str(repo)})
    for pair in range(1, args.pairs + 1):
        order = (args.baseline_tag, args.candidate_tag) if pair % 2 else (args.candidate_tag, args.baseline_tag)
        for order_index, tag in enumerate(order, 1):
            scope = f"pair{pair}_{order_index}_{tag}"
            out = output_root / scope
            out.mkdir()
            command = ["/opt/maca-3.7.1/bin/mcTracer", "--mctx", "--odname", str(out),
                       "--name", f"case{args.case}_{scope}", "/opt/conda/bin/python", str(args.profile_script.resolve()),
                       "--submission", str(sources[tag]), "--source-tag", tag,
                       "--case", str(args.case), "--warmup", str(args.warmup)]
            (out / "command.json").write_text(json.dumps(command, indent=2) + "\n", encoding="utf-8")
            with (out / "mctracer_console.log").open("w", encoding="utf-8") as stream:
                completed = subprocess.run(command, cwd=Path("/"), env=env, stdout=stream, stderr=subprocess.STDOUT)
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
        aggregate[tag] = {metric: stats([row[metric] for row in tag_rows])
                          for metric in ("step1_ms", "step1_short_ms", "step1_long_ms",
                                         "short_long_gap_ms", "step2_ms", "launch_gap_ms")}
    paired = []
    for pair in range(1, args.pairs + 1):
        base = next(row for row in rows if row["pair"] == pair and row["tag"] == args.baseline_tag)
        cand = next(row for row in rows if row["pair"] == pair and row["tag"] == args.candidate_tag)
        paired.append({"pair": pair,
                       "step1_change_percent": (cand["step1_ms"] / base["step1_ms"] - 1) * 100,
                       "step2_change_percent": (cand["step2_ms"] / base["step2_ms"] - 1) * 100})
    summary = {"protocol": {"case": args.case, "pairs": args.pairs, "order": "AB/BA alternating", "warmup": args.warmup},
               "sources": {tag: str(path) for tag, path in sources.items()}, "rows": rows, "aggregate": aggregate,
               "paired": {"rows": paired,
                          "step1_median_change_percent": statistics.median(r["step1_change_percent"] for r in paired),
                          "step2_median_change_percent": statistics.median(r["step2_change_percent"] for r in paired)}}
    path = output_root / f"{args.candidate_tag}_vs_{args.baseline_tag}_case{args.case}_summary.json"
    path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(summary, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
