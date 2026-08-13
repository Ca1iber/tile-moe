#!/usr/bin/env python3
"""Finalize the accepted v041 Case1 Step1 one-wave BSM producer iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v041_step1_one_wave_async_sc-16g"
PARENT_ID = "v040_step1_split_wave_async_sc-16g"
PARENT_COMMIT = "d43efefcb0ee5d29a943da2d21911b54e45ed038"
SOURCE = Path("/tmp/v041_final_submission.py")
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
        cwd=REPO, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
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
            cwd=REPO, text=True, stdout=stream, check=False,
        )

    probes = {
        "v041_probe_reversed_tensor_waves.py": "/tmp/v041_probe_reversed_tensor_waves.py",
        "v041_probe_interleaved_waves.py": "/tmp/v041_probe_interleaved_waves.py",
        "v041_probe_four_round_double_issue.py": "/tmp/v041_probe_four_round_double_issue.py",
        "v041_probe_tensor_stagger.py": "/tmp/v041_probe_tensor_stagger.py",
        "v041_probe_one_wave_adjacent.py": "/tmp/v041_probe_one_wave_adjacent.py",
        "v041_probe_wave_local_rows.py": "/tmp/v041_probe_wave_local_rows.py",
        "v041_probe_one_wave_pair01.py": "/tmp/v041_probe_one_wave_pair01.py",
        "v041_probe_one_wave_pair03.py": "/tmp/v041_probe_one_wave_pair03.py",
        "v041_probe_one_wave_pair12.py": "/tmp/v041_probe_one_wave_pair12.py",
    }
    for name, source_path in probes.items():
        copy_file(source_path, exp / "probes" / name, required=False)
    probe_logs = {
        "reversed_pair7.jsonl": "/tmp/v041_reversed_pair7.jsonl",
        "interleaved_pair7.jsonl": "/tmp/v041_interleaved_pair7.jsonl",
        "double_issue_pair7.jsonl": "/tmp/v041_double_issue_pair7.jsonl",
        "tensor_stagger_pair5.jsonl": "/tmp/v041_tensor_stagger_pair5.jsonl",
        "one_wave_adjacent_pair5.jsonl": "/tmp/v041_one_wave_pair5.jsonl",
        "wave_local_rows_pair5.jsonl": "/tmp/v041_wave_local_pair5.jsonl",
        "one_wave_pair01_pair5.jsonl": "/tmp/v041_one_wave_pair01_pair5.jsonl",
        "one_wave_pair03_pair5.jsonl": "/tmp/v041_one_wave_pair03_pair5.jsonl",
        "one_wave_pair12_pair5.jsonl": "/tmp/v041_one_wave_pair12_pair5.jsonl",
    }
    for name, source_path in probe_logs.items():
        copy_file(source_path, exp / "probes" / "results" / name, required=False)
    write(exp / "probes" / "probe_results.md", """# v041 probe results

- Reversing the v040 gate/up wave groups was neutral: paired median +0.00523%.
- Interleaving tensor producers across waves regressed +2.12376%; adjacent waves accessing one tensor have better locality/queue behavior.
- Rewriting 8 rounds as 4x2 issue rounds was neutral: +0.01144%; the lowering preserved the effective instruction order.
- A 32 KiB tensor-stagger pipeline was correct but regressed +1.86783%. Generated C++ proved it increased the steady-state CTA barriers from about two to three per K tile.
- Assigning each of two waves one contiguous 64-row stripe regressed +1.11252%.
- One wave per tensor was the successful mechanism. Producer mapping sweep: wave0+1 -2.36421%, wave0+3 -2.26728%, wave1+2 -0.85747% (five-pair medians).
- Final mapping uses wave0 for gate and wave1 for up. Each active thread issues sixteen 16-byte continuous BSM requests; waves2/3 perform no weight staging. Address coverage, shared footprint, barriers, and MMA work remain unchanged.
""")

    benchmark = rep / "benchmark" / "exact_final"
    for source_path, name in (
        ("/tmp/v041_pair01_exact_pair13.jsonl", "case1_pair13.jsonl"),
        ("/tmp/v041_correctness.jsonl", "correctness.jsonl"),
        ("/tmp/v041_oj_import.log", "oj_import.log"),
        ("/tmp/v041_oj_w20_r100.jsonl", "oj_w20_r100.jsonl"),
    ):
        copy_file(source_path, benchmark / name)
    write(benchmark / "submission.sha256", f"{source_hash}  submission.py")
    for index in (0, 1):
        copy_file(f"/tmp/v041_official_functional_{index}.log", rep / "benchmark" / f"official_functional_{index}.log")
    copy_file("/tmp/v041_correctness.jsonl", rep / "correctness" / "three_oj_shapes_reference.jsonl")

    copy_tree(MOE / "v041_mctracer_tmp" / "final_case1", rep / "profiler" / "mctracer" / "raw")
    trace_summary = rep / "profiler" / "mctracer" / "raw" / "v037_vs_v036_case1_mctracer_summary.json"
    copy_file(trace_summary, rep / "profiler" / "mctracer" / "v041_vs_v040_case1_summary.json")
    write(rep / "profiler" / "mctracer" / "LABEL_MAPPING.md", """# Label mapping

