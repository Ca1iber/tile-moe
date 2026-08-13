#!/usr/bin/env python3
"""Finalize the accepted v037 Case1 continuous-async MoE iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v037_step2_continuous_async_sc-16g"
PARENT_ID = "v036_step2_odd_b0_tail_async_sc-16g"
PARENT_COMMIT = "8dbc48ae395262229499e0f55b3232b8fd535408"
SOURCE = Path("/tmp/v037_final_specialized.py")
ROOTS = [
    "moe-roofline",
    "restart-experiments",
    "restart-rep",
    "restart-scripts",
    "restart-submission",
]


def sha256(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def write(path, content):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content.rstrip() + "\n", encoding="utf-8")


def copy_file(source, destination, required=True):
    source = Path(source)
    if not source.is_file():
        if required:
            raise FileNotFoundError(source)
        return False
    destination = Path(destination)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, destination)
    return True


def copy_tree(source, destination, required=True):
    source = Path(source)
    if not source.is_dir():
        if required:
            raise FileNotFoundError(source)
        return False
    destination = Path(destination)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(source, destination)
    return True


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

    common = MOE / "restart-scripts" / PARENT_ID
    validation = subprocess.run(
        ["/opt/conda/bin/python", str(common / "validate_oj_submission.py"), str(submission)],
        cwd=REPO,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        check=False,
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
    write(roof / ".gitattributes", "*.png binary\n*.pdf binary")
    copy_file(submission, exp / f"{ID}_custom_fusedmoe.py")

    patch_path = exp / f"{ID}.patch"
    with patch_path.open("w", encoding="utf-8") as stream:
        subprocess.run(
            [
                "git", "diff", "--no-index", "--",
                str(MOE / "restart-submission" / PARENT_ID / "submission.py"),
                str(submission),
            ],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )

    # Preserve the full hypothesis matrix, including rejected directions.
    probe_dir = exp / "probes"
    for pattern in (
        "v037_probe*.py",
        "v037_*pair*.jsonl",
        "v037_*pair*.log",
        "v037_*diagnosis*.json",
        "v037_*correctness*.jsonl",
    ):
        for source in sorted(Path("/tmp").glob(pattern)):
            copy_file(source, probe_dir / source.name)
    copy_file(SOURCE, probe_dir / "v037_final_specialized_candidate.py")

    copy_tree(Path("/tmp/v037_final_case1only"), rep / "benchmark" / "final")
    copy_file(
        Path("/tmp/v037_final_case1only/correctness.jsonl"),
        rep / "correctness" / "three_oj_shapes_reference.jsonl",
    )
    for kind in ("functional", "performance"):
        for index in (0, 1):
            copy_file(
                Path(f"/tmp/v037_official_{kind}_{index}.log"),
                rep / "benchmark" / f"official_{kind}_{index}.log",
            )

    copy_tree(MOE / "v037_mctracer_tmp", rep / "profiler" / "mctracer" / "raw")
    copy_file(
        MOE / "v037_mctracer_tmp" / "case1" / "v037_vs_v036_case1_mctracer_summary.json",
        rep / "profiler" / "mctracer" / "case1_accepted_summary.json",
    )
    copy_file(
        MOE / "v037_mctracer_tmp" / "case3" / "v037_vs_v036_case3_mctracer_summary.json",
        rep / "profiler" / "mctracer" / "case3_rejected_summary.json",
    )
    copy_tree(MOE / "v037_mcprof_tmp", rep / "profiler" / "mcprofiler" / "raw")
    write(rep / "profiler" / "mxsmi" / "UNAVAILABLE.md", """# mx-smi not repeated

