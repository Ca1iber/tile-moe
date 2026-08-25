#!/usr/bin/env python3
"""Summarize v110 mcTracer and mcProfiler evidence for v130."""

from __future__ import annotations

import argparse
import csv
import json
from pathlib import Path


STAGES = {
    "prepack": "kernel_kernel",
    "step1": "kernel_kernel_1",
    "step2": "kernel_kernel_2",
}
SC16G_HBM_ROOF_GBPS = 1400.0
SC16G_COMPUTE_SENSITIVITY_TFLOPS = 479.232


def indexed_metrics(report: dict) -> dict:
    return {
        item["name"]: item["value"]
        for section in report.values()
        for item in section
    }


def parse_number(value):
    if isinstance(value, (int, float)):
        return float(value)
    text = value.replace(",", "")
    for suffix in ("(Kcycles)", "byte", "%"):
        text = text.removesuffix(suffix)
    return float(text)


def trace_case(path: Path) -> dict:
    events = json.loads(path.read_text(encoding="utf-8"))["traceEvents"]
    start = next(e["ts"] for e in events if e.get("name") == "mcProfilerStart" and e.get("ph") == "X")
    stop_event = next(e for e in events if e.get("name") == "mcProfilerStop" and e.get("ph") == "X")
    stop = stop_event["ts"] + stop_event["dur"]
    selected = [
        event
        for event in events
        if event.get("ph") == "X"
        and event.get("name") in STAGES.values()
        and start <= event.get("ts", -1) <= stop
    ]
    by_name = {event["name"]: event for event in selected}
    result = {"trace": str(path)}
    ordered = []
    for stage, symbol in STAGES.items():
        event = by_name[symbol]
        args = event.get("args", {})
        row = {
            "symbol": symbol,
            "duration_ms": event["dur"] / 1e6,
            "timestamp": event["ts"],
            "grid": args.get("grid"),
            "block": args.get("block"),
            "memory": args.get("mem"),
        }
        result[stage] = row
        ordered.append(row)
    result["prepack_to_step1_gap_ms"] = (
        result["step1"]["timestamp"]
        - result["prepack"]["timestamp"]
        - result["prepack"]["duration_ms"] * 1e6
    ) / 1e6
    result["step1_to_step2_gap_ms"] = (
        result["step2"]["timestamp"]
        - result["step1"]["timestamp"]
        - result["step1"]["duration_ms"] * 1e6
    ) / 1e6
    result["kernel_span_ms"] = (
        result["step2"]["timestamp"]
        + result["step2"]["duration_ms"] * 1e6
        - result["prepack"]["timestamp"]
    ) / 1e6
    kernel_total = sum(row["duration_ms"] for row in ordered)
    result["kernel_total_ms"] = kernel_total
    result["stage_share_percent"] = {
        stage: 100.0 * result[stage]["duration_ms"] / kernel_total for stage in STAGES
    }
    return result


def profiler_stage(paths: list[Path]) -> dict:
    metrics = {}
    for path in paths:
        metrics.update(indexed_metrics(json.loads(path.read_text(encoding="utf-8"))))
    report_paths = [str(path) for path in paths]
    roof = metrics["RoofLine"]
    stalls = metrics["ISU stall cycles layout"]["data"]
    flow = metrics["Memory Data Flow Chart"]["data"]
    vl1_stalls = metrics["VL1 partition stall cycles layout"]["data"]
    stall_total = sum(stalls.values())
    return {
        "reports": report_paths,
        "total_cycles_kcycles": parse_number(metrics["Total Cycles"]),
        "roofline": roof,
        "workgroups": parse_number(metrics["WORKGROUPS"]),
        "waves": parse_number(metrics["WAVES"]),
        "average_wave_life_cycles": parse_number(metrics["Average Wave life cycles"]),
        "isu_stalls": stalls,
        "isu_stall_total": stall_total,
        "isu_stall_share_percent": {
            name: 100.0 * value / stall_total if stall_total else 0.0
            for name, value in stalls.items()
        },
        "global_read_bytes": parse_number(metrics["Global Memory Read bytes"]),
        "global_write_bytes": parse_number(metrics["Global Memory Write bytes"]),
        "dnoc_read_average_latency": parse_number(metrics["Dnoc Read Average Latency"]),
        "memory_flow": flow,
        "vl1_partition_stalls": vl1_stalls,
        "achieved_waves": parse_number(metrics["Achieved waves"]),
        "dispatched_waves": parse_number(metrics["Dispatched waves"]),
        "ap_active_cycles": parse_number(metrics["AP active cycles"]),
        "duty_percent": {
            "mte": parse_number(metrics["AP MTE Duty ratio"]),
            "ste": parse_number(metrics["AP STE Duty ratio"]),
            "mma": parse_number(metrics["AP MMA Duty ratio"]),
            "vls": parse_number(metrics["VLS Duty ratio"]),
            "l2c": parse_number(metrics["L2C Duty ratio"]),
        },
    }


