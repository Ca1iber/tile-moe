#!/usr/bin/env python3
"""Finalize accepted v043 Step1 vector fast-reciprocal iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v043-work")
ID = "v043_step1_vector_fast_rcp_sc-16g"
PARENT_ID = "v042_step1_bsm_address_helper_sc-16g"
PARENT_COMMIT = "6086a1ba6bb4fcf227c408574fa9f05dd4656b2d"
ROOT_NAMES = (
    "moe-roofline",
    "restart-experiments",
    "restart-rep",
    "restart-scripts",
    "restart-submission",
)


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
    existing = [str(path) for path in roots.values() if path.exists()]
    if existing:
        raise SystemExit("refusing to overwrite:\n" + "\n".join(existing))
    for path in roots.values():
        path.mkdir(parents=True)
    roof, exp, rep, scripts, subdir = (roots[name] for name in ROOT_NAMES)
    parent_scripts = MOE / "restart-scripts" / PARENT_ID
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"

    submission = subdir / "submission.py"
    copy_file(WORK / "submission.py", submission)
    source_hash = sha256(submission)
    write(subdir / "submission.sha256", f"{source_hash}  submission.py")
    validation = subprocess.run(
        [
            "/opt/conda/bin/python",
            str(parent_scripts / "validate_oj_submission.py"),
            str(submission),
        ],
        cwd=REPO,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
    )
    write(subdir / "oj_import_validation.txt", validation.stdout)
    if validation.returncode:
        raise RuntimeError(validation.stdout)

    write(
        rep / ".gitattributes",
        """*.bc binary
*.mcfb binary
*.bin binary
*.elf binary
*.pdf binary
*.png binary
codegen/**/*.cpp -text
profiler/**/*.txt -text
""",
    )
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

    for source in sorted((WORK / "probes").glob("*.py")):
        copy_file(source, exp / "probes" / source.name)
    write(
        exp / "probes" / "probe_results.md",
        """# v043 probe results

