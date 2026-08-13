#!/usr/bin/env python3
"""Finalize accepted v042 Case1 Step1 BSM address-helper iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path

REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
ID = "v042_step1_bsm_address_helper_sc-16g"
PARENT_ID = "v041_step1_one_wave_async_sc-16g"
PARENT_COMMIT = "19591940612dc5eddde581d76bf2acd0d88cbc46"
SOURCE = Path("/tmp/v042_final_submission.py")
ROOT_NAMES = ["moe-roofline", "restart-experiments", "restart-rep", "restart-scripts", "restart-submission"]


def sha256(path):
    h = hashlib.sha256()
    with Path(path).open("rb") as f:
        for chunk in iter(lambda: f.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def write(path, content):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content.rstrip() + "\n", encoding="utf-8")


def copy_file(src, dst, required=True):
    src = Path(src)
    if not src.is_file():
        if required:
            raise FileNotFoundError(src)
        return
    dst = Path(dst)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def copy_tree(src, dst, required=True):
    src = Path(src)
    if not src.is_dir():
        if required:
            raise FileNotFoundError(src)
        return
    dst = Path(dst)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(src, dst)


def main():
    roots = {name: MOE / name / ID for name in ROOT_NAMES}
    existing = [str(p) for p in roots.values() if p.exists()]
    if existing:
        raise SystemExit("refusing to overwrite:\n" + "\n".join(existing))
    for p in roots.values():
        p.mkdir(parents=True)
    roof, exp, rep, scripts, subdir = (roots[name] for name in ROOT_NAMES)
    parent_scripts = MOE / "restart-scripts" / PARENT_ID
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"

    submission = subdir / "submission.py"
    copy_file(SOURCE, submission)
    source_hash = sha256(submission)
    write(subdir / "submission.sha256", f"{source_hash}  submission.py")
    check = subprocess.run(
        ["/opt/conda/bin/python", str(parent_scripts / "validate_oj_submission.py"), str(submission)],
        cwd=REPO, text=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
    )
    write(subdir / "oj_import_validation.txt", check.stdout)
    if check.returncode:
        raise RuntimeError(check.stdout)

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
    with (exp / f"{ID}.patch").open("w", encoding="utf-8") as f:
        subprocess.run(["git", "diff", "--no-index", "--", str(parent_submission), str(submission)], cwd=REPO, text=True, stdout=f, check=False)

    probes = [
        "v042_probe_one_wave_sequential.py", "v042_probe_one_wave_interleaved.py",
        "v042_probe_three_wave_gate2.py", "v042_probe_three_wave_up2.py",
        "v042_probe_helper_pair.py", "v042_probe_helper_select.py",
        "v042_probe_helper_single.py", "v042_probe_helper_shift.py",
        "v042_probe_helper_shift_8x2.py",
    ]
    for name in probes:
        copy_file(Path("/tmp") / name, exp / "probes" / name, required=False)
    probe_logs = [
        "v042_one_wave_sequential_pair5.jsonl", "v042_one_wave_interleaved_pair5.jsonl",
        "v042_three_wave_gate2_pair5.jsonl", "v042_three_wave_up2_pair5.jsonl",
        "v042_helper_pair5.jsonl", "v042_helper_select_pair7.jsonl",
        "v042_helper_single_pair7.jsonl", "v042_helper_shift_pair7.jsonl",
        "v042_helper_shift_8x2_pair7.jsonl",
    ]
    for name in probe_logs:
        copy_file(Path("/tmp") / name, exp / "probes" / "results" / name, required=False)
    write(exp / "probes" / "probe_results.md", """# v042 probe results

