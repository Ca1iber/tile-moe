#!/usr/bin/env python3
"""Create the accepted v034 evidence package from frozen sc-16g artifacts."""

import hashlib
import json
import re
import shutil
import statistics
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v034_step2_next_even_b0_async_sc-16g"
PARENT_ID = "v033_step2_case1_swap_shared_halves_sc-16g"
PARENT_COMMIT = "faf5b865283aa404e4f86030c04d4059bd3e2471"
SOURCE = Path("/tmp/v034_candidate_full_async_v033_layout.py")
ROOTS = ["moe-roofline", "restart-experiments", "restart-rep", "restart-scripts", "restart-submission"]


def sha256(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def write(path, content):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    if not content.endswith("\n"):
        content += "\n"
    path.write_text(content, encoding="utf-8")


def copy_file(source, destination):
    source = Path(source)
    destination = Path(destination)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, destination)


def copy_tree(source, destination):
    source = Path(source)
    destination = Path(destination)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(source, destination)


def flatten_report(path):
    data = json.loads(Path(path).read_text(encoding="utf-8"))
    return {entry["name"]: entry["value"] for section in data.values() for entry in section}


def number(value):
    if isinstance(value, (int, float)):
        return float(value)
    return float(value.split("(", 1)[0].replace(",", "").replace("%", "").replace("byte", ""))


def change(parent, candidate):
    return (candidate / parent - 1.0) * 100.0