The reused tracer helper retains legacy internal tags: `v036` is the v040 parent and `v037` is the v041 candidate. Source paths embedded in the summary are authoritative.
""")
    copy_tree(
        MOE / "v040_mcprof_tmp" / "final_candidate_v040_case1_step1_compact",
        rep / "profiler" / "mcprofiler" / "raw" / "parent_v040_case1_step1_compact",
    )
    copy_tree(
        MOE / "v041_mcprof_tmp" / "final_candidate_v041_case1_step1_compact",
        rep / "profiler" / "mcprofiler" / "raw" / "candidate_v041_case1_step1_compact",
    )
    mcprof_summary = {
        "authority": "diagnostic multi-event replay; clean paired benchmark and mcTracer own elapsed-time decisions",
        "parent": "v040", "candidate": "v041", "case1_step1": {
            "total_kcycles": {"v040": 8140525.20, "v041": 8454588.68, "change_percent": 3.8580247869},
            "dispatched_waves": {"v040": 1626148, "v041": 1626148},
            "achieved_waves": {"v040": 1626148, "v041": 1626148},
            "ap_active_cycles": {"v040": 2351654789, "v041": 2305478603, "change_percent": -1.9635614128},
            "wsm_stall": {"v040": 20044006, "v041": 20034300, "change_percent": -0.0484234539},
            "vls_pipeline_stall": {"v040": 929148992, "v041": 766945036, "change_percent": -17.4572600731},
            "vls_wdata_stall": {"v040": 54018192, "v041": 54018192},
            "vl1_partition_stall": {
                "v040": [99203633, 101230090, 98642422, 101084793],
                "v041": [92564166, 95387850, 94094881, 95162301],
                "mean_change_percent": -5.7356272990,
            },
            "private_read_write": {"v040": [0, 0], "v041": [0, 0]},
            "interpretation": "Reducing BSM producers from four waves to two relieves VLS/VL1 queueing. Total Cycles conflicts with clean benchmark and mcTracer, so it is not used as the runtime authority.",
        },
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(mcprof_summary, indent=2))
    copy_file("/tmp/v041_mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt")
    write(rep / "profiler" / "mxsmi" / "README.md", """# mx-smi scope

