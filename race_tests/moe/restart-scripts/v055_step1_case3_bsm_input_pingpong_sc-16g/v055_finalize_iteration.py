#!/usr/bin/env python3
"""Finalize the accepted v055 Case3 Step1 A-fragment ping-pong iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v055-work")
ID = "v055_step1_case3_bsm_input_pingpong_sc-16g"
PARENT_ID = "v052_step1_case3_one_wave_bsm_sc-16g"
PARENT_COMMIT = "e8591a30"
HEAD_BEFORE = "bf2cf4b9"
SOURCE_HASH = "8cbb52c21571234403a95f4a52868b4d7bc25887f506ddae1ed7f39fb37f2483"


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


def normalize_generated_text(path):
    """Remove generator-only trailing whitespace while preserving source semantics."""
    path = Path(path)
    lines = path.read_text(encoding="utf-8").splitlines()
    path.write_text("\n".join(line.rstrip() for line in lines).rstrip() + "\n", encoding="utf-8")


def normalize_mctracer(src, dst):
    payload = json.loads(Path(src).read_text(encoding="utf-8"))
    mapping = {"v049": "v052_parent", "v050": "v055_candidate"}
    payload["legacy_tag_mapping"] = mapping
    payload["sources"] = {
        "v052_parent": str(MOE / "restart-submission" / PARENT_ID / "submission.py"),
        "v055_candidate": str(WORK / "v055_submission.py"),
    }
    for row in payload["rows"]:
        row["legacy_tag"] = row["tag"]
        row["tag"] = mapping[row["tag"]]
    payload["aggregate"] = {
        "v052_parent": payload["aggregate"]["v049"],
        "v055_candidate": payload["aggregate"]["v050"],
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
        for name in (
            "moe-roofline",
            "restart-experiments",
            "restart-rep",
            "restart-scripts",
            "restart-submission",
        )
    }
    for path in roots.values():
        path.mkdir(parents=True, exist_ok=True)
    roof = roots["moe-roofline"]
    exp = roots["restart-experiments"]
    rep = roots["restart-rep"]
    scripts = roots["restart-scripts"]
    subdir = roots["restart-submission"]
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"
    v052_scripts = MOE / "restart-scripts" / PARENT_ID
    v054_scripts = MOE / "restart-scripts" / "v054_step1_case3_bsm_cse_sc-16g"

    submission = subdir / "submission.py"
    copy_file(WORK / "v055_submission.py", submission)
    if sha256(submission) != SOURCE_HASH:
        raise SystemExit("candidate source hash changed before finalization")
    write(subdir / "submission.sha256", f"{SOURCE_HASH}  submission.py")
    copy_file(WORK / "oj_import_validation.log", subdir / "oj_import_validation.txt")

    copy_file(submission, exp / f"{ID}_custom_fusedmoe.py")
    make_diff(parent_submission, submission, exp / f"{ID}.patch")
    write(
        exp / f"{ID}_experiment.md",
        f"""# v055 Case3 Step1 BSM plus A-fragment ping-pong

Status: accepted as the new local sc-16g best and packaged for OJ; external OJ timing is pending. Implementation parent `{PARENT_ID}` / `{PARENT_COMMIT}`; branch head before this iteration `{HEAD_BEFORE}`. Submission SHA-256 `{SOURCE_HASH}`.

The exact 64-expert Case3 Step1 path keeps v052's one-wave direct BSM weight staging and pairs adjacent K tiles. It alternates the two register-resident A fragments: after waiting for the current weight tile, it loads odd A before even MMA; after staging and waiting for odd weights, it loads the next even A before odd MMA. This is the v019 ordering that previously helped the conventional weight path, now combined with v052. The schedule deliberately does not move A before the current weight barrier because v020 showed that ordering regressed Case3.

Dynamic work is unchanged: 112 A tiles, 112 gate/up weight tiles, identical MMA work, 223 `T.sync_threads`, the same grids, and the same 32 KiB dynamic shared-memory allocation. The candidate trades register lifetime and code size for instruction-level overlap: Case3 Step1 rises from 216 to 234 MT registers, remains at two static waves, and has no stack/private spill. Step2 is unchanged. Case1 retains the v052 schedule (generated C++ differs only by a final blank line), and Case2 generated C++ is byte-identical.

