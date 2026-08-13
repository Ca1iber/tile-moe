#!/usr/bin/env python3
"""Finalize the accepted v038 two-wave batch0 continuous-async iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v038_step2_two_wave_batch0_async_sc-16g"
PARENT_ID = "v037_step2_continuous_async_sc-16g"
PARENT_COMMIT = "ee23a15663c7d1182401cc242f850ce62beae700"
SOURCE = Path("/tmp/v038_final_specialized.py")
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
        "v038_probe_row1_batch0_split8.py",
        "v038_probe_batch0_upper16_async.py",
        "v038_probe_batch0_lower16_async.py",
        "v038_probe_batch0_splitwaves_wait.py",
        "v038_probe_wait_after_row0_full_row1.py",
        "v038_probe_batch0_two_waves_double_issue.py",
        "v038_probe_batch01_two_waves_each.py",
        "v038_split8_correctness.log",
        "v038_batch0_upper16_correctness.log",
        "v038_batch0_lower16_correctness.log",
        "v038_batch0_upper16_pair7.jsonl",
        "v038_batch0_lower16_pair7.jsonl",
        "v038_splitwaves_correctness.log",
        "v038_splitwaves_pair9.jsonl",
        "v038_wait_after_row0_correctness.log",
        "v038_two_waves_correctness.log",
        "v038_two_waves_pair9.jsonl",
        "v038_batch01_two_waves_correctness.log",
        "v038_batch01_vs_batch0_pair9.jsonl",
    ]
    for name in probe_names:
        copy_file(Path("/tmp") / name, exp / "probes" / name)
    copy_file(SOURCE, exp / "probes" / "v038_final_specialized_candidate.py")

    copy_tree("/tmp/v038_exact_final", rep / "benchmark" / "exact_final")
    copy_tree("/tmp/v038_final_gate", rep / "benchmark" / "precomment_pair13")
    for index in (0, 1):
        copy_file(f"/tmp/v038_official_functional_{index}.log", rep / "benchmark" / f"official_functional_{index}.log")
    copy_file("/tmp/v038_exact_final/correctness.jsonl", rep / "correctness" / "three_oj_shapes_reference.jsonl")

    copy_tree(MOE / "v038_mctracer_tmp", rep / "profiler" / "mctracer" / "raw")
    copy_file(
        MOE / "v038_mctracer_tmp" / "v037_vs_v036_case1_mctracer_summary.json",
        rep / "profiler" / "mctracer" / "v038_vs_v037_case1_summary.json",
    )
    write(rep / "profiler" / "mctracer" / "LABEL_MAPPING.md", """# Label mapping

The reused paired tracer script retains legacy JSON tags: `v036` is the v037 parent and `v037` is the v038 candidate. Source paths in the JSON are authoritative.
""")
    copy_tree(MOE / "v038_mcprof_tmp", rep / "profiler" / "mcprofiler" / "raw")
    mcprof_summary = {
        "authority": "diagnostic replay; clean paired event benchmark and mcTracer own elapsed time",
        "parent": "v037",
        "candidate": "v038",
        "case1_step2": {
            "total_kcycles": {"v037": 8292992.96, "v038": 8002441.44, "change_percent": -3.503578520},
            "dispatched_waves": {"v037": 1626148, "v038": 1626148},
            "achieved_waves": {"v037": 1626148, "v038": 1626148},
            "ap_active_cycles": {"v037": 2404499153, "v038": 2391412519, "change_percent": -0.544256129},
            "wsm_stall": {"v037": 64024857, "v038": 62541529, "change_percent": -2.316800177},
            "vls_pipeline_stall": {"v037": 742317820, "v038": 725258704, "change_percent": -2.298087900},
            "vl1_partition_stall": {
                "v037": [102995903, 92696691, 101533741, 91710000],
                "v038": [98593222, 92123872, 96946594, 91328015],
            },
            "private_read_write": {"v037": [0, 0], "v038": [0, 0]},
        },
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(mcprof_summary, indent=2))
    write(rep / "profiler" / "mxsmi" / "UNAVAILABLE.md", """# mx-smi not repeated