- Direct 4-row helper: paired median -0.0459% (1/5 regression); rejected as noise.
- Direct 2-row helper: -0.0491% (5/5) but below the acceptance floor; not stacked.
- Pointer `restrict`: -0.0187% median with 1/5 regression; rejected.
- Hoisting the gate/up wave branch around all 16 BSM requests regressed +3.1577%; explicit unrolling regressed +3.5756%.
- Grouping two BSM requests under each wave mask regressed +2.2671%. The short row-wise gate/up interleave is required by this backend despite its larger static control-flow footprint.
- `__frcp_rn` through a scalar pure-extern lowered the 16xfloat4 epilogue into a 64-element scalar loop and regressed +7.1647%; rejected.
- `__builtin_mxc_rcpf` inside an in-place float4x16 helper preserved vector lowering and improved -0.45093% in the final 13-pair test.
""",
    )

    benchmark = rep / "benchmark" / "exact_final"
    for source, name in (
        (WORK / "benchmark" / "case1_pair13.jsonl", "case1_pair13.jsonl"),
        (WORK / "benchmark" / "oj_w20_r100.jsonl", "oj_w20_r100.jsonl"),
        (WORK / "benchmark" / "oj_import.log", "oj_import.log"),
        (WORK / "benchmark" / "three_oj_shapes_reference.jsonl", "three_oj_shapes_reference.jsonl"),
        (WORK / "benchmark" / "multiseed_correctness.jsonl", "multiseed_correctness.jsonl"),
    ):
        copy_file(source, benchmark / name)
    write(benchmark / "submission.sha256", f"{source_hash}  submission.py")
    for index in (0, 1):
        copy_file(
            WORK / "benchmark" / f"v043_official_functional_{index}.log",
            rep / "benchmark" / f"official_functional_{index}.log",
        )
    copy_file(
        WORK / "benchmark" / "three_oj_shapes_reference.jsonl",
        rep / "correctness" / "three_oj_shapes_reference.jsonl",
    )
    copy_file(
        WORK / "benchmark" / "multiseed_correctness.jsonl",
        rep / "correctness" / "multiseed_parent_comparison.jsonl",
    )

    copy_tree(WORK / "profiler" / "mctracer", rep / "profiler" / "mctracer" / "raw")
    copy_file(
        WORK / "profiler" / "mctracer" / "v037_vs_v036_case1_mctracer_summary.json",
        rep / "profiler" / "mctracer" / "v043_vs_v042_case1_summary.json",
    )
    write(
        rep / "profiler" / "mctracer" / "LABEL_MAPPING.md",
        "The reused tracer helper labels v042 as `v036` and v043 as `v037`; embedded source paths are authoritative.",
    )

    copy_tree(
        WORK / "profiler" / "mcprofiler_parent",
        rep / "profiler" / "mcprofiler" / "raw" / "parent_v042",
    )
    copy_tree(
        WORK / "profiler" / "mcprofiler_candidate_invalid",
        rep / "profiler" / "mcprofiler" / "raw" / "candidate_v043_invalid_first_replay",
    )
    copy_tree(
        WORK / "profiler" / "mcprofiler_candidate_retry",
        rep / "profiler" / "mcprofiler" / "raw" / "candidate_v043_retry",
    )
    mcprof = {
        "authority": "diagnostic multi-event replay only; paired benchmark and mcTracer own elapsed-time decisions",
        "parent": "v042",
        "candidate": "v043",
        "first_candidate_replay": "invalid: multiple hardware events missing despite PROFILE_DONE",
        "retry": {
            "parent_total_kcycles": 8434002.23,
            "candidate_total_kcycles": 8043815.83,
            "raw_change_percent": -4.6263492629,
            "parent_waves": 1626148,
            "candidate_waves": 1645180,
            "wave_count_mismatch_percent": 1.1703731764,
            "parent_private_read_write": [0, 0],
            "candidate_private_read_write": [0, 0],
            "interpretation": "The retry is complete but replay wave counts differ despite identical grid and resources, so counter deltas are not used quantitatively. Zero private traffic agrees with the resource report. ISA removal of the exact division correction chain and paired mcTracer provide the mechanism evidence.",
        },
    }
    write(rep / "profiler" / "mcprofiler" / "summary.json", json.dumps(mcprof, indent=2))
    copy_file(WORK / "profiler" / "mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt")
    write(
        rep / "profiler" / "mxsmi" / "README.md",
        "Snapshot confirms MetaX C500, sGPU enabled, 25% compute and 16,000 MiB quota. Idle utilization is not a bandwidth measurement.",
    )

    for case in (1, 2, 3):
        copy_tree(WORK / "codegen" / f"case{case}", rep / "codegen" / "final" / f"case{case}")
    copy_tree(WORK / "codegen" / "isa_case1", rep / "codegen" / "isa_case1")
    copy_file(
        MOE / "restart-rep" / PARENT_ID / "codegen" / "isa_case1" / "v042_final_case1_generated_device.metax.s",
        rep / "codegen" / "comparison" / "v042_parent_step1.metax.s",
    )
    copy_file(
        WORK / "codegen" / "isa_case1" / "v043_final_case1_generated_device.metax.s",
        rep / "codegen" / "comparison" / "v043_candidate_step1.metax.s",
    )
    copy_file(WORK / "codegen" / "comparison.json", rep / "codegen" / "comparison.json")
    codegen = {
        "submission_sha256": source_hash,
        "case1": {
            "device_cpp_sha256": "d19ff4fab547d8cb83941d8eea7a6ce71e58f75e09fc5369c6e0418bbb22f54a",
            "assembly_sha256": "06e87df2eade332b4b72af9d477f015076f05bfa5d0b374880dd42155cfa539d",
            "resources": "Step1 222 MT / 36 ST; Step2 222 MT / 52 ST; 2 static waves/PEU; zero stack/private/spill",
            "step1_static_isa": {
                "unchanged": {"mma": 128, "ldg": 51, "ldg_bsm": 47, "lds": 32, "sts": 0},
                "v042": {"exp_f32": 64, "rcp_f32": 64, "div_scale_f32": 128, "div_fmas_f32": 64, "div_fixup_f32": 64, "snop": 511},
                "v043": {"exp_f32": 64, "rcp_f32": 64, "div_scale_f32": 0, "div_fmas_f32": 0, "div_fixup_f32": 0, "snop": 351},
            },
        },
        "case2": {"kernel_region_byte_identical_to_v042": True, "kernel_region_sha256": "18cc5dc1ca53035f928d4832507a02bcabfda2dd17f3e5f58b735f6721507f2a"},
        "case3": {"kernel_region_byte_identical_to_v042": True, "kernel_region_sha256": "b9514c45b9a8e46ad86c319bba5571ffcfff640ad05cc431ee5ba2ae4f6f1b9b"},
        "caveat": "The helper prefix changes whole-file SHA for Case2/3; their kernel regions are byte-identical to v042.",
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen, indent=2))

    script_mapping = {
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
        "v042_pair_benchmark.py": "v043_pair_benchmark.py",
        "v042_capture_codegen.py": "v043_capture_codegen.py",
        "v042_run_paired_mctracer.py": "v043_run_paired_mctracer.py",
    }
    for source, destination in script_mapping.items():
        copy_file(parent_scripts / source, scripts / destination)
    copy_file(WORK / "v043_multiseed_correctness.py", scripts / "v043_multiseed_correctness.py")
    copy_file(__file__, scripts / "v043_finalize_iteration.py")
    write(
        scripts / "v043_run_mcprofiler_step1.sh",
        """#!/usr/bin/env bash
