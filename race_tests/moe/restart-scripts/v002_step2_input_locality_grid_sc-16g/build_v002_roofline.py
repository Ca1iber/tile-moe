#!/usr/bin/env python3
"""Build v002 decision points and the targeted Step2 native comparison."""

from __future__ import annotations

import csv
import json
import shutil
from pathlib import Path


IID = "v002_step2_input_locality_grid_sc-16g"
REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests/moe"
BASE_ROOF = MOE / "moe-roofline/v000_minibs_baseline_sc-16g/v000_minibs_baseline_sc-16g_decision_points.csv"
TRACE = MOE / f"restart-rep/{IID}/profiler/mctracer/{IID}_stage_summary.json"
COMPARE = MOE / f"restart-rep/{IID}/profiler/mcprofiler/{IID}_case3_step2_comparison.json"
RAW = MOE / f"restart-rep/{IID}/profiler/mcprofiler/raw/case3/mcprofiler_output"
ROOF = MOE / "moe-roofline" / IID


def write_csv(path: Path, rows: list[dict]) -> None:
    with path.open("w", newline="", encoding="utf-8") as stream:
        writer = csv.DictWriter(stream, fieldnames=list(rows[0]))
        writer.writeheader()
        writer.writerows(rows)


def main() -> None:
    ROOF.mkdir(parents=True, exist_ok=True)
    trace = json.loads(TRACE.read_text(encoding="utf-8"))
    times = {(int(item["case"]), stage): float(item[f"step{stage}_ms"]) for item in trace["results"] for stage in (1, 2)}
    rows = []
    with BASE_ROOF.open(newline="", encoding="utf-8") as stream:
        for base in csv.DictReader(stream):
            case = int(base["case"])
            stage = int(base["stage"])
            duration = times[(case, stage)]
            flops = int(base["static_issued_gemm_flops"])
            issued_bytes = int(base["schedule_implied_uncached_global_bytes"])
            ai = flops / issued_bytes
            tflops = flops / (duration * 1e9)
            roof = min(479.232, 1400.0 * ai / 1000.0)
            rows.append(
                {
                    "label": f"C{case}-S{stage}",
                    "case": case,
                    "stage": stage,
                    "ai_flop_per_byte": ai,
                    "tflops": tflops,
                    "duration_ms": duration,
                    "static_issued_gemm_flops": flops,
                    "schedule_implied_uncached_global_bytes": issued_bytes,
                    "schedule_implied_bandwidth_gbps": issued_bytes / (duration * 1e6),
                    "sc16_1400_roof_efficiency_pct": tflops / roof * 100.0,
                    "roof_region": "HBM" if 1400.0 * ai / 1000.0 < 479.232 else "compute",
                }
            )
    write_csv(ROOF / f"{IID}_decision_points.csv", rows)

    comparison = json.loads(COMPARE.read_text(encoding="utf-8"))
    native = []
    for name in ("v000", "v002"):
        data = comparison[name]["data"]
        native.append(
            {
                "label": f"{name}-C3-S2",
                "ai_flop_per_byte": data["case_I"],
                "tflops": data["case_flops"],
                "bandwidth_gbps": data["case_bandwith"],
                "all_memacs_raw": comparison[name]["processed_data"]["all_memacs"],
                "during_raw": comparison[name]["processed_data"]["during"],
            }
        )
    write_csv(ROOF / f"{IID}_mcprofiler_native_comparison.csv", native)
    native_source = RAW / Path(comparison["v002"]["filename"]).name
    shutil.copy2(native_source, ROOF / "mcprofiler_native_v002_case3_step2_sc-16g.png")
    print(json.dumps({"decision_points": rows, "native_comparison": native}, indent=2))


if __name__ == "__main__":
    main()