All three exact OJ shapes pass with max abs 0.001953125 and zero padding; official functional tests pass 2/2; the OJ import allowlist passes. In the authoritative 13-pair alternating W20/R100 Case3 test, parent/candidate medians are 10.017513/9.981776 ms, paired median -0.389331%, mean -0.430468%, and the candidate wins 13/13. A separate seven-pair screen also wins 7/7 with paired median -0.248671%.

mcTracer places the directional change in Step1: paired median -1.23634%; Step2 source is unchanged and its +0.32533% median is treated as trace noise. Wave-matched mcProfiler is diagnostic rather than timing authority: waves and Memory Instructions match exactly and private traffic is zero, while L2 hit rate improves 46.08% -> 53.92% and DNOC read requests fall 32.73%; however replay Total Cycles rises 1.26%, MMA/MTE duty fall slightly, and global-read bytes rise 5.15%. The disagreement is archived rather than hidden; acceptance is based on the clean 13/13 paired timing gate.
""",
    )

    benchmark = rep / "benchmark"
    copy_file(WORK / "pair_case3_verdict13_w20_r100.log", benchmark / "case3_pair13_w20_r100.log")
    copy_file(WORK / "pair_case3_screen7_w20_r100.log", benchmark / "case3_pair7_screen_w20_r100.log")
    copy_file(WORK / "oj_w20_r100.log", benchmark / "oj_w20_r100.log")
    copy_file(WORK / "official_functional.log", benchmark / "official_functional.log")
    write(benchmark / "submission.sha256", f"{SOURCE_HASH}  submission.py")

    correctness = rep / "correctness"
    copy_file(WORK / "validate_all_cases.log", correctness / "three_oj_shapes_reference.log")
    copy_file(WORK / "official_functional.log", correctness / "official_functional.log")
    copy_file(WORK / "oj_import_validation.log", correctness / "oj_import_validation.log")
    write(
        correctness / "summary.md",
        """# Correctness summary

The exact three OJ shapes pass FP32-reference checks with maximum absolute error 0.001953125 and zero padding. The official functional suite passes both configured shapes. The standalone import validator accepts the packaged source. No correctness relaxation was introduced.
""",
    )

    codegen = rep / "codegen"
    for case in (1, 2, 3):
        copy_tree(WORK / f"codegen_candidate_case{case}", codegen / "candidate" / f"case{case}")
    copy_tree(
        MOE / "restart-rep" / PARENT_ID / "codegen" / "candidate" / "case3",
        codegen / "parent_v052" / "case3",
    )
    copy_tree(
        MOE / "restart-rep" / PARENT_ID / "codegen" / "isa_case3" / "candidate_v052",
        codegen / "isa_case3" / "parent_v052",
    )
    copy_tree(WORK / "isa_candidate_case3", codegen / "isa_case3" / "candidate_v055")
    copy_tree(WORK / "isa_analysis", codegen / "isa_analysis")
    make_diff(
        MOE / "restart-rep" / PARENT_ID / "codegen" / "candidate" / "case3" / "v052_candidate_case3_generated_device.cpp",
        WORK / "codegen_candidate_case3" / "v055_candidate_case3_generated_device.cpp",
        codegen / "case3_parent_vs_candidate_cpp.diff",
    )
    write(
        codegen / "summary.json",
        json.dumps(
            {
                "submission_sha256": SOURCE_HASH,
                "case1_schedule_equivalent_to_v052": True,
                "case1_cpp_difference": "one final blank line only",
                "case2_generated_cpp_byte_identical_to_v052": True,
                "case2_generated_cpp_sha256": "11594a94c119f41bc4b8756d73651c5fbb5bb73a1ac1567b224560d6b1796c73",
                "case3_step2_source_unchanged": True,
                "case3_step1_resources": {
                    "v052_parent": "216 MT / 36 ST / two static waves / zero stack-private",
                    "v055_candidate": "234 MT / 36 ST / two static waves / zero stack-private",
                },
                "case3_step2_resources": "234 MT / 52 ST / two static waves / zero stack-private",
                "case3_dynamic_schedule": {
                    "a_tiles": [112, 112],
                    "weight_tiles": [112, 112],
                    "sync_threads": [223, 223],
                    "mma_work": "unchanged",
                    "dynamic_shared_bytes": [32768, 32768],
                },
                "case3_generated_cpp_bytes": {"v052_parent": 28902, "v055_candidate": 33269},
                "step1_static_isa_instructions": {"v052_parent": 3966, "v055_candidate": 5004},
                "step1_static_isa_change_percent": 26.172465960665647,
                "static_isa_interpretation": "Pair splitting duplicates parity-specialized static sites; dynamic A/weight/MMA/barrier work is unchanged.",
            },
            ensure_ascii=False,
            indent=2,
        ),
    )

    mctracer = rep / "profiler" / "mctracer"
    copy_tree(WORK / "mctracer_case3", mctracer / "raw" / "case3")
    normalize_mctracer(
        WORK / "mctracer_case3" / "v050_vs_v049_case3_mctracer_summary.json",
        mctracer / "v052_vs_v055_case3_mctracer_summary.json",
    )
    write(
        mctracer / "README.md",
        """# mcTracer stage timing