The snapshot records the MetaX C500 25% sGPU and 16 GiB quota context. Idle instantaneous utilization is not treated as a bandwidth measurement.
""")

    for case_id in (1, 2, 3):
        copy_tree(f"/tmp/v041_codegen_case{case_id}", rep / "codegen" / "final" / f"case{case_id}")
    copy_tree("/tmp/v041_isa_case1", rep / "codegen" / "isa_case1")
    copy_file(
        MOE / "restart-rep" / PARENT_ID / "codegen" / "isa_case1" / "v040_fixed_case1_generated_device.metax.s",
        rep / "codegen" / "comparison" / "v040_parent_step1.metax.s",
    )
    copy_file("/tmp/v041_isa_case1/v041_final_case1_generated_device.metax.s", rep / "codegen" / "comparison" / "v041_candidate_step1.metax.s")
    codegen_summary = {
        "submission_sha256": source_hash,
        "case1": {
            "device_cpp_sha256": "706a0cfb9526bfa7a1398be88f831f959cccbcc2a3b48702640ac0ae4780e628",
            "assembly_sha256": "eab43afe317395b1e3bb4cf0dd655df18346b3854cc5ab5cb05de89f65b326c0",
            "text_sha256": "a36aa6fa5c5965e296d05f02a6059a7ccdc7c6ce3f0f7d2d1eabcff8a2430366",
            "step1_resources": "220 MT / 52 ST / 0 private / 0 stack / 2 static waves per PEU",
            "v040_step1_resources": "204 MT / 28 ST / 0 private / 0 stack / 2 static waves per PEU",
            "isa_static_step1_counts": {
                "v040": {"mma": 128, "ldg": 36, "ldg_bsm": 32, "sts": 0, "lds": 32, "barrier": 2, "snop": 431, "ldp": 0, "stp": 0},
                "v041": {"mma": 128, "ldg": 68, "ldg_bsm": 64, "sts": 0, "lds": 32, "barrier": 2, "snop": 563, "ldp": 0, "stp": 0},
            },
        },
        "case2": {"device_cpp_sha256": "b5f77d9bd5f4a58567cc2d1adead2c6bc2597b15338f26f7ca4a018877137ec8", "byte_identical_to_v040": True},
        "case3": {"device_cpp_sha256": "1ffdcbfcaa0f97b4cc18e423e42167a692eac0fffba7b6b77822f9d55d6a5477", "byte_identical_to_v040": True},
        "caveat": "Static text sites changed because one active wave executes a longer unrolled producer loop. Dynamic addresses and bytes are unchanged; static counts are not dynamic work counts.",
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, indent=2))

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
        "v040_pair_benchmark.py": "v041_pair_benchmark.py",
        "v040_capture_codegen.py": "v041_capture_codegen.py",
        "v040_run_paired_mctracer.py": "v041_run_paired_mctracer.py",
    }
    for source_name, destination_name in script_map.items():
        copy_file(parent_scripts / source_name, scripts / destination_name)
    copy_file("/tmp/v041_run_mcprofiler_step1.sh", scripts / "v041_run_mcprofiler_step1.sh")
    copy_file(__file__, scripts / "v041_finalize_iteration.py")

    write(roof / "v041_step1_schedule_roofline_points.csv", """label,ai_flop_per_byte,tflops
v040 Case1 Step1,83.59183673469387,104.35484877543088
v041 Case1 Step1,83.59183673469387,107.99334424031113
""")
    subprocess.run([
        "/opt/conda/bin/python", str(scripts / "render_roofline.py"),
        "--points", str(roof / "v041_step1_schedule_roofline_points.csv"),
        "--output-prefix", str(roof / "v041_case1_step1_schedule_roofline"),
        "--compute-roof-tflops", "479.232",
        "--bandwidth-roof", "sc16_measured_conservative=1400",
        "--bandwidth-roof", "physical_theoretical=1843.2",
        "--bandwidth-roof", "linear_25pct_sensitivity=460.8",
        "--title", "v041 Case1 Step1 one-wave BSM producers (sc-16g)",
    ], cwd=REPO, check=True)
    write(roof / "v041_roofline_readme.md", """# v041 Roofline notes

- Case1 Step1 schedule work: 206,158,430,208 FLOPs; schedule bytes: 2,466,250,752; AI=83.591837 FLOP/B.
- mcTracer medians: v040 1.975552 ms, v041 1.908992 ms.
- Throughput: 104.3548 -> 107.9933 TFLOP/s; equivalent schedule traffic: 1248.39 -> 1291.91 GB/s.
- Both points stay on the memory side under the declared 479.232 TFLOP/s compute roof and 1400/1843.2 GB/s bandwidth sensitivities.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity, not asserted hardware truth.
""")

    write(exp / f"{ID}_experiment.md", f"""# v041 Step1 one-wave continuous-BSM producers

## Hypothesis / 假设

v040 removed synchronous shared staging and reduced WSM stalls, but mcProfiler showed VLS pipeline stall +25.07% and mean VL1 partition stall +10.43% versus v039. The hypothesis was that four simultaneous producer waves overfilled the BSM/VLS path. Keep the same 32 KiB shared buffers, 16-byte request size, address coverage, MMA, and two CTA barriers, while reducing producer concurrency.

## Exploration / 探索

- Gate/up group reversal was neutral; tensor identity was not the cause.
- Interleaved waves and wave-local 64-row strips regressed, proving adjacent waves and original row ordering matter.
- A 32 KiB tensor-stagger overlap schedule was correct but added a third CTA barrier per K tile and regressed 1.868%.
- One producer wave per tensor improved about 2.3%. Mapping sweep selected wave0=gate and wave1=up; later waves were consistently weaker.

