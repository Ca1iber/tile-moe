#!/usr/bin/env python3
"""Finalize accepted v049 Case3 Step2 expert-grouped CTA scheduling."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v049-work")
CANDIDATE = WORK / "v049_step2_expert_grouped_assume.py"
NO_ASSUME = WORK / "v049_step2_expert_grouped.py"
ID = "v049_step2_case3_expert_grouped_grid_sc-16g"
PARENT_ID = "v048_step1_case3_expert_grouped_grid_sc-16g"
PARENT_COMMIT = "748b6fd1"
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
    dst = Path(dst)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(src, dst)


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


def main():
    roots = {name: MOE / name / ID for name in ROOT_NAMES}
    existing = [str(path) for path in roots.values() if path.exists()]
    if existing:
        raise SystemExit("refusing to overwrite:\n" + "\n".join(existing))
    for path in roots.values():
        path.mkdir(parents=True)
    roof, exp, rep, scripts, subdir = (roots[name] for name in ROOT_NAMES)
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"
    inherited = MOE / "restart-scripts" / PARENT_ID

    submission = subdir / "submission.py"
    copy_file(CANDIDATE, submission)
    source_hash = sha256(submission)
    no_assume_hash = sha256(NO_ASSUME)
    write(subdir / "submission.sha256", f"{source_hash}  submission.py")
    copy_file(WORK / "v049_oj_import_validation.log", subdir / "oj_import_validation.txt")

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
    copy_file(NO_ASSUME, exp / "v049_step2_expert_grouped_without_assume.py")
    make_diff(parent_submission, submission, exp / f"{ID}.patch")
    write(
        exp / "hypothesis.md",
        """# Hypothesis

For exact Case3, each of the final 32 experts owns two 128-row blocks. Step2 normally schedules all 28 hidden-column tiles for one row block before reaching the second row block. Interleaving the two row blocks per expert should reuse each expert/by 256x2048 down-weight tile through L2 while preserving the physical 28x96 grid, math, MMA path, barriers, and shared-memory footprint.

