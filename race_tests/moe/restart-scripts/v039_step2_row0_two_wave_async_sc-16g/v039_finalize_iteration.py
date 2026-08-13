#!/usr/bin/env python3
"""Finalize the accepted v039 row0 two-wave continuous-async iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v039_step2_row0_two_wave_async_sc-16g"
PARENT_ID = "v038_step2_two_wave_batch0_async_sc-16g"
PARENT_COMMIT = "44df5bdadc9ce716b9abfc6373d6ee88b1b27209"
SOURCE = Path("/tmp/v039_final_specialized.py")
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
    path.write_text(content.rstrip() + "\n", encoding="utf-8")


def copy_file(source, destination, required=True):
    source = Path(source)
    if not source.is_file():
        if required:
            raise FileNotFoundError(source)
        return
    destination = Path(destination)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, destination)


def copy_tree(source, destination, required=True):
    source = Path(source)
    if not source.is_dir():
        if required:
            raise FileNotFoundError(source)
        return
    destination = Path(destination)
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(source, destination)


def main():
    roots = {name: MOE / name / ID for name in ROOTS}
    existing = [str(path) for path in roots.values() if path.exists()]
    if existing:
        raise SystemExit("refusing to overwrite:\n" + "\n".join(existing))
    for path in roots.values():
        path.mkdir(parents=True)

    roof = roots["moe-roofline"]
    exp = roots["restart-experiments"]
    rep = roots["restart-rep"]
    scripts = roots["restart-scripts"]
    submission_dir = roots["restart-submission"]
    common = MOE / "restart-scripts" / PARENT_ID

    submission = submission_dir / "submission.py"
    copy_file(SOURCE, submission)
    source_hash = sha256(submission)
    write(submission_dir / "submission.sha256", f"{source_hash}  submission.py")
    validation = subprocess.run(
        ["/opt/conda/bin/python", str(common / "validate_oj_submission.py"), str(submission)],
        cwd=REPO,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    write(submission_dir / "oj_import_validation.txt", validation.stdout)
    if validation.returncode:
        raise RuntimeError(validation.stdout)

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
    with (exp / f"{ID}.patch").open("w", encoding="utf-8") as stream:
        subprocess.run(
            ["git", "diff", "--no-index", "--", str(MOE / "restart-submission" / PARENT_ID / "submission.py"), str(submission)],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )

    probe_names = [
        "v039_probe_batch0_last2_waves.py",
        "v039_probe_batch0_even_waves.py",
        "v039_probe_batch0_odd_waves.py",
        "v039_probe_unroll_batch0_double_issue.py",
        "v039_probe_row0_two_wave_batches.py",
        "v039_probe_row2_two_wave_batches.py",
        "v039_probe_row3_two_wave_batches.py",
        "v039_last2_waves_pair7.jsonl",
        "v039_even_waves_pair7.jsonl",
        "v039_odd_waves_pair7.jsonl",
        "v039_unroll_pair9.jsonl",
        "v039_row0_pair7.jsonl",
        "v039_row2_pair7.jsonl",
        "v039_row3_pair7.jsonl",
    ]
    for name in probe_names:
        copy_file(Path("/tmp") / name, exp / "probes" / name)
    copy_file(SOURCE, exp / "probes" / "v039_final_specialized_candidate.py")

    copy_tree("/tmp/v039_exact_final", rep / "benchmark" / "exact_final")
    copy_tree("/tmp/v039_final_gate", rep / "benchmark" / "precomment_pair13")
    for index in (0, 1):
        copy_file(f"/tmp/v039_official_functional_{index}.log", rep / "benchmark" / f"official_functional_{index}.log")
    copy_file("/tmp/v039_exact_final/correctness.jsonl", rep / "correctness" / "three_oj_shapes_reference.jsonl")

    copy_tree(MOE / "v039_mctracer_tmp", rep / "profiler" / "mctracer" / "raw")
    copy_file(
        MOE / "v039_mctracer_tmp" / "v037_vs_v036_case1_mctracer_summary.json",
        rep / "profiler" / "mctracer" / "v039_vs_v038_case1_summary.json",
    )
    write(rep / "profiler" / "mctracer" / "LABEL_MAPPING.md", """# Label mapping

