#!/usr/bin/env python3
"""Finalize the accepted v036 MoE evidence package on sc-16g."""

import hashlib
import json
import re
import shutil
import statistics
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v036_step2_odd_b0_tail_async_sc-16g"
PARENT_ID = "v034_step2_next_even_b0_async_sc-16g"
PARENT_COMMIT = "b289fb0dfd074ca8b30daf1be40088e2104485af"
SOURCE = Path("/tmp/v036_candidate_specialized.py")
ROOTS = ["moe-roofline", "restart-experiments", "restart-rep", "restart-scripts", "restart-submission"]


def sha256(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def write(path, content):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content.rstrip() + "\n", encoding="utf-8")


def copy_file(source, destination):
    source, destination = Path(source), Path(destination)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, destination)


def copy_tree(source, destination):
    source, destination = Path(source), Path(destination)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(source, destination)


def flatten_report(path):
    data = json.loads(Path(path).read_text(encoding="utf-8"))
    return {entry["name"]: entry["value"] for section in data.values() for entry in section}


def number(value):
    if isinstance(value, (int, float)):
        return float(value)
    return float(value.split("(", 1)[0].replace(",", "").replace("%", "").replace("byte", ""))


def pct(parent, candidate):
    return (candidate / parent - 1.0) * 100.0


