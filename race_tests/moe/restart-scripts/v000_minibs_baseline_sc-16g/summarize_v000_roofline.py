#!/usr/bin/env python3
"""Build auditable native and decision Roofline inputs for v000."""

from __future__ import annotations

import csv
import json
import math
import shutil
from pathlib import Path


IID = "v000_minibs_baseline_sc-16g"
REPO = Path("/root/tilelang-metax")
REP = REPO / "race_tests/moe/restart-rep" / IID
RAW = REP / "profiler/mcprofiler/raw"
MCTRACER = REP / "profiler/mctracer" / f"{IID}_stage_summary.json"
PROF_OUT = REP / "profiler/mcprofiler"
ROOF = REPO / "race_tests/moe/moe-roofline" / IID
NATIVE = ROOF / "native"

CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272, "num_blocks": 24},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544, "num_blocks": 48},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088, "num_blocks": 96},
}
STAGES = {
    1: ("Step1 Gate+Up+SwiGLU", "kernel_kernel", "1_kernel_kernel.txt.json"),
    2: ("Step2 Down", "kernel_kernel_1", "2_kernel_kernel_1.txt.json"),
}

BLOCK_M = 128
STEP1_BN = 128
STEP2_BN = 256
FP16_BYTES = 2
PHYSICAL_HBM_GBPS = 1843.2
SC16_MEASURED_HBM_GBPS = 1400.0
PHYSICAL_FP16_MMA_TFLOPS = 1916.928
SC16_COMPUTE_SHARE_MODEL_TFLOPS = PHYSICAL_FP16_MMA_TFLOPS * 0.25


def static_model(cfg: dict, stage: int) -> tuple[int, int]:
    """Return issued GEMM FLOPs and schedule-implied uncached global bytes.

    Bytes count the fp16 A/B loads and fp16 output store performed by every
    program instance. Cache reuse can reduce physical HBM traffic, so this is
    an explicit schedule-level model rather than a hardware counter.
    """
    blocks = cfg["num_blocks"]
    hidden = cfg["hidden"]
    intermediate = cfg["intermediate"]
    if stage == 1:
        ntiles = intermediate // STEP1_BN
        flops = 4 * blocks * BLOCK_M * hidden * intermediate
        bytes_per_cta = (
            hidden * (BLOCK_M + 2 * STEP1_BN) * FP16_BYTES
            + BLOCK_M * STEP1_BN * FP16_BYTES
        )
    else:
        ntiles = hidden // STEP2_BN
        flops = 2 * blocks * BLOCK_M * intermediate * hidden
        bytes_per_cta = (
            intermediate * (BLOCK_M + STEP2_BN) * FP16_BYTES
            + BLOCK_M * STEP2_BN * FP16_BYTES
        )
    return flops, blocks * ntiles * bytes_per_cta