v037 changes only the Case1 Step2 copy primitive and improves clean event time by about 0.1%. No new workload-concurrent mx-smi sampling was run because its polling resolution cannot resolve this delta. The v036 workload-observed sample remains the nearest hardware-context reference and is not treated as a bandwidth roof.
""")

    profiler_summary = {
        "authority": "diagnostic replay only; clean paired benchmark and mcTracer own elapsed time",
        "case1_step2_compact_replay": {
            "dispatched_waves": {"v036": 1626148, "v037": 1626148},
            "achieved_waves": {"v036": 1626148, "v037": 1626148},
            "private_read_instructions": {"v036": 0, "v037": 0},
            "private_write_instructions": {"v036": 0, "v037": 0},
            "ap_active_cycles": {"v036": 2406133026, "v037": 2404347529, "change_percent": -0.074206080},
            "wsm_stall": {"v036": 62662862, "v037": 64018864, "change_percent": 2.163964359},
            "vls_pipeline_stall": {"v036": 748615839, "v037": 743201078, "change_percent": -0.723303024},
            "vl1_partition_stall_change_percent": [-0.367001539, -5.957317499, -0.045959382, -5.957452603],
        },
        "replay_caveat": "Profiler total-cycle replay contradicted clean event timing; use AP/VLS/VL1 only as directional diagnostics.",
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(profiler_summary, indent=2))

    copy_tree(Path("/tmp/v037_case1only_codegen"), rep / "codegen" / "candidate")
    copy_tree(Path("/tmp/v037_parent_codegen"), rep / "codegen" / "parent_case2_case3")
    copy_tree(Path("/tmp/v037_case1only_isa"), rep / "codegen" / "isa_case1")
    copy_tree(Path("/tmp/v037_semantic_isa"), rep / "codegen" / "isa_case2_case3_compare")
    codegen_summary = {
        "submission_sha256": source_hash,
        "case1": {
            "device_cpp_sha256": "92511db9a881effe3d90baebbc0e5c3502d007a391d2aa5925df74282ed3c7da",
            "step2_resources": "218 MT / 52 ST / 0 private / 2 static waves per PEU",
            "isa_static_text_counts": {"mma": 512, "bsm": 159, "wait": 0, "ldg": 58, "stg": 57},
            "caveat": "Static text counts are not dynamic instruction counts.",
        },
        "case2": {
            "v036_v037_text_sha256": "ac0e998120c360ed576b09c0cb10b12f1e663ef82591245f1fba4e300094235f",
            "machine_text_identical": True,
        },
        "case3": {
            "v036_v037_text_sha256": "84d3b4284282d62c122f6a1308b870686e44cbc5e3e55063d203747781fe669a",
            "machine_text_identical": True,
        },
        "note": "Case2/3 generated C++ differs because the inline helper source is present, but compile-time false selection produces byte-identical final .text.",
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, indent=2))

    write(roof / "v037_schedule_roofline_points.csv", """label,ai_flop_per_byte,tflops
v036 Case1 Step2,84.45360824742268,103.643033204633
v037 Case1 Step2,84.45360824742268,104.152401448526
""")
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
    copy_file("/root/moe_runs/v031_pair_benchmark.py", scripts / "v037_pair_benchmark.py")
    copy_file("/tmp/v037_run_paired_mctracer.py", scripts / "v037_run_paired_mctracer.py", required=False)
    copy_file("/tmp/v037_run_mcprofiler_submission.sh", scripts / "v037_run_mcprofiler_submission.sh", required=False)
    copy_file(common / "v036_capture_codegen.py", scripts / "v037_capture_codegen.py")
    copy_file(__file__, scripts / "v037_finalize_iteration.py")

    subprocess.run(
        [
            "/opt/conda/bin/python", str(scripts / "render_roofline.py"),
            "--points", str(roof / "v037_schedule_roofline_points.csv"),
            "--output-prefix", str(roof / "v037_case1_step2_schedule_roofline"),
            "--compute-roof-tflops", "479.232",
            "--bandwidth-roof", "sc16_measured_conservative=1400",
            "--bandwidth-roof", "physical_theoretical=1843.2",
            "--bandwidth-roof", "linear_25pct_sensitivity=460.8",
            "--title", "v037 Case1 Step2 schedule-aware Roofline (sc-16g)",
        ],
        cwd=REPO,
        check=True,
    )
    write(roof / "v037_roofline_readme.md", """# v037 Roofline notes