def markdown(summary: dict) -> str:
    lines = [
        "# v130 v110 rebaseline profile summary",
        "",
        "## mcTracer",
        "",
        "| Case | prepack ms | Step1 ms | Step2 ms | Step1 share | Step2 share | gap p→s1 ms | gap s1→s2 ms | span ms |",
        "|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
    ]
    for case_id, case in summary["cases"].items():
        trace = case["trace"]
        shares = trace["stage_share_percent"]
        lines.append(
            f"| {case_id} | {trace['prepack']['duration_ms']:.6f} | {trace['step1']['duration_ms']:.6f} | "
            f"{trace['step2']['duration_ms']:.6f} | {shares['step1']:.2f}% | {shares['step2']:.2f}% | "
            f"{trace['prepack_to_step1_gap_ms']:.6f} | {trace['step1_to_step2_gap_ms']:.6f} | "
            f"{trace['kernel_span_ms']:.6f} |"
        )
    lines.extend([
        "",
        "## mcProfiler",
        "",
        "| Case | Stage | TFLOP/s | GB/s | AI | MTE duty | MMA duty | VL1 hit | L2 hit | Dnoc latency | avg wave cycles | VLS-pipe stall share |",
        "|---:|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|",
    ])
    for case_id, case in summary["cases"].items():
        for stage in ("step1", "step2"):
            profile = case["profiler"][stage]
            roof = profile["roofline"]["data"]
            duty = profile["duty_percent"]
            flow = profile["memory_flow"]
            stall_share = profile["isu_stall_share_percent"]
            lines.append(
                f"| {case_id} | {stage} | {roof['case_flops']:.3f} | {roof['case_bandwith']:.3f} | "
                f"{roof['case_I']:.3f} | {duty['mte']:.2f}% | {duty['mma']:.2f}% | "
                f"{flow['vl1c']:.2f}% | {flow['l2c']:.2f}% | {profile['dnoc_read_average_latency']:.2f} | "
                f"{profile['average_wave_life_cycles']:.2f} | {stall_share['vls_pipeline_stall']:.2f}% |"
            )
    lines.extend([
        "",
        "## Wall-time corrected Roofline",
        "",
        "| Case | Stage | Counted TFLOP/s | Counted GB/s | Counted AI | HBM-roof use | 25%-compute sensitivity use | Predicted limiter | Roof efficiency |",
        "|---:|:---|---:|---:|---:|---:|---:|:---|---:|",
    ])
    for case_id, case in summary["cases"].items():
        for stage in ("step1", "step2"):
            corrected = case["profiler"][stage]["wall_time_corrected"]
            lines.append(
                f"| {case_id} | {stage} | {corrected['counted_tflops']:.3f} | "
                f"{corrected['counted_bandwidth_gbps']:.3f} | {corrected['counted_arithmetic_intensity']:.3f} | "
                f"{corrected['hbm_roof_utilization_percent']:.2f}% | "
                f"{corrected['compute_sensitivity_utilization_percent']:.2f}% | "
                f"{corrected['predicted_limiter']} | {corrected['roof_efficiency_percent']:.2f}% |"
            )
    lines.extend([
        "",
        "Notes:",
        "",
        "- mcProfiler RoofLine values are preserved as native tool output; sc-16g re-normalization must be reported separately.",
        "- Corrected values divide per-kernel counted ops and global bytes by the fresh mcTracer wall time.",
        "- The 479.232 TFLOP/s compute line is a 25%-of-card sensitivity model, not a directly proven sGPU cap; the 1400 GB/s HBM line is the conservative measured sc-16g roof.",
        "- ISU stall shares are shares within the four reported stall classes, not fractions of wall-clock time.",
        "- Memory-flow `vl1c/l2c/sl1` fields are interpreted as the profiler's cache percentages; raw JSON remains authoritative.",
        "",
    ])
    return "\n".join(lines)


