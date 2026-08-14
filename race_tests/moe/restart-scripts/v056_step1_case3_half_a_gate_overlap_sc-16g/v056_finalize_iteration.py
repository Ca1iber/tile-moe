#!/usr/bin/env python3
"""Finalize the accepted v056 Case3 Step1 half-A/gate-MMA overlap iteration."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v056-work")
ID = "v056_step1_case3_half_a_gate_overlap_sc-16g"
PARENT_ID = "v055_step1_case3_bsm_input_pingpong_sc-16g"
PARENT_COMMIT = "5072528d"
SOURCE_HASH = "2fca3dbf9224ed86a9d2b9d3854e7c6405ce175c6d1fdb893e627e0f27b481e3"


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
    path = Path(path)
    lines = path.read_text(encoding="utf-8").splitlines()
    path.write_text("\n".join(line.rstrip() for line in lines).rstrip() + "\n", encoding="utf-8")


def normalize_mctracer(src, dst):
    payload = json.loads(Path(src).read_text(encoding="utf-8"))
    mapping = {"v049": "v055_parent", "v050": "v056_candidate"}
    payload["legacy_tag_mapping"] = mapping
    payload["sources"] = {
        "v055_parent": str(MOE / "restart-submission" / PARENT_ID / "submission.py"),
        "v056_candidate": str(WORK / "v056b_submission.py"),
    }
    for row in payload["rows"]:
        row["legacy_tag"] = row["tag"]
        row["tag"] = mapping[row["tag"]]
    payload["aggregate"] = {
        "v055_parent": payload["aggregate"]["v049"],
        "v056_candidate": payload["aggregate"]["v050"],
    }
    write(dst, json.dumps(payload, ensure_ascii=False, indent=2))


def inventory(root):
    rows = []
    for path in sorted(root.rglob("*")):
        if path.is_file() and path.name != "artifact_inventory.sha256":
            rows.append(f"{sha256(path)}  {path.relative_to(root)}")
    write(root / "artifact_inventory.sha256", "\n".join(rows))


def capture_mxsmi(path):
    path.parent.mkdir(parents=True, exist_ok=True)
    result = subprocess.run(["mx-smi"], text=True, capture_output=True, check=False)
    write(path, result.stdout + result.stderr)


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
    parent_rep = MOE / "restart-rep" / PARENT_ID
    parent_scripts = MOE / "restart-scripts" / PARENT_ID

    submission = subdir / "submission.py"
    copy_file(WORK / "v056b_submission.py", submission)
    if sha256(submission) != SOURCE_HASH:
        raise SystemExit("candidate source hash changed before finalization")
    write(subdir / "submission.sha256", f"{SOURCE_HASH}  submission.py")
    copy_file(WORK / "oj_import_validation_b.log", subdir / "oj_import_validation.txt")

    copy_file(submission, exp / f"{ID}_custom_fusedmoe.py")
    copy_file(WORK / "v056_submission.py", exp / "rejected_primary_full_ki_unroll.py")
    make_diff(parent_submission, WORK / "v056_submission.py", exp / "rejected_primary_vs_v055.patch")
    make_diff(parent_submission, submission, exp / f"{ID}.patch")
    make_diff(WORK / "v056_submission.py", submission, exp / "primary_to_repair.patch")
    write(
        exp / f"{ID}_experiment.md",
        f"""# v056 Case3 Step1 half-A/gate-MMA overlap

Status: accepted as the new sc-16g best and externally confirmed to pass OJ correctness. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Submission SHA-256 `{SOURCE_HASH}`.

The first probe split each next-A 64-column load into two 32-column loads and also manually expanded both `ki` MMA fragments. It preserved vectorized `ldg_b128`, but pushed Step1 from 234 to the architectural 256 MT-register limit, introduced a 20-byte stack frame, grew ST registers 36 -> 40, and regressed Case3 by a paired median +2.232718% with 0/5 wins. Static ISA shrank, so instruction count was not the problem; the register/stack consequence and over-expanded schedule were.