The reused paired tracer script retains legacy JSON tags: `v036` is the v038 parent and `v037` is the v039 candidate. Source paths in the JSON are authoritative.
""")
    copy_tree(MOE / "v039_mcprof_tmp", rep / "profiler" / "mcprofiler" / "raw")
    mcprof_summary = {
        "authority": "diagnostic replay; clean paired event benchmark and mcTracer own elapsed time",
        "parent": "v038",
        "candidate": "v039",
        "case1_step2": {
            "total_kcycles": {"v038": 8333602.83, "v039": 7994210.76, "change_percent": -4.072573135},
            "dispatched_waves": {"v038": 1626148, "v039": 1626148},
            "achieved_waves": {"v038": 1626148, "v039": 1626148},
            "ap_active_cycles": {"v038": 2393252175, "v039": 2387620102, "change_percent": -0.235331365},
            "wsm_stall": {"v038": 62519044, "v039": 62469764, "change_percent": -0.078823982},
            "vls_pipeline_stall": {"v038": 730715136, "v039": 747919747, "change_percent": 2.354489479},
            "vl1_partition_stall": {
                "v038": [100121305, 92994984, 97823237, 92221085],
                "v039": [90127909, 90267370, 88685311, 90020085],
            },
            "private_read_write": {"v038": [0, 0], "v039": [0, 0]},
        },
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(mcprof_summary, indent=2))
    write(rep / "profiler" / "mxsmi" / "UNAVAILABLE.md", """# mx-smi not repeated

v039 is a sub-percent end-to-end scheduling change. The v036 workload-observed sampling remains the nearest hardware-context reference; mx-smi polling resolution is not used to distinguish v038 from v039 and the observed value is not a bandwidth roof.
""")

    copy_tree("/tmp/v039_codegen", rep / "codegen" / "final")
    copy_tree("/tmp/v039_isa", rep / "codegen" / "isa_case1")
    codegen_summary = {
        "submission_sha256": source_hash,
        "case1": {
            "device_cpp_sha256": "dae34f4d61f6fc34eb28f209aac4eafe09a6f319e40629ca7026818abb8049b0",
            "text_sha256": "5023640dbee460b07da7f57ecc140249359c408826953fdedd2353d0cf9c7963",
            "step2_resources": "222 MT / 52 ST / 0 private / 2 static waves per PEU",
            "isa_static_text_counts": {"mma": 512, "bsm": 165, "wait": 0, "ldg": 63, "stg": 57},
        },
        "case2": {"device_cpp_sha256": "b5f77d9bd5f4a58567cc2d1adead2c6bc2597b15338f26f7ca4a018877137ec8", "byte_identical_to_v038": True},
        "case3": {"device_cpp_sha256": "1ffdcbfcaa0f97b4cc18e423e42167a692eac0fffba7b6b77822f9d55d6a5477", "byte_identical_to_v038": True},
        "caveat": "Static assembly text counts are not dynamic instruction counts.",
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, indent=2))

    write(roof / "v039_schedule_roofline_points.csv", """label,ai_flop_per_byte,tflops