Five AB/BA pairs with five warmups were captured. Historical runner tags `v049` and `v050` map to the archived v052 parent and v055 candidate source paths. Step1 paired median changes -1.23634%; unchanged Step2 changes +0.32533%, demonstrating the magnitude of tracer noise. Clean paired end-to-end timing owns acceptance.
""",
    )

    mcprofiler = rep / "profiler" / "mcprofiler"
    profiler_root = Path("/tmp/tile-moe-scratch-20260814/v052-work/mcprofiler/case3")
    copy_tree(profiler_root / "v052_parent_for_v055_r2", mcprofiler / "raw" / "v052_parent_wave_matched")
    copy_tree(profiler_root / "v055_candidate_for_v055", mcprofiler / "raw" / "v055_candidate_wave_matched")
    copy_tree(profiler_root / "v052_parent_for_v055", mcprofiler / "diagnostic" / "v052_parent_wave_mismatch")
    copy_file(WORK / "mcprofiler_wave_matched_summary.json", mcprofiler / "wave_matched_summary.json")
    copy_file(WORK / "mcprofiler_summary.json", mcprofiler / "diagnostic_wave_mismatch_summary.json")
    write(
        mcprofiler / "README.md",
        """# mcProfiler replay

The valid counter comparison uses `raw/v052_parent_wave_matched` and `raw/v055_candidate_wave_matched`: both have 5,758,096 achieved and dispatched waves, identical Memory Instructions, and zero private reads/writes. The first parent capture counted 1.616% extra achieved waves and is retained only under `diagnostic/`.

Counters are diagnostic because mcProfiler multiplexes metrics across replays and perturbs timing. The valid capture reports L2 hit +7.84 percentage points and DNOC reads -32.73%, but global-read bytes +5.15%, Total Cycles +1.26%, MMA duty -1.12%, and MTE duty -0.29%. These mixed results do not prove the overlap mechanism; the clean 13-pair benchmark is authoritative.
""",
    )
    copy_file(WORK / "mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot_after_profiling.txt")

    script_mapping = {
        v052_scripts / "v052_capture_codegen.py": "v055_capture_codegen.py",
        v052_scripts / "v052_pair_benchmark.py": "v055_pair_benchmark.py",
        v054_scripts / "v054_run_paired_mctracer.py": "v055_run_paired_mctracer_used.py",
        v054_scripts / "profile_submission.py": "profile_submission.py",
        v052_scripts / "validate_submission.py": "validate_submission.py",
        v052_scripts / "validate_oj_submission.py": "validate_oj_submission.py",
        v052_scripts / "oj_submission_benchmark.py": "oj_submission_benchmark.py",
        v052_scripts / "official_submission_benchmark.py": "official_submission_benchmark.py",
        v052_scripts / "validate_iteration.py": "validate_iteration.py",
        v052_scripts / "render_roofline.py": "render_roofline.py",
        v054_scripts / "extract_metax_isa.sh": "extract_metax_isa.sh",
        v054_scripts / "v054_run_mcprofiler.sh": "v055_run_mcprofiler_used.sh",
        v054_scripts / "v054_summarize_mcprofiler.py": "v055_summarize_mcprofiler.py",
        v054_scripts / "v054_analyze_isa.py": "v055_analyze_isa.py",
    }
    for source, destination in script_mapping.items():
        copy_file(source, scripts / destination)
    copy_file(Path(__file__), scripts / "v055_finalize_iteration.py")
    write(
        scripts / f"{ID}_scripts.md",
        """# v055 scripts