- Producer-concurrency curve relative to v041: one wave sequential +2.502%, one wave interleaved +3.777%; gate2/up1 three-wave +1.249%; gate1/up2 three-wave +1.401%. Together with v040 four-wave and v041 two-wave evidence, exactly one producer wave per tensor is the optimum.
- A paired gate/up helper with closed-form swizzled addresses improved -0.304% (5/5).
- Combining gate/up through runtime pointer selection regressed +1.981% because it lengthened the select/dependency chain.
- A single-tensor helper was numerically correct but regressed +43.012%; codegen showed Step1 MT registers hit 256, while barriers stayed unchanged.
- Strength-reducing address arithmetic to shifts improved -0.414% (7/7).
- Calling an inlined two-row helper from an 8-iteration loop was best: -0.425% (7/7), then -0.43165% in the final 13-pair run.
""")

    benchmark = rep / "benchmark" / "exact_final"
    for src, name in (
        ("/tmp/v042_exact_pair13.jsonl", "case1_pair13.jsonl"),
        ("/tmp/v042_correctness.jsonl", "correctness.jsonl"),
        ("/tmp/v042_oj_import.log", "oj_import.log"),
        ("/tmp/v042_oj_w20_r100.jsonl", "oj_w20_r100.jsonl"),
    ):
        copy_file(src, benchmark / name)
    write(benchmark / "submission.sha256", f"{source_hash}  submission.py")
    for i in (0, 1):
        copy_file(f"/tmp/v042_official_functional_{i}.log", rep / "benchmark" / f"official_functional_{i}.log")
    copy_file("/tmp/v042_correctness.jsonl", rep / "correctness" / "three_oj_shapes_reference.jsonl")

    copy_tree(MOE / "v042_mctracer_tmp" / "final_case1", rep / "profiler" / "mctracer" / "raw")
    trace_summary = rep / "profiler" / "mctracer" / "raw" / "v037_vs_v036_case1_mctracer_summary.json"
    copy_file(trace_summary, rep / "profiler" / "mctracer" / "v042_vs_v041_case1_summary.json")
    write(rep / "profiler" / "mctracer" / "LABEL_MAPPING.md", """# Label mapping