def main() -> None:
    parser = argparse.ArgumentParser()
    parser.add_argument("--report-root", type=Path, required=True)
    parser.add_argument("--roofline-root", type=Path)
    args = parser.parse_args()
    root = args.report_root.resolve()
    cases = {}
    for case_id in (1, 2, 3):
        trace_files = list((root / "profiler" / "mctracer" / f"case{case_id}").glob("*.json"))
        if len(trace_files) != 1:
            raise RuntimeError(f"expected one trace for case {case_id}: {trace_files}")
        profiler = {}
        for stage, symbol in (("step1", "kernel_kernel_1"), ("step2", "kernel_kernel_2")):
            stage_root = root / "profiler" / "mcprofiler" / "raw" / f"case{case_id}"
            if case_id == 3 and stage == "step2":
                paths = [
                    stage_root / "step2_supplement" / f"1_{symbol}.txt.json",
                    stage_root / "step2_core_supplement" / f"1_{symbol}.txt.json",
                ]
            else:
                paths = [stage_root / stage / f"1_{symbol}.txt.json"]
            profiler[stage] = profiler_stage(paths)
        trace = trace_case(trace_files[0])
        for stage in ("step1", "step2"):
            profile = profiler[stage]
            duration_s = trace[stage]["duration_ms"] / 1000.0
            counted_ops = profile["roofline"]["processed_data"]["all_ops"]
            counted_bytes = profile["global_read_bytes"] + profile["global_write_bytes"]
            counted_tflops = counted_ops / duration_s / 1e12
            counted_bandwidth = counted_bytes / duration_s / 1e9
            counted_ai = counted_ops / counted_bytes
            bandwidth_bound_tflops = SC16G_HBM_ROOF_GBPS * counted_ai / 1000.0
            predicted_roof = min(SC16G_COMPUTE_SENSITIVITY_TFLOPS, bandwidth_bound_tflops)
            profile["wall_time_corrected"] = {
                "trace_duration_ms": trace[stage]["duration_ms"],
                "counted_ops": counted_ops,
                "counted_global_bytes": counted_bytes,
                "counted_tflops": counted_tflops,
                "counted_bandwidth_gbps": counted_bandwidth,
                "counted_arithmetic_intensity": counted_ai,
                "hbm_roof_gbps": SC16G_HBM_ROOF_GBPS,
                "hbm_roof_utilization_percent": 100.0 * counted_bandwidth / SC16G_HBM_ROOF_GBPS,
                "compute_sensitivity_tflops": SC16G_COMPUTE_SENSITIVITY_TFLOPS,
                "compute_sensitivity_utilization_percent": 100.0 * counted_tflops / SC16G_COMPUTE_SENSITIVITY_TFLOPS,
                "predicted_limiter": "HBM" if bandwidth_bound_tflops < SC16G_COMPUTE_SENSITIVITY_TFLOPS else "compute",
                "predicted_roof_tflops": predicted_roof,
                "roof_efficiency_percent": 100.0 * counted_tflops / predicted_roof,
            }
        cases[str(case_id)] = {
            "trace": trace,
            "profiler": profiler,
        }
    summary = {
        "schema_version": 1,
        "iteration_id": "v130_v110_rebaseline_sc-16g",
        "cases": cases,
    }
    json_path = root / "profiler" / "v130_v110_profile_summary.json"
    md_path = root / "profiler" / "v130_v110_profile_summary.md"
    json_path.write_text(json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    md_path.write_text(markdown(summary), encoding="utf-8")
    if args.roofline_root is not None:
        roofline_root = args.roofline_root.resolve()
        roofline_root.mkdir(parents=True, exist_ok=True)
        native_path = roofline_root / "v130_v110_native_points.csv"
        corrected_path = roofline_root / "v130_v110_sc16_walltime_points.csv"
        with native_path.open("w", newline="", encoding="utf-8") as stream:
            writer = csv.DictWriter(stream, fieldnames=("label", "ai_flop_per_byte", "tflops"))
            writer.writeheader()
            for case_id, case in cases.items():
                for stage in ("step1", "step2"):
                    roof = case["profiler"][stage]["roofline"]["data"]
                    writer.writerow({"label": f"case{case_id}_{stage}", "ai_flop_per_byte": roof["case_I"], "tflops": roof["case_flops"]})
        with corrected_path.open("w", newline="", encoding="utf-8") as stream:
            writer = csv.DictWriter(stream, fieldnames=("label", "ai_flop_per_byte", "tflops"))
            writer.writeheader()
            for case_id, case in cases.items():
                for stage in ("step1", "step2"):
                    corrected = case["profiler"][stage]["wall_time_corrected"]
                    writer.writerow({
                        "label": f"case{case_id}_{stage}",
                        "ai_flop_per_byte": corrected["counted_arithmetic_intensity"],
                        "tflops": corrected["counted_tflops"],
                    })
        (roofline_root / "v130_v110_profile_summary.json").write_text(
            json.dumps(summary, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
        )
    print(md_path.read_text(encoding="utf-8"))


if __name__ == "__main__":
    main()