v038 is a sub-percent end-to-end scheduling change. The v036 workload-observed sampling remains the nearest hardware-context reference; mx-smi polling resolution is not used to distinguish v037 from v038 and the observed value is not a bandwidth roof.
""")

    copy_tree("/tmp/v038_final_codegen", rep / "codegen" / "final")
    copy_tree("/tmp/v038_isa", rep / "codegen" / "isa_case1")
    codegen_summary = {
        "submission_sha256": source_hash,
        "case1": {
            "device_cpp_sha256": "a4f08758edb65ab84d3e922ddf23d0c9e5905c7697f4855e57e876764fe63a8c",
            "text_sha256": "b2a7b3189cc8afe3d389208fc3d3c6bfe9b21e75cdeaf2e83b56c28a7376f221",
            "step2_resources": "222 MT / 52 ST / 0 private / 2 static waves per PEU",
            "isa_static_text_counts": {"mma": 512, "bsm": 161, "wait": 0, "ldg": 59, "stg": 57},
        },
        "case2": {"device_cpp_sha256": "b5f77d9bd5f4a58567cc2d1adead2c6bc2597b15338f26f7ca4a018877137ec8", "byte_identical_to_v037": True},
        "case3": {"device_cpp_sha256": "1ffdcbfcaa0f97b4cc18e423e42167a692eac0fffba7b6b77822f9d55d6a5477", "byte_identical_to_v037": True},
        "caveat": "Static assembly text counts are not dynamic instruction counts.",
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, indent=2))

    write(roof / "v038_schedule_roofline_points.csv", """label,ai_flop_per_byte,tflops
v037 Case1 Step2,84.45360824742268,103.376940693196
v038 Case1 Step2,84.45360824742268,105.655519286277
""")
    script_names = [
        "collect_mxsmi.sh", "extract_metax_isa.sh", "official_submission_benchmark.py",
        "oj_submission_benchmark.py", "profile_submission.py", "render_roofline.py",
        "summarize_iteration.py", "validate_iteration.py", "validate_oj_submission.py",
        "validate_submission.py", "v037_pair_benchmark.py", "v037_capture_codegen.py",
        "v037_run_paired_mctracer.py",
    ]
    for name in script_names:
        destination = name.replace("v037_", "v038_")
        copy_file(common / name, scripts / destination)
    copy_file("/tmp/v038_run_mcprofiler_submission.sh", scripts / "v038_run_mcprofiler_submission.sh")
    copy_file(__file__, scripts / "v038_finalize_iteration.py")
    subprocess.run(
        [
            "/opt/conda/bin/python", str(scripts / "render_roofline.py"),
            "--points", str(roof / "v038_schedule_roofline_points.csv"),
            "--output-prefix", str(roof / "v038_case1_step2_schedule_roofline"),
            "--compute-roof-tflops", "479.232",
            "--bandwidth-roof", "sc16_measured_conservative=1400",
            "--bandwidth-roof", "physical_theoretical=1843.2",
            "--bandwidth-roof", "linear_25pct_sensitivity=460.8",
            "--title", "v038 Case1 Step2 two-wave BSM Roofline (sc-16g)",
        ],
        cwd=REPO,
        check=True,
    )
    write(roof / "v038_roofline_readme.md", """# v038 Roofline notes

- Common Step2 work: 103,079,215,104 FLOPs and 1,220,542,464 bytes; AI=84.453608 FLOP/B.
- mcTracer medians: v037 0.997120 ms, v038 0.975616 ms.
- Throughput: 103.3769 -> 105.6555 TFLOP/s; schedule traffic rate: 1224.07 -> 1251.05 GB/s.
- Both points remain on the memory side under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s sensitivities.
- The 460.8 GB/s line is only a linear-25%-slice sensitivity, not asserted hardware truth.
""")

    write(exp / f"{ID}_experiment.md", f"""# v038 Step2 two-wave batch0 continuous async

## 机制定位

v037 中 row1 batch0 的四 wave 单发 continuous BSM 固定产生约 11.8% 错误。8-byte 拆分仍失败，排除 16-byte 事务宽度；前后 16 行分别单独异步均正确，排除地址段本身；row0 后 pipeline arrive 仍失败，排除简单软件队列未清空。两 wave 双发覆盖完整 batch0 保持总计 256 笔事务且正确，证明 hazard 与同一 copy batch 的四 wave 并发映射相关，而不是总事务数。

## 候选筛选

- 上/下 16 行混合同步异步：正确，但分别回退约 +0.784% / +0.736%。
- batch0 分两波并每波 arrive：正确，但回退 +0.942%。
- batch0 两 wave 双发：正确，相对 v037 13 轮 paired 中位 -0.4661%。
- batch0/1 各两 wave 双发：正确，但相对最终候选回退 +0.3909%。