The reused tracer helper retains legacy tags: `v036` is v041 and `v037` is v042. Embedded source paths are authoritative.
""")
    copy_tree(MOE / "v041_mcprof_tmp" / "final_candidate_v041_case1_step1_compact", rep / "profiler" / "mcprofiler" / "raw" / "parent_v041_case1_step1_compact")
    copy_tree(MOE / "v042_mcprof_tmp" / "final_candidate_v042_case1_step1_compact", rep / "profiler" / "mcprofiler" / "raw" / "candidate_v042_case1_step1_compact")
    mcprof = {
        "authority": "diagnostic multi-event replay; clean paired benchmark and mcTracer own elapsed-time decisions",
        "parent": "v041", "candidate": "v042", "case1_step1": {
            "total_kcycles": {"v041": 8454588.68, "v042": 8409132.87, "change_percent": -0.5376466168},
            "dispatched_waves": {"v041": 1626148, "v042": 1626148},
            "achieved_waves": {"v041": 1626148, "v042": 1626148},
            "ap_active_cycles": {"v041": 2305478603, "v042": 2297786019, "change_percent": -0.3336653825},
            "wsm_stall": {"v041": 20034300, "v042": 20035751, "change_percent": 0.0072425790},
            "vls_pipeline_stall": {"v041": 766945036, "v042": 737861537, "change_percent": -3.7921229860},
            "vls_wdata_stall": {"v041": 54018192, "v042": 54018192},
            "vl1_partition_stall": {
                "v041": [92564166, 95387850, 94094881, 95162301],
                "v042": [90787592, 93127961, 92028003, 93885341],
                "mean_change_percent": -1.9565538272,
            },
            "private_read_write": {"v041": [0, 0], "v042": [0, 0]},
            "interpretation": "Closed-form address generation shortens control/address dependencies and slightly reduces VLS/VL1 pressure without changing dynamic bytes or waves.",
        },
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(mcprof, indent=2))
    copy_file("/tmp/v042_mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt", required=False)
    if not (rep / "profiler" / "mxsmi" / "snapshot.txt").exists():
        copy_file(MOE / "restart-rep" / PARENT_ID / "profiler" / "mxsmi" / "snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt")
    write(rep / "profiler" / "mxsmi" / "README.md", "The snapshot records the C500 25% sGPU / 16 GiB context; idle utilization is not a bandwidth measurement.")

    for case in (1, 2, 3):
        copy_tree(f"/tmp/v042_codegen_case{case}", rep / "codegen" / "final" / f"case{case}")
    copy_tree("/tmp/v042_isa_case1", rep / "codegen" / "isa_case1")
    copy_file(MOE / "restart-rep" / PARENT_ID / "codegen" / "isa_case1" / "v041_final_case1_generated_device.metax.s", rep / "codegen" / "comparison" / "v041_parent_step1.metax.s")
    copy_file("/tmp/v042_isa_case1/v042_final_case1_generated_device.metax.s", rep / "codegen" / "comparison" / "v042_candidate_step1.metax.s")
    codegen = {
        "submission_sha256": source_hash,
        "case1": {
            "device_cpp_sha256": "78b154bc151e6e9f64d97e1c0841fdb85357e36cbfbf2ad53b3458b4f237d83e",
            "assembly_sha256": "501a3e8370c24f44d342746dbfb48b6fa676c1d83b3afcff63c25a498feaeec3",
            "text_sha256": "4aea41b5c7b966c116b40a7c4c23351ca0b631a0fbe97bcc791a04ecb511a6af",
            "step1_resources": "222 MT / 36 ST / 0 private / 0 stack / 2 static waves per PEU",
            "v041_step1_resources": "220 MT / 52 ST / 0 private / 0 stack / 2 static waves per PEU",
            "isa_static_step1_counts": {
                "v041": {"mma": 128, "ldg": 68, "ldg_bsm": 64, "sts": 0, "lds": 32, "barrier": 2, "snop": 563, "ldp": 0, "stp": 0},
                "v042": {"mma": 128, "ldg": 51, "ldg_bsm": 47, "sts": 0, "lds": 32, "barrier": 2, "snop": 511, "ldp": 0, "stp": 0},
            },
        },
        "case2": {"whole_cpp_sha256": "fbab29450f43cabb975b552681d6264aa75d3ff7d06a7daf694564f83a676f9f", "kernel_region_sha256": "18cc5dc1ca53035f928d4832507a02bcabfda2dd17f3e5f58b735f6721507f2a", "kernel_region_byte_identical_to_v041": True},
        "case3": {"whole_cpp_sha256": "1686da810d9ba35397582e1bddcac24571d6117882b577de3ae3b9c001a1ef96", "kernel_region_sha256": "b9514c45b9a8e46ad86c319bba5571ffcfff640ad05cc431ee5ba2ae4f6f1b9b", "kernel_region_byte_identical_to_v041": True},
        "caveat": "The unused helper changes the Case2/3 file prefix, so whole-file SHA changes. Text from the first extern-C kernel onward is byte-identical. Static BSM site counts reflect helper inlining/unrolling, not dynamic byte reduction.",
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen, indent=2))

    mapping = {
        "collect_mxsmi.sh": "collect_mxsmi.sh", "extract_metax_isa.sh": "extract_metax_isa.sh",
        "official_submission_benchmark.py": "official_submission_benchmark.py", "oj_submission_benchmark.py": "oj_submission_benchmark.py",
        "profile_submission.py": "profile_submission.py", "render_roofline.py": "render_roofline.py",
        "summarize_iteration.py": "summarize_iteration.py", "validate_iteration.py": "validate_iteration.py",
        "validate_oj_submission.py": "validate_oj_submission.py", "validate_submission.py": "validate_submission.py",
        "v041_pair_benchmark.py": "v042_pair_benchmark.py", "v041_capture_codegen.py": "v042_capture_codegen.py",
        "v041_run_paired_mctracer.py": "v042_run_paired_mctracer.py",
    }
    for src, dst in mapping.items():
        copy_file(parent_scripts / src, scripts / dst)
    copy_file("/tmp/v042_run_mcprofiler_step1.sh", scripts / "v042_run_mcprofiler_step1.sh")
    copy_file(__file__, scripts / "v042_finalize_iteration.py")

    write(roof / "v042_step1_schedule_roofline_points.csv", """label,ai_flop_per_byte,tflops
v041 Case1 Step1,83.59183673469387,108.0948144966443
v042 Case1 Step1,83.59183673469387,108.40037259388883
""")
    subprocess.run([
        "/opt/conda/bin/python", str(scripts / "render_roofline.py"), "--points", str(roof / "v042_step1_schedule_roofline_points.csv"),
        "--output-prefix", str(roof / "v042_case1_step1_schedule_roofline"), "--compute-roof-tflops", "479.232",
        "--bandwidth-roof", "sc16_measured_conservative=1400", "--bandwidth-roof", "physical_theoretical=1843.2",
        "--bandwidth-roof", "linear_25pct_sensitivity=460.8", "--title", "v042 Case1 Step1 BSM address helper (sc-16g)",
    ], cwd=REPO, check=True)
    write(roof / "v042_roofline_readme.md", """# v042 Roofline notes