def main():
    paths = {root: MOE / root / ID for root in ROOTS}
    existing = [str(path) for path in paths.values() if path.exists()]
    if existing:
        raise SystemExit("refusing to overwrite existing roots:\n" + "\n".join(existing))
    for path in paths.values():
        path.mkdir(parents=True)

    roof = paths["moe-roofline"]
    exp = paths["restart-experiments"]
    rep = paths["restart-rep"]
    scripts = paths["restart-scripts"]
    submission_dir = paths["restart-submission"]

    submission = submission_dir / "submission.py"
    copy_file(SOURCE, submission)
    source_hash = sha256(submission)
    write(submission_dir / "submission.sha256", f"{source_hash}  submission.py")

    validator = MOE / "restart-scripts" / PARENT_ID / "validate_oj_submission.py"
    validation = subprocess.run(
        ["/opt/conda/bin/python", str(validator), str(submission)],
        cwd=REPO, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, check=False,
    )
    if validation.returncode:
        raise RuntimeError(validation.stdout)
    write(submission_dir / "oj_import_validation.txt", validation.stdout)

    write(rep / ".gitattributes", """*.bc binary
*.mcfb binary
*.bin binary
*.elf binary
*.pdf binary
*.png binary
codegen/**/*.cpp -text
profiler/**/*.txt -text
""")
    write(roof / ".gitattributes", "*.png binary\n*.pdf binary\n*.bc binary\n*.elf binary")

    copy_file(submission, exp / f"{ID}_custom_fusedmoe.py")
    probes = {
        "/tmp/v035_hypothesis.md": "v035_barrier_removal_hypothesis.md",
        "/tmp/v035_candidate_row3_cta_fence.py": "v035_barrier_removal_candidate.py",
        "/tmp/v035_pair_case1.log": "v035_barrier_removal_pair7.log",
        "/tmp/v035_codegen.log": "v035_barrier_removal_codegen.log",
        "/tmp/v035_isa.log": "v035_barrier_removal_isa.log",
        "/tmp/v035_stale_weight_diagnosis.py": "v035_odd_b0_band_diagnosis.py",
        "/tmp/v035_stale_k1.log": "v035_odd_b0_k1_correlation.log",
        "/tmp/v035_stale_k1_bands.log": "v035_odd_b0_k1_band_correlation.log",
        "/tmp/v036_hypothesis.md": "v036_hypothesis.md",
        "/tmp/v036_pair_case1.log": "v036_unspecialized_case1_pair7.log",
        "/tmp/v036_pair_case2.log": "v036_unspecialized_case2_pair7.log",
        "/tmp/v036_pair_case3.log": "v036_unspecialized_case3_pair7.log",
        "/tmp/v036_all_case_gate.log": "v036_initial_all_case_gate.log",
        "/tmp/v036_candidate_specialized.py": "v036_final_specialized_candidate.py",
    }
    for source, name in probes.items():
        if Path(source).is_file():
            copy_file(source, exp / "probes" / name)

    patch_path = exp / f"{ID}.patch"
    with patch_path.open("w", encoding="utf-8") as stream:
        subprocess.run(
            ["git", "diff", "--no-index", "--", str(MOE / "restart-submission" / PARENT_ID / "submission.py"), str(submission)],
            cwd=REPO, text=True, stdout=stream, check=False,
        )

    write(exp / f"{ID}_experiment.md", f"""# v036 Step2 odd-B0 tail async

## 假设

v034 已把 Step2 的 next-even B0 搬运与 odd-B1 MMA 重叠，但 odd-B0 仍是四个同步 16-byte row batch。v034 的 full odd-B0 async 会产生约 11.8% 错误，因此本轮没有盲目重试，而是先按 K tile 与输出子带定位不安全范围，再只异步化被证明正确的部分。

## 底层定位

- odd K tile 的错误集中在每个逻辑 B0 128-wide half 的前 32 输出列；32:64 近似正确，64:128 完全正确。
- 相关性排除“读到了相邻 K tile”：错误输出与当前正确 K tile 仍有约 0.752 的整体相关性，而与前后 K tile 近零相关。
- 因此 `row_batch_1 == 0` 保留同步 copy；`row_batch_1 == 1..3` 使用 16-byte async copy，并在当前 even-B1 MMA 后等待三个 token。
- 该路径只对 OJ Case1（16 experts, hidden=2048, intermediate=8192）启用。Case2/3 lowering 后 device C++ 与 v034 字节级相同。

## 失败但有价值的 v035

v035 删除四个显式 token wait 后仍正确，汇编 barrier-like 站点减少，但 7 轮 paired 中位仅 -0.0421%，且出现一轮回退，说明这些 wait 已被随后的 CTA barrier 覆盖、不是关键路径。因此拒绝收版，继续下钻 odd-B0 数据子带。

## 最终结果

最终源三配置正确，OJ import allowlist 通过。Case1 七轮 AB/BA 7/7 获胜，paired 中位 -0.2107%；mcTracer 将收益定位到 Step2，paired 中位 -1.5201%，三轮全胜。Step2 MT registers 234→218，ST=52、private=0、static max 2 waves/PEU 不变。Case2/3 设备代码 SHA 分别保持 `94ab5e1c...0280` 与 `6c21d4b3...9a1b`。

接受为新的 dorm 最优版本。submission SHA-256：`{source_hash}`。
""")

    correctness = {
        "/tmp/v036_correctness.log": "three_oj_shapes_reference.log",
        "/tmp/v036_case1_gate.log": "case1_initial_gate.log",
        "/tmp/v036_all_case_gate.log": "initial_all_case_gate.log",
    }
    for source, name in correctness.items():
        if Path(source).is_file():
            copy_file(source, rep / "correctness" / name)
    benchmarks = {
        "/tmp/v036_final_pair_case1.log": "v036_vs_v034_case1_pair7_final.log",
        "/tmp/v036_oj_exact_w20_r100.log": "oj_exact_w20_r100.log",
        "/tmp/v036_official_functional_0.log": "official_functional_0.log",
        "/tmp/v036_official_functional_1.log": "official_functional_1.log",
        "/tmp/v036_official_performance_0.log": "official_performance_0.log",
        "/tmp/v036_official_performance_1.log": "official_performance_1.log",
    }
    for source, name in benchmarks.items():
        copy_file(source, rep / "benchmark" / name)

    copy_tree(MOE / "v036_mctracer_tmp" / "pair3", rep / "profiler" / "mctracer" / "raw")
    tracer_summary = rep / "profiler" / "mctracer" / "raw" / "v036_vs_v034_case1_mctracer_summary.json"
    copy_file(tracer_summary, rep / "profiler" / "mctracer" / "summary.json")
    copy_tree(MOE / "v036_mcprof_tmp", rep / "profiler" / "mcprofiler" / "raw")

    broad_paths = {
        "v034": rep / "profiler" / "mcprofiler" / "raw" / "baseline_v034_case1_step2_targeted" / "mcprofiler_output" / "report.txt.json",
        "v036": rep / "profiler" / "mcprofiler" / "raw" / "candidate_v036_case1_step2_targeted" / "mcprofiler_output" / "report.txt.json",
    }
    broad = {tag: flatten_report(path) for tag, path in broad_paths.items()}
    duty = {
        tag: flatten_report(rep / "profiler" / "mcprofiler" / "raw" / f"duty_repro_{tag}_case1_step2" / "mcprofiler_output" / "report.txt.json")
        for tag in ("v034", "v036")
    }
    isu0, isu1 = broad["v034"]["ISU stall cycles layout"]["data"], broad["v036"]["ISU stall cycles layout"]["data"]
    vl10, vl11 = broad["v034"]["VL1 partition stall cycles layout"]["data"], broad["v036"]["VL1 partition stall cycles layout"]["data"]
    profiler_summary = {
        "authority": "diagnostic replay only; clean benchmark and mcTracer own elapsed time",
        "broad_replay": {
            "dispatched_waves": {tag: number(broad[tag]["Dispatched waves"]) for tag in broad},
            "achieved_waves": {tag: number(broad[tag]["Achieved waves"]) for tag in broad},
            "ap_active_cycles": {tag: number(broad[tag]["AP active cycles"]) for tag in broad},
            "ap_active_change_percent": pct(number(broad["v034"]["AP active cycles"]), number(broad["v036"]["AP active cycles"])),
            "wsm_stall": {"v034": isu0["wsm_stall"], "v036": isu1["wsm_stall"], "change_percent": pct(isu0["wsm_stall"], isu1["wsm_stall"])},
            "vls_pipeline_stall": {"v034": isu0["vls_pipeline_stall"], "v036": isu1["vls_pipeline_stall"], "change_percent": pct(isu0["vls_pipeline_stall"], isu1["vls_pipeline_stall"])},
            "vl1_partition_stall": {key: {"v034": vl10[key], "v036": vl11[key], "change_percent": pct(vl10[key], vl11[key])} for key in sorted(vl10)},
            "private_read": {tag: broad[tag]["Private Read Instructions"] for tag in broad},
            "private_write": {tag: broad[tag]["Private Write Instructions"] for tag in broad},
        },
        "replay_anomaly": {
            "broad_v036_achieved_gt_dispatched": number(broad["v036"]["Achieved waves"]) > number(broad["v036"]["Dispatched waves"]),
            "broad_v036_mte_duty": broad["v036"]["AP MTE Duty ratio"],
            "split_replay": {tag: {key: duty[tag][key] for key in ["Achieved waves", "Dispatched waves", "AP active cycles", "AP MTE Duty ratio", "AP MMA Duty ratio"]} for tag in duty},
            "decision": "Do not quantitatively compare derived duty/latency across versions; multi-pass replay is internally inconsistent for this async-copy kernel.",
        },
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(profiler_summary, ensure_ascii=False, indent=2))

    mx_source = Path("/tmp/v036_mxsmi_package_counters") / ID / "profiler" / "mxsmi"
    copy_tree(mx_source, rep / "profiler" / "mxsmi")
    sample_path = next((rep / "profiler" / "mxsmi").glob("*hbm_ap_samples.txt"))
    samples = []
    for block in sample_path.read_text(encoding="utf-8").split("sample_time_utc=")[1:]:
        match = re.search(r"throughput\s*:\s*(\d+) MBytes/s", block)
        ap = []
        for line in block.splitlines():
            if re.match(r"dpc\d+\s", line):
                ap.extend(int(value) for value in line.split()[1:])
        if match and ap:
            samples.append({"hbm_mbytes_s": int(match.group(1)), "ap": ap})
    steady = [row for row in samples if row["hbm_mbytes_s"] > 100000 and statistics.median(row["ap"]) >= 90]
    hbm = [row["hbm_mbytes_s"] for row in steady]
    mx_summary = {
        "all_sample_count": len(samples),
        "steady_selection": "HBM > 100000 MB/s and median AP >= 90%; startup/shutdown excluded",
        "steady_sample_count": len(steady),
        "steady_hbm_mbytes_s": hbm,
        "steady_hbm_median_mbytes_s": statistics.median(hbm),
        "steady_hbm_mean_mbytes_s": statistics.fmean(hbm),
        "steady_hbm_range_mbytes_s": [min(hbm), max(hbm)],
        "steady_ap_median_percent": [statistics.median(row["ap"]) for row in steady],
        "steady_nonzero_ap_entries": [sum(value > 0 for value in row["ap"]) for row in steady],
        "caveat": "workload-observed physical counters; not an HBM bandwidth roof",
    }
    write(rep / "profiler" / "mxsmi" / "summary.json", json.dumps(mx_summary, indent=2))

    copy_tree(Path("/tmp/v036_codegen_compare"), rep / "codegen" / "compare")
    copy_tree(Path("/tmp/v036_isa_v034"), rep / "codegen" / "isa_v034")
    copy_tree(Path("/tmp/v036_isa_v036"), rep / "codegen" / "isa_v036")
    codegen_summary = {
        "case1": {
            "v034_sha256": sha256(Path("/tmp/v036_codegen_compare/v034_case1_generated_device.cpp")),
            "v036_sha256": sha256(Path("/tmp/v036_codegen_compare/v036_case1_generated_device.cpp")),
            "byte_identical": False,
            "step2_resources": {"v034": "234 MT / 52 ST / 2 waves/PEU", "v036": "218 MT / 52 ST / 2 waves/PEU"},
        },
        "case2": {"sha256": sha256(Path("/tmp/v036_codegen_compare/v034_case2_generated_device.cpp")), "byte_identical": True},
        "case3": {"sha256": sha256(Path("/tmp/v036_codegen_compare/v034_case3_generated_device.cpp")), "byte_identical": True},
        "isa_static_pattern_counts": {
            "caveat": "static assembly text counts, not dynamic instructions",
            "v034": {"mma": 512, "bsm": 155, "barrier_like": 22, "wait": 2, "ldg": 58, "stg": 57},
            "v036": {"mma": 512, "bsm": 158, "barrier_like": 25, "wait": 2, "ldg": 58, "stg": 57},
        },
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, indent=2))

    write(roof / "v036_schedule_roofline_points.csv", """label,ai_flop_per_byte,tflops
v034 Case1 Step2,84.45360824742268,102.06671330798478
v036 Case1 Step2,84.45360824742268,103.5897051710831
""")

    common = MOE / "restart-scripts" / PARENT_ID
    for name in [
        "collect_mxsmi.sh", "extract_metax_isa.sh", "official_submission_benchmark.py",
        "oj_submission_benchmark.py", "profile_submission.py", "render_roofline.py",
        "summarize_iteration.py", "validate_iteration.py", "validate_oj_submission.py",
        "validate_submission.py",
    ]:
        copy_file(common / name, scripts / name)
    script_sources = {
        "/root/moe_runs/v031_pair_benchmark.py": "v036_pair_benchmark.py",
        "/tmp/v036_capture_codegen.py": "v036_capture_codegen.py",
        "/tmp/v036_run_paired_mctracer.py": "v036_run_paired_mctracer.py",
        "/tmp/v036_run_mcprofiler_submission.sh": "v036_run_mcprofiler_submission.sh",
        "/tmp/v036_run_mcprofiler_metrics.sh": "v036_run_mcprofiler_metrics.sh",
        __file__: "v036_finalize_iteration.py",
        "/tmp/v035_stale_weight_diagnosis.py": "v035_stale_weight_diagnosis.py",
    }
    for source, name in script_sources.items():
        copy_file(source, scripts / name)

    subprocess.run([
        "/opt/conda/bin/python", str(scripts / "render_roofline.py"),
        "--points", str(roof / "v036_schedule_roofline_points.csv"),
        "--output-prefix", str(roof / "v036_case1_step2_schedule_roofline"),
        "--compute-roof-tflops", "479.232",
        "--bandwidth-roof", "sc16_measured_conservative=1400",
        "--bandwidth-roof", "physical_theoretical=1843.2",
        "--bandwidth-roof", "linear_25pct_sensitivity=460.8",
        "--title", "v036 Case1 Step2 schedule-aware Roofline (sc-16g)",
    ], cwd=REPO, check=True)
    write(roof / "native" / "UNAVAILABLE.md", """# Native Roofline not used

The broad mcProfiler replay was internally inconsistent for v036 (`Achieved waves > Dispatched waves`, MTE duty >100%). Raw outputs are archived under restart-rep, but no misleading native point is promoted. The common-work schedule model and mcTracer elapsed time own this Roofline comparison.
""")
    write(roof / "v036_roofline_readme.md", """# v036 Roofline notes

- Common work: 103,079,215,104 FLOPs and 1,220,542,464 bytes; AI=84.453608 FLOP/B.
- mcTracer Step2 medians: v034 1.009920 ms, v036 0.995072 ms.
- Throughput: 102.0667→103.5897 TFLOP/s; schedule traffic rate: 1208.55→1226.59 GB/s.
- Under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s bandwidth sensitivities, both points remain on the memory side.
- The 460.8 GB/s line is only a linear-25%-slice sensitivity, not asserted hardware truth.
- mx-smi observed 794,708 MB/s median during this workload; it is not used as the bandwidth roof.
""")

    report = f"""# v036 实验报告：Step2 odd-B0 tail async

版本：`{ID}`  
父版本：`{PARENT_ID}`（`{PARENT_COMMIT}`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，作为新的 `dorm` 最优基线。  
OJ submission SHA-256：`{source_hash}`

## 结论

v036 只对 Case1 启用 Step2 odd-B0 的安全子带异步化：batch0 保持同步，batch1..3 在当前 even-B1 MMA 前发射 async copy，并在 MMA 后等待。三 OJ shape 全部正确；Case1 最终七轮 AB/BA 7/7 获胜，paired 中位 -0.2107%（3.073769→3.067156 ms）。Case2/3 生成设备代码与 v034 字节级完全一致。

## 时间与资源

mcTracer 三轮把收益定位到 Step2：1.009920→0.995072 ms，paired 中位 -1.5201%，3/3 获胜；Step1 +0.2232% 为未改代码的采样噪声。Step2 registers 234→218 MT，ST=52、dynamic shared=32768 B、private=0、static max 2 waves/PEU 不变。

Exact OJ W20/R100 为 3.067187 / 4.943739 / 10.638234 ms，三 case max abs error 均为 0.001953125、padding 为 0。官方 functional 2/2 通过；非 OJ fallback performance 为 86.762021 / 28.357205 ms。

## C++ 与汇编

Case2/3 device C++ SHA-256 分别为 `94ab5e1c6ba70106afaba1195d34d126f51062a66d888134838d0baeddaa0280` 与 `6c21d4b369758fca20a8cc345bd416ce8a166ccaed4efd78aeb53abc7b759a1b`，两版完全相同。Case1 最终 MetaX ISA 静态 MMA/LDG/STG 保持 512/58/57；BSM 155→158、barrier-like 22→25，对应三个新增 async transaction。静态文本计数不代表动态执行次数。

## mcProfiler 诚实性检查

Broad replay 的 dispatched waves 两版均 1,626,148，但 v036 出现 achieved=2,778,148 与 MTE duty=139.33%，物理上不自洽。拆分 metric 复采后 achieved=dispatched=2,778,148，但 AP active 与 duty 随 metric 分组剧烈漂移。因此不使用 duty/latency 作跨版本定量结论。原始数据完整归档；broad replay 中 AP active -0.1648%、WSM stall -6.3764%、VL1 四分区 stall 均下降，只作为方向性诊断，不替代 clean benchmark/mcTracer。

## mx-smi 与 Roofline

5000 次 Case1 同步采样平均 3.066868 ms，9/31 稳态样本 HBM 中位 794,708 MB/s，范围 792,755–796,476 MB/s；104/104 AP entry 活跃，AP 中位约 95%。该值是 workload-observed，不是带宽 roof。

共同 schedule 模型 AI=84.453608 FLOP/B。按 mcTracer Step2 中位，v034/v036 为 102.0667→103.5897 TFLOP/s；在 479.232 TFLOP/s compute roof 与 1400/1843.2 GB/s 带宽 sensitivity 下仍在 memory side。

## 决策

接受 v036。收益小但在 clean paired 与 mcTracer 中方向一致、全组获胜；底层资源还减少 16 MT registers，并通过配置门控保证 Case2/3 不回退。下一轮可继续研究为什么 odd-B0 batch0 的 async copy 丢失，而不应直接恢复 full odd-B0 async。
"""
    write(rep / f"{ID}_report.md", report)

    write(scripts / f"{ID}_scripts.md", """# v036 scripts

- `v036_pair_benchmark.py`: exact submission Case1 AB/BA benchmark.
- `validate_submission.py`: three OJ-shape reference and padding correctness.
- `validate_oj_submission.py`: OJ import allowlist gate.
- `v036_run_paired_mctracer.py`: paired Step1/Step2 trace capture.
- `v036_run_mcprofiler_submission.sh`: broad targeted replay driver.
- `v036_run_mcprofiler_metrics.sh`: reduced metric-set replay used to audit profiler consistency.
- `v036_capture_codegen.py`: three-case device C++ and resource capture.
- `extract_metax_isa.sh`: final xcore1000 MetaX ISA extraction.
- `collect_mxsmi.sh`: workload-concurrent HBM/AP sampling; requires explicit counter command.
- `v035_stale_weight_diagnosis.py`: odd-B0 K-tile and output-band correlation diagnosis.
- `render_roofline.py`: common-work schedule-aware Roofline rendering.
- `v036_finalize_iteration.py`: creates this five-root package from frozen evidence.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict package gates.
""")

    source_files = [
        submission, MOE / "restart-submission" / PARENT_ID / "submission.py",
        MOE / "fusedmoe_benchmark.py", MOE / "oj_benchmark.py",
        scripts / "v036_pair_benchmark.py", scripts / "oj_submission_benchmark.py",
    ]
    write(rep / f"{ID}_source_hashes.sha256", "\n".join(f"{sha256(path)}  {path.relative_to(REPO)}" for path in source_files))

    manifest = {
        "iteration_id": ID,
        "status": "accepted",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "machine": "sc-16g",
        "submission_sha256": source_hash,
        "decision": "accepted-new-best",
        "acceptance_authority": "Case1 clean AB/BA paired benchmark plus paired mcTracer on exact final OJ submission; Case2/3 byte-identical device code",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "primary_change": "Case1-only Step2 odd-B0 batches 1..3 async prefetch; batch0 remains synchronous",
        "primary_result": {
            "case1_pair_median_change_percent": -0.21069440462045952,
            "case1_pair_wins": "7/7",
            "mctracer_step2_median_change_percent": -1.5201418799087985,
            "mctracer_step2_wins": "3/3",
            "case2_case3_codegen": "byte-identical to v034",
        },
        "resource_result": "Case1 Step2 234->218 MT, 52 ST, 0 private, 32 KiB dynamic shared, 2 static waves/PEU",
        "profiler_caveat": "derived duty/latency metrics excluded from cross-version quantitative verdict due internally inconsistent multi-pass replay",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "artifact_roots": ROOTS,
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    write(rep / f"{ID}_manifest.json", manifest_text)
    write(exp / f"{ID}_manifest.json", manifest_text)
    write(roof / f"{ID}_manifest.json", manifest_text)
    print(json.dumps({"iteration_id": ID, "submission_sha256": source_hash, "status": "finalized"}, indent=2))


if __name__ == "__main__":
    main()