最终只将 batch0 映射为前两 wave 每线程双发；batch1 同步、batch2/3 延续 v037 continuous async。Case2/3 编译代码与 v037 完全相同。submission SHA-256：`{source_hash}`。
""")

    write(rep / f"{ID}_report.md", f"""# v038 实验报告：Step2 batch0 两 wave 双发

版本：`{ID}`  
父版本：`{PARENT_ID}`（`{PARENT_COMMIT}`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，新的 dorm 最优基线。  
submission SHA-256：`{source_hash}`

## 结论

将 Case1 Step2 odd-B0 batch0 从四 wave 单发改为前两 wave 每线程双发，完整覆盖相同 256 笔 16-byte continuous BSM transaction，既解除四 wave 并发 hazard，也消除 v037 的 batch0 同步搬运。batch1 保持同步，batch2/3 保持 continuous async；Case2/3 device C++ 与 v037 字节相同。

三 OJ shape 全部正确，max abs=0.001953125、padding=0，OJ allowlist 通过。精确最终源码 Case1 9 轮 clean AB/BA 9/9，3.064000 -> 3.049370 ms，paired 中位 -0.47137%、均值 -0.48173%；更长的语义等价候选 13 轮中位 -0.46615%。OJ W20/R100 为 3.047593 / 4.932820 / 10.641715 ms。官方 functional 2/2 通过。

## mcTracer

Case1 Step2 三轮 3/3 改善，paired 中位 -2.21478%，trace 中位 0.997120 -> 0.975616 ms。Step1 未改却 +0.4003%，作为采样噪声，不归因于优化。

## mcProfiler 与资源

Step2 218 -> 222 MT registers，52 ST、0 private、32 KiB dynamic shared、static max 2 waves/PEU 不变。Compact replay waves 两版均 dispatched=achieved=1,626,148；Total Cycles -3.50%、AP active -0.54%、WSM stall -2.32%、VLS pipeline stall -2.30%，四个 VL1 partition stall 全部下降。该方向与 clean benchmark/mcTracer 一致，但 elapsed time 仍以后二者为准。

## C++、ISA 与 Roofline

Case1 device C++ SHA=`a4f08758...63a8c`，`.text` SHA=`b2a7b318...6f221`；静态汇编文本 MMA/BSM/WAIT/LDG/STG 为 512/161/0/59/57，不代表动态计数。AI=84.453608 FLOP/B；按 mcTracer Step2 中位，103.3769 -> 105.6555 TFLOP/s，schedule traffic 1224.07 -> 1251.05 GB/s，在 1400/1843.2 GB/s sensitivity 下仍为 memory side。

## 决策

接受 v038。相较 v037，clean pair、mcTracer 与 mcProfiler 三类证据同方向，且底层诊断解释了错误为何只发生在完整四 wave batch0 async。下一轮可尝试把同样的两-wave映射用于 row0/2/3，但必须逐阶段验证，因为 batch1 的泛化已证明会负优化。
""")

    write(scripts / f"{ID}_scripts.md", """# v038 scripts

- `v038_pair_benchmark.py`: exact submission AB/BA benchmark.
- `validate_submission.py` / `validate_oj_submission.py`: correctness, padding and OJ import gates.
- `v038_run_paired_mctracer.py`: paired Step1/Step2 trace capture (legacy JSON labels documented in report).
- `v038_run_mcprofiler_submission.sh`: compact targeted mcProfiler replay.
- `v038_capture_codegen.py` / `extract_metax_isa.sh`: device C++, resources, xcore1000 ISA and `.text`.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: official and OJ benchmark adapters.
- `render_roofline.py`: schedule-aware Roofline rendering.
- `v038_finalize_iteration.py`: create this five-root package.
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
        "primary_change": "Case1 Step2 odd-B0 batch0 uses two waves with two 16-byte continuous BSM issues per participating thread",
        "primary_result": {
            "exact_case1_pair_median_change_percent": -0.47137268546725286,
            "exact_case1_pair_mean_change_percent": -0.4817299163925457,
            "exact_case1_pair_wins": "9/9",
            "extended_pair_median_change_percent": -0.4661475660922343,
            "mctracer_step2_median_change_percent": -2.214782384754055,
            "mctracer_step2_wins": "3/3",
            "case2_case3_codegen": "byte-identical to v037",
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
