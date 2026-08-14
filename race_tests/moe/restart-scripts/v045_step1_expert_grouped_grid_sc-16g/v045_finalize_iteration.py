#!/usr/bin/env python3
"""Finalize accepted v045 expert-grouped Case1 Step1 CTA scheduling."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v045-work")
CANDIDATE = WORK / "v045_expert_grouped_grid.py"
ID = "v045_step1_expert_grouped_grid_sc-16g"
PARENT_ID = "v043_step1_vector_fast_rcp_sc-16g"
PARENT_COMMIT = "cdbeb24ab52aa4686fe9b22d6de6a0cab07b68cf"
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


def main():
    roots = {name: MOE / name / ID for name in ROOT_NAMES}
    existing = [str(path) for path in roots.values() if path.exists()]
    if existing:
        raise SystemExit("refusing to overwrite:\n" + "\n".join(existing))
    for path in roots.values():
        path.mkdir(parents=True)
    roof, exp, rep, scripts, subdir = (roots[name] for name in ROOT_NAMES)
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"
    parent_scripts = MOE / "restart-scripts" / PARENT_ID
    v044_scripts = MOE / "restart-scripts" / "v044_fast_rcp_all_shapes_sc-16g"

    submission = subdir / "submission.py"
    copy_file(CANDIDATE, submission)
    source_hash = sha256(submission)
    write(subdir / "submission.sha256", f"{source_hash}  submission.py")
    copy_file(WORK / "oj_import_validation.log", subdir / "oj_import_validation.txt")

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
    copy_file(WORK / "hypothesis.md", exp / "hypothesis.md")
    with (exp / f"{ID}.patch").open("w", encoding="utf-8") as stream:
        subprocess.run(
            ["git", "diff", "--no-index", "--", str(parent_submission), str(submission)],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )

    benchmark = rep / "benchmark" / "exact_final"
    for source, destination in (
        (WORK / "pair_case1_screen_w20_r100.log", "case1_pair5_screen_w20_r100.log"),
        (WORK / "pair_case1_verdict_w20_r100.log", "case1_pair13_w20_r100.log"),
        (WORK / "oj_benchmark_w20_r100.log", "oj_w20_r100.log"),
        (WORK / "correctness_all_cases.log", "three_oj_shapes_reference.log"),
        (WORK / "official_functional.log", "official_functional.log"),
        (WORK / "oj_import_validation.log", "oj_import_validation.log"),
    ):
        copy_file(source, benchmark / destination)
    write(benchmark / "submission.sha256", f"{source_hash}  submission.py")
    copy_file(WORK / "correctness_all_cases.log", rep / "correctness" / "three_oj_shapes_reference.log")
    copy_file(WORK / "official_functional.log", rep / "correctness" / "official_functional.log")
    copy_file(WORK / "oj_import_validation.log", rep / "correctness" / "oj_import_validation.log")

    copy_tree(WORK / "mctracer", rep / "profiler" / "mctracer" / "raw")
    copy_file(WORK / "mctracer_driver.log", rep / "profiler" / "mctracer" / "driver.log")
    write(
        rep / "profiler" / "mctracer" / "LABEL_MAPPING.md",
        "The reused v044 tracer helper labels the candidate as `v044`; embedded source paths identify the v045 candidate and are authoritative.",
    )
    copy_tree(WORK / "mcprofiler" / "v045_parent_v043", rep / "profiler" / "mcprofiler" / "raw" / "parent_v043")
    copy_tree(WORK / "mcprofiler" / "v045_candidate", rep / "profiler" / "mcprofiler" / "raw" / "candidate_v045")
    copy_file(WORK / "mcprofiler" / "summary.json", rep / "profiler" / "mcprofiler" / "summary.json")
    copy_file(WORK / "mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt")

    for case in (1, 2, 3):
        copy_tree(WORK / "codegen_final" / f"case{case}", rep / "codegen" / "final" / f"case{case}")
    copy_tree(WORK / "isa_case1_final", rep / "codegen" / "isa_case1")
    copy_file(
        MOE / "restart-rep" / PARENT_ID / "codegen" / "isa_case1" / "v043_final_case1_generated_device.metax.s",
        rep / "codegen" / "comparison" / "v043_parent_step1.metax.s",
    )
    copy_file(
        WORK / "isa_case1_final" / "v045_final_case1_generated_device.metax.s",
        rep / "codegen" / "comparison" / "v045_candidate_step1.metax.s",
    )
    codegen_summary = {
        "submission_sha256": source_hash,
        "case1": {
            "mapping": "pid1<8 keeps bx=pid1/by=pid0; pid1>=8 interleaves each adjacent two-block expert across by",
            "grid": "Step1 64x24 unchanged; Step2 8x24 unchanged",
            "step1_resources": {
                "parent": "222 MT / 36 ST / 2 static waves/PEU",
                "candidate": "218 MT / 52 ST / 2 static waves/PEU",
                "private_or_stack_spill": 0,
            },
            "static_isa_unchanged": {"mma_16x16x16f16": 128, "ldg_b128": 51, "lds_b128": 32, "barrier": 2},
            "code_length_bytes": {"parent": 24376, "candidate": 24616},
            "interpretation": "The mapping adds one CTA-entry scalar branch and address remap. MMA and vector memory instruction counts are unchanged; the gain must come from execution/cache locality rather than less issued TileLang work.",
        },
        "case2": {"byte_identical_to_v043": True, "device_cpp_sha256": "11594a94c119f41bc4b8756d73651c5fbb5bb73a1ac1567b224560d6b1796c73"},
        "case3": {"byte_identical_to_v043": True, "device_cpp_sha256": "5e4f97d2f96dcd1ea43c6c83300ee74c7d30cd36b1c70c2f1bb80bf41006eb11"},
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, ensure_ascii=False, indent=2))

    script_mapping = {
        "v044_pair_benchmark.py": "v045_pair_benchmark.py",
        "v044_capture_codegen.py": "v045_capture_codegen.py",
        "v044_run_paired_mctracer.py": "v045_run_paired_mctracer.py",
        "extract_metax_isa.sh": "extract_metax_isa.sh",
        "validate_submission.py": "validate_submission.py",
        "validate_oj_submission.py": "validate_oj_submission.py",
        "oj_submission_benchmark.py": "oj_submission_benchmark.py",
        "official_submission_benchmark.py": "official_submission_benchmark.py",
        "summarize_iteration.py": "summarize_iteration.py",
        "validate_iteration.py": "validate_iteration.py",
    }
    for source, destination in script_mapping.items():
        copy_file(v044_scripts / source, scripts / destination)
    copy_file(parent_scripts / "profile_submission.py", scripts / "profile_submission.py")
    copy_file(parent_scripts / "render_roofline.py", scripts / "render_roofline.py")
    copy_file(WORK / "v045_run_mcprofiler.sh", scripts / "v045_run_mcprofiler.sh")
    copy_file(WORK / "v045_summarize_mcprofiler.py", scripts / "v045_summarize_mcprofiler.py")
    copy_file(Path(__file__), scripts / "v045_finalize_iteration.py")

    write(
        roof / "v045_step1_schedule_roofline_points.csv",
        """label,ai_flop_per_byte,tflops