TileLang cannot infer the range of dynamically remapped bx/by values. Explicit T.assume bounds are therefore part of the hypothesis: without them, safe-memory legalization inserts repeated guards around loads, async copies, and stores, potentially hiding the locality benefit.
""",
    )

    benchmark = rep / "benchmark" / "exact_final"
    for source, destination in (
        (WORK / "v049_no_assume_regression_pair5.log", "case3_without_assume_pair5_w20_r100.log"),
        (WORK / "v049_case3_pair13_w20_r100.log", "case3_pair13_w20_r100.log"),
        (WORK / "v049_oj_w20_r100.log", "oj_w20_r100.log"),
        (WORK / "v049_official_functional.log", "official_functional.log"),
        (WORK / "v049_oj_import_validation.log", "oj_import_validation.log"),
    ):
        copy_file(source, benchmark / destination)
    write(benchmark / "submission.sha256", f"{source_hash}  submission.py")
    copy_file(WORK / "v049_oj_w20_r100.log", rep / "correctness" / "three_oj_shapes_reference.log")
    copy_file(WORK / "v049_official_functional.log", rep / "correctness" / "official_functional.log")
    copy_file(WORK / "v049_oj_import_validation.log", rep / "correctness" / "oj_import_validation.log")

    for case in (1, 2, 3):
        copy_tree(WORK / "codegen_final" / f"case{case}", rep / "codegen" / "final" / f"case{case}")
    copy_tree(WORK / "codegen", rep / "codegen" / "without_assume")
    copy_tree(WORK / "codegen_assume", rep / "codegen" / "with_assume_probe")
    parent_cpp = MOE / "restart-rep" / PARENT_ID / "codegen" / "final" / "case3" / "v048_final_case3_generated_device.cpp"
    copy_file(parent_cpp, rep / "codegen" / "parent_v048" / parent_cpp.name)
    no_assume_cpp = WORK / "codegen" / "v049_case3_generated_device.cpp"
    final_cpp = WORK / "codegen_assume" / "v049b_case3_generated_device.cpp"
    make_diff(parent_cpp, no_assume_cpp, rep / "codegen" / "cpp_parent_vs_without_assume.diff")
    make_diff(no_assume_cpp, final_cpp, rep / "codegen" / "cpp_without_assume_vs_final.diff")

    parent_isa = MOE / "restart-rep" / PARENT_ID / "codegen" / "isa_case3" / "candidate_v048"
    copy_tree(parent_isa, rep / "codegen" / "isa_case3" / "parent_v048")
    copy_tree(WORK / "isa" / "candidate_v049", rep / "codegen" / "isa_case3" / "candidate_v049")
    copy_file(WORK / "isa" / "v048_vs_v049.diff", rep / "codegen" / "isa_case3" / "v048_vs_v049.diff")
    codegen_summary = {
        "submission_sha256": source_hash,
        "without_assume_sha256": no_assume_hash,
        "case1": {"byte_identical_to_v048": True, "device_cpp_sha256": "fed58e1fd01ed1cf2243bb942e2c76dadc782ae3460dabf99b444f824d60076a"},
        "case2": {"byte_identical_to_v048": True, "device_cpp_sha256": "11594a94c119f41bc4b8756d73651c5fbb5bb73a1ac1567b224560d6b1796c73"},
        "case3": {
            "mapping": "Step2 pid1<32 stays identity; pid1>=32 interleaves the two row blocks of each 184-row expert across 28 column tiles",
            "grid": "Step1 16x96 and Step2 28x96 unchanged",
            "resources": "Step1 210 MT/52 ST; Step2 234 MT/52 ST; both two static waves/PEU; zero stack/private spill",
            "without_assume_resources": "Step2 212 MT/30 ST, but repeated safe-memory guards make it slower",
            "step2_static_isa_counts_unchanged": {"mma_16x16x16f16": 256, "ldg_b128": 32, "lds_b128": 64, "barrier": 17},
            "generated_cpp_bytes": {"parent_v048": 34763, "without_assume": 37799, "final_v049": 34844},
            "assembly_bytes": {"parent_v048": 442316, "final_v049": 433186},
            "lowering_conclusion": "Explicit bx/by assumptions remove safe-memory bounds branches from repeated Step2 memory operations; the remaining delta is CTA-entry mapping and dynamic addresses.",
        },
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, ensure_ascii=False, indent=2))

    copy_tree(WORK / "mctracer_case3", rep / "profiler" / "mctracer" / "raw" / "case3")
    copy_tree(WORK / "mcprofiler" / "case3" / "parent_v048", rep / "profiler" / "mcprofiler" / "raw" / "parent_v048")
    copy_tree(WORK / "mcprofiler" / "case3" / "candidate_v049", rep / "profiler" / "mcprofiler" / "raw" / "candidate_v049")
    copy_file(WORK / "mcprofiler" / "case3" / "period0_summary.json", rep / "profiler" / "mcprofiler" / "wave_matched_summary.json")
    copy_file(WORK / "mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt")

    script_mapping = {
        "v048_pair_benchmark.py": "v049_pair_benchmark.py",
        "v048_capture_codegen.py": "v049_capture_codegen.py",
        "extract_metax_isa.sh": "extract_metax_isa.sh",
        "profile_submission.py": "profile_submission.py",
        "render_roofline.py": "render_roofline.py",
        "validate_submission.py": "validate_submission.py",
        "validate_oj_submission.py": "validate_oj_submission.py",
        "oj_submission_benchmark.py": "oj_submission_benchmark.py",
        "official_submission_benchmark.py": "official_submission_benchmark.py",
        "summarize_iteration.py": "summarize_iteration.py",
        "validate_iteration.py": "validate_iteration.py",
    }
    for source, destination in script_mapping.items():
        copy_file(inherited / source, scripts / destination)
    copy_file(WORK / "v049_run_paired_mctracer.py", scripts / "v049_run_paired_mctracer.py")
    copy_file(WORK / "v049_run_mcprofiler.sh", scripts / "v049_run_mcprofiler.sh")
    copy_file(WORK / "v049_summarize_mcprofiler.py", scripts / "v049_summarize_mcprofiler.py")
    copy_file(Path(__file__), scripts / "v049_finalize_iteration.py")

    copy_file(WORK / "v049_case3_step2_roofline_points.csv", roof / "v049_case3_step2_roofline_points.csv")
    copy_file(WORK / "roofline" / "v049_case3_step2_expert_grouped_roofline.svg", roof / "v049_case3_step2_expert_grouped_roofline.svg")
    copy_file(WORK / "roofline" / "v049_case3_step2_expert_grouped_roofline_render.json", roof / "v049_case3_step2_expert_grouped_roofline_render.json")
    write(
        roof / "v049_roofline_readme.md",
        """# v049 Roofline notes