- Common work: 103,079,215,104 FLOPs and 1,220,542,464 bytes; AI=84.453608 FLOP/B.
- mcTracer Step2 medians: v036 0.994560 ms, v037 0.989696 ms.
- Throughput: 103.6430 -> 104.1524 TFLOP/s; schedule traffic rate: 1227.22 -> 1233.25 GB/s.
- Both points remain on the memory side under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s bandwidth sensitivities.
- The 460.8 GB/s line is a linear-25%-slice sensitivity, not asserted hardware truth.
- mcProfiler total-cycle replay contradicted clean timing, so no misleading native elapsed-time point is promoted.
""")

    write(exp / f"{ID}_experiment.md", f"""# v037 Step2 continuous async

## 假设与下钻

v036 的标准 `memcpy_async<16>` 为每个事务保存 b128 token，并逐 token wait。MXMACA 官方头文件还提供 `continuous_pipeline_memcpy_async<16>` 与 pipeline wait。目标是减少 token 管理与显式 wait，同时保留 CTA barrier 作为共享内存消费边界。

本轮没有在负优化后直接换方向：依次验证了异步顺序、3+1、batch3 同步、tail-first、async batch 数量、所有两 batch 组合、去 wait、continuous one/two wait、全安全位置 continuous。实验定位出两个事实：逻辑 batch0 无论发射顺序如何都会错误约 11.9%；Case1 的 batch2/3 是最稳妥的 row1 子集。

## 最终策略

- 仅 OJ Case1 启用 continuous async。
- odd-B0 的 batch0/1 同步，batch2/3 continuous async。
- row0/2/3 使用 continuous async；不保存 token、不显式 pipeline wait，依赖原有 CTA `sync_threads` 消费边界。
- Case2/3 编译期选择 v036 标准 token/wait 路径。它们的最终 `.text` 与 v036 字节相同。
- Case3 的全安全 continuous 候选虽然端到端 pair 看似改善，但 mcTracer Step2 3/3 回退、paired 中位 +0.2341%，因此明确拒绝。

最终 submission SHA-256：`{source_hash}`。
""")

    write(rep / f"{ID}_report.md", f"""# v037 实验报告：Case1 Step2 continuous async

版本：`{ID}`  
父版本：`{PARENT_ID}`（`{PARENT_COMMIT}`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，作为新的 dorm 最优基线。  
OJ submission SHA-256：`{source_hash}`

## 结论

v037 只对 Case1 将已证明安全的 Step2 下权重搬运换成 MXMACA continuous pipeline async，并用原有 CTA barrier 作为消费边界。Case2/3 最终机器码与 v036 相同。三 OJ shape 全部正确，max abs error 均 0.001953125、padding 为 0，OJ import allowlist 通过。

Case1 clean AB/BA 9 轮 9/9 获胜：3.066813 -> 3.064325 ms，paired 中位 -0.07547%，均值 -0.10044%。Exact OJ W20/R100 为 3.061778 / 4.921124 / 10.644127 ms。官方 functional 2/2 通过；含路由适配器的补充 performance 为 86.578809 / 28.567402 ms，不用于 OJ 加速结论。

## mcTracer 与版本门控

Case1 Step2 中位 0.994560 -> 0.989696 ms，paired 中位 -0.48906%（2/3，trace 粒度噪声明显）；Step1 未改。Case3 continuous 候选的 Step2 3/3 回退，paired 中位 +0.23405%，所以最终关闭 Case3。Case2 clean pair 无稳定收益，同样关闭。

## C++、汇编与资源