v038 Case1 Step2,84.45360824742268,104.912241792600
v039 Case1 Step2,84.45360824742268,108.094814496644
""")
    script_names = [
        "collect_mxsmi.sh", "extract_metax_isa.sh", "official_submission_benchmark.py",
        "oj_submission_benchmark.py", "profile_submission.py", "render_roofline.py",
        "summarize_iteration.py", "validate_iteration.py", "validate_oj_submission.py",
        "validate_submission.py", "v038_pair_benchmark.py", "v038_capture_codegen.py",
        "v038_run_paired_mctracer.py",
    ]
    for name in script_names:
        destination = name.replace("v038_", "v039_")
        copy_file(common / name, scripts / destination)
    copy_file("/tmp/v039_run_mcprofiler_submission.sh", scripts / "v039_run_mcprofiler_submission.sh")
    copy_file(__file__, scripts / "v039_finalize_iteration.py")
    subprocess.run(
        [
            "/opt/conda/bin/python", str(scripts / "render_roofline.py"),
            "--points", str(roof / "v039_schedule_roofline_points.csv"),
            "--output-prefix", str(roof / "v039_case1_step2_schedule_roofline"),
            "--compute-roof-tflops", "479.232",
            "--bandwidth-roof", "sc16_measured_conservative=1400",
            "--bandwidth-roof", "physical_theoretical=1843.2",
            "--bandwidth-roof", "linear_25pct_sensitivity=460.8",
            "--title", "v039 Case1 Step2 row0 two-wave BSM Roofline (sc-16g)",
        ],
        cwd=REPO,
        check=True,
    )
    write(roof / "v039_roofline_readme.md", """# v039 Roofline notes

- Common Step2 work: 103,079,215,104 FLOPs and 1,220,542,464 bytes; AI=84.453608 FLOP/B.
- mcTracer medians: v038 0.982528 ms, v039 0.953600 ms.
- Throughput: 104.9122 -> 108.0948 TFLOP/s; schedule traffic rate: 1242.25 -> 1279.93 GB/s.
- Both points remain on the memory side under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s sensitivities.
- The 460.8 GB/s line is only a linear-25%-slice sensitivity, not asserted hardware truth.
""")

    write(exp / f"{ID}_experiment.md", f"""# v039 Step2 row0 two-wave continuous async

## 假设

v038 证明 row1 batch0 的每个 32 行 copy batch 映射到两 wave 后更快且正确。本轮逐阶段验证同样的映射能否泛化：把 128 行 row0/2/3 从四个 32 行 round（四 wave 单发）改为八个 16 行 round（前两 wave 单发），保持总事务数和地址覆盖不变。

## 候选筛选

- batch0 选择后两 wave：正确但回退 +0.5003%；交错 wave 0/2、1/3 分别回退 +0.0568% / +0.0683%，确认前两 wave 最优。
- `T.unroll(2)` 只生成 pragma，资源不变，paired 中位 +0.0052%，拒绝。
- row0 两-wave mapping：正确，相对 v038 13 轮 paired 中位 -1.0540%，接受。
- row2 两-wave mapping：正确但回退 +1.9359%；row3 回退 +3.1567%，拒绝。

最终只对 Case1 row0 启用八轮 16 行的前两-wave mapping；v038 row1 batch0 映射保持不变，row2/3 保持四-wave mapping。Case2/3 编译代码与 v038 完全相同。submission SHA-256：`{source_hash}`。
""")

    write(rep / f"{ID}_report.md", f"""# v039 实验报告：Step2 row0 两-wave mapping

版本：`{ID}`  
父版本：`{PARENT_ID}`（`{PARENT_COMMIT}`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，新的 dorm 最优基线。  
submission SHA-256：`{source_hash}`

## 结论

将 Case1 Step2 row0 的每个 32 行 continuous BSM copy batch 从四 wave 单发改为前两 wave 执行两个连续 16 行 round；仍覆盖相同 1024 笔 16-byte transaction。v038 row1 batch0 映射不变，row2/3 因实测回退而保持原映射；Case2/3 device C++ 与 v038 字节相同。

三 OJ shape 全部正确，max abs=0.001953125、padding=0，OJ allowlist 通过。精确最终源码 Case1 9 轮 clean AB/BA，3.048111 -> 3.015723 ms，paired 中位 -1.07653%、均值 -1.05899%；13 轮候选中位 -1.05397%。OJ W20/R100 为 3.013773 / 4.931858 / 10.642809 ms。官方 functional 2/2 通过。

## mcTracer