The accepted repair keeps the compact `ki` loops. For each prefetched next A tile, it loads columns 0:32, executes all current gate MMA, loads columns 32:64, then executes all current up MMA. The same ordering is used when preloading the following even A tile during the odd tile. This keeps both half-loads after the current weight barrier, respects the earlier v020 ordering failure, and creates a compiler-visible independent-memory/compute window without increasing dynamic A bytes, BSM bytes, MMA work, barrier count, grid, or 32 KiB shared allocation.

All three exact OJ shapes pass with max abs 0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes. The authoritative 13-pair alternating W20/R100 Case3 test records parent/candidate medians 9.961385/9.772923 ms, paired median -1.913373%, mean -1.905324%, and 13/13 wins. The five-pair screen is also 5/5 with -2.106625% median. User-reported external OJ correctness passes; Case1/2 speedups are about 3.8x and Case3 is below 3.5x.

mcTracer localizes the gain to Step1: medians 6.689536 -> 6.405120 ms and paired median -4.251655%; unchanged Step2 is +0.069762% and treated as noise. Step1 remains 234 MT registers, two static waves, and zero stack/private traffic; ST registers move 36 -> 40. Static MMA, global/shared vector loads, barriers, and arrive counts are unchanged; static instructions fall 5004 -> 4952 and `snop` falls 644 -> 637. Wave-matched mcProfiler has identical 5,758,096 waves and Memory Instructions, Total Cycles -9.2941%, MMA duty +1.6047%, MTE duty +0.9835%, and zero private traffic. Clean paired timing remains the acceptance authority.
""",
    )

    benchmark = rep / "benchmark"
    copy_file(WORK / "pair_b_case3_verdict13_w20_r100.log", benchmark / "case3_pair13_w20_r100.log")
    copy_file(WORK / "pair_b_case3_screen5_w20_r100.log", benchmark / "case3_pair5_screen_w20_r100.log")
    copy_file(WORK / "pair_case3_screen5_w20_r100.log", benchmark / "rejected_primary_case3_pair5_w20_r100.log")
    copy_file(WORK / "oj_b_w20_r100.log", benchmark / "oj_w20_r100.log")
    copy_file(WORK / "official_functional_b.log", benchmark / "official_functional.log")
    write(benchmark / "submission.sha256", f"{SOURCE_HASH}  submission.py")

    correctness = rep / "correctness"
    copy_file(WORK / "validate_b_all_cases.log", correctness / "three_oj_shapes_reference.log")
    copy_file(WORK / "validate_b_case3.log", correctness / "accepted_repair_case3_reference.log")
    copy_file(WORK / "validate_case3.log", correctness / "rejected_primary_case3_reference.log")
    copy_file(WORK / "official_functional_b.log", correctness / "official_functional.log")
    copy_file(WORK / "oj_import_validation_b.log", correctness / "oj_import_validation.log")
    write(
        correctness / "summary.md",
        """# Correctness summary