v043 Case1 Step1,83.59183673469387,109.625152192
v045 Case1 Step1,83.59183673469387,112.882866274
""",
    )
    subprocess.run(
        [
            "/opt/conda/bin/python",
            str(scripts / "render_roofline.py"),
            "--points",
            str(roof / "v045_step1_schedule_roofline_points.csv"),
            "--output-prefix",
            str(roof / "v045_case1_step1_expert_grouped_roofline"),
            "--compute-roof-tflops",
            "479.232",
            "--bandwidth-roof",
            "sc16_measured_conservative=1400",
            "--bandwidth-roof",
            "physical_theoretical=1843.2",
            "--bandwidth-roof",
            "linear_25pct_sensitivity=460.8",
            "--title",
            "v045 Case1 Step1 expert-grouped CTA order (sc-16g)",
        ],
        cwd=REPO,
        check=True,
    )
    write(
        roof / "v045_roofline_readme.md",
        """# v045 Roofline notes

- Declared schedule work and bytes stay at 206,158,430,208 FLOPs and 2,466,250,752 bytes, AI=83.591837 FLOP/B; only CTA order changes.
- Paired mcTracer Step1 medians are 1.880576 ms (v043) and 1.826304 ms (v045), giving 109.6252 and 112.8829 TFLOP/s.
- Equivalent declared traffic rises from 1311.43 to 1350.41 GB/s. This does not claim higher physical HBM bandwidth; it reflects better cache/locality execution at fixed declared bytes.
- mcProfiler replay waves match exactly (6912/6912). L2 hit rate rises 54.5411% -> 61.3541% (+6.813 points), DNOC read requests fall 19.215%, and measured global read bytes fall 2.2695 -> 1.9004 GB (-16.262%). These measured bytes are diagnostic dynamic traffic and are not substituted for the declared-algorithm bytes on the primary Roofline axis.
""",
    )

    write(
        exp / f"{ID}_experiment.md",
        f"""# v045 Case1 Step1 expert-grouped CTA scheduling

Parent/current best: `{PARENT_ID}` at `{PARENT_COMMIT}`. Submission SHA-256: `{source_hash}`.