def main() -> None:
    PROF_OUT.mkdir(parents=True, exist_ok=True)
    NATIVE.mkdir(parents=True, exist_ok=True)
    trace = json.loads(MCTRACER.read_text(encoding="utf-8"))
    times = {int(item["case"]): item for item in trace["results"]}
    native_points = []
    decision_points = []

    for case_id, cfg in CASES.items():
        for stage_id, (stage_name, kernel_name, filename) in STAGES.items():
            source = RAW / f"case{case_id}/mcprofiler_output/{filename}"
            value = json.loads(source.read_text(encoding="utf-8"))["Summary"][0]["value"]
            processed = value["processed_data"]
            data = value["data"]
            flops, issued_bytes = static_model(cfg, stage_id)
            if not 0.95 <= float(processed["all_ops"]) / flops <= 1.05:
                raise RuntimeError(f"case {case_id} stage {stage_id}: mcProfiler all_ops disagrees with static model")
            derived_native_bw = float(data["case_flops"]) / float(data["case_I"]) * 1000.0
            if not math.isclose(derived_native_bw, float(data["case_bandwith"]), rel_tol=1e-9):
                raise RuntimeError(f"case {case_id} stage {stage_id}: native Roofline identity failed")
            native_png_source = source.parent / Path(value["filename"]).name
            native_png = NATIVE / f"mcprofiler_native_oj_case{case_id}_step{stage_id}_sc-16g.png"
            shutil.copy2(native_png_source, native_png)

            native_ai = float(data["case_I"])
            native_tflops = float(data["case_flops"])
            native_roof = min(PHYSICAL_FP16_MMA_TFLOPS, PHYSICAL_HBM_GBPS * native_ai / 1000.0)
            native_points.append(
                {
                    "label": f"C{case_id}-S{stage_id}",
                    "case": case_id,
                    "stage": stage_id,
                    "stage_name": stage_name,
                    "kernel": kernel_name,
                    "ai_flop_per_byte": native_ai,
                    "tflops": native_tflops,
                    "bandwidth_gbps": float(data["case_bandwith"]),
                    "physical_roof_efficiency_pct": native_tflops / native_roof * 100.0,
                    "all_ops": float(processed["all_ops"]),
                    "all_memacs_raw_access_counter": float(processed["all_memacs"]),
                    "during_raw": float(processed["during"]),
                    "vl1_memacs_raw_access_counter": float(processed["vl1_memacs"]),
                    "l2c_memacs_raw_access_counter": float(processed["l2c_memacs"]),
                    "source_json": str(source.relative_to(REPO)),
                    "native_png": str(native_png.relative_to(REPO)),
                }
            )

            duration_ms = float(times[case_id][f"step{stage_id}_ms"])
            achieved_tflops = flops / (duration_ms * 1e9)
            issued_ai = flops / issued_bytes
            issued_bw_gbps = issued_bytes / (duration_ms * 1e6)
            decision_roof = min(
                SC16_COMPUTE_SHARE_MODEL_TFLOPS,
                SC16_MEASURED_HBM_GBPS * issued_ai / 1000.0,
            )
            decision_points.append(
                {
                    "label": f"C{case_id}-S{stage_id}",
                    "case": case_id,
                    "stage": stage_id,
                    "stage_name": stage_name,
                    "kernel": kernel_name,
                    "ai_flop_per_byte": issued_ai,
                    "tflops": achieved_tflops,
                    "duration_ms": duration_ms,
                    "static_issued_gemm_flops": flops,
                    "schedule_implied_uncached_global_bytes": issued_bytes,
                    "schedule_implied_bandwidth_gbps": issued_bw_gbps,
                    "sc16_1400_roof_tflops": decision_roof,
                    "sc16_1400_roof_efficiency_pct": achieved_tflops / decision_roof * 100.0,
                    "roof_region": "HBM" if SC16_MEASURED_HBM_GBPS * issued_ai / 1000.0 < SC16_COMPUTE_SHARE_MODEL_TFLOPS else "compute",
                }
            )

    def write_csv(path: Path, rows: list[dict]) -> None:
        with path.open("w", newline="", encoding="utf-8") as stream:
            writer = csv.DictWriter(stream, fieldnames=list(rows[0]))
            writer.writeheader()
            writer.writerows(rows)

    native_csv = ROOF / f"{IID}_mcprofiler_native_points.csv"
    decision_csv = ROOF / f"{IID}_decision_points.csv"
    write_csv(native_csv, native_points)
    write_csv(decision_csv, decision_points)
    payload = {
        "iteration_id": IID,
        "interpretation_rule": {
            "native": "mcProfiler case_I/case_flops coordinates retained exactly; they are not treated as end-to-end TFLOP/s",
            "decision": "static issued GEMM FLOPs divided by mcTracer kernel time; AI uses schedule-implied uncached fp16 A/B/output bytes",
        },
        "roofs": {
            "physical_hbm_gbps": PHYSICAL_HBM_GBPS,
            "sc16_measured_hbm_gbps": SC16_MEASURED_HBM_GBPS,
            "physical_fp16_mma_tflops": PHYSICAL_FP16_MMA_TFLOPS,
            "sc16_compute_share_model_tflops": SC16_COMPUTE_SHARE_MODEL_TFLOPS,
            "sc16_compute_share_model_status": "INFERRED: physical FP16 MMA peak multiplied by the configured 25% sGPU compute share",
        },
        "native_points": native_points,
        "decision_points": decision_points,
    }
    summary_json = PROF_OUT / f"{IID}_roofline_summary.json"
    summary_json.write_text(json.dumps(payload, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")

    lines = [
        f"# {IID} Roofline summary",
        "",
        "The decision points use mcTracer time and an explicit schedule-issued byte model. Native mcProfiler coordinates are archived separately and are not interpreted as end-to-end TFLOP/s.",
        "",
        "| point | ms | issued AI | achieved TFLOP/s | implied GB/s | sc16 roof efficiency | region |",
        "|---|---:|---:|---:|---:|---:|---|",
    ]
    for point in decision_points:
        lines.append(
            f"| {point['label']} | {point['duration_ms']:.6f} | {point['ai_flop_per_byte']:.3f} | "
            f"{point['tflops']:.3f} | {point['schedule_implied_bandwidth_gbps']:.3f} | "
            f"{point['sc16_1400_roof_efficiency_pct']:.2f}% | {point['roof_region']} |"
        )
    lines.extend(
        [
            "",
            "All six schedule-level decision points are HBM-side under the 479.232 TFLOP/s 25%-share compute model and 1400 GB/s measured sc16 HBM roof.",
            "The 479.232 TFLOP/s ceiling is an inference, not a directly measured slice peak; the HBM-side classification is nevertheless insensitive to using the full-card 1916.928 TFLOP/s ceiling.",
        ]
    )
    (PROF_OUT / f"{IID}_roofline_summary.md").write_text("\n".join(lines) + "\n", encoding="utf-8")
    print(json.dumps(payload, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