The accepted repair passes FP32-reference checks on all three exact OJ shapes with maximum absolute error 0.001953125 and zero padding. The official functional suite passes 2/2 and the standalone OJ import validator accepts the packaged source. External OJ correctness was also reported as passing. The rejected primary probe was numerically correct but failed the performance/resource gate.
""",
    )

    codegen = rep / "codegen"
    for case in (1, 2, 3):
        copy_tree(WORK / f"codegen_candidate_b_case{case}", codegen / "candidate" / f"case{case}")
    copy_tree(WORK / "codegen_candidate_case3", codegen / "rejected_primary" / "case3")
    copy_tree(WORK / "isa_candidate_case3", codegen / "rejected_primary" / "isa_case3")
    copy_tree(WORK / "isa_analysis", codegen / "rejected_primary" / "isa_analysis")
    copy_tree(parent_rep / "codegen" / "candidate" / "case3", codegen / "parent_v055" / "case3")
    copy_tree(parent_rep / "codegen" / "isa_case3" / "candidate_v055", codegen / "isa_case3" / "parent_v055")
    copy_tree(WORK / "isa_candidate_b_case3", codegen / "isa_case3" / "candidate_v056")
    copy_tree(WORK / "isa_b_analysis", codegen / "isa_analysis")
    make_diff(
        parent_rep / "codegen" / "candidate" / "case3" / "v055_candidate_case3_generated_device.cpp",
        WORK / "codegen_candidate_b_case3" / "v056b_candidate_case3_generated_device.cpp",
        codegen / "case3_parent_vs_candidate_cpp.diff",
    )
    write(
        codegen / "summary.json",
        json.dumps(
            {
                "submission_sha256": SOURCE_HASH,
                "case1_and_case2": "generated C++ differs from v055 only by a final blank line; resources and schedules unchanged",
                "case3_step2_source_unchanged": True,
                "rejected_primary": {
                    "resources": "256 MT / 40 ST / two static waves / 20-byte Step1 stack frame",
                    "paired_median_change_percent": 2.232717857506916,
                    "wins": "0/5",
                    "cause": "manual ki expansion raised live state to the register ceiling and introduced stack state",
                },
                "accepted_step1_resources": {
                    "v055_parent": "234 MT / 36 ST / two static waves / zero stack-private",
                    "v056_candidate": "234 MT / 40 ST / two static waves / zero stack-private",
                },
                "accepted_step2_resources": "234 MT / 52 ST / two static waves / zero stack-private; unchanged",
                "dynamic_schedule": "A/weight bytes, MMA work, barriers, grids, and 32 KiB shared memory unchanged",
                "case3_generated_cpp_bytes": {"v055_parent": 33269, "v056_candidate": 35216},
                "step1_static_isa_instructions": {"v055_parent": 5004, "v056_candidate": 4952},
                "selected_static_opcode_delta": {
                    "mma_16x16x16f16": 0,
                    "ldg_b128": 0,
                    "lds_b128": 0,
                    "barrier": 0,
                    "arrive": 0,
                    "snop": -7,
                },
                "interpretation": "the gain is scheduling/issue overlap, not reduced dynamic work, bytes, or higher occupancy",
            },
            ensure_ascii=False,
            indent=2,
        ),
    )

    mctracer = rep / "profiler" / "mctracer"
    copy_tree(WORK / "mctracer_b_case3", mctracer / "raw" / "case3")
    normalize_mctracer(
        WORK / "mctracer_b_case3" / "v050_vs_v049_case3_mctracer_summary.json",
        mctracer / "v055_vs_v056_case3_mctracer_summary.json",
    )
    write(
        mctracer / "README.md",
        """# mcTracer stage timing

Five alternating AB/BA pairs with five warmups were captured. Historical runner tags `v049` and `v050` map to v055 parent and v056 candidate. Step1 medians are 6.689536/6.405120 ms and paired median changes -4.251655%, with 5/5 directional wins. Unchanged Step2 changes +0.069762% and bounds trace noise. The accepted source retains 234 registers/thread, 32 KiB dynamic shared memory, and zero private memory in both kernels.
""",
    )

    mcprofiler = rep / "profiler" / "mcprofiler"
    profiler_root = Path("/tmp/tile-moe-scratch-20260814/v052-work/mcprofiler/case3")
    copy_tree(parent_rep / "profiler" / "mcprofiler" / "raw" / "v055_candidate_wave_matched", mcprofiler / "raw" / "v055_parent_wave_matched")
    copy_tree(profiler_root / "v056_candidate_for_v056", mcprofiler / "raw" / "v056_candidate_wave_matched")
    copy_file(WORK / "mcprofiler_b_summary.json", mcprofiler / "wave_matched_summary.json")
    write(
        mcprofiler / "README.md",
        """# mcProfiler wave-matched replay

