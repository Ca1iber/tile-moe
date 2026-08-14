#!/usr/bin/env python3
"""Finalize the locally accepted v052 Case3 Step1 one-wave BSM iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v052-work")
ID = "v052_step1_case3_one_wave_bsm_sc-16g"
PARENT_ID = "v050_case1_step2_v027_rollback_sc-16g"
PARENT_COMMIT = "b7772836"
HEAD_BEFORE = "e06318dc"
SOURCE_HASH = "774343051d2a9fb7cecdd635b971085b61b9ec973725524dfc0f2e4d26a93986"


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


def copy_file(src, dst):
    src = Path(src)
    if not src.is_file():
        raise FileNotFoundError(src)
    dst = Path(dst)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def copy_tree(src, dst):
    src = Path(src)
    if not src.is_dir():
        raise FileNotFoundError(src)
    shutil.copytree(src, dst, dirs_exist_ok=True)


def make_diff(left, right, output):
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    with output.open("w", encoding="utf-8") as stream:
        subprocess.run(
            ["git", "diff", "--no-index", "--", str(left), str(right)],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )


def normalize_mctracer(src, dst):
    payload = json.loads(Path(src).read_text(encoding="utf-8"))
    # The inherited runner used historical internal labels.  Exact source paths
    # prove that raw v049 means v050 parent and raw v050 means v052 candidate.
    mapping = {"v049": "v050_parent", "v050": "v052_candidate"}
    payload["legacy_tag_mapping"] = mapping
    payload["sources"] = {
        "v050_parent": str(MOE / "restart-submission" / PARENT_ID / "submission.py"),
        "v052_candidate": str(WORK / "v052_submission.py"),
    }
    for row in payload["rows"]:
        row["legacy_tag"] = row["tag"]
        row["tag"] = mapping[row["tag"]]
    payload["aggregate"] = {
        "v050_parent": payload["aggregate"]["v049"],
        "v052_candidate": payload["aggregate"]["v050"],
    }
    write(dst, json.dumps(payload, ensure_ascii=False, indent=2))


def inventory(root):
    rows = []
    for path in sorted(root.rglob("*")):
        if path.is_file() and path.name != "artifact_inventory.sha256":
            rows.append(f"{sha256(path)}  {path.relative_to(root)}")
    write(root / "artifact_inventory.sha256", "\n".join(rows))


def main():
    roots = {
        name: MOE / name / ID
        for name in ("moe-roofline", "restart-experiments", "restart-rep", "restart-scripts", "restart-submission")
    }
    for path in roots.values():
        path.mkdir(parents=True, exist_ok=True)
    roof = roots["moe-roofline"]
    exp = roots["restart-experiments"]
    rep = roots["restart-rep"]
    scripts = roots["restart-scripts"]
    subdir = roots["restart-submission"]
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"
    inherited = MOE / "restart-scripts" / PARENT_ID

    submission = subdir / "submission.py"
    copy_file(WORK / "v052_submission.py", submission)
    if sha256(submission) != SOURCE_HASH:
        raise SystemExit("candidate source hash changed before finalization")
    write(subdir / "submission.sha256", f"{SOURCE_HASH}  submission.py")
    copy_file(WORK / "oj_import_validation.log", subdir / "oj_import_validation.txt")

    copy_file(submission, exp / f"{ID}_custom_fusedmoe.py")
    make_diff(parent_submission, submission, exp / f"{ID}.patch")
    write(
        exp / f"{ID}_experiment.md",
        f"""# v052 Case3 Step1 one-wave BSM staging

Status: accepted as the new local sc-16g best and packaged for OJ; external OJ timing is pending. The implementation parent is `{PARENT_ID}` at `{PARENT_COMMIT}`; the branch also retains the rejected v051 record at `{HEAD_BEFORE}`. Submission SHA-256: `{SOURCE_HASH}`.

Case3 Step1 now uses direct `continuous_pipeline_memcpy_async<16>` BSM staging with one producer wave for gate and one for up. A 7168-wide helper uses the exact 14336-byte FP16 row stride. Case1 remains byte-identical to v050 and keeps its accepted fast reciprocal; Case2 remains byte-identical; Case3 keeps the normal SiLU path and its Step2 generated body is byte-identical.

