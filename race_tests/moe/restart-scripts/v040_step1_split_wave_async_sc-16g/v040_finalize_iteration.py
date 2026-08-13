#!/usr/bin/env python3
"""Finalize the accepted v040 Case1 Step1 split-wave continuous-BSM iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v040_step1_split_wave_async_sc-16g"
PARENT_ID = "v039_step2_row0_two_wave_async_sc-16g"
PARENT_COMMIT = "88d421463813769eb2f56d7ef6d58caa53afb2fd"
SOURCE = Path("/tmp/v040_final_submission.py")
ROOT_NAMES = ["moe-roofline", "restart-experiments", "restart-rep", "restart-scripts", "restart-submission"]


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
    roots = {name: MOE / name / ID for name in ROOT_NAMES}
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
    parent_scripts = MOE / "restart-scripts" / PARENT_ID
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"

    submission = submission_dir / "submission.py"
    copy_file(SOURCE, submission)
    source_hash = sha256(submission)
    write(submission_dir / "submission.sha256", f"{source_hash}  submission.py")
    validation = subprocess.run(
        ["/opt/conda/bin/python", str(parent_scripts / "validate_oj_submission.py"), str(submission)],
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
            ["git", "diff", "--no-index", "--", str(parent_submission), str(submission)],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )

    probe_sources = [
        "v040_step1_weight_two_wave.py",
        "v040_step1_gate_two_wave.py",
        "v040_step1_up_two_wave.py",
        "v040_step1_gate_two_wave_sync.py",
        "v040_step1_gate_four_wave.py",
        "v040_step1_both_four_wave.py",
        "v040_step1_up_then_gate_four_wave.py",
        "v040_step1_split_waves.py",
        "v040_step1_split_waves_clean.py",
    ]
    for name in probe_sources:
        copy_file(Path("/tmp") / name, exp / "probes" / name, required=False)
    copy_file(submission, exp / "probes" / "v040_final_candidate.py")
    write(exp / "probes" / "probe_results.md", """# v040 probe results

- synchronous uint4, gate only, two waves: correct, paired median +4.7261%; rejected.
- continuous BSM, gate only, two waves: correct, paired median +3.8447%; rejected.
- continuous BSM, gate only, four waves: correct, paired median +3.9054%; rejected.
- C++ diagnosis: mixing one extern shared writer with one `T.copy` shared writer inserted an extra dynamic CTA barrier per non-terminal K tile.
- gate+up both continuous, four waves: correct, paired median -0.2186%; useful intermediate.
- final split-wave mapping: wave 0/1 stage gate, wave 2/3 stage up; all threads issue eight 16-byte BSM transactions.
- a cache-key/factory-signature mismatch was caught by Case2/3 codegen SHA checks. All evidence used for acceptance was rerun after fixing the signature; pre-fix measurements are non-authoritative.
""")

    benchmark = rep / "benchmark" / "exact_final"
    for source, name in (
        ("/tmp/v040_fixed_final_pair13.jsonl", "case1_pair13.jsonl"),
        ("/tmp/v040_fixed_correctness.jsonl", "correctness.jsonl"),
        ("/tmp/v040_fixed_oj_import.log", "oj_import.log"),
        ("/tmp/v040_fixed_oj_w20_r100.jsonl", "oj_w20_r100.jsonl"),
    ):
        copy_file(source, benchmark / name)
    write(benchmark / "submission.sha256", f"{source_hash}  submission.py")
    for index in (0, 1):
        copy_file(f"/tmp/v040_fixed_official_functional_{index}.log", rep / "benchmark" / f"official_functional_{index}.log")
    copy_file("/tmp/v040_fixed_correctness.jsonl", rep / "correctness" / "three_oj_shapes_reference.jsonl")

    copy_tree(MOE / "v040_mctracer_tmp" / "fixed_final_case1", rep / "profiler" / "mctracer" / "raw")
    trace_summaries = list((rep / "profiler" / "mctracer" / "raw").glob("*summary.json"))
    if len(trace_summaries) != 1:
        raise RuntimeError(f"expected one mcTracer summary: {trace_summaries}")
    copy_file(trace_summaries[0], rep / "profiler" / "mctracer" / "v040_vs_v039_case1_summary.json")
    write(rep / "profiler" / "mctracer" / "LABEL_MAPPING.md", """# Label mapping