The parent and candidate each achieve and dispatch exactly 5,758,096 waves; Memory Instructions are identical and private reads/writes remain zero. Candidate Total Cycles changes -9.2941%, AP active cycles -1.5860%, MMA duty +1.6047%, and MTE duty +0.9835%. Global-read bytes change -2.0587% despite identical source-level bytes, so cache/replay effects remain diagnostic. This evidence supports fewer scheduling stalls, but clean 13-pair timing owns acceptance.
""",
    )
    capture_mxsmi(rep / "profiler" / "mxsmi" / "snapshot_after_profiling.txt")

    script_mapping = {
        parent_scripts / "v055_capture_codegen.py": "v056_capture_codegen.py",
        parent_scripts / "v055_pair_benchmark.py": "v056_pair_benchmark.py",
        parent_scripts / "v055_run_paired_mctracer_used.py": "v056_run_paired_mctracer_used.py",
        parent_scripts / "profile_submission.py": "profile_submission.py",
        parent_scripts / "validate_submission.py": "validate_submission.py",
        parent_scripts / "validate_oj_submission.py": "validate_oj_submission.py",
        parent_scripts / "oj_submission_benchmark.py": "oj_submission_benchmark.py",
        parent_scripts / "official_submission_benchmark.py": "official_submission_benchmark.py",
        parent_scripts / "validate_iteration.py": "validate_iteration.py",
        parent_scripts / "render_roofline.py": "render_roofline.py",
        parent_scripts / "extract_metax_isa.sh": "extract_metax_isa.sh",
        parent_scripts / "v055_run_mcprofiler_used.sh": "v056_run_mcprofiler_used.sh",
        parent_scripts / "v055_summarize_mcprofiler.py": "v056_summarize_mcprofiler.py",
        parent_scripts / "v055_analyze_isa.py": "v056_analyze_isa.py",
    }
    for source, destination in script_mapping.items():
        copy_file(source, scripts / destination)
    copy_file(Path(__file__), scripts / "v056_finalize_iteration.py")
    write(
        scripts / f"{ID}_scripts.md",
        """# v056 scripts

- `v056_pair_benchmark.py` supplies alternating AB/BA correctness and W20/R100 timing gates.
- Validation and OJ/official benchmark scripts cover exact numerical, import, standalone timing, and functional gates.
- `v056_run_paired_mctracer_used.py` plus `profile_submission.py` capture five paired stage timings; historical internal v049/v050 labels are normalized in the archive.
- `v056_run_mcprofiler_used.sh` and `v056_summarize_mcprofiler.py` capture four-batch counters and enforce achieved-wave matching.
- `v056_capture_codegen.py`, `extract_metax_isa.sh`, and `v056_analyze_isa.py` preserve generated C++, resources, final ISA, and opcode deltas.
- `render_roofline.py` renders the fixed declared-schedule Roofline.
- `v056_finalize_iteration.py` creates and hashes the matching five-directory archive.

All in-flight files live under `/tmp/tile-moe-scratch-20260814/v056-work`; the inherited mcProfiler runner stores its raw replay tree under `/tmp/tile-moe-scratch-20260814/v052-work/mcprofiler/case3`.
""",
    )

    copy_file(WORK / "v056_case3_step1_roofline_points.csv", roof / "v056_case3_step1_roofline_points.csv")
    copy_file(WORK / "roofline" / "v056_case3_step1_half_a_gate_overlap_roofline.svg", roof / "v056_case3_step1_half_a_gate_overlap_roofline.svg")
    copy_file(WORK / "roofline" / "v056_case3_step1_half_a_gate_overlap_roofline_render.json", roof / "v056_case3_step1_half_a_gate_overlap_roofline_render.json")
    write(
        roof / "v056_roofline_readme.md",
        """# v056 Case3 Step1 Roofline

- Fixed declared work/traffic are 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B.
- Paired mcTracer medians are 6.689536 ms for v055 and 6.405120 ms for v056: 107.8632 -> 112.6528 TFLOP/s.
- Equivalent declared-schedule traffic is 481.53 -> 502.91 GB/s; this is not a measured HBM-bandwidth claim.
- AI 224 remains below the 260 FLOP/B physical-theory ridge and 342.31 FLOP/B conservative measured ridge, hence on the memory side under both declared models.
- The 460.8 GB/s line is only a linear 25%-slice sensitivity, not asserted slice hardware truth.
""",
    )

    write(
        rep / f"{ID}_report.md",
        f"""# v056 report: Case3 Step1 half-A/gate-MMA overlap

Status: accepted as the new sc-16g best; OJ correctness externally confirmed. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Submission SHA-256 `{SOURCE_HASH}`.