The first probe reused Case1's hard-coded 4096-byte row stride and failed Case3 correctness. A second probe put the 7168 helper in a separate `T.import_source`, which TileLang could not merge into the single `pragma_import_c`. The final source concatenates both helper strings into one import and selects the exact helper per shape.

All three OJ-shaped cases pass with max abs 0.001953125 and zero padding, official functional tests pass 2/2, and the OJ import allowlist passes. In 13 alternating W20/R100 Case3 pairs, the parent/candidate medians are 10.242933/10.009800 ms; paired median -2.31103%, mean -2.43854%, 13/13 wins.

mcTracer localizes the improvement to Step1: median 6.916352 -> 6.632960 ms, paired median -3.03144%. Wave-matched mcProfiler replay reports memory instructions -10.546%, global-read bytes -4.326%, AP active cycles -3.381%, MMA duty 45.40% -> 46.99%, MTE duty 7.04% -> 8.03%, and zero private traffic.
""",
    )

    benchmark = rep / "benchmark"
    copy_file(WORK / "pair_case3_w20_r100_13pairs_final.log", benchmark / "case3_pair13_w20_r100.log")
    copy_file(WORK / "pair_case3_w20_r100_9pairs.log", benchmark / "case3_pair9_exploratory.log")
    copy_file(WORK / "oj_w20_r100.log", benchmark / "oj_w20_r100.log")
    copy_file(WORK / "official_functional.log", benchmark / "official_functional.log")
    write(benchmark / "submission.sha256", f"{SOURCE_HASH}  submission.py")

    correctness = rep / "correctness"
    copy_file(WORK / "validate_submission_final.log", correctness / "three_oj_shapes_reference.log")
    copy_file(WORK / "official_functional.log", correctness / "official_functional.log")
    copy_file(WORK / "oj_import_validation.log", correctness / "oj_import_validation.log")
    copy_file(WORK / "validate_submission.log", correctness / "diagnostic_initial_4096_byte_stride_failure.log")
    copy_file(WORK / "validate_case3_strided.log", correctness / "diagnostic_two_import_lowering_failure.log")
    copy_file(WORK / "validate_case3_strided_v2.log", correctness / "case3_14336_byte_stride_pass.log")
    write(
        correctness / "diagnostic_failures.md",
        """# Correctness diagnostics