v001's transposed grid made all 64 column tiles for one row block adjacent, which improved input reuse but separated the two row blocks of every 184-row expert by 64 CTAs. Each intervening expert-weight working set is far larger than the measured 8 MiB L2. v045 keeps the physical 64x24 grid and the first eight one-block experts unchanged, then interleaves the two row blocks of each of the last eight experts for every column tile. Two 512 KiB input tiles remain a small working set while each 1 MiB gate/up weight tile receives an adjacent second consumer.

The TileLang math, tile sizes, MMA sequence, async path, barriers, shared memory, CTA count, and Step2 are unchanged. Generated C++ materializes one CTA-entry mapping branch; final ISA preserves 128 MMA, 51 128-bit global loads, 32 LDS, and two barriers. Step1 remains two static waves with no private/stack spill.

The memory-locality mechanism is directly observed in a wave-matched mcProfiler replay: L2 hit rate improves by 6.813 percentage points, DNOC read requests fall 19.215%, and global read bytes fall 16.262%, while L2 read instructions and total memory instructions remain unchanged.
""",
    )
    write(
        rep / f"{ID}_report.md",
        f"""# v045 report: Case1 Step1 expert-grouped grid

Status: accepted new best on sc-16g. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Submission SHA-256 `{source_hash}`.

Authoritative Case1 W20/R100 13-pair AB/BA: parent median 2.846740 ms, candidate median 2.782001 ms; paired median -2.26653%, mean -2.26825%, 13/13 wins. OJ W20/R100 candidate times are 2.779146 / 4.928243 / 10.644493 ms. All three OJ cases pass FP32 reference with max_abs=0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes.

mcTracer localizes the effect to Step1: five paired changes -3.377%, -3.349%, -3.637%, -2.573%, and -2.661%, median -3.34909%. Step2 median +0.32223% is noise. Grid and 32 KiB dynamic shared memory are unchanged; Step1 reports 218 MT / 52 ST and two static waves versus v043's 222 MT / 36 ST and two waves, with zero private memory.

The generated C++ computes the remap once per CTA. ISA adds only scalar mapping/control work while MMA/global-vector-load/LDS/barrier counts stay fixed. mcProfiler replay waves match exactly at 6912/6912: L2 hit rate increases 54.5411% -> 61.3541% (+6.813 points), DNOC read requests decrease 19.215%, global read bytes decrease 2.2695 -> 1.9004 GB (-16.262%), and total cycles decrease 2.994%. L2 read instructions and total memory instructions are unchanged, so the data directly supports improved cache locality rather than less issued GEMM work.
""",
    )
    write(
        scripts / f"{ID}_scripts.md",
        """# v045 scripts

- `v045_pair_benchmark.py`: exact v043-v045 alternating AB/BA parent-equality and timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: OJ import, numerical, absolute OJ, and official functional gates.
- `profile_submission.py` and `v045_run_paired_mctracer.py`: stage-local Case1 timing capture under system `/tmp`.
- `v045_run_mcprofiler.sh` and `v045_summarize_mcprofiler.py`: four-batch Step1 memory/cache replay plus wave-count reliability check.
- `v045_capture_codegen.py` and `extract_metax_isa.sh`: exact generated MXMACA C++, resources, and MetaX ISA.
- `render_roofline.py`: fixed-declared-AI Step1 schedule Roofline.
- `v045_finalize_iteration.py`: creates the five matching archive directories and refuses overwrite.

All scratch output remains under `/tmp/tile-moe-scratch-20260814/v045-work`; no repository-local temp directories are created.
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
        "primary_change": "Case1 Step1 expert-grouped logical CTA mapping for adjacent reuse of 184-row expert gate/up tiles",
        "primary_result": {
            "case1_pair_median_change_percent": -2.266531708112096,
            "case1_pair_mean_change_percent": -2.268245808641942,
            "case1_pair_wins": "13/13",
            "mctracer_step1_median_change_percent": -3.349088453747462,
            "mctracer_step1_wins": "5/5",
        },
        "resource_result": "Case1 Step1 218 MT, 52 ST, zero private/stack, 32 KiB dynamic shared, 2 static waves/PEU",
        "mcprofiler_result": "waves 6912/6912; L2 hit +6.813 pp; DNOC reads -19.215%; global read bytes -16.262%; total cycles -2.994%",
        "oj_import_policy": "torch/tilelang/math roots and approved TileLang forms only",
        "kernel_update": "restart-submission only; root submission.py and custom_fusedmoe.py intentionally untouched",
        "scratch_policy": "in-flight artifacts under system /tmp; no race_tests/moe/*tmp directories",
        "artifact_roots": list(ROOT_NAMES),
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for directory in roots.values():
        write(directory / f"{ID}_manifest.json", manifest_text)
    sources = [submission, parent_submission, MOE / "fusedmoe_benchmark.py", MOE / "oj_benchmark.py"]
    write(
        rep / f"{ID}_source_hashes.sha256",
        "\n".join(f"{sha256(path)}  {path.relative_to(REPO)}" for path in sources),
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