Authoritative Case3 13-pair AB/BA W20/R100: 9.961385 -> 9.772923 ms, paired median -1.913373%, mean -1.905324%, 13/13 wins. Standalone OJ W20/R100 is 2.966856 / 4.924890 / 9.774034 ms. All exact reference tests pass with max abs 0.001953125 and zero padding; official functional passes 2/2 and imports pass. User-reported OJ speedups are about 3.8x for Case1/2 and below 3.5x for Case3.

The retained change is Case3 Step1 only: split next-A loading into two 32-column halves around current gate MMA while retaining compact `ki` loops. It preserves dynamic loads, MMA work, barriers, grid, and shared memory. Case1/2 generated C++ differs only by a final blank line. The rejected fully expanded probe hit 256 MT registers, created a 20-byte stack frame, and regressed +2.232718%; the repair remains 234 MT/two waves/zero spill and wins consistently.

mcTracer Step1 changes -4.251655% while unchanged Step2 is +0.069762%. Static MMA/load/barrier/arrive counts stay fixed, total static ISA falls 1.0392%, and `snop` falls by seven. Exact-wave mcProfiler reports Total Cycles -9.2941%, MMA duty +1.6047%, and MTE duty +0.9835%, with identical Memory Instructions and no private traffic. These results support improved instruction issue/overlap rather than reduced dynamic work or increased occupancy. Clean paired timing remains authoritative.
""",
    )

    manifest = {
        "iteration_id": ID,
        "status": "accepted",
        "external_oj_status": "correctness-pass; Case1/2 about 3.8x, Case3 below 3.5x",
        "decision": "accepted-new-local-best",
        "machine": "sc-16g",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "submission_sha256": SOURCE_HASH,
        "change": "Case3 Step1 split next-A load around current gate MMA while retaining compact ki loops",
        "correctness": "three OJ shapes pass, max_abs 0.001953125, zero padding; official 2/2; imports valid; external OJ correctness pass",
        "primary_result": {
            "case3_parent_median_ms": 9.961384887695312,
            "case3_candidate_median_ms": 9.772922973632813,
            "paired_median_change_percent": -1.9133728874300537,
            "paired_mean_change_percent": -1.9053237016527427,
            "wins": "13/13",
            "mctracer_step1_median_ms": {"v055_parent": 6.689536, "v056_candidate": 6.40512},
            "mctracer_step1_paired_median_change_percent": -4.251655122268572,
        },
        "rejected_primary_probe": {
            "paired_median_change_percent": 2.232717857506916,
            "wins": "0/5",
            "resource_result": "256 MT / 40 ST / 20-byte Step1 stack frame",
        },
        "mcprofiler_wave_matched": {
            "waves": 5758096,
            "memory_instruction_change_percent": 0.0,
            "global_read_byte_change_percent": -2.0587070785942907,
            "total_cycle_change_percent": -9.294068801513422,
            "mma_duty_change_percent": 1.6046966731898316,
            "mte_duty_change_percent": 0.9835259404966878,
            "interpretation": "diagnostic replay; clean paired timing is authoritative",
        },
        "resource_result": "Case3 Step1 234 MT/40 ST, two static waves, zero private/stack; Step2 unchanged 234 MT/52 ST",
        "roofline": "Case3 Step1 fixed AI 224 FLOP/B; 107.8632 -> 112.6528 TFLOP/s; memory side under declared physical and conservative measured ridges",
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for root in roots.values():
        write(root / f"{ID}_manifest.json", manifest_text)

    write(rep / ".gitattributes", "*.bc binary\n*.mcfb binary\n*.bin binary\n*.elf binary\n*.pdf binary\n*.png binary\n*.log binary\n*.csv binary\ncodegen/**/*.cpp -text")
    write(roof / ".gitattributes", "*.png binary\n*.pdf binary\n*.log binary\n*.csv binary")
    write(rep / "source_hashes.sha256", f"{SOURCE_HASH}  restart-submission/{ID}/submission.py")
    for path in list(exp.glob("*.patch")) + list(rep.rglob("*.cpp")) + list(rep.rglob("*.diff")):
        normalize_generated_text(path)
    for root in roots.values():
        inventory(root)
    print(json.dumps(manifest, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
