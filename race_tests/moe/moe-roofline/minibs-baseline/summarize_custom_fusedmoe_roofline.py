#!/usr/bin/env python3
"""Parse mcProfiler RoofLine JSON and emit an auditable combined SVG/CSV/JSON."""

from __future__ import annotations

import csv
import hashlib
import json
import math
import shutil
import subprocess
from datetime import datetime
from pathlib import Path


ROOT = Path(__file__).resolve().parent
RAW = ROOT / "mcprofiler_raw"
CSV_PATH = ROOT / "custom_fusedmoe_roofline_points_sc-16g.csv"
JSON_PATH = ROOT / "custom_fusedmoe_roofline_manifest_sc-16g.json"
SVG_PATH = ROOT / "custom_fusedmoe_roofline_sc-16g.svg"
README_PATH = ROOT / "README.md"
KERNEL_PATH = ROOT.parents[1] / "custom_fusedmoe.py"

CASES = {
    1: {"experts": 16, "hidden": 2048, "intermediate": 8192, "valid_tokens": 2272, "num_blocks_m": 24},
    2: {"experts": 32, "hidden": 7168, "intermediate": 2048, "valid_tokens": 4544, "num_blocks_m": 48},
    3: {"experts": 64, "hidden": 7168, "intermediate": 2048, "valid_tokens": 9088, "num_blocks_m": 96},
}
STAGES = {
    1: ("Step1 Gate+Up+SwiGLU", "1_kernel_kernel.txt.json", "kernel_kernel"),
    2: ("Step2 Down", "2_kernel_kernel_1.txt.json", "kernel_kernel_1"),
}
COLORS = {1: "#E69F00", 2: "#0072B2", 3: "#009E73"}


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as handle:
        for chunk in iter(lambda: handle.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def load_point(case_id: int, stage_id: int) -> dict[str, object]:
    stage_name, filename, kernel_name = STAGES[stage_id]
    source = RAW / f"oj_case{case_id}_sc-16g" / "mcprofiler_output" / filename
    payload = json.loads(source.read_text(encoding="utf-8"))
    value = payload["Summary"][0]["value"]
    processed = value["processed_data"]
    data = value["data"]
    cfg = CASES[case_id]
    total_padded = cfg["num_blocks_m"] * 128
    gemm_multiplier = 4 if stage_id == 1 else 2
    static_gemm_flops = gemm_multiplier * total_padded * cfg["hidden"] * cfg["intermediate"]

    # mcProfiler reports TFLOP/s and FLOP/Byte. Their quotient is TB/s.
    derived_gbps = float(data["case_flops"]) / float(data["case_I"]) * 1000.0
    if not math.isclose(derived_gbps, float(data["case_bandwith"]), rel_tol=1e-9):
        raise RuntimeError(f"mcProfiler unit identity failed for case {case_id} stage {stage_id}")
    if not 0.95 <= float(processed["all_ops"]) / static_gemm_flops <= 1.05:
        raise RuntimeError(f"unexpected operation count for case {case_id} stage {stage_id}")

    native_png = source.parent / Path(value["filename"]).name
    copied_png = ROOT / f"mcprofiler_native_oj_case{case_id}_step{stage_id}_sc-16g.png"
    shutil.copy2(native_png, copied_png)

    return {
        "case": case_id,
        "stage": stage_id,
        "stage_name": stage_name,
        "kernel_name": kernel_name,
        **cfg,
        "total_padded": total_padded,
        "source_json": str(source.relative_to(ROOT)),
        "native_png": copied_png.name,
        "all_ops": float(processed["all_ops"]),
        "all_memacs": float(processed["all_memacs"]),
        "during": float(processed["during"]),
        "block_num": int(processed["block_num"]),
        "vl1_memacs": float(processed["vl1_memacs"]),
        "l2c_memacs": float(processed["l2c_memacs"]),
        "core_clk_ghz": float(data["core_clk"]),
        "mc_clk_ghz": float(data["mc_clk"]),
        "mcprofiler_case_ai_flop_per_byte": float(data["case_I"]),
        "mcprofiler_case_tflops": float(data["case_flops"]),
        "mcprofiler_case_bandwidth_gbps": float(data["case_bandwith"]),
        "max_bandwidth_gbps": float(data["MAX_Bandwith"]),
        "vl1_ai_flop_per_access_unit": float(data["case_VL1_I"]),
        "l2c_ai_flop_per_access_unit": float(data["case_L2C_I"]),
        "static_issued_gemm_flops": static_gemm_flops,
        "all_ops_vs_static_gemm_ratio": float(processed["all_ops"]) / static_gemm_flops,
    }


def derive_roofs(points: list[dict[str, object]]) -> dict[str, float]:
    block_nums = {int(point["block_num"]) for point in points}
    core_clks = {float(point["core_clk_ghz"]) for point in points}
    max_bws = {float(point["max_bandwidth_gbps"]) for point in points}
    if len(block_nums) != 1 or len(core_clks) != 1 or len(max_bws) != 1:
        raise RuntimeError("mcProfiler device ceilings are inconsistent across the six captures")
    aps = block_nums.pop()
    core_clk = core_clks.pop()
    max_bw = max_bws.pop()
    # These are the same C500 throughput constants drawn by mcProfiler's native RoofLine image.
    trans_peak = aps * 128 * core_clk / 1000.0
    fma_peak = aps * 1024 * core_clk / 1000.0
    mma_fp16_peak = aps * 16384 * core_clk / 1000.0
    int8_peak = aps * 32768 * core_clk / 1000.0
    ridge = mma_fp16_peak * 1000.0 / max_bw
    return {
        "accelerate_processors": aps,
        "core_clk_ghz": core_clk,
        "max_bandwidth_gbps": max_bw,
        "trans_peak_tflops": trans_peak,
        "fma_peak_tflops": fma_peak,
        "mma_fp16_peak_tflops": mma_fp16_peak,
        "int8_peak_tops": int8_peak,
        "mma_fp16_ridge_flop_per_byte": ridge,
    }


def add_efficiency(points: list[dict[str, object]], roofs: dict[str, float]) -> None:
    for point in points:
        ai = float(point["mcprofiler_case_ai_flop_per_byte"])
        attainable = min(
            roofs["mma_fp16_peak_tflops"],
            roofs["max_bandwidth_gbps"] * ai / 1000.0,
        )
        point["attainable_fp16_roof_tflops"] = attainable
        point["roofline_efficiency_pct"] = float(point["mcprofiler_case_tflops"]) / attainable * 100.0
        point["roof_region"] = "compute" if ai >= roofs["mma_fp16_ridge_flop_per_byte"] else "HBM"


def write_csv(points: list[dict[str, object]]) -> None:
    fields = list(points[0].keys())
    with CSV_PATH.open("w", newline="", encoding="utf-8") as handle:
        writer = csv.DictWriter(handle, fieldnames=fields)
        writer.writeheader()
        writer.writerows(points)


def write_svg(points: list[dict[str, object]], roofs: dict[str, float]) -> None:
    width, height = 1600, 1000
    left, top, plot_w, plot_h = 105, 145, 1040, 700
    x_min, x_max = 30.0, 2500.0
    y_min, y_max = 50.0, 3000.0

    def sx(value: float) -> float:
        return left + (math.log10(value) - math.log10(x_min)) / (math.log10(x_max) - math.log10(x_min)) * plot_w

    def sy(value: float) -> float:
        return top + plot_h - (math.log10(value) - math.log10(y_min)) / (math.log10(y_max) - math.log10(y_min)) * plot_h

    parts = [
        f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" viewBox="0 0 {width} {height}">',
        '<rect width="100%" height="100%" fill="#FAFAFA"/>',
        '<style>text{font-family:"Segoe UI","DejaVu Sans",sans-serif;fill:#202124}.title{font-size:30px;font-weight:700}.subtitle{font-size:17px;fill:#5f6368}.axis{font-size:17px;font-weight:600}.tick{font-size:14px;fill:#5f6368}.label{font-size:15px;font-weight:700}.panel-title{font-size:19px;font-weight:700}.panel{font-size:15px}.small{font-size:13px;fill:#5f6368}.mono{font-family:"Cascadia Mono","DejaVu Sans Mono",monospace}</style>',
        '<text x="800" y="48" text-anchor="middle" class="title">custom_fusedmoe.py Roofline — mcProfiler on sc-16g</text>',
        '<text x="800" y="79" text-anchor="middle" class="subtitle">OJ cases · Step1 Gate+Up+SwiGLU · Step2 Down · profiler-native coordinates</text>',
        f'<rect x="{left}" y="{top}" width="{plot_w}" height="{plot_h}" fill="#FFFFFF" stroke="#BDC1C6" stroke-width="1.5"/>',
        f'<clipPath id="plotClip"><rect x="{left}" y="{top}" width="{plot_w}" height="{plot_h}"/></clipPath>',
    ]

    x_ticks = [30, 50, 100, 200, 500, 1000, 2000]
    y_ticks = [50, 100, 200, 500, 1000, 2000, 3000]
    for tick in x_ticks:
        x = sx(float(tick))
        parts.append(f'<line x1="{x:.2f}" y1="{top}" x2="{x:.2f}" y2="{top + plot_h}" stroke="#E8EAED"/>')
        parts.append(f'<text x="{x:.2f}" y="{top + plot_h + 27}" text-anchor="middle" class="tick">{tick}</text>')
    for tick in y_ticks:
        y = sy(float(tick))
        parts.append(f'<line x1="{left}" y1="{y:.2f}" x2="{left + plot_w}" y2="{y:.2f}" stroke="#E8EAED"/>')
        parts.append(f'<text x="{left - 14}" y="{y + 5:.2f}" text-anchor="end" class="tick">{tick}</text>')

    parts.extend(
        [
            f'<text x="{left + plot_w / 2}" y="{top + plot_h + 70}" text-anchor="middle" class="axis">Arithmetic intensity (FLOP / Byte)</text>',
            f'<text x="28" y="{top + plot_h / 2}" text-anchor="middle" transform="rotate(-90 28 {top + plot_h / 2})" class="axis">mcProfiler throughput estimate (TFLOP/s)</text>',
        ]
    )

    max_bw = roofs["max_bandwidth_gbps"]
    mma_peak = roofs["mma_fp16_peak_tflops"]
    ridge = roofs["mma_fp16_ridge_flop_per_byte"]
    hbm_x_end = min(x_max, y_max * 1000.0 / max_bw)
    parts.extend(
        [
            f'<g clip-path="url(#plotClip)"><line x1="{sx(x_min):.2f}" y1="{sy(max_bw * x_min / 1000.0):.2f}" x2="{sx(hbm_x_end):.2f}" y2="{sy(max_bw * hbm_x_end / 1000.0):.2f}" stroke="#7E57C2" stroke-width="3" stroke-dasharray="10 7"/>',
            f'<line x1="{sx(x_min):.2f}" y1="{sy(mma_peak):.2f}" x2="{sx(x_max):.2f}" y2="{sy(mma_peak):.2f}" stroke="#00897B" stroke-width="3" stroke-dasharray="10 7"/>',
            f'<polyline points="{sx(x_min):.2f},{sy(max_bw * x_min / 1000.0):.2f} {sx(ridge):.2f},{sy(mma_peak):.2f} {sx(x_max):.2f},{sy(mma_peak):.2f}" fill="none" stroke="#202124" stroke-width="5" stroke-linejoin="round"/></g>',
            f'<text x="{sx(70):.2f}" y="{sy(max_bw * 70 / 1000.0) - 14:.2f}" class="label" fill="#7E57C2">HBM {max_bw:.1f} GB/s</text>',
            f'<text x="{sx(45):.2f}" y="{sy(mma_peak) - 14:.2f}" class="label" fill="#00897B">FP16 MMA {mma_peak:.1f} TFLOP/s</text>',
            f'<line x1="{sx(ridge):.2f}" y1="{sy(mma_peak):.2f}" x2="{sx(ridge):.2f}" y2="{top + plot_h}" stroke="#9AA0A6" stroke-dasharray="4 6"/>',
            f'<text x="{sx(ridge) + 8:.2f}" y="{top + plot_h - 12}" class="small">ridge {ridge:.0f} FLOP/B</text>',
        ]
    )

    offsets = {
        (1, 1): (25, -48),
        (1, 2): (22, -22),
        (2, 1): (28, 34),
        (2, 2): (25, 58),
        (3, 1): (-78, -27),
        (3, 2): (-78, 42),
    }
    for point in points:
        case_id = int(point["case"])
        stage_id = int(point["stage"])
        x = sx(float(point["mcprofiler_case_ai_flop_per_byte"]))
        y = sy(float(point["mcprofiler_case_tflops"]))
        color = COLORS[case_id]
        if stage_id == 1:
            parts.append(f'<circle cx="{x:.2f}" cy="{y:.2f}" r="10" fill="{color}" stroke="#FFFFFF" stroke-width="3"/>')
        else:
            parts.append(f'<rect x="{x - 10:.2f}" y="{y - 10:.2f}" width="20" height="20" rx="2" fill="{color}" stroke="#FFFFFF" stroke-width="3"/>')
        dx, dy = offsets[(case_id, stage_id)]
        tx, ty = x + dx, y + dy
        anchor = "end" if dx < 0 else "start"
        line_end = tx + (5 if dx < 0 else -5)
        parts.append(f'<line x1="{x:.2f}" y1="{y:.2f}" x2="{line_end:.2f}" y2="{ty + 5:.2f}" stroke="{color}" stroke-width="1.5"/>')
        parts.append(f'<text x="{tx:.2f}" y="{ty:.2f}" text-anchor="{anchor}" class="label" fill="{color}">C{case_id} S{stage_id}</text>')

    panel_x = 1180
    parts.extend(
        [
            f'<rect x="{panel_x}" y="{top}" width="385" height="700" rx="12" fill="#FFFFFF" stroke="#DADCE0"/>',
            f'<text x="{panel_x + 22}" y="{top + 38}" class="panel-title">OJ workload legend</text>',
        ]
    )
    py = top + 72
    for case_id, cfg in CASES.items():
        color = COLORS[case_id]
        parts.append(f'<circle cx="{panel_x + 32}" cy="{py - 5}" r="8" fill="{color}"/>')
        parts.append(f'<text x="{panel_x + 50}" y="{py}" class="panel"><tspan font-weight="700">C{case_id}</tspan>  E{cfg["experts"]} · H{cfg["hidden"]} · I{cfg["intermediate"]}</text>')
        parts.append(f'<text x="{panel_x + 50}" y="{py + 23}" class="small">rows={cfg["valid_tokens"]} · M-blocks={cfg["num_blocks_m"]}</text>')
        py += 65
    parts.extend(
        [
            f'<circle cx="{panel_x + 31}" cy="{py + 5}" r="8" fill="#5F6368"/><text x="{panel_x + 50}" y="{py + 10}" class="panel">circle = Step1</text>',
            f'<rect x="{panel_x + 23}" y="{py + 29}" width="16" height="16" rx="2" fill="#5F6368"/><text x="{panel_x + 50}" y="{py + 43}" class="panel">square = Step2</text>',
            f'<line x1="{panel_x + 20}" y1="{py + 75}" x2="{panel_x + 365}" y2="{py + 75}" stroke="#DADCE0"/>',
            f'<text x="{panel_x + 22}" y="{py + 108}" class="panel-title">Profiler coordinates</text>',
            f'<text x="{panel_x + 22}" y="{py + 138}" class="small mono">point       AI      TF/s   roof%</text>',
        ]
    )
    row_y = py + 168
    for point in points:
        parts.append(
            f'<text x="{panel_x + 22}" y="{row_y}" class="panel mono">C{point["case"]} S{point["stage"]}  '
            f'{float(point["mcprofiler_case_ai_flop_per_byte"]):7.1f}  '
            f'{float(point["mcprofiler_case_tflops"]):6.1f}  '
            f'{float(point["roofline_efficiency_pct"]):5.1f}%</text>'
        )
        row_y += 29

    parts.extend(
        [
            f'<text x="{left}" y="930" class="small">Coordinates are mcProfiler RoofLine metric outputs (case_I, case_flops), not end-to-end benchmark-derived TFLOP/s.</text>',
            f'<text x="{left}" y="955" class="small">Black envelope = min(HBM roof, FP16 MMA roof). Native single-kernel PNGs and raw JSON are retained beside this figure.</text>',
            '</svg>',
        ]
    )
    SVG_PATH.write_text("\n".join(parts) + "\n", encoding="utf-8")


def write_readme(points: list[dict[str, object]], roofs: dict[str, float], manifest: dict[str, object]) -> None:
    table = [
        "| point | kernel | AI (FLOP/B) | TFLOP/s | GB/s | region | roof efficiency |",
        "|---|---|---:|---:|---:|---|---:|",
    ]
    for point in points:
        table.append(
            f'| C{point["case"]} S{point["stage"]} | `{point["kernel_name"]}` | '
            f'{float(point["mcprofiler_case_ai_flop_per_byte"]):.3f} | '
            f'{float(point["mcprofiler_case_tflops"]):.3f} | '
            f'{float(point["mcprofiler_case_bandwidth_gbps"]):.3f} | '
            f'{point["roof_region"]} | {float(point["roofline_efficiency_pct"]):.2f}% |'
        )
    text = f"""# `minibs-baseline`: `custom_fusedmoe.py` Roofline on sc-16g

Main figure: [`custom_fusedmoe_roofline_sc-16g.svg`](./custom_fusedmoe_roofline_sc-16g.svg). A PNG rasterization of the same SVG is generated as `custom_fusedmoe_roofline_sc-16g.png` after this script. Six mcProfiler-native single-kernel PNGs are also retained.

## Measurement identity

- Machine: `sc-16g`, MetaX C500 sGPU, 16 GiB VRAM quota.
- Git HEAD: `{manifest['git_head']}`.
- `custom_fusedmoe.py` SHA256: `{manifest['kernel_sha256']}`.
- Workloads: the three exact shapes in `../../oj_benchmark.py`; `num_blocks_m=24/48/96`.
- Profiler range: three warmups, then exactly one `RoutedMoEKernel` call.
- Included device kernels: `kernel_kernel` (Step1 Gate+Up+SwiGLU) and `kernel_kernel_1` (Step2 Down).
- mcProfiler command: `--per-kernel --profile-from-start 0 --counts 2 --kernelnames kernel_kernel kernel_kernel_1 --metrics RoofLine`.
- Point coordinates use mcProfiler's processed `case_I`, `case_flops`, and `case_bandwith` fields. `all_memacs` is a raw access counter, not a byte count, so the script does not reinterpret it as bytes.

## Roofs

- HBM roof: `{roofs['max_bandwidth_gbps']:.1f} GB/s` from mcProfiler.
- FP16 MMA roof: `{roofs['mma_fp16_peak_tflops']:.3f} TFLOP/s`, reconstructed from the same native mcProfiler plot constants: `{int(roofs['accelerate_processors'])} AP × 16384 FLOP/cycle × {roofs['core_clk_ghz']:.3f} GHz`.
- FP16 ridge point: `{roofs['mma_fp16_ridge_flop_per_byte']:.1f} FLOP/Byte`.
- The black envelope in the combined figure is `min(HBM × AI, FP16 MMA peak)`.

## Results

{chr(10).join(table)}

Only C1 Step2 lies to the compute side of the `{roofs['mma_fp16_ridge_flop_per_byte']:.0f} FLOP/Byte` ridge. The other five points are on the HBM side, although all six still leave roughly half of the attainable native roof unused. This identifies memory-system utilization and tile/replay overhead as the dominant next investigation for most cases; C1 Step2 is the exception where compute-pipeline utilization is the more direct ceiling.

The mcProfiler `case_flops` coordinate is the tool's native roofline throughput estimate. It must not be substituted for OJ end-to-end latency-derived effective TFLOP/s.

## Reproduce

```bash
cd /root/tilelang-metax
bash race_tests/moe/moe-roofline/minibs-baseline/run_custom_fusedmoe_mcprofiler.sh 1
bash race_tests/moe/moe-roofline/minibs-baseline/run_custom_fusedmoe_mcprofiler.sh 2
bash race_tests/moe/moe-roofline/minibs-baseline/run_custom_fusedmoe_mcprofiler.sh 3
/opt/conda/bin/python race_tests/moe/moe-roofline/minibs-baseline/summarize_custom_fusedmoe_roofline.py
```
"""
    README_PATH.write_text(text, encoding="utf-8")


def main() -> None:
    points = [load_point(case_id, stage_id) for case_id in sorted(CASES) for stage_id in sorted(STAGES)]
    roofs = derive_roofs(points)
    add_efficiency(points, roofs)
    write_csv(points)
    write_svg(points, roofs)

    repo = ROOT.parents[3]
    git_head = subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=repo, text=True).strip()
    version_file = Path("/opt/mcProfiler-ubuntu18.04/config/.version")
    manifest = {
        "generated_at": datetime.now().astimezone().isoformat(),
        "machine": "sc-16g",
        "device": "MetaX C500 sGPU",
        "git_head": git_head,
        "kernel_path": str(KERNEL_PATH.relative_to(repo)),
        "kernel_sha256": sha256(KERNEL_PATH),
        "mcprofiler_version_file": version_file.read_text(encoding="utf-8", errors="replace").strip(),
        "roofs": roofs,
        "points": points,
    }
    JSON_PATH.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    write_readme(points, roofs, manifest)
    print(json.dumps({"event": "ROOFLINE_SUMMARY_DONE", "points": len(points), "roofs": roofs}, sort_keys=True))


if __name__ == "__main__":
    main()