set -euo pipefail
echo 'Use mcProfiler with outputs under /tmp, then copy only final evidence into restart-rep; do not create *_tmp directories under race_tests/moe.'
exit 2
""",
    )

    write(
        roof / "v043_step1_schedule_roofline_points.csv",
        """label,ai_flop_per_byte,tflops
v042 Case1 Step1,83.59183673469387,108.59039482200647
v043 Case1 Step1,83.59183673469387,109.55058740307442
""",
    )
    subprocess.run(
        [
            "/opt/conda/bin/python",
            str(scripts / "render_roofline.py"),
            "--points",
            str(roof / "v043_step1_schedule_roofline_points.csv"),
            "--output-prefix",
            str(roof / "v043_case1_step1_schedule_roofline"),
            "--compute-roof-tflops",
            "479.232",
            "--bandwidth-roof",
            "sc16_measured_conservative=1400",
            "--bandwidth-roof",
            "physical_theoretical=1843.2",
            "--bandwidth-roof",
            "linear_25pct_sensitivity=460.8",
            "--title",
            "v043 Case1 Step1 vector fast reciprocal (sc-16g)",
        ],
        cwd=REPO,
        check=True,
    )
    write(
        roof / "v043_roofline_readme.md",
        """# v043 Roofline notes

- Declared GEMM schedule work: 206,158,430,208 FLOPs; bytes: 2,466,250,752; AI=83.591837 FLOP/B.
- Paired mcTracer medians: v042 1.898496 ms, v043 1.881856 ms.
- Schedule throughput: 108.5904 -> 109.5506 TFLOP/s; equivalent traffic: 1299.06 -> 1310.54 GB/s.
- Dynamic GEMM work and bytes do not change. This epilogue instruction optimization moves the plotted schedule point upward at fixed declared AI; exact reciprocal-vs-approximate reciprocal scalar work is not added to the GEMM FLOP convention.
""",
    )

    write(
        exp / f"{ID}_experiment.md",
        f"""# v043 Step1 vector fast reciprocal

Parent: `{PARENT_ID}` at `{PARENT_COMMIT}`. The Case1 Step1 SwiGLU epilogue used `1/(1+exp2(...))`; final MetaX ISA expanded each FP32 division into `div_scale`, `rcp`, `div_fmas`, and `div_fixup`. The accepted OJ-compliant helper keeps the existing FP32 exp2 and float4x16 register layout but replaces the exact reciprocal correction sequence with `__builtin_mxc_rcpf`.