- Schedule work 206,158,430,208 FLOPs; schedule bytes 2,466,250,752; AI=83.591837 FLOP/B.
- mcTracer medians: v041 1.907200 ms, v042 1.901824 ms.
- Throughput 108.0948 -> 108.4004 TFLOP/s; schedule-equivalent traffic 1293.13 -> 1296.78 GB/s.
- Dynamic work/bytes do not change; the point moves upward at fixed AI and remains memory-side under the declared 1400/1843.2 GB/s sensitivities.
""")

    write(exp / f"{ID}_experiment.md", f"""# v042 Step1 BSM closed-form address helper

v041 established one independent producer wave per tensor as optimal. This iteration first completed the producer-concurrency curve, then targeted v041's long swizzle/global address expressions. An OJ-compliant `T.import_source` helper computes the equivalent physical shared byte offset and logical global column in closed form. An 8-iteration TileLang loop calls an inlined two-row helper, preserving the same 16 requests per active thread, bytes, barriers, shared layout, and MMA work. Submission SHA-256: `{source_hash}`.

Generated C++/ISA and negative probes showed why superficially shorter forms can fail: runtime pointer selection regressed 1.981%, while a single-tensor helper raised MT to 256 and regressed 43.012%. The accepted paired helper uses static gate/up choice within one helper call and strength-reduced shifts.
""")
    write(rep / f"{ID}_report.md", f"""# v042 report: Case1 Step1 BSM address helper

Parent: `{PARENT_ID}` (`{PARENT_COMMIT}`); platform: C500 25% sGPU / 16 GiB; status: accepted new best. Submission SHA-256: `{source_hash}`.

Clean 13-pair AB/BA: v041 median 2.869110 ms, v042 2.856563 ms; paired median -0.43165%, mean -0.43442%, 13/13 wins. OJ W20/R100 is 2.857331 / 4.916887 / 10.651711 ms. Three OJ cases pass with max_abs=0.001953125 and padding=0; imports pass; official functional 2/2 pass. Case2/3 kernel regions are byte-identical from the first extern-C kernel onward; only the unused helper prefix changes whole-file SHA.

mcTracer Step1 paired median is -0.30852%, 3/3 wins. mcProfiler: Total Cycles -0.538%, AP active -0.334%, VLS pipeline stall -3.792%, mean VL1 stall -1.957%, waves unchanged, WSM flat, private traffic zero. Final ISA is 222 MT / 36 ST, two static waves, zero stack/private/spill; MMA/LDS/barrier sites stay fixed, while SNOP sites fall 563->511. At fixed AI=83.591837, tracer-derived throughput rises 108.0948->108.4004 TFLOP/s.

Decision: accept. The consistent clean benchmark, tracer, counters, and ISA support a smaller address/control dependency chain without changing data movement or math.
""")
    write(scripts / f"{ID}_scripts.md", """# v042 scripts

- Pair/OJ/official adapters and correctness/import validators reproduce acceptance.
- mcTracer and mcProfiler scripts capture stage time and counters.
- Codegen/ISA scripts preserve generated C++, resources, xcore1000 assembly, and text.
- Roofline, summary, strict validation, and finalization scripts reproduce the five-root archive.
""")

    manifest = {
        "iteration_id": ID, "status": "accepted", "parent_iteration": PARENT_ID, "parent_commit": PARENT_COMMIT,
        "machine": "sc-16g", "submission_sha256": source_hash, "decision": "accepted-new-best",
        "primary_change": "Case1 Step1 moves inverse-swizzle/global BSM address generation into a closed-form inline device helper with 8x2 issue scheduling",
        "primary_result": {"case1_pair_median_change_percent": -0.43164909281502295, "case1_pair_mean_change_percent": -0.43441868744058876, "case1_pair_wins": "13/13", "mctracer_step1_median_change_percent": -0.30851777330650476, "mctracer_step1_wins": "3/3"},
        "resource_result": "Case1 Step1 222 MT, 36 ST, 0 private/stack, 32 KiB dynamic shared, 2 static waves/PEU",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "artifact_roots": ROOT_NAMES,
    }
    text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for p in (rep / f"{ID}_manifest.json", exp / f"{ID}_manifest.json", roof / f"{ID}_manifest.json"):
        write(p, text)
    sources = [submission, parent_submission, MOE / "fusedmoe_benchmark.py", MOE / "oj_benchmark.py"]
    write(rep / f"{ID}_source_hashes.sha256", "\n".join(f"{sha256(p)}  {p.relative_to(REPO)}" for p in sources))
    print(json.dumps({"iteration_id": ID, "submission_sha256": source_hash, "status": "finalized"}, indent=2))


if __name__ == "__main__":
    main()