## Final mechanism / 最终机制

Wave0 stages the complete 128x64 gate tile and wave1 stages the complete up tile. Each active thread issues sixteen continuous 16-byte BSM requests; waves2/3 issue no weight copy. Dynamic address/byte coverage is identical to v040. Submission SHA-256: `{source_hash}`.
""")

    write(rep / f"{ID}_report.md", f"""# v041 report: Case1 Step1 one-wave BSM producers

Version: `{ID}`  
Parent: `{PARENT_ID}` (`{PARENT_COMMIT}`)  
Platform: MetaX C500 16 GiB / 25% sGPU (sc-16g)  
Status: accepted, new dorm best.  
Submission SHA-256: `{source_hash}`

## Result / 结果

Clean 13-pair AB/BA: v040 median 2.936609 ms, v041 median 2.867272 ms; paired median -2.35001%, mean -2.35786%, 13/13 wins. OJ W20/R100: 2.868605 / 4.918267 / 10.646902 ms. All three OJ shapes passed with max_abs=0.001953125 and padding=0; OJ imports passed; official functional tests passed 2/2. Case2/3 device C++ is byte-identical to v040.

## mcTracer and mcProfiler / 阶段与计数器

mcTracer Step1 median 1.975552 -> 1.908992 ms; paired median -3.38214%, 3/3 wins. Step2 codegen is unchanged and its mixed-direction trace changes are noise. mcProfiler shows VLS pipeline stall -17.457%, mean VL1 partition stall -5.736%, AP active cycles -1.964%, waves unchanged, WSM flat, and no private traffic. Multi-event Total Cycles conflicts with clean benchmark/mcTracer (+3.858%) and is retained as a tool caveat, not used for acceptance.

## C++, ISA, resources, Roofline / 底层证据

Final ISA: 220 MT / 52 ST, two static waves/PEU, zero stack/private and no `ldp/stp` spill. The producer loop has more static BSM sites because one active wave executes sixteen unrolled requests, but dynamic bytes and mathematical work are unchanged. Barriers remain two static Step1 sites and MMA remains 128 static sites. At AI=83.591837 FLOP/B, Step1 moves 104.3548 -> 107.9933 TFLOP/s and 1248.39 -> 1291.91 GB/s schedule-equivalent traffic, remaining memory-side in the declared model.

## Decision / 决策

Accept v041. The causal chain is consistent: v040 exposed VLS/VL1 queue pressure; reducing BSM producer waves relieves those stalls and improves clean Step1. Register count rises without lowering the two-wave residency limit or causing spill.
""")

    write(scripts / f"{ID}_scripts.md", """# v041 scripts

- `v041_pair_benchmark.py`: exact AB/BA benchmark.
- `validate_submission.py` / `validate_oj_submission.py`: correctness, padding, and OJ import gates.
- `v041_run_paired_mctracer.py`: paired Step1/Step2 trace capture; legacy labels are documented.
- `v041_run_mcprofiler_step1.sh`: compact Step1 mcProfiler replay.
- `v041_capture_codegen.py` / `extract_metax_isa.sh`: device C++, resources, xcore1000 ISA, and `.text`.
- `official_submission_benchmark.py` / `oj_submission_benchmark.py`: official and OJ adapters.
- `render_roofline.py`: schedule-aware Roofline rendering.
- `v041_finalize_iteration.py`: create the five-root package.
- `summarize_iteration.py` / `validate_iteration.py`: inventory and strict archive gates.
""")

    manifest = {
        "iteration_id": ID, "status": "accepted", "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT, "machine": "sc-16g", "submission_sha256": source_hash,
        "decision": "accepted-new-best",
        "primary_change": "Case1 Step1 continuous BSM producers reduced from four waves to wave0 gate plus wave1 up",
        "primary_result": {
            "case1_pair_median_change_percent": -2.3500100058788442,
            "case1_pair_mean_change_percent": -2.357855678279418,
            "case1_pair_wins": "13/13",
            "mctracer_step1_median_change_percent": -3.3821433199429873,
            "mctracer_step1_wins": "3/3",
            "case2_case3_codegen": "byte-identical to v040",
        },
        "resource_result": "Case1 Step1 220 MT, 52 ST, 0 private/stack, 32 KiB dynamic shared, 2 static waves/PEU",
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