The important lowering constraint was preserving vector structure. A scalar `T.call_pure_extern` candidate regressed 7.16%; only the in-place float4 helper produced a gain. Final submission SHA-256: `{source_hash}`.
""",
    )
    write(
        rep / f"{ID}_report.md",
        f"""# v043 report: Case1 Step1 vector fast reciprocal

Status: accepted new best on sc-16g. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Submission SHA-256 `{source_hash}`.

Clean Case1 13-pair AB/BA: parent median 2.858409 ms, candidate 2.845409 ms; paired median -0.45093%, mean -0.45007%, 13/13 wins. OJ W20/R100: 2.845855 / 4.938163 / 10.647739 ms. All three OJ cases pass FP32 reference with max_abs=0.001953125 and zero padding. Official functional 2/2 and OJ import validation pass.

The approximate reciprocal received an extra numerical gate: 3 seeds x input scales 0.25/1/2 all pass parent comparison. At standard scale, maximum parent/candidate difference is 0.0009765625. At 2x scale the observed maximum is 0.0078125, still within rtol=atol=1e-2.

Paired mcTracer localizes the gain to Step1: -0.729% / -0.593% / -0.876%, median -0.729%; Step2 median +0.054% is noise. ISA keeps MMA/LDG/BSM/LDS unchanged while removing 128 `div_scale`, 64 `div_fmas`, and 64 `div_fixup` sites; SNOP falls 511->351. Resources remain 222 MT / 36 ST for Step1, two static waves, zero private/stack/spill. Case2/3 kernel regions are byte-identical to v042.

mcProfiler raw data is archived but downgraded: the first candidate replay missed events, and the retry reports 1.17% more waves despite identical grid/resources. It is not used for the acceptance decision.
""",
    )
    write(
        scripts / f"{ID}_scripts.md",
        """# v043 scripts

- Pair/OJ/official adapters reproduce performance and correctness gates.
- `v043_multiseed_correctness.py` reproduces the reciprocal-specific 3x3 numerical scan.
- mcTracer, codegen, and ISA tools reproduce stage timing and exact division-chain removal.
- mcProfiler raw replays are retained with their reliability caveat.
- All future scratch output must remain under system `/tmp`; only final evidence enters the five version directories.
""",
    )

    manifest = {
        "iteration_id": ID,
        "status": "accepted",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "machine": "sc-16g",
        "submission_sha256": source_hash,
        "decision": "accepted-new-best",
        "primary_change": "Case1 Step1 float4x16 SwiGLU epilogue uses __builtin_mxc_rcpf while preserving FP32 exp2 and vector lowering",
        "primary_result": {
            "case1_pair_median_change_percent": -0.4509293504870726,
            "case1_pair_mean_change_percent": -0.4500653585427018,
            "case1_pair_wins": "13/13",
            "mctracer_step1_median_change_percent": -0.7292370020256622,
            "mctracer_step1_wins": "3/3",
        },
        "numerical_gate": "OJ reference 3/3 plus parent comparison across 3 seeds x 3 input scales",
        "resource_result": "Case1 Step1 222 MT, 36 ST, 0 private/stack, 32 KiB dynamic shared, 2 static waves/PEU",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "scratch_policy": "in-flight artifacts under /tmp/tile-moe-scratch-20260814; no race_tests/moe/*_tmp directories",
        "artifact_roots": list(ROOT_NAMES),
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for path in (
        rep / f"{ID}_manifest.json",
        exp / f"{ID}_manifest.json",
        roof / f"{ID}_manifest.json",
    ):
        write(path, manifest_text)
    sources = [submission, parent_submission, MOE / "fusedmoe_benchmark.py", MOE / "oj_benchmark.py"]
    write(
        rep / f"{ID}_source_hashes.sha256",
        "\n".join(f"{sha256(path)}  {path.relative_to(REPO)}" for path in sources),
    )
    print(json.dumps({"iteration_id": ID, "submission_sha256": source_hash, "status": "finalized"}, indent=2))


if __name__ == "__main__":
    main()