- `v055_pair_benchmark.py`: alternating AB/BA correctness plus W20/R100 timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: exact numerical, import, OJ-shape timing, and official functional gates.
- `v055_run_paired_mctracer_used.py` and `profile_submission.py`: exact five-pair stage-timing capture. The runner retains historical internal v049/v050 labels; source paths and the normalized archive map them to v052/v055.
- `v055_run_mcprofiler_used.sh` and `v055_summarize_mcprofiler.py`: exact four-batch counter replay and wave-match comparison. The used runner retains its historical v052 scratch root; always pass absolute submission paths.
- `v055_capture_codegen.py`, `extract_metax_isa.sh`, and `v055_analyze_isa.py`: generated C++, resource, final MetaX ISA, and opcode evidence.
- `render_roofline.py`: fixed declared-schedule AI Roofline rendering.
- `v055_finalize_iteration.py`: creates the matching five-directory archive.

All in-flight outputs are under `/tmp/tile-moe-scratch-20260814/v055-work`, except the exact mcProfiler replay trees, which the used runner stores under `/tmp/tile-moe-scratch-20260814/v052-work/mcprofiler/case3`.
""",
    )

    copy_file(WORK / "v055_case3_step1_roofline_points.csv", roof / "v055_case3_step1_roofline_points.csv")
    copy_file(
        WORK / "roofline" / "v055_case3_step1_bsm_input_pingpong_roofline.svg",
        roof / "v055_case3_step1_bsm_input_pingpong_roofline.svg",
    )
    copy_file(
        WORK / "roofline" / "v055_case3_step1_bsm_input_pingpong_roofline_render.json",
        roof / "v055_case3_step1_bsm_input_pingpong_roofline_render.json",
    )
    write(
        roof / "v055_roofline_readme.md",
        """# v055 Case3 Step1 Roofline

- Declared schedule work and bytes remain 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B.
- Paired mcTracer medians are 6.758144 ms for v052 and 6.663936 ms for v055, or 106.7681 -> 108.2775 TFLOP/s.
- Equivalent declared-schedule traffic is 476.64 -> 483.38 GB/s. This is not a measured HBM-bandwidth claim.
- AI 224 is below both the 260 FLOP/B physical-theory ridge and the 342.31 FLOP/B conservative measured ridge, so the fixed schedule remains on the memory side under both declared models.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity, not asserted hardware truth.
""",
    )

    write(
        rep / f"{ID}_report.md",
        f"""# v055 report: Case3 Step1 BSM plus A-fragment ping-pong

Status: accepted as the new local sc-16g best, OJ-compliant package ready; external OJ timing pending. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Submission SHA-256 `{SOURCE_HASH}`.

Authoritative Case3 13-pair AB/BA W20/R100: parent median 10.017513 ms, candidate median 9.981776 ms; paired median -0.389331%, mean -0.430468%, 13/13 wins. The separate seven-pair screen is also 7/7 with -0.248671% median. Candidate standalone OJ W20/R100 times are 2.967744 / 4.942758 / 9.988687 ms. All exact shapes pass FP32 reference with max abs 0.001953125 and zero padding; official functional passes 2/2; OJ import validation passes.