The reused paired tracer script retains legacy internal tags: `v036` is the v039 parent and `v037` is the v040 candidate. Source paths in the JSON are authoritative.
""")
    copy_tree(MOE / "v040_mcprof_tmp", rep / "profiler" / "mcprofiler" / "raw")
    mcprof_summary = {
        "authority": "diagnostic replay; clean paired event benchmark and mcTracer own elapsed time",
        "parent": "v039",
        "candidate": "v040",
        "case1_step1": {
            "total_kcycles": {"v039": 8646928.24, "v040": 8140525.20, "change_percent": -5.8564501282},
            "dispatched_waves": {"v039": 1626148, "v040": 1626148},
            "achieved_waves": {"v039": 1626148, "v040": 1626148},
            "ap_active_cycles": {"v039": 2389668586, "v040": 2351654789, "change_percent": -1.5907560246},
            "wsm_stall": {"v039": 62490617, "v040": 20044006, "change_percent": -67.9247750106},
            "vls_pipeline_stall": {"v039": 742895598, "v040": 929148992, "change_percent": 25.0712744161},
            "vls_wdata_stall": {"v039": 54018192, "v040": 54018192},
            "vl1_partition_stall": {
                "v039": [90973231, 91092379, 89350259, 90960703],
                "v040": [99203633, 101230090, 98642422, 101084793],
                "mean_change_percent": 10.4268236193,
            },
            "private_read_write": {"v039": [0, 0], "v040": [0, 0]},
            "interpretation": "WSM wait collapses while VLS/VL1 queueing rises: the win is overlap/path migration, not uniformly lower memory pressure.",
        },
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(mcprof_summary, indent=2))
    copy_file("/tmp/v040_mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt")
    write(rep / "profiler" / "mxsmi" / "README.md", """# mx-smi scope

The snapshot records the MetaX C500 25% sGPU and 16 GiB quota context. Its idle instantaneous utilization is not used as a bandwidth measurement or performance claim.
""")

    for case_id in (1, 2, 3):
        copy_tree(f"/tmp/v040_codegen_fixed_case{case_id}", rep / "codegen" / "final" / f"case{case_id}")
    copy_tree("/tmp/v040_isa_fixed", rep / "codegen" / "isa_case1")
    copy_file("/tmp/v040_parent_step1.s", rep / "codegen" / "comparison" / "v039_parent_step1.metax.s")
    copy_file("/tmp/v040_candidate_step1.s", rep / "codegen" / "comparison" / "v040_candidate_step1.metax.s")
    codegen_summary = {
        "submission_sha256": source_hash,
        "case1": {
            "device_cpp_sha256": "2c3c6dc35397ebfd732169a00813d16f8bfee62ff1e19ecbee747ec8653fc3da",
            "text_sha256": "eef316883d737507af1d0753d9786d76957e3c58b76ef7d45d98e4cfc98bd863",
            "step1_resources": "204 MT / 28 ST / 0 private / 2 static waves per PEU",
            "v039_step1_resources": "206 MT / 28 ST / 0 private / 2 static waves per PEU",
            "isa_static_text_counts": {
                "v039": {"mma": 256, "ldg": 24, "ldg_bsm": 0, "sts": 16, "lds": 64, "barrier": 3, "snop": 338},
                "v040": {"mma": 128, "ldg": 36, "ldg_bsm": 32, "sts": 0, "lds": 32, "barrier": 2, "snop": 431},
            },
        },
        "case2": {"device_cpp_sha256": "b5f77d9bd5f4a58567cc2d1adead2c6bc2597b15338f26f7ca4a018877137ec8", "byte_identical_to_v039": True},
        "case3": {"device_cpp_sha256": "1ffdcbfcaa0f97b4cc18e423e42167a692eac0fffba7b6b77822f9d55d6a5477", "byte_identical_to_v039": True},
        "caveat": "Static assembly text counts reflect different loop unrolling and are not dynamic instruction counts; dynamic math work is unchanged.",
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, indent=2))

    write(roof / "v040_step1_schedule_roofline_points.csv", """label,ai_flop_per_byte,tflops