- The initial direct reuse of the Case1 helper addressed each weight row with a 4096-byte stride. Case3 has 7168 FP16 columns and therefore requires 14336 bytes; the wrong stride corrupted most Case3 outputs.
- Defining the corrected helper through a second `T.import_source` failed during lowering because the backend could not merge two distinct `pragma_import_c` attributes.
- The final source concatenates helper strings into one import. Exact Case3 and all three final OJ shapes pass.
""",
    )

    codegen = rep / "codegen"
    for case in (1, 2, 3):
        copy_tree(WORK / f"codegen_candidate_case{case}", codegen / "candidate" / f"case{case}")
    copy_tree(Path("/tmp/tile-moe-scratch-20260814/v051-work/codegen_parent_case3"), codegen / "parent_v050" / "case3")
    copy_tree(Path("/tmp/tile-moe-scratch-20260814/v051-work/isa_parent"), codegen / "isa_case3" / "parent_v050")
    copy_tree(WORK / "isa_candidate", codegen / "isa_case3" / "candidate_v052")
    copy_tree(WORK / "isa_analysis", codegen / "isa_analysis")
    copy_file(WORK / "parent_step2_raw.cpp", codegen / "step2_identity" / "parent_step2_raw.cpp")
    copy_file(WORK / "candidate_step2_raw.cpp", codegen / "step2_identity" / "candidate_step2_raw.cpp")
    parent_cpp = Path("/tmp/tile-moe-scratch-20260814/v051-work/codegen_parent_case3/v050_parent_case3_generated_device.cpp")
    candidate_cpp = WORK / "codegen_candidate_case3/v052_candidate_case3_generated_device.cpp"
    make_diff(parent_cpp, candidate_cpp, codegen / "case3_parent_vs_candidate_cpp.diff")
    write(
        codegen / "summary.json",
        json.dumps(
            {
                "submission_sha256": SOURCE_HASH,
                "case1_generated_cpp_sha256": "c23e478d0238c5123dbe1858a671b7c9b7aa362069a42ad6f7d85fecfe230c50",
                "case1_byte_identical_to_v050": True,
                "case2_generated_cpp_sha256": "11594a94c119f41bc4b8756d73651c5fbb5bb73a1ac1567b224560d6b1796c73",
                "case2_byte_identical_to_v050": True,
                "case3_step2_body_sha256": "450bdd9c3e6206b2b94dca87d5b9ff8f6fe0732ddf5b421f487798b8fea2060e",
                "case3_step2_byte_identical": True,
                "case3_generated_cpp_bytes": {"v050_parent": 34844, "v052_candidate": 28902},
                "case3_step1_resources": {
                    "v050_parent": "210 MT / 52 ST / two static waves / zero stack-private",
                    "v052_candidate": "216 MT / 36 ST / two static waves / zero stack-private",
                },
                "case3_step2_resources": "unchanged at 234 MT / 52 ST / two static waves / zero stack-private",
                "step1_cpp_static_sites": {
                    "syncthreads": {"v050_parent": 4, "v052_candidate": 2},
                    "explicit_shared_uint4_stores": {"v050_parent": 8, "v052_candidate": 0},
                },
                "step1_dynamic_syncthreads": {"v050_parent": 223, "v052_candidate": 223},
                "isa_static_instruction_count": {"v050_parent": 3167, "v052_candidate": 3966},
                "isa_interpretation": "Static ISA grows because the BSM helper is inlined while the K loop changes from 56x128 to 112x64; static MMA/barrier counts therefore halve but dynamic math/barrier work remains equal. Use wave-matched dynamic counters for traffic decisions.",
            },
            ensure_ascii=False,
            indent=2,
        ),
    )

    mctracer = rep / "profiler" / "mctracer"
    copy_tree(WORK / "mctracer_case3", mctracer / "raw" / "case3")
    copy_file(WORK / "mctracer_driver.log", mctracer / "mctracer_driver.log")
    normalize_mctracer(
        WORK / "mctracer_case3/v050_vs_v049_case3_mctracer_summary.json",
        mctracer / "v050_vs_v052_case3_mctracer_summary.json",
    )

    mcprofiler = rep / "profiler" / "mcprofiler"
    copy_tree(WORK / "mcprofiler/case3/v050_parent_retry", mcprofiler / "raw" / "v050_parent")
    copy_tree(WORK / "mcprofiler/case3/v052_candidate", mcprofiler / "raw" / "v052_candidate")
    copy_tree(WORK / "mcprofiler/case3/v050_parent", mcprofiler / "diagnostic_failed_relative_path")
    copy_file(WORK / "mcprofiler/case3/wave_matched_summary.json", mcprofiler / "wave_matched_summary.json")
    write(
        mcprofiler / "README.md",
        """# mcProfiler replay

The valid comparison uses `raw/v050_parent` and `raw/v052_candidate`. Both report 16896 achieved/dispatched waves, so counter comparison is valid. Counters aggregate the two Case3 launches; generated Step2 is byte-identical, so the clean timing and mcTracer own the stage-level decision.

