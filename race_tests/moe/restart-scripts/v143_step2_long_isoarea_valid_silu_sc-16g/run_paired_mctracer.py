#!/usr/bin/env python3
import argparse
import json
import os
import statistics
import subprocess
from pathlib import Path


def stats(values):
    return {
        "samples": values,
        "mean": statistics.fmean(values),
        "median": statistics.median(values),
        "min": min(values),
        "max": max(values),
        "pstdev": statistics.pstdev(values),
    }


def parse_trace(path, candidate):
    events = json.loads(path.read_text(encoding="utf-8"))["traceEvents"]
    start_event = next(
        event
        for event in events
        if event.get("name") == "mcProfilerStart" and event.get("ph") == "X"
    )
    stop_event = next(
        event
        for event in events
        if event.get("name") == "mcProfilerStop" and event.get("ph") == "X"
    )
    start = start_event["ts"]
    stop = stop_event["ts"] + stop_event["dur"]
    expected = (
        ["kernel_kernel", "kernel_kernel_1", "kernel_kernel_2", "kernel_kernel_3"]
        if candidate
        else ["kernel_kernel", "kernel_kernel_1", "kernel_kernel_2"]
    )
    selected = [
        event
        for event in events
        if event.get("ph") == "X"
        and event.get("name") in expected
        and start <= event.get("ts", -1) <= stop
    ]
    by_name = {event["name"]: event for event in selected}
    if set(by_name) != set(expected):
        raise RuntimeError(
            f"expected {expected} in {path}, got {sorted(by_name)}"
        )
    ordered = [by_name[name] for name in expected]
    prepack = by_name["kernel_kernel"]
    step1 = by_name["kernel_kernel_1"]
    step2_short = by_name["kernel_kernel_2"]
    step2_long = by_name.get("kernel_kernel_3")
    step2_ms = step2_short["dur"] / 1e6
    if step2_long is not None:
        step2_ms += step2_long["dur"] / 1e6
    last = step2_long if step2_long is not None else step2_short
    result = {
        "trace": str(path),
        "prepack_ms": prepack["dur"] / 1e6,
        "step1_ms": step1["dur"] / 1e6,
        "step2_short_ms": step2_short["dur"] / 1e6,
        "step2_long_ms": 0.0 if step2_long is None else step2_long["dur"] / 1e6,
        "step2_total_ms": step2_ms,
        "prepack_to_step1_gap_ms": (step1["ts"] - prepack["ts"] - prepack["dur"]) / 1e6,
        "step1_to_step2_gap_ms": (step2_short["ts"] - step1["ts"] - step1["dur"]) / 1e6,
        "gpu_span_ms": (last["ts"] + last["dur"] - prepack["ts"]) / 1e6,
        "kernels": {
            name: {
                "duration_ms": by_name[name]["dur"] / 1e6,
                "grid": by_name[name].get("args", {}).get("grid"),
                "block": by_name[name].get("args", {}).get("block"),
                "mem": by_name[name].get("args", {}).get("mem"),
            }
            for name in expected
        },
    }
    if step2_long is not None:
        result["step2_short_to_long_gap_ms"] = (
            step2_long["ts"] - step2_short["ts"] - step2_short["dur"]
        ) / 1e6
    else:
        result["step2_short_to_long_gap_ms"] = 0.0
    return result


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--repo", type=Path, required=True)
    parser.add_argument("--profile-script", type=Path, required=True)
    parser.add_argument("--baseline", type=Path, required=True)
    parser.add_argument("--candidate", type=Path, required=True)
    parser.add_argument("--output-root", type=Path, required=True)
    parser.add_argument("--pairs", type=int, default=3)
    parser.add_argument("--warmup", type=int, default=5)
    args = parser.parse_args()
    repo = args.repo.resolve()
    output_root = args.output_root.resolve()
    if output_root.exists():
        raise RuntimeError(f"refusing to overwrite: {output_root}")
    output_root.mkdir(parents=True)
    sources = {
        "v110": args.baseline.resolve(),
        "v143": args.candidate.resolve(),
    }
    env = os.environ.copy()
    env.update(
        {
            "MACA_PATH": "/opt/maca",
            "PYTHONDONTWRITEBYTECODE": "1",
            "PYTHONPATH": str(repo),
        }
    )
    rows = []
    for pair in range(1, args.pairs + 1):
        order = ("v110", "v143") if pair % 2 else ("v143", "v110")
        for order_index, tag in enumerate(order, 1):
            scope = f"pair{pair}_{order_index}_{tag}"
            destination = output_root / scope
            destination.mkdir()
            odname = destination.relative_to(Path("/root"))
            command = [
                "/opt/maca-3.7.1/bin/mcTracer",
                "--mctx",
                "--odname",
                str(odname),
                "--name",
                f"v143_case3_{scope}",
                "/opt/conda/bin/python",
                str(args.profile_script.resolve()),
                "--submission",
                str(sources[tag]),
                "--source-tag",
                f"v143_trace_{scope}",
                "--case",
                "3",
                "--warmup",
                str(args.warmup),
            ]
            (destination / "command.json").write_text(
                json.dumps(command, indent=2) + "\n", encoding="utf-8"
            )
            with (destination / "mctracer_console.log").open(
                "w", encoding="utf-8"
            ) as stream:
                completed = subprocess.run(
                    command,
                    cwd=Path("/root"),
                    env=env,
                    stdout=stream,
                    stderr=subprocess.STDOUT,
                )
            log = (destination / "mctracer_console.log").read_text(encoding="utf-8")
            if completed.returncode or "[FATAL]" in log or '"event": "PROFILE_DONE"' not in log:
                raise RuntimeError(f"mcTracer failed: {destination}")
            traces = [
                path
                for path in destination.glob("*.json")
                if path.name != "command.json"
            ]
            if len(traces) != 1:
                raise RuntimeError(f"expected one trace in {destination}: {traces}")
            row = {
                "pair": pair,
                "order_in_pair": order_index,
                "tag": tag,
                **parse_trace(traces[0], candidate=tag == "v143"),
            }
            (destination / "summary.json").write_text(
                json.dumps(row, indent=2) + "\n", encoding="utf-8"
            )
            rows.append(row)
            print(json.dumps(row, sort_keys=True), flush=True)

    metrics = (
        "prepack_ms",
        "step1_ms",
        "step2_total_ms",
        "gpu_span_ms",
    )
    aggregate = {
        tag: {
            metric: stats([row[metric] for row in rows if row["tag"] == tag])
            for metric in metrics
        }
        for tag in sources
    }
    paired_rows = []
    for pair in range(1, args.pairs + 1):
        baseline = next(
            row for row in rows if row["pair"] == pair and row["tag"] == "v110"
        )
        candidate = next(
            row for row in rows if row["pair"] == pair and row["tag"] == "v143"
        )
        paired_rows.append(
            {
                "pair": pair,
                **{
                    f"{metric}_change_percent": (
                        candidate[metric] / baseline[metric] - 1.0
                    )
                    * 100.0
                    for metric in metrics
                },
            }
        )
    result = {
        "protocol": {
            "case": 3,
            "pairs": args.pairs,
            "order": "AB/BA alternating",
            "warmup": args.warmup,
        },
        "sources": {tag: str(path) for tag, path in sources.items()},
        "rows": rows,
        "aggregate": aggregate,
        "paired": {
            "rows": paired_rows,
            **{
                f"{metric}_median_change_percent": statistics.median(
                    row[f"{metric}_change_percent"] for row in paired_rows
                )
                for metric in metrics
            },
        },
    }
    summary_path = output_root / "v143_vs_v110_case3_summary.json"
    summary_path.write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + "\n",
        encoding="utf-8",
    )
    print(json.dumps(result, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