v039 Case1 Step1,83.59183673469387,100.36220937188435
v040 Case1 Step1,83.59183673469387,104.314296373057
""")
    script_map = {
        "collect_mxsmi.sh": "collect_mxsmi.sh",
        "extract_metax_isa.sh": "extract_metax_isa.sh",
        "official_submission_benchmark.py": "official_submission_benchmark.py",
        "oj_submission_benchmark.py": "oj_submission_benchmark.py",
        "profile_submission.py": "profile_submission.py",
        "render_roofline.py": "render_roofline.py",
        "summarize_iteration.py": "summarize_iteration.py",
        "validate_iteration.py": "validate_iteration.py",
        "validate_oj_submission.py": "validate_oj_submission.py",
        "validate_submission.py": "validate_submission.py",
        "v039_pair_benchmark.py": "v040_pair_benchmark.py",
        "v039_capture_codegen.py": "v040_capture_codegen.py",
        "v039_run_paired_mctracer.py": "v040_run_paired_mctracer.py",
    }
    for source_name, destination_name in script_map.items():
        copy_file(parent_scripts / source_name, scripts / destination_name)
    copy_file("/tmp/v040_run_mcprofiler_step1.sh", scripts / "v040_run_mcprofiler_step1.sh")
    copy_file(__file__, scripts / "v040_finalize_iteration.py")
    subprocess.run(
        [
            "/opt/conda/bin/python", str(scripts / "render_roofline.py"),
            "--points", str(roof / "v040_step1_schedule_roofline_points.csv"),
            "--output-prefix", str(roof / "v040_case1_step1_schedule_roofline"),
            "--compute-roof-tflops", "479.232",
            "--bandwidth-roof", "sc16_measured_conservative=1400",
            "--bandwidth-roof", "physical_theoretical=1843.2",
            "--bandwidth-roof", "linear_25pct_sensitivity=460.8",
            "--title", "v040 Case1 Step1 split-wave BSM Roofline (sc-16g)",
        ],
        cwd=REPO,
        check=True,
    )
    write(roof / "v040_roofline_readme.md", """# v040 Roofline notes

- Case1 Step1 schedule work: 206,158,430,208 FLOPs.
- Schedule bytes: 2,466,250,752 bytes (two weight streams, repeated input tiles, and one output tile per CTA); AI=83.591837 FLOP/B.
- mcTracer medians: v039 2.054144 ms, v040 1.976320 ms.
- Throughput: 100.3622 -> 104.3143 TFLOP/s; equivalent schedule traffic rate: 1200.62 -> 1247.90 GB/s.
- Both points remain on the memory side under the declared 479.232 TFLOP/s compute roof and the 1400/1843.2 GB/s sensitivities.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity and is contradicted by the observed schedule rate; it is not asserted hardware truth.
""")

    write(exp / f"{ID}_experiment.md", f"""# v040 Step1 split-wave continuous BSM

## 假设与底层证据

v039 Case1 Step1 每个 K tile 通过同步 LDG→STS 搬运 gate/up 两个 128x64 FP16 权重块，主循环由两次 CTA barrier 串起 load、MMA 和覆盖。Step1 mcTracer 约 2.05 ms，占端到端约 68%。本轮检验能否把两路权重都迁移到 continuous BSM，并用 wave 0/1 搬 gate、wave 2/3 搬 up，使四个 wave 都有搬运工作且每线程维持八次 16-byte 请求。

## 追因过程

- 同步 uint4 gate-only two-wave 正确但回退 +4.7261%，说明仅减少 load wave 不成立。
- gate-only continuous two/four-wave 分别回退 +3.8447% / +3.9054%。生成 C++ 证明混用 extern 写 gate shared 与 `T.copy` 写 up shared 会额外插入一次动态 CTA barrier。
- gate/up 都用 four-wave continuous 后，额外 barrier 消失并小幅提升 -0.2186%。
- 将两路分给两组 wave 后相对 four-wave 中间版 7/7 提升，随后在最终修正版相对 v039 的 13 对 AB/BA 中 13/13 提升，中位 -2.61518%、均值 -2.62202%。
- 新增 cache-key flag 时曾漏改 `make_kernel` factory 签名；Case2/3 C++ SHA 检查发现 flags 错位。修复后 Case2/3 C++ 恢复与 v039 字节一致，所有接受证据从零重跑。

最终 submission SHA-256：`{source_hash}`。
""")

    write(rep / f"{ID}_report.md", f"""# v040 实验报告：Case1 Step1 split-wave continuous BSM

版本：`{ID}`  
父版本：`{PARENT_ID}`（`{PARENT_COMMIT}`）  
平台：MetaX C500 16 GiB / 25% sGPU（sc-16g）  
状态：接受，新的 dorm 最优基线。  
submission SHA-256：`{source_hash}`

## 结论

Case1 Step1 的 gate/up 权重 staging 全部改用 continuous BSM；wave 0/1 负责 gate，wave 2/3 负责 up。每个 CTA、每个 K tile 的地址覆盖和数学工作不变，每线程八笔 16-byte BSM。这样既避免 gate-only 混合 shared writer 触发 TileLang 的额外 barrier，又让四个 wave 均衡参与搬运。