`diagnostic_failed_relative_path` is retained only to document a tooling error: mcProfiler changed its working directory, so a relative parent submission path raised `FileNotFoundError`. It contains no valid counter evidence and was replaced by the absolute-path retry.
""",
    )
    copy_file(WORK / "mxsmi_before_mcprofiler.txt", rep / "profiler" / "mxsmi" / "before_mcprofiler.txt")
    copy_file(WORK / "mxsmi_after_mcprofiler.txt", rep / "profiler" / "mxsmi" / "after_mcprofiler.txt")

    script_mapping = {
        "v050_capture_codegen.py": "v052_capture_codegen.py",
        "v050_pair_benchmark.py": "v052_pair_benchmark.py",
        "v050_run_paired_mctracer.py": "v052_run_paired_mctracer_used.py",
        "profile_submission.py": "profile_submission.py",
        "validate_submission.py": "validate_submission.py",
        "validate_oj_submission.py": "validate_oj_submission.py",
        "oj_submission_benchmark.py": "oj_submission_benchmark.py",
        "official_submission_benchmark.py": "official_submission_benchmark.py",
        "validate_iteration.py": "validate_iteration.py",
    }
    for source, destination in script_mapping.items():
        copy_file(inherited / source, scripts / destination)
    copy_file(MOE / "restart-scripts/v049_step2_case3_expert_grouped_grid_sc-16g/render_roofline.py", scripts / "render_roofline.py")
    copy_file(MOE / "restart-scripts/v049_step2_case3_expert_grouped_grid_sc-16g/extract_metax_isa.sh", scripts / "extract_metax_isa.sh")
    copy_file(WORK / "v052_run_mcprofiler.sh", scripts / "v052_run_mcprofiler.sh")
    copy_file(WORK / "v052_summarize_mcprofiler.py", scripts / "v052_summarize_mcprofiler.py")
    copy_file(WORK / "v052_analyze_isa.py", scripts / "v052_analyze_isa.py")
    copy_file(Path(__file__), scripts / "v052_finalize_iteration.py")
    write(
        scripts / f"{ID}_scripts.md",
        """# v052 scripts

- `v052_pair_benchmark.py`: alternating AB/BA correctness and W20/R100 timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: exact numerical, import, OJ-shape timing, and official functional gates.
- `v052_run_paired_mctracer_used.py`: exact runner used for the five stage-timing pairs. Its internal v049/v050 tags are historical; archived source paths and the normalized summary map them to v050/v052.
- `v052_run_mcprofiler.sh` and `v052_summarize_mcprofiler.py`: four-batch counter replay and value-normalized wave-match comparison. Always pass absolute submission paths because mcProfiler changes cwd.
- `v052_capture_codegen.py`, `extract_metax_isa.sh`, and `v052_analyze_isa.py`: generated C++, resource, final MetaX ISA, and Step1 opcode evidence.
- `render_roofline.py`: fixed declared-schedule AI Roofline rendering.
- `v052_finalize_iteration.py`: creates the matching evidence and submission archive.

All in-flight output is rooted at `/tmp/tile-moe-scratch-20260814/v052-work`.
""",
    )

    copy_file(WORK / "v052_case3_step1_roofline_points.csv", roof / "v052_case3_step1_roofline_points.csv")
    copy_file(WORK / "roofline/v052_case3_step1_one_wave_bsm_roofline.svg", roof / "v052_case3_step1_one_wave_bsm_roofline.svg")
    copy_file(WORK / "roofline/v052_case3_step1_one_wave_bsm_roofline_render.json", roof / "v052_case3_step1_one_wave_bsm_roofline_render.json")
    write(
        roof / "v052_roofline_readme.md",
        """# v052 Case3 Step1 Roofline

- Declared schedule work and bytes remain 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B.
- Paired mcTracer medians are 6.916352 ms for v050 and 6.632960 ms for v052, or 104.3259 -> 108.7832 TFLOP/s.
- Equivalent declared-schedule traffic is 465.74 -> 485.64 GB/s. This is not a measured HBM bandwidth claim.
- AI 224 is below both the 260 FLOP/B physical-theory ridge and the 342.31 FLOP/B conservative measured ridge, so the fixed schedule remains on the memory side under both declared models.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity, not asserted hardware truth.
""",
    )

    write(
        rep / f"{ID}_report.md",
        f"""# v052 report: Case3 Step1 one-wave BSM staging

Status: accepted as the new local sc-16g best, OJ-compliant package ready; external OJ timing pending. Parent implementation `{PARENT_ID}` / `{PARENT_COMMIT}`. Submission SHA-256 `{SOURCE_HASH}`.