The Case3-only schedule combines v052 one-wave BSM weight staging with alternating register A fragments. It issues odd A after the current weight wait and before even MMA, then issues next-even A after the odd-weight wait and before odd MMA. Dynamic A loads, BSM transfers, MMA work, 223 barriers, grid, and 32 KiB shared memory remain unchanged. Step1 moves 216 MT/36 ST -> 234 MT/36 ST, stays at two static waves, and does not spill. Step2 stays 234 MT/52 ST and is unchanged. Case1 is schedule-equivalent and Case2 generated C++ is byte-identical to v052.

mcTracer Step1 paired median is -1.23634%; unchanged Step2 is +0.32533% and treated as noise. Static ISA grows 3966 -> 5004 instructions (+26.1725%) because the paired schedule duplicates parity-specialized sites; this is not extra dynamic math. Static MMA sites 128 -> 256, loads and barriers also duplicate, while declared dynamic work remains fixed.

Wave-matched mcProfiler has 5,758,096 waves on both sources, identical Memory Instructions, and zero private traffic. L2 hit improves 46.08% -> 53.92% and DNOC read requests fall 32.73%, but global-read bytes rise 5.15%, Total Cycles rise 1.26%, MMA duty changes 25.84% -> 25.55%, and MTE duty 40.79% -> 40.67%. Because separate replay batches disagree with clean timing, mcProfiler is retained as mixed diagnostic evidence rather than used to claim a fully proven mechanism. The repeatable 13/13 clean timing result owns the local acceptance decision.
""",
    )

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
        "change": "Case3-only Step1 A-fragment ping-pong combined with v052 one-wave direct BSM weight staging",
        "correctness": "three OJ shapes pass, max_abs 0.001953125, zero padding; official 2/2; imports valid",
        "primary_result": {
            "case3_parent_median_ms": 10.017512817382812,
            "case3_candidate_median_ms": 9.981775512695313,
            "paired_median_change_percent": -0.38933112642136614,
            "paired_mean_change_percent": -0.430467667301867,
            "wins": "13/13",
            "screen_wins": "7/7",
            "mctracer_step1_median_ms": {"v052_parent": 6.758144, "v055_candidate": 6.663936},
            "mctracer_step1_paired_median_change_percent": -1.2363416386252823,
        },
        "mcprofiler_wave_matched": {
            "waves": 5758096,
            "memory_instruction_change_percent": 0.0,
            "global_read_byte_change_percent": 5.152642304285648,
            "dnoc_read_request_change_percent": -32.734349699906,
            "l2_hit_rate_percentage_points": 7.840000000000003,
            "total_cycle_change_percent": 1.264319211476983,
            "mma_duty": [25.84, 25.55],
            "mte_duty": [40.79, 40.67],
            "interpretation": "mixed diagnostic replay; clean paired timing is authoritative",
        },
        "resource_result": "Case3 Step1 234 MT/36 ST, two static waves, zero private/stack; Step2 unchanged 234 MT/52 ST",
        "roofline": "Case3 Step1 fixed AI 224 FLOP/B; 106.7681 -> 108.2775 TFLOP/s; memory side under declared physical and conservative measured ridges",
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for root in roots.values():
        write(root / f"{ID}_manifest.json", manifest_text)

    write(
        rep / ".gitattributes",
        "*.bc binary\n*.mcfb binary\n*.bin binary\n*.elf binary\n*.pdf binary\n*.png binary\n*.log binary\n*.csv binary\ncodegen/**/*.cpp -text",
    )
    write(roof / ".gitattributes", "*.png binary\n*.pdf binary\n*.log binary\n*.csv binary")
    write(rep / "source_hashes.sha256", f"{SOURCE_HASH}  restart-submission/{ID}/submission.py")
    for path in list(exp.glob("*.patch")) + list(rep.rglob("*.cpp")) + list(rep.rglob("*.diff")):
        normalize_generated_text(path)
    for root in roots.values():
        inventory(root)
    print(json.dumps(manifest, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