def main():
    paths = {root: MOE / root / ID for root in ROOTS}
    existing = [str(path) for path in paths.values() if path.exists()]
    if existing:
        raise SystemExit("refusing to overwrite existing v034 roots:\n" + "\n".join(existing))
    for path in paths.values():
        path.mkdir(parents=True)

    roof = paths["moe-roofline"]
    exp = paths["restart-experiments"]
    rep = paths["restart-rep"]
    scripts = paths["restart-scripts"]
    submission_dir = paths["restart-submission"]

    # Freeze the exact OJ source before copying any derived evidence.
    submission = submission_dir / "submission.py"
    copy_file(SOURCE, submission)
    source_hash = sha256(submission)
    write(submission_dir / "submission.sha256", f"{source_hash}  submission.py")

    oj_validator = MOE / "restart-scripts" / PARENT_ID / "validate_oj_submission.py"
    oj_result = subprocess.run(
        ["/opt/conda/bin/python", str(oj_validator), str(submission)],
        cwd=REPO,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        check=False,
    )
    if oj_result.returncode:
        raise RuntimeError(oj_result.stdout)
    write(submission_dir / "oj_import_validation.txt", oj_result.stdout)

    write(
        rep / ".gitattributes",
        """*.bc binary
*.mcfb binary
*.bin binary
*.elf binary
*.pdf binary
*.png binary
codegen/v*/*_generated_device.cpp -text
profiler/mcprofiler/raw/**/1_kernel_kernel_1.txt -text
profiler/mcprofiler/raw/**/report.txt -text
profiler/mxsmi/*.txt -text
""",
    )
    write(rep / "codegen" / ".gitattributes", "*.bc binary\n*.mcfb binary\n*.bin binary\n*.elf binary\n*.pdf binary\n*.png binary\n")
    write(
        roof / ".gitattributes",
        """*.bc binary
*.mcfb binary
*.bin binary
*.elf binary
*.pdf binary
*.png binary
native/**/1_kernel_kernel_1.txt -text
native/**/report.txt -text
""",
    )

    # Experiment snapshots and all probes used to localize the unsafe odd-B0 path.
    copy_file(submission, exp / f"{ID}_custom_fusedmoe.py")
    probes = {
        "/tmp/v034_hypothesis.md": "v034_hypothesis.md",
        "/tmp/v034_manual_async_half_matrix.py": "v034_manual_async_half_matrix.py",
        "/tmp/v034_manual_async_strided_matrix.py": "v034_manual_async_strided_matrix.py",
        "/tmp/v034_moe_error_map.py": "v034_moe_error_map.py",
        "/tmp/v034_k_tile_isolation.py": "v034_k_tile_isolation.py",
        "/tmp/v034_probe_b0_async_immediate_wait.py": "v034_probe_b0_async_immediate_wait.py",
        "/tmp/v034_probe_b0_inline_async_wait.py": "v034_probe_b0_inline_async_wait.py",
        "/tmp/v034_probe_swap_accumulators.py": "v034_probe_swap_accumulators.py",
        "/tmp/v034_probe_b0_async8_v033_layout.py": "v034_probe_b0_async8_v033_layout.py",
        "/tmp/v034_candidate_full_async_v033_layout.py": "v034_final_row3_only_async.py",
        "/root/moe_runs/v033a_case1_full_half_async.py": "v034_probe_full_half_async.py",
        "/root/moe_runs/v033b_case1_full_half_async_disjoint_tokens.py": "v034_probe_disjoint_tokens.py",
        "/root/moe_runs/v033d_case1_b0_async_only.py": "v034_probe_b0_async_only.py",
    }
    for source, name in probes.items():
        copy_file(source, exp / "probes" / name)

    patch_path = exp / f"{ID}.patch"
    with patch_path.open("w", encoding="utf-8") as stream:
        subprocess.run(
            [
                "git",
                "diff",
                "--no-index",
                "--",
                str(MOE / "restart-submission" / PARENT_ID / "submission.py"),
                str(submission),
            ],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )

    experiment = f"""# v034 Step2 next-even B0 异步预取

## 问题与假设

v033 的 half-B Step2 已将 B1 异步搬运，但每个 K-pair 中 B0 仍同步加载。最初假设是把 B0 也异步化，使当前 B1 MMA 与下一块 B0 global-to-shared 搬运重叠。完整 B0 async 的 Case1 输出约 11.8% 错误，因此没有在第一次负结果后换方向，而是继续下钻到地址、token、shared half、K tile、生成 C++ 与最终汇编。

## 机制隔离

- 手写 16-byte async copy：两个 source half、两个 destination half 全部通过。
- 带 MoE `LD=8192` 行跨度及 col=0/64/4096/8128：16/16 通过。
- token 分离、immediate wait、inline issue+wait：仍不能修复 full B0 async。
- 错误图：仅每个 256-wide 输出 tile 的前 128 列错误，后 128 列完全正确；错误跟随逻辑 B0，不跟随 accumulator 变量。
- K-tile 隔离：k=0/2/4/64/126 完全正确，k=1/3/5/63/127 失败。这说明 `row_batch_1` 的 odd-B0 async 路径不安全，而 `row_batch_3` 的 next-even B0 async 路径是正确的。
- 8-byte 拆分并非数值失败，而是 MXCC 后端拒绝：`Unexpected memcpy_async usage scenarios`。

## 最终单变量改动

保留 `row_batch_1 / odd-B0` 的同步 16-byte copy；只把有 K-tile 正确性证据的 `row_batch_3 / next-even-B0` 改成 16-byte async copy。copy 在当前 odd-B1 MMA 前发射，四个 token 在 MMA 后、CTA shared reuse barrier 前等待。最后一次 K-pair 保留条件保护，不等待未发射 token。

数学顺序、global 地址、tile 形状、MMA 数、CTA barrier 数、32 KiB shared allocation 和输出布局均不变。v033→v034 生成 C++ 只有一个 sync→async call 和一个四 token wait loop。

## 结果

三组固定 OJ case 正确；OJ import allowlist 通过。七轮 AB/BA 配对中，Case1/2/3 的 paired 中位变化分别为 -1.2838% / -1.0544% / -0.9772%，全部 7/7 获胜；Case1 独立复现为 -1.2829%，仍 7/7 获胜。mcTracer 将收益定位到 Step2（paired 中位 -3.6029%），Step1 为 -0.0124% 噪声。

接受为新的 dorm 最优版本，submission SHA-256 为 `{source_hash}`。
"""
    write(exp / f"{ID}_experiment.md", experiment)

    # Correctness and benchmark evidence.
    for source, name in {
        "/tmp/v034_correctness_all.log": "three_shape_parent_equality.log",
        "/tmp/v034_row3_correctness_case1.log": "case1_initial_gate.log",
    }.items():
        copy_file(source, rep / "correctness" / name)
    for source, name in {
        "/tmp/v034_pair_case1.log": "v034_vs_v033_case1_pair7.log",
        "/tmp/v034_pair_case1_repro2.log": "v034_vs_v033_case1_pair7_repro2.log",
        "/tmp/v034_pair_case2.log": "v034_vs_v033_case2_pair7.log",
        "/tmp/v034_pair_case3.log": "v034_vs_v033_case3_pair7.log",
        "/tmp/v034_oj_exact_w20_r100.log": "oj_exact_w20_r100.log",
        "/tmp/v034_official_functional_0.log": "official_functional_0.log",
        "/tmp/v034_official_functional_1.log": "official_functional_1.log",
        "/tmp/v034_official_performance_0.log": "official_performance_0.log",
        "/tmp/v034_official_performance_1.log": "official_performance_1.log",
    }.items():
        copy_file(source, rep / "benchmark" / name)

    # mcTracer, mcProfiler, and mx-smi raw evidence.
    copy_tree(MOE / "v034_mctracer_tmp", rep / "profiler" / "mctracer" / "raw")
    tracer_summary = rep / "profiler" / "mctracer" / "raw" / "v034_vs_v033_case1_mctracer_summary.json"
    copy_file(tracer_summary, rep / "profiler" / "mctracer" / "summary.json")
    copy_tree(MOE / "v034_mcprof_tmp", rep / "profiler" / "mcprofiler" / "raw")
    copy_tree(Path("/tmp") / ID / "profiler" / "mxsmi", rep / "profiler" / "mxsmi")

    parent_prof = flatten_report(
        rep / "profiler" / "mcprofiler" / "raw" / "baseline_v033_case1_step2_targeted" / "mcprofiler_output" / "report.txt.json"
    )
    candidate_prof = flatten_report(
        rep / "profiler" / "mcprofiler" / "raw" / "candidate_v034_case1_step2_targeted" / "mcprofiler_output" / "report.txt.json"
    )
    parent_isu = parent_prof["ISU stall cycles layout"]["data"]
    candidate_isu = candidate_prof["ISU stall cycles layout"]["data"]
    parent_vl1 = parent_prof["VL1 partition stall cycles layout"]["data"]
    candidate_vl1 = candidate_prof["VL1 partition stall cycles layout"]["data"]
    mcprof_summary = {
        "authority": "directional replay counters; clean benchmark and mcTracer own elapsed time",
        "replay_identity": {
            "v033_achieved_waves": number(parent_prof["Achieved waves"]),
            "v034_achieved_waves": number(candidate_prof["Achieved waves"]),
            "v033_dispatched_waves": number(parent_prof["Dispatched waves"]),
            "v034_dispatched_waves": number(candidate_prof["Dispatched waves"]),
            "raw_accumulator_comparable": number(parent_prof["Dispatched waves"]) == number(candidate_prof["Dispatched waves"]),
        },
        "ap_active_cycles": {
            "v033": number(parent_prof["AP active cycles"]),
            "v034": number(candidate_prof["AP active cycles"]),
            "change_percent": change(number(parent_prof["AP active cycles"]), number(candidate_prof["AP active cycles"])),
        },
        "wsm_stall": {
            "v033": parent_isu["wsm_stall"],
            "v034": candidate_isu["wsm_stall"],
            "change_percent": change(parent_isu["wsm_stall"], candidate_isu["wsm_stall"]),
        },
        "vls_pipeline_stall": {
            "v033": parent_isu["vls_pipeline_stall"],
            "v034": candidate_isu["vls_pipeline_stall"],
            "change_percent": change(parent_isu["vls_pipeline_stall"], candidate_isu["vls_pipeline_stall"]),
        },
        "vl1_partition_stall": {
            key: {
                "v033": parent_vl1[key],
                "v034": candidate_vl1[key],
                "change_percent": change(parent_vl1[key], candidate_vl1[key]),
            }
            for key in sorted(parent_vl1)
        },
        "average_stage_latency": {
            "v033": number(parent_prof["average latency of all stages per instruction"]),
            "v034": number(candidate_prof["average latency of all stages per instruction"]),
            "change_percent": change(
                number(parent_prof["average latency of all stages per instruction"]),
                number(candidate_prof["average latency of all stages per instruction"]),
            ),
        },
        "global_read_bytes_replay_proxy": {
            "v033": parent_prof["Global Memory Read bytes"],
            "v034": candidate_prof["Global Memory Read bytes"],
        },
        "shared_memory_access_efficiency": {
            "v033": parent_prof["shared memory access efficiency"],
            "v034": candidate_prof["shared memory access efficiency"],
        },
        "private_read_instructions": {"v033": parent_prof["Private Read Instructions"], "v034": candidate_prof["Private Read Instructions"]},
        "private_write_instructions": {"v033": parent_prof["Private Write Instructions"], "v034": candidate_prof["Private Write Instructions"]},
        "mma_duty": {"v033": parent_prof["AP MMA Duty ratio"], "v034": candidate_prof["AP MMA Duty ratio"]},
        "mte_duty": {"v033": parent_prof["AP MTE Duty ratio"], "v034": candidate_prof["AP MTE Duty ratio"]},
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(mcprof_summary, ensure_ascii=False, indent=2))

    sample_path = rep / "profiler" / "mxsmi" / f"{ID}_hbm_ap_samples.txt"
    samples = []
    for block in sample_path.read_text(encoding="utf-8").split("sample_time_utc=")[1:]:
        match = re.search(r"throughput\s*:\s*(\d+) MBytes/s", block)
        ap_values = []
        for line in block.splitlines():
            if re.match(r"dpc\d+\s", line):
                ap_values.extend(int(value) for value in line.split()[1:])
        if match and ap_values:
            samples.append({"hbm_mbytes_s": int(match.group(1)), "ap": ap_values})
    steady = [sample for sample in samples if sample["hbm_mbytes_s"] > 100000 and statistics.median(sample["ap"]) >= 90]
    hbm = [sample["hbm_mbytes_s"] for sample in steady]
    mxsmi_summary = {
        "all_sample_count": len(samples),
        "steady_selection": "HBM > 100000 MB/s and median AP >= 90%; startup/shutdown excluded",
        "steady_sample_count": len(steady),
        "steady_hbm_mbytes_s": hbm,
        "steady_hbm_median_mbytes_s": statistics.median(hbm),
        "steady_hbm_mean_mbytes_s": statistics.fmean(hbm),
        "steady_hbm_range_mbytes_s": [min(hbm), max(hbm)],
        "steady_ap_median_percent": [statistics.median(sample["ap"]) for sample in steady],
        "steady_nonzero_ap_entries": [sum(value > 0 for value in sample["ap"]) for sample in steady],
        "caveat": "workload-observed physical counters; not an HBM bandwidth roof",
    }
    write(rep / "profiler" / "mxsmi" / "summary.json", json.dumps(mxsmi_summary, ensure_ascii=False, indent=2))

    # Lowered C++, resource report, and final xcore1000 ISA.
    copy_tree(Path("/tmp/v034_codegen_capture"), rep / "codegen" / "v034")
    copy_tree(Path("/tmp/v034_isa"), rep / "codegen" / "isa_v034")
    copy_tree(MOE / "restart-rep" / PARENT_ID / "codegen" / "v033", rep / "codegen" / "v033")
    copy_tree(MOE / "restart-rep" / PARENT_ID / "codegen" / "isa_v033", rep / "codegen" / "isa_v033")
    isa_summary = {
        "caveat": "static assembly text-pattern counts, not dynamic executed instructions",
        "counts": {
            "v033": {"mma": 512, "bsm": 153, "barrier_like": 18, "wait": 2, "ldg": 58, "stg": 57},
            "v034": {"mma": 512, "bsm": 157, "barrier_like": 22, "wait": 2, "ldg": 58, "stg": 57},
        },
    }
    write(rep / "codegen" / "isa_static_pattern_summary.json", json.dumps(isa_summary, indent=2))

    # Native and common-model Roofline artifacts.
    copy_tree(MOE / "moe-roofline" / PARENT_ID / "native" / "v033", roof / "native" / "v033")
    copy_tree(
        rep / "profiler" / "mcprofiler" / "raw" / "candidate_v034_case1_step2_roofline" / "mcprofiler_output",
        roof / "native" / "v034",
    )
    points = """label,ai_flop_per_byte,tflops
v033 Case1 Step2,84.45360824742268,98.68950588235293
v034 Case1 Step2,84.45360824742268,102.40416683621567
"""
    write(roof / "v034_schedule_roofline_points.csv", points)

    # Archive the exact helpers used or inherited by the iteration.
    common = MOE / "restart-scripts" / PARENT_ID
    for name in [
        "collect_mxsmi.sh",
        "extract_metax_isa.sh",
        "official_submission_benchmark.py",
        "oj_submission_benchmark.py",
        "profile_submission.py",
        "render_roofline.py",
        "summarize_iteration.py",
        "validate_iteration.py",
        "validate_oj_submission.py",
        "validate_submission.py",
    ]:
        copy_file(common / name, scripts / name)
    copy_file(Path("/root/moe_runs/v031_pair_benchmark.py"), scripts / "v034_pair_benchmark.py")
    copy_file(common / "v033_capture_submission_codegen.py", scripts / "v034_capture_submission_codegen.py")
    copy_file(Path("/tmp/v034_run_paired_mctracer.py"), scripts / "v034_run_paired_mctracer.py")
    copy_file(Path("/tmp/v034_run_mcprofiler_submission.sh"), scripts / "v034_run_mcprofiler_submission.sh")
    copy_file(Path(__file__), scripts / "v034_finalize_iteration.py")
    copy_file(Path("/tmp/v034_k_tile_isolation.py"), scripts / "v034_k_tile_isolation.py")
    copy_file(Path("/tmp/v034_moe_error_map.py"), scripts / "v034_moe_error_map.py")

    render_command = [
        "/opt/conda/bin/python",
        str(scripts / "render_roofline.py"),
        "--points",
        str(roof / "v034_schedule_roofline_points.csv"),
        "--output-prefix",
        str(roof / "v034_case1_step2_schedule_roofline"),
        "--compute-roof-tflops",
        "479.232",
        "--bandwidth-roof",
        "sc16_measured_conservative=1400",
        "--bandwidth-roof",
        "physical_theoretical=1843.2",
        "--bandwidth-roof",
        "linear_25pct_sensitivity=460.8",
        "--title",
        "v034 Case1 Step2 schedule-aware Roofline (sc-16g)",
    ]
    subprocess.run(render_command, cwd=REPO, check=True)
    write(
        roof / "v034_roofline_readme.md",
        """# v034 Roofline notes

- `native/v033` and `native/v034` preserve mcProfiler native Roofline output; replay-specific native points do not own the version verdict.
- The common schedule model holds work constant at 103,079,215,104 FLOPs and 1,220,542,464 bytes, AI=84.453608 FLOP/B.
- mcTracer Step2 medians are 1.044480 ms (v033) and 1.006592 ms (v034), giving 98.6895 and 102.4042 TFLOP/s.
- Logical schedule traffic is 1168.56 and 1212.55 GB/s. This is a model, not the mx-smi physical-counter value.
- Under the declared 479.232 TFLOP/s compute roof and either 1400 or 1843.2 GB/s bandwidth sensitivity, both points remain on the memory side. The 460.8 GB/s linear-25%-slice line is retained only as a sensitivity bound, not asserted hardware truth.
""",
    )

    report = f"""# v034 实验报告：Step2 next-even B0 异步预取

版本：`{ID}`

父版本：`{PARENT_ID}`（`{PARENT_COMMIT}`）

平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）

状态：接受，作为新的 `dorm` 优化基线。
OJ submission SHA-256：`{source_hash}`

## 1. 结论

v034 只将 Step2 中 `row_batch_3 / next-even B0` 从同步 16-byte copy 改成异步 copy，并把四 token wait 放在当前 odd-B1 MMA 之后。odd-B0 保持同步。三组 OJ shape 全部正确，三组七轮 AB/BA 全部 7/7 获胜；独立 Case1 复现也 7/7 获胜。因此接受为新的 OJ-compliant 最优版本。

## 2. Benchmark

| Case | v033 中位数 (ms) | v034 中位数 (ms) | paired 中位变化 | 获胜 |
|---|---:|---:|---:|---:|
| Case1 | 3.112126 | 3.072417 | -1.2838% | 7/7 |
| Case1 独立复现 | 3.115878 | 3.076355 | -1.2829% | 7/7 |
| Case2 | 4.985418 | 4.932196 | -1.0544% | 7/7 |
| Case3 | 10.746919 | 10.638082 | -0.9772% | 7/7 |

Exact OJ W20/R100 为 3.074726 / 4.918525 / 10.643622 ms，三 case max abs error 均 0.001953125、padding error 为 0。与 v033 独立 exact-OJ 记录相比为 -1.2890% / -1.3500% / -0.9397%；接受判断仍以同进程配对为准。官方 functional 2/2 通过；performance fallback 为 86.882402 / 28.584607 ms，只用于非 OJ 特化 shape 的兼容性验证。

## 3. mcTracer 与资源

Case1 三轮 AB/BA mcTracer：Step1 paired 中位变化 -0.0124%，为噪声；Step2 paired 中位变化 -3.6029%，三轮全部更快。Step2 中位时间 1.044480→1.006592 ms。grid 保持 `8x24`；Step1/Step2 每线程寄存器保持 206/234，dynamic shared 均 32768 B，private memory 为 0。

编译资源保持 Step2 `234 MT / 52 ST registers`、0-byte stack、static max 2 waves/PEU，没有 spill 或 occupancy 损失。生成 C++ 的 MMA 与 `__syncthreads` 站点保持 8/8；async call 3→4、sync call 3→2、wait call 3→4。最终 MetaX 汇编静态 MMA/LDG/STG 保持 512/58/57；BSM 153→157、barrier-like 18→22，符合新增四个异步 transaction/wait lowering。静态文本计数不等同于动态指令数。

## 4. mcProfiler 与 mx-smi

定向 mcProfiler 的 achieved/dispatched waves 在两版均为 1,626,148，累计指标可同轮比较：AP active cycles 2,427,425,643→2,410,096,687（-0.7139%）；WSM stall -7.3369%；平均 stage latency -0.4656%；MMA duty 24.88%→25.06%，MTE duty 38.32%→38.60%。shared efficiency 均 100%，private read/write 均为 0。VLS pipeline stall +0.6125%、replay global-read proxy +1.0870%，说明改动并非所有底层计数都改善；elapsed-time authority 仍是 clean benchmark 与 mcTracer。

5000 次 Case1 同步 mx-smi 采样正确性通过，平均 3.073276 ms。9/31 个稳态样本（HBM>100000 MB/s 且 AP 中位>=90%）的 HBM 中位为 801,624 MB/s，范围 800,698–804,668 MB/s；104/104 AP entries 的中位 usage 均为 95%。这是 workload-observed 物理计数，不是 Roofline 带宽上限。

## 5. Roofline

共同 schedule 模型为 103,079,215,104 FLOPs、1,220,542,464 B、AI=84.453608 FLOP/B。按 mcTracer Step2 中位时间，v033/v034 为 98.6895→102.4042 TFLOP/s，逻辑流量率 1168.56→1212.55 GB/s。在 479.232 TFLOP/s compute roof 和 1400/1843.2 GB/s 带宽 sensitivity 下两点仍位于 memory side。原生 mcProfiler Roofline 完整归档，但不替代共同工作量模型。

## 6. 深挖失败路径所得结论

full B0 async 的错误不是简单 shared-half 地址、8192 stride、token alias、wait 位置或 accumulator 变量问题。K-tile 隔离证明 odd-B0 async 失败而 next-even B0 async 正确；最终版本因此只启用后者。8-byte async 拆分被 MXCC 后端明确拒绝。所有失败探针、错误图与隔离脚本均保存在 `restart-experiments/{ID}/probes`，后续不得在没有新底层证据时重试完整 B0 async。

## 7. 决策

接受 v034。它在不改变数学、tile、shared allocation、CTA barrier 数、寄存器/occupancy 和 OJ import 集合的前提下，稳定加速三个固定 OJ case；收益被 mcTracer 定位到 Step2，并由 C++、资源、汇编和 mcProfiler 交叉支持。
"""
    write(rep / f"{ID}_report.md", report)

    scripts_doc = f"""# v034 scripts

- `v034_pair_benchmark.py`: exact submission 的 OJ-shape AB/BA 配对 benchmark。
- `validate_submission.py`: 三 case reference 数值与 padding 正确性。
- `validate_oj_submission.py`: OJ import allowlist gate。
- `oj_submission_benchmark.py`: exact OJ benchmark 与长 workload。
- `official_submission_benchmark.py`: 仓库官方 benchmark adapter。
- `profile_submission.py`: mcTracer/mcProfiler 单次 profile 入口。
- `v034_run_paired_mctracer.py`: v033/v034 三轮 AB/BA Step1/Step2 trace。
- `v034_run_mcprofiler_submission.sh`: Step2 targeted 与 native Roofline replay。
- `v034_capture_submission_codegen.py`: 生成 device C++ 与 resource usage。
- `extract_metax_isa.sh`: 从最终 xcore1000 ELF 提取 MetaX ISA。
- `collect_mxsmi.sh`: workload 同期只读 HBM/AP 采样。
- `v034_k_tile_isolation.py`: odd/even K-tile 正确性隔离。
- `v034_moe_error_map.py`: B0/B1 输出空间错误图。
- `render_roofline.py`: 显式 compute/bandwidth roof 的 schedule-aware 图。
- `v034_finalize_iteration.py`: 从冻结原始证据生成本归档。
- `summarize_iteration.py` / `validate_iteration.py`: artifact inventory 与 strict 结构校验。

所有接受数据对应 byte-identical `restart-submission/{ID}/submission.py`（`{source_hash}`）。
"""
    write(scripts / f"{ID}_scripts.md", scripts_doc)

    source_hashes = [
        submission,
        MOE / "restart-submission" / PARENT_ID / "submission.py",
        MOE / "fusedmoe_benchmark.py",
        MOE / "oj_benchmark.py",
        scripts / "v034_pair_benchmark.py",
        scripts / "oj_submission_benchmark.py",
    ]
    write(
        rep / f"{ID}_source_hashes.sha256",
        "\n".join(f"{sha256(path)}  {path.relative_to(REPO)}" for path in source_hashes),
    )

    manifest = {
        "iteration_id": ID,
        "status": "accepted",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "machine": "sc-16g",
        "submission_sha256": source_hash,
        "decision": "accepted-new-best",
        "acceptance_authority": "all-case clean AB/BA paired benchmarks on exact final OJ submission",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "primary_change": "make only Step2 row3/next-even B0 16-byte copy asynchronous and wait after current odd-B1 MMA",
        "primary_result": {
            "case1_pair_median_change_percent": -1.2838144806146201,
            "case1_pair_repro2_median_change_percent": -1.282924473879321,
            "case2_pair_median_change_percent": -1.054413110930963,
            "case3_pair_median_change_percent": -0.9771931082433349,
            "mctracer_step2_median_change_percent": -3.6029411764705976,
        },
        "resource_result": "Step2 remains 234 MT/52 ST registers, 0 stack, 32 KiB dynamic shared, 2 static waves/PEU",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "artifact_roots": ROOTS,
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    write(rep / f"{ID}_manifest.json", manifest_text)
    write(roof / f"{ID}_manifest.json", manifest_text)
    write(exp / f"{ID}_manifest.json", manifest_text)

    print(json.dumps({"iteration_id": ID, "submission_sha256": source_hash, "status": "finalized"}, indent=2))


if __name__ == "__main__":
    main()