Case1 Step2 保持 218 MT、52 ST、0 private、32 KiB dynamic shared、static max 2 waves/PEU。后端汇编静态文本计数为 MMA 512、BSM 159、WAIT 0、LDG 58、STG 57；静态计数不代表动态执行次数。Case2/3 generated C++ 因包含 helper 文本而不同，但最终 `.text` SHA 分别在 v036/v037 间完全一致：`ac0e9981...4235f`、`84d3b428...e669a`。

## mcProfiler

Compact replay 中 dispatched/achieved waves 两版均 1,626,148，private read/write=0。v037 AP active -0.0742%，VLS pipeline stall -0.7233%，VL1 partition 1/3 stall 约 -5.96%，但 WSM stall +2.164%。由于 profiler total-cycle replay 与 clean event timing 方向相反，这些指标只作方向性诊断，不替代 benchmark/mcTracer。

## Roofline

共同 schedule AI=84.453608 FLOP/B。按 mcTracer Step2 中位，103.6430 -> 104.1524 TFLOP/s，schedule traffic rate 1227.22 -> 1233.25 GB/s；在 479.232 TFLOP/s compute roof 与 1400/1843.2 GB/s bandwidth sensitivity 下仍为 memory side。

## 决策

接受 v037。绝对收益很小，但 clean pair 9/9、Case1 Step2 trace 中位改善，并通过 shape gate 将 Case2/3 精确还原为 v036 机器码。下一轮应继续围绕 batch0 hazard 或更大粒度 overlap，而不是把 continuous async 泛化到所有 shape。
""")

    write(scripts / f"{ID}_scripts.md", """# v037 scripts

- `v037_pair_benchmark.py`: exact submission AB/BA benchmark.
- `validate_submission.py`: three OJ-shape reference and padding correctness.
- `validate_oj_submission.py`: OJ import allowlist gate.
- `v037_run_paired_mctracer.py`: paired Step1/Step2 trace capture.
- `v037_run_mcprofiler_submission.sh`: compact targeted mcProfiler replay.
- `v037_capture_codegen.py`: device C++ and resource capture.
- `extract_metax_isa.sh`: final xcore1000 ISA and `.text` extraction.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: project and OJ benchmark adapters.
- `render_roofline.py`: common-work schedule-aware Roofline rendering.
- `v037_finalize_iteration.py`: creates the five-root archive from frozen evidence.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict package gates.
""")

    source_files = [
        submission,
        MOE / "restart-submission" / PARENT_ID / "submission.py",
        MOE / "fusedmoe_benchmark.py",
        MOE / "oj_benchmark.py",
        scripts / "v037_pair_benchmark.py",
        scripts / "oj_submission_benchmark.py",
    ]
    write(
        rep / f"{ID}_source_hashes.sha256",
        "\n".join(f"{sha256(path)}  {path.relative_to(REPO)}" for path in source_files),
    )

    manifest = {
        "iteration_id": ID,
        "status": "accepted",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "machine": "sc-16g",
        "submission_sha256": source_hash,
        "decision": "accepted-new-best",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "primary_change": "Case1-only Step2 continuous async on safe copy sites; Case2/3 retain v036 machine text",
        "primary_result": {
            "case1_pair_median_change_percent": -0.07546533417774892,
            "case1_pair_mean_change_percent": -0.10043563965711488,
            "case1_pair_wins": "9/9",
            "mctracer_case1_step2_median_change_percent": -0.4890604890604888,
            "rejected_case3_step2_median_change_percent": 0.23405058512646626,
            "case2_case3_machine_text": "byte-identical to v036",
        },
        "resource_result": "Case1 Step2 218 MT, 52 ST, 0 private, 32 KiB dynamic shared, 2 static waves/PEU",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "artifact_roots": ROOTS,
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for destination in (
        rep / f"{ID}_manifest.json",
        exp / f"{ID}_manifest.json",
        roof / f"{ID}_manifest.json",
    ):
        write(destination, manifest_text)

    print(json.dumps({"iteration_id": ID, "submission_sha256": source_hash, "status": "finalized"}, indent=2))


if __name__ == "__main__":
    main()