- Case3 Step2 declared schedule work is 360,777,252,864 FLOPs and declared traffic is 4,405,037,056 bytes, so fixed-schedule AI is 81.9011 FLOP/B.
- Paired mcTracer Step2 medians are 3.401472 ms for v048 and 3.329024 ms for v049, giving 106.0650 and 108.3733 TFLOP/s.
- Equivalent declared traffic rises from 1295.04 to 1323.22 GB/s. This comparison keeps scheduled bytes fixed and does not claim that every scheduled byte reaches HBM.
- AI 81.9 is below both the 260.0 FLOP/B physical-theory ridge and the 342.3 FLOP/B conservative measured ridge, so this Step2 schedule is memory-bound under both models.
- Wave-matched counters show unchanged memory/L2 instruction counts but L2 hit rate +3.365 percentage points, global-read bytes -5.395%, and DNOC read requests -4.047%, supporting improved down-weight cache reuse.
""",
    )

    experiment_text = f"""# v049 Case3 Step2 expert-grouped CTA scheduling

Parent: `{PARENT_ID}` at `{PARENT_COMMIT}`. Final submission SHA-256: `{source_hash}`.

The first implementation remapped Case3 Step2 CTAs without range assumptions. TileLang safe-memory legalization could not prove the dynamic bx/by bounds and inserted repeated guards around up-logit loads, down-weight async copies, and output stores. That source had SHA-256 `{no_assume_hash}` and regressed by +0.166% median in the archived five-pair rerun.

Adding `T.assume(0 <= bx < num_blocks_m)` and `T.assume(0 <= by < step2_col_tiles)` removed those repeated C++ guards. The final mapping keeps the first 32 one-block experts identity ordered and interleaves the two row blocks of every final 32 expert across Step2's 28 column tiles. Case1 and Case2 generated C++ remain byte-identical to v048; grid, MMA, async schedule, barriers, shared memory, and math are unchanged.

The final Case3 13-pair benchmark wins 13/13 at -0.763% paired median. mcTracer localizes the effect to Step2 at -2.220% median. Wave-matched aggregate counters show L2 hit rate +3.365 percentage points, global reads -5.395%, and DNOC read requests -4.047%, while memory instruction counts and private traffic are unchanged.
"""
    write(exp / f"{ID}_experiment.md", experiment_text)

    report_text = f"""# v049 report: Case3 Step2 expert-grouped grid

Status: accepted new best on sc-16g. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Submission SHA-256 `{source_hash}`.

Authoritative Case3 W20/R100 13-pair AB/BA: parent median 10.327889 ms, candidate median 10.247749 ms; paired median -0.76275%, mean -0.77238%, 13/13 wins. OJ W20/R100 candidate times are 2.787743 / 4.924447 / 10.217354 ms. All three OJ cases pass FP32 reference with max_abs=0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes.