最终 13 对 clean AB/BA：v039 3.015693 ms，v040 2.936602 ms；13/13 提升，paired 中位 -2.61518%、均值 -2.62202%。OJ W20/R100 为 2.937183 / 4.918592 / 10.646587 ms。三 OJ shape max abs 均 0.001953125、padding=0、OJ import allowlist 通过；官方 functional 2/2 通过。Case2/3 device C++ SHA 与 v039 字节级相同。

## mcTracer

Case1 Step1 中位 2.054144 -> 1.976320 ms，paired 中位 -3.63229%，3/3 同向。Step2 codegen 未改，trace paired 中位 -0.26925% 且方向混合，判为采样噪声。Step1 private memory 为 0，register 206->204，dynamic shared 仍 32 KiB。

## mcProfiler

Compact replay：Total Cycles -5.856%、AP active -1.591%、WSM stall -67.925%；dispatched/achieved waves 都保持 1,626,148，private read/write 都为 0。VLS pipeline stall +25.071%，四分区 VL1 stall 平均 +10.427%。这说明收益来自把同步 staging 迁移到 BSM 后减少 CTA 等待并增加计算/搬运重叠，而不是所有访存 stall 同时下降。Profiler replay 只作机制证据，elapsed time 仍由 clean benchmark 和 mcTracer 裁决。

## C++、ISA 与 Roofline

Step1 资源 206->204 MT、ST 28 不变、2 static waves/PEU、0 stack/spill。候选汇编出现 32 个静态 `ldg_b128 ... bsm` 文本站点，显式 STS 文本站点 16->0，barrier 站点 3->2；MMA/LDG/LDS 静态数受循环展开变化影响，不能解释为动态工作减少。AI=83.591837 FLOP/B；按 mcTracer 中位，100.3622->104.3143 TFLOP/s，schedule traffic 1200.62->1247.90 GB/s，在 1400/1843.2 GB/s sensitivity 下仍位于 memory side。

## 决策

接受 v040。下一轮可继续围绕 Step1 的 BSM wave 分工、循环展开与 VLS/VL1 排队压力优化，但不得把 VLS/VL1 stall 上升误判为整体负优化；必须同时看 Total Cycles、WSM、mcTracer 与 clean OJ。
""")

    write(scripts / f"{ID}_scripts.md", """# v040 scripts

- `v040_pair_benchmark.py`: exact submission AB/BA benchmark.
- `validate_submission.py` / `validate_oj_submission.py`: correctness, padding and OJ import gates.
- `v040_run_paired_mctracer.py`: paired Step1/Step2 trace capture; legacy labels are documented in the report.
- `v040_run_mcprofiler_step1.sh`: compact Step1 mcProfiler replay.
- `v040_capture_codegen.py` / `extract_metax_isa.sh`: device C++, resources, xcore1000 ISA and `.text`.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: official and OJ benchmark adapters.
- `render_roofline.py`: schedule-aware Roofline rendering.
- `v040_finalize_iteration.py`: create the five-root package.
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
        "primary_change": "Case1 Step1 splits continuous BSM weight staging: waves 0/1 gate, waves 2/3 up",
        "primary_result": {
            "case1_pair_median_change_percent": -2.6151825380243743,
            "case1_pair_mean_change_percent": -2.622019680039968,
            "case1_pair_wins": "13/13",
            "mctracer_step1_median_change_percent": -3.6322925737031775,
            "mctracer_step1_wins": "3/3",
            "case2_case3_codegen": "byte-identical to v039",
        },
        "resource_result": "Case1 Step1 204 MT, 28 ST, 0 private, 32 KiB dynamic shared, 2 static waves/PEU",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "artifact_roots": ROOT_NAMES,
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for path in (rep / f"{ID}_manifest.json", exp / f"{ID}_manifest.json", roof / f"{ID}_manifest.json"):
        write(path, manifest_text)

    source_files = [submission, parent_submission, MOE / "fusedmoe_benchmark.py", MOE / "oj_benchmark.py"]
    write(rep / f"{ID}_source_hashes.sha256", "\n".join(f"{sha256(path)}  {path.relative_to(REPO)}" for path in source_files))
    print(json.dumps({"iteration_id": ID, "submission_sha256": source_hash, "status": "finalized"}, indent=2))


if __name__ == "__main__":
    main()