Authoritative Case3 W20/R100 13-pair AB/BA: parent median 10.242933 ms, candidate median 10.009800 ms; paired median -2.31103%, mean -2.43854%, 13/13 wins. Candidate OJ W20/R100 times are 2.967104 / 4.936855 / 10.000243 ms. All three exact shapes pass FP32 reference with max abs 0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes.

mcTracer Step1 medians are 6.916352 -> 6.632960 ms, a -3.03144% paired median. Step2 source is byte-identical; its -0.62970% trace median is treated as correlated run noise rather than attributed optimization. Grids and 32 KiB dynamic shared memory are unchanged. Step1 moves 210 MT/52 ST -> 216 MT/36 ST but stays at two static waves with zero private/stack spill; Step2 stays 234 MT/52 ST.

Lowering replaces explicit per-thread 128-bit global-load/shared-store weight staging with the direct BSM helper. Static C++ Step1 barrier sites fall 4 -> 2 and explicit shared uint4 stores 8 -> 0, but the loop changes 56x128 to 112x64, so the dynamic `__syncthreads` count remains 223. Static ISA grows 3167 -> 3966 instructions because the helper is inlined; static MMA and barrier sites halve while dynamic math/barrier work is preserved. Therefore smaller static code is not the mechanism.

Wave-matched mcProfiler (16896/16896 waves) supplies the dynamic evidence: memory instructions 52,200,064 -> 46,695,040 (-10.546%), global reads 7.7479 -> 7.4127 GB (-4.326%), AP active cycles -3.381%, L2 hit rate +0.56 percentage points, MMA duty 45.40% -> 46.99%, MTE duty 7.04% -> 8.03%, and zero private traffic. Together with clean paired timing, this supports more efficient direct weight staging rather than a barrier-count or occupancy explanation.

The initial 4096-byte row-stride correctness failure and the two-import lowering failure are explicitly archived. The accepted helper uses the exact Case3 14336-byte row stride and one combined `T.import_source`.
""",
    )

    write(rep / ".gitattributes", "*.bc binary\n*.mcfb binary\n*.bin binary\n*.elf binary\n*.pdf binary\n*.png binary\ncodegen/**/*.cpp -text\nprofiler/**/*.txt -text")
    write(roof / ".gitattributes", "*.png binary\n*.pdf binary")

    manifest = {
        "iteration_id": ID,
        "status": "accepted",
        "external_oj_status": "pending",
        "decision": "accepted-new-local-best",
        "machine": "sc-16g",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "branch_head_before": HEAD_BEFORE,
        "submission_sha256": SOURCE_HASH,
        "change": "Case3-only Step1 one-wave direct BSM gate/up staging with exact 14336-byte row stride; preserve normal SiLU",
        "correctness": "three OJ shapes pass, max_abs 0.001953125, zero padding; official 2/2; imports valid",
        "primary_result": {
            "case3_parent_median_ms": 10.242933349609375,
            "case3_candidate_median_ms": 10.0097998046875,
            "paired_median_change_percent": -2.3110326038185414,
            "paired_mean_change_percent": -2.43853548930901,
            "wins": "13/13",
            "mctracer_step1_median_ms": {"v050_parent": 6.916352, "v052_candidate": 6.63296},
            "mctracer_step1_paired_median_change_percent": -3.031437125748504,
        },
        "mcprofiler_wave_matched": {
            "waves": 16896,
            "memory_instruction_change_percent": -10.54601005853173,
            "global_read_byte_change_percent": -4.326385244335662,
            "ap_active_cycle_change_percent": -3.3805475996677603,
            "mma_duty": [45.4, 46.99],
            "mte_duty": [7.04, 8.03],
        },
        "resource_result": "Case3 Step1 216 MT/36 ST, two static waves, zero private/stack; Step2 unchanged 234 MT/52 ST",
        "roofline": "Case3 Step1 fixed AI 224 FLOP/B; 104.3259 -> 108.7832 TFLOP/s; memory side under declared physical and conservative measured ridges",
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for root in roots.values():
        write(root / f"{ID}_manifest.json", manifest_text)
    write(rep / "source_hashes.sha256", f"{SOURCE_HASH}  restart-submission/{ID}/submission.py")
    inventory(rep)
    print(json.dumps(manifest, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