Case1 Step2 三轮 3/3 改善，paired 中位 -2.86608%，trace 中位 0.982528 -> 0.953600 ms。Step1 未改，paired 中位 -0.1122%，作为采样噪声。

## mcProfiler 与资源

Step2 两版均 222 MT、52 ST、0 private、32 KiB dynamic shared、static max 2 waves/PEU。Compact replay waves 两版均 dispatched=achieved=1,626,148；Total Cycles -4.07%、AP active -0.235%、WSM stall -0.079%，四个 VL1 partition stall 明显下降。VLS pipeline stall +2.35% 是反向指标，说明收益不是所有 stall 同降；elapsed time 仍以 clean benchmark/mcTracer 为准。

## C++、ISA 与 Roofline

Case1 device C++ SHA=`dae34f4d...049b0`，`.text` SHA=`5023640d...c7963`；静态汇编文本 MMA/BSM/WAIT/LDG/STG 为 512/165/0/63/57，不代表动态计数。AI=84.453608 FLOP/B；按 mcTracer Step2 中位，104.9122 -> 108.0948 TFLOP/s，schedule traffic 1242.25 -> 1279.93 GB/s，在 1400/1843.2 GB/s sensitivity 下仍为 memory side。

## 决策

接受 v039。相较 v038，clean pair、mcTracer 与 mcProfiler Total Cycles 同方向。逐阶段对照证明 row0 收益不可机械泛化到 row2/3，下一轮应分析 row0 与 row2/3 的并行工作差异（A 预取与下一 tile 准备），而不是全局替换。
""")

    write(scripts / f"{ID}_scripts.md", """# v039 scripts

- `v039_pair_benchmark.py`: exact submission AB/BA benchmark.
- `validate_submission.py` / `validate_oj_submission.py`: correctness, padding and OJ import gates.
- `v039_run_paired_mctracer.py`: paired Step1/Step2 trace capture (legacy JSON labels documented in report).
- `v039_run_mcprofiler_submission.sh`: compact targeted mcProfiler replay.
- `v039_capture_codegen.py` / `extract_metax_isa.sh`: device C++, resources, xcore1000 ISA and `.text`.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: official and OJ benchmark adapters.
- `render_roofline.py`: schedule-aware Roofline rendering.
- `v039_finalize_iteration.py`: create this five-root package.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict archive gates.
""")

    manifest = {
        "iteration_id": ID,
        "status": "accepted",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "machine": "sc-16g",
        "submission_sha256": source_hash,
        "decision": "accepted-new-best",
        "primary_change": "Case1 Step2 row0 uses eight 16-row rounds on the first two waves instead of four 32-row rounds on four waves",
        "primary_result": {
            "exact_case1_pair_median_change_percent": -1.076534942559193,
            "exact_case1_pair_mean_change_percent": -1.0589927150919232,
            "exact_case1_pair_wins": "9/9",
            "extended_pair_median_change_percent": -1.053966513141913,
            "mctracer_step2_median_change_percent": -2.8660760812923347,
            "mctracer_step2_wins": "3/3",
            "case2_case3_codegen": "byte-identical to v038",
        },
        "resource_result": "Case1 Step2 222 MT, 52 ST, 0 private, 32 KiB dynamic shared, 2 static waves/PEU",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "artifact_roots": ROOTS,
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for path in (rep / f"{ID}_manifest.json", exp / f"{ID}_manifest.json", roof / f"{ID}_manifest.json"):
        write(path, manifest_text)

    source_files = [submission, MOE / "restart-submission" / PARENT_ID / "submission.py", MOE / "fusedmoe_benchmark.py", MOE / "oj_benchmark.py"]
    write(rep / f"{ID}_source_hashes.sha256", "\n".join(f"{sha256(path)}  {path.relative_to(REPO)}" for path in source_files))
    print(json.dumps({"iteration_id": ID, "submission_sha256": source_hash, "status": "finalized"}, indent=2))


if __name__ == "__main__":
    main()