mcTracer Step2 medians are 3.401472 -> 3.329024 ms, a -2.22022% paired median with 5/5 wins. Step1's -0.855% median is sampling noise because its generated source is unchanged. Both grids and 32 KiB dynamic shared memory are unchanged; Step2 remains 234 MT / 52 ST, two static waves, and zero private memory.

The no-assume probe regressed because generated C++ contained repeated safe-memory bounds guards. Explicit range assumptions remove those guards and restore the parent resource allocation. Step2 ISA keeps 256 MMA, 32 128-bit global loads, 64 LDS, and 17 barrier sites. Wave-matched counters (16896/16896 waves across both launches) show L2 hit rate 52.519% -> 55.884%, global read bytes 7.9850 -> 7.5541 GB (-5.395%), DNOC reads -4.047%, AP active cycles -0.384%, and zero private traffic.
"""
    write(rep / f"{ID}_report.md", report_text)

    write(
        scripts / f"{ID}_scripts.md",
        """# v049 scripts

- `v049_pair_benchmark.py`: alternating AB/BA correctness and timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: OJ import, numerical, OJ timing, and official functional gates.
- `profile_submission.py` and `v049_run_paired_mctracer.py`: paired stage-local timing capture.
- `v049_run_mcprofiler.sh` and `v049_summarize_mcprofiler.py`: four-batch replay and exact wave-match comparison.
- `v049_capture_codegen.py` and `extract_metax_isa.sh`: generated C++, resource, and MetaX ISA evidence.
- `render_roofline.py`: fixed-declared-AI Case3 Step2 Roofline renderer.
- `v049_finalize_iteration.py`: creates the five matching archive directories and refuses overwrite.

All in-flight output stays under `/tmp/tile-moe-scratch-20260814/v049-work`; no repository-local temp directories are created.
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
        "primary_change": "Case3-only Step2 expert-grouped logical CTA mapping with explicit range assumptions",
        "primary_result": {
            "case3_pair_median_change_percent": -0.7627517344459323,
            "case3_pair_mean_change_percent": -0.7723768236400633,
            "case3_pair_wins": "13/13",
            "mctracer_step2_median_change_percent": -2.2202152479867565,
            "mctracer_step2_wins": "5/5",
        },
        "resource_result": "Case3 Step2 234 MT, 52 ST, zero private/stack, 32 KiB dynamic shared, 2 static waves/PEU",
        "mcprofiler_result": "waves 16896/16896; L2 hit +3.365pp; global reads -5.395%; DNOC reads -4.047%; AP active cycles -0.384%",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "scratch_policy": "in-flight artifacts under system /tmp; no race_tests/moe/*tmp directories",
        "artifact_roots": list(ROOT_NAMES),
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for directory in roots.values():
        write(directory / f"{ID}_manifest.json", manifest_text)
    sources = [submission, NO_ASSUME, parent_submission, MOE / "fusedmoe_benchmark.py", MOE / "oj_benchmark.py"]
    write(
        rep / f"{ID}_source_hashes.sha256",
        "\n".join(f"{sha256(path)}  {path}" for path in sources),
    )

    subprocess.run(
        ["/opt/conda/bin/python", str(scripts / "summarize_iteration.py"), "--root", str(MOE), "--iteration-id", ID],
        cwd=REPO,
        check=True,
    )
    final_manifest = rep / f"{ID}_manifest.json"
    for directory in (roof, exp, scripts, subdir):
        shutil.copy2(final_manifest, directory / f"{ID}_manifest.json")
    subprocess.run(
        ["/opt/conda/bin/python", str(scripts / "validate_iteration.py"), "--root", str(MOE), "--iteration-id", ID, "--strict"],
        cwd=REPO,
        check=True,
    )
    print(json.dumps({"iteration_id": ID, "submission_sha256": source_hash, "status": "accepted"}, indent=2))


if __name__ == "__main__":
    main()
