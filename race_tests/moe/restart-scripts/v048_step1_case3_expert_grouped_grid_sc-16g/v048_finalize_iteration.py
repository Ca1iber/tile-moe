#!/usr/bin/env python3
"""Finalize accepted v048 expert-grouped Case3 Step1 CTA scheduling."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v048-work")
CANDIDATE = WORK / "v048_case3_only.py"
PROBE = WORK / "v048_expert_grouped_all_oj.py"
ID = "v048_step1_case3_expert_grouped_grid_sc-16g"
PARENT_ID = "v045_step1_expert_grouped_grid_sc-16g"
PARENT_COMMIT = "f53fbe9ee4c2d07e5a170b08afedb32726cb5ec8"
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
    inherited_scripts = MOE / "restart-scripts" / PARENT_ID

    submission = subdir / "submission.py"
    copy_file(CANDIDATE, submission)
    source_hash = sha256(submission)
    write(subdir / "submission.sha256", f"{source_hash}  submission.py")
    copy_file(WORK / "v048_oj_import_validation.log", subdir / "oj_import_validation.txt")

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
    copy_file(PROBE, exp / "v048_all_oj_probe.py")
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
        (WORK / "v048_case2_screen_w20_r100.log", "case2_all_oj_probe_pair5_w20_r100.log"),
        (WORK / "v048_case3_screen_w20_r100.log", "case3_pair5_screen_w20_r100.log"),
        (WORK / "v048_case3_verdict_w20_r100.log", "case3_pair13_w20_r100.log"),
        (WORK / "v048_oj_benchmark_w20_r100.log", "oj_w20_r100.log"),
        (WORK / "v048_correctness_all_cases.log", "three_oj_shapes_reference.log"),
        (WORK / "v048_official_functional.log", "official_functional.log"),
        (WORK / "v048_oj_import_validation.log", "oj_import_validation.log"),
    ):
        copy_file(source, benchmark / destination)
    write(benchmark / "submission.sha256", f"{source_hash}  submission.py")
    copy_file(WORK / "v048_correctness_all_cases.log", rep / "correctness" / "three_oj_shapes_reference.log")
    copy_file(WORK / "v048_official_functional.log", rep / "correctness" / "official_functional.log")
    copy_file(WORK / "v048_oj_import_validation.log", rep / "correctness" / "oj_import_validation.log")

    copy_tree(WORK / "mctracer" / "case3", rep / "profiler" / "mctracer" / "raw" / "case3")
    copy_file(WORK / "v048_mctracer_case3_driver.log", rep / "profiler" / "mctracer" / "driver.log")
    write(
        rep / "profiler" / "mctracer" / "LABEL_MAPPING.md",
        "The inherited tracer helper labels parent/candidate as `v043`/`v044`; embedded source paths identify v045/v048 and are authoritative.",
    )
    copy_tree(WORK / "mcprofiler" / "case3" / "v045_parent", rep / "profiler" / "mcprofiler" / "raw" / "parent_v045")
    copy_tree(WORK / "mcprofiler" / "case3" / "v048_candidate", rep / "profiler" / "mcprofiler" / "raw" / "candidate_v048")
    copy_file(WORK / "mcprofiler" / "case3" / "wave_matched_summary.json", rep / "profiler" / "mcprofiler" / "wave_matched_summary.json")
    copy_file(WORK / "mcprofiler" / "case3" / "aggregate_wave_mismatch_summary.json", rep / "profiler" / "mcprofiler" / "aggregate_wave_mismatch_summary.json")
    copy_file(WORK / "mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt")

    for case in (1, 2, 3):
        copy_tree(WORK / "codegen" / "final" / f"case{case}", rep / "codegen" / "final" / f"case{case}")
    copy_tree(WORK / "isa" / "case3", rep / "codegen" / "isa_case3")
    codegen_summary = {
        "submission_sha256": source_hash,
        "case1": {"byte_identical_to_v045": True, "device_cpp_sha256": "fed58e1fd01ed1cf2243bb942e2c76dadc782ae3460dabf99b444f824d60076a"},
        "case2": {"byte_identical_to_v045": True, "device_cpp_sha256": "11594a94c119f41bc4b8756d73651c5fbb5bb73a1ac1567b224560d6b1796c73"},
        "case3": {
            "mapping": "pid1<32 keeps bx=pid1/by=pid0; pid1>=32 interleaves each adjacent two-block expert across by",
            "grid": "Step1 16x96 unchanged; Step2 28x96 unchanged",
            "step1_resources": {
                "parent": "230 MT / 26 ST / 2 static waves/PEU",
                "candidate": "210 MT / 52 ST / 2 static waves/PEU",
                "private_or_stack_spill": 0,
            },
            "step1_static_isa_counts_unchanged": {"mma_16x16x16f16": 256, "ldg_b128": 28, "lds_b128": 64, "barrier": 4},
            "assembly_bytes": {"parent": 454031, "candidate": 442316},
            "generated_cpp_bytes": {"parent": 30234, "candidate": 34763},
            "interpretation": "The mapping adds CTA-entry scalar control but preserves MMA and vector-memory work. The backend shifts register allocation from 230 MT/26 ST to 210 MT/52 ST without changing two-wave occupancy or spilling; dynamic evidence is required to attribute the speedup.",
        },
    }
    write(rep / "codegen" / "summary.json", json.dumps(codegen_summary, ensure_ascii=False, indent=2))

    script_mapping = {
        "v045_pair_benchmark.py": "v048_pair_benchmark.py",
        "v045_capture_codegen.py": "v048_capture_codegen.py",
        "v045_run_paired_mctracer.py": "v048_run_paired_mctracer.py",
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
        copy_file(inherited_scripts / source, scripts / destination)
    copy_file(WORK / "v048_run_mcprofiler.sh", scripts / "v048_run_mcprofiler.sh")
    copy_file(WORK / "v048_summarize_mcprofiler.py", scripts / "v048_summarize_mcprofiler.py")
    copy_file(Path(__file__), scripts / "v048_finalize_iteration.py")

    copy_file(WORK / "v048_case3_step1_roofline_points.csv", roof / "v048_case3_step1_roofline_points.csv")
    copy_file(WORK / "roofline" / "v048_case3_step1_expert_grouped_roofline.svg", roof / "v048_case3_step1_expert_grouped_roofline.svg")
    copy_file(WORK / "roofline" / "v048_case3_step1_expert_grouped_roofline_render.json", roof / "v048_case3_step1_expert_grouped_roofline_render.json")
    write(
        roof / "v048_roofline_readme.md",
        """# v048 Roofline notes

- Case3 Step1 declared schedule work and bytes stay at 721,554,505,728 FLOPs and 3,221,225,472 bytes, AI=224 FLOP/B; only logical CTA order changes.
- Paired mcTracer Step1 medians are 7.207424 ms (v045) and 6.864640 ms (v048), giving 100.1127 and 105.1118 TFLOP/s.
- Equivalent declared traffic rises from 446.93 to 469.25 GB/s. This is a fixed-schedule comparison, not a claim that all bytes reach HBM.
- AI=224 is below the 260.0 and 342.3 FLOP/B ridge points implied by the 1843.2 and conservative 1400 GB/s bandwidth roofs, so the declared model remains memory-bound. The 460.8 GB/s linear-slice line is a sensitivity bound, not a measured roof, and the observed point exceeding it is evidence that bandwidth does not scale linearly with the 25% compute slice.
- Wave-matched mcProfiler period0 shows global reads -5.241%, DNOC reads -5.370%, AP active cycles -3.019%, MMA duty +3.113%, and MTE duty +51.727%, with zero private traffic. L2 hit rate decreases 0.785 percentage points, so the mechanism is reduced downstream traffic and better overlap rather than a universal hit-rate increase.
""",
    )

    write(
        exp / f"{ID}_experiment.md",
        f"""# v048 Case3 Step1 expert-grouped CTA scheduling

Parent/current best: `{PARENT_ID}` at `{PARENT_COMMIT}`. Submission SHA-256: `{source_hash}`.

The first probe extended v045's Case1 expert-grouped CTA order to both 7168x2048 OJ shapes. Case2 regressed by 7.030% median in five pairs, while Case3 improved by 3.110%. The accepted source therefore enables the remap only for the exact 64-expert Case3 distribution and leaves Case1/Case2 byte-identical to v045.

For Case3 the first 32 one-block experts remain identity ordered. The two row blocks of each of the final 32 experts are interleaved across every Step1 column tile. TileLang math, grid, MMA, async path, barriers, 32 KiB shared memory, and Step2 are unchanged. Step1 remains two static waves with no private/stack spill; backend allocation shifts from 230 MT/26 ST to 210 MT/52 ST.

The 13-pair benchmark wins 13/13 at -2.971% median total runtime. Five paired mcTracer samples put the gain in Step1 at -4.902% median while Step2 is unchanged. Wave-matched period0 counters show 5.241% fewer global-read bytes, 5.370% fewer DNOC read requests, 3.019% fewer AP active cycles, and higher MMA/MTE duty.
""",
    )
    write(
        rep / f"{ID}_report.md",
        f"""# v048 report: Case3 Step1 expert-grouped grid

Status: accepted new best on sc-16g. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Submission SHA-256 `{source_hash}`.

Authoritative Case3 W20/R100 13-pair AB/BA: parent median 10.637608 ms, candidate median 10.322529 ms; paired median -2.97138%, mean -2.97506%, 13/13 wins. OJ W20/R100 candidate times are 2.780685 / 4.927393 / 10.303951 ms. All three OJ cases pass FP32 reference with max_abs=0.001953125 and zero padding; official functional tests pass 2/2; OJ import validation passes.

mcTracer localizes the effect to Step1: five paired changes -5.798%, -3.083%, -4.280%, -5.635%, and -4.902%, median -4.90186%. Step2 median -0.27100% is noise. Grid and 32 KiB dynamic shared memory are unchanged; Step1 reports 210 MT / 52 ST and two static waves versus v045's 230 MT / 26 ST and two waves, with zero private memory.

The generated C++ computes the remap once per CTA. Step1 ISA keeps 256 MMA, 28 128-bit global loads, 64 LDS, and four barrier sites. Wave-matched period0 counters (16896/16896 waves) show DNOC reads -5.370%, global read bytes 8.4112 -> 7.9704 GB (-5.241%), AP active cycles -3.019%, MMA duty +3.113%, and MTE duty +51.727%; memory instruction count is unchanged and private traffic is zero. The aggregate multi-period report is retained but marked invalid because its waves mismatch by 1.780%.
""",
    )
    write(
        scripts / f"{ID}_scripts.md",
        """# v048 scripts

- `v048_pair_benchmark.py`: exact v045-v048 alternating AB/BA parent-equality and timing gate.
- `validate_submission.py`, `validate_oj_submission.py`, `oj_submission_benchmark.py`, and `official_submission_benchmark.py`: OJ import, numerical, absolute OJ, and official functional gates.
- `profile_submission.py` and `v048_run_paired_mctracer.py`: stage-local Case3 timing capture under system `/tmp`.
- `v048_run_mcprofiler.sh` and `v048_summarize_mcprofiler.py`: four-batch Step1 replay and period0 wave-match validation.
- `v048_capture_codegen.py` and `extract_metax_isa.sh`: exact generated MXMACA C++, resources, and MetaX ISA.
- `render_roofline.py`: fixed-declared-AI Case3 Step1 Roofline.
- `v048_finalize_iteration.py`: creates five matching archive directories and refuses overwrite.

All scratch output remains under `/tmp/tile-moe-scratch-20260814/v048-work`; no repository-local temp directories are created.
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
        "primary_change": "Case3-only Step1 expert-grouped logical CTA mapping for adjacent reuse across each 184-row expert's two row blocks",
        "primary_result": {
            "case3_pair_median_change_percent": -2.971379549415276,
            "case3_pair_mean_change_percent": -2.9750579018447403,
            "case3_pair_wins": "13/13",
            "mctracer_step1_median_change_percent": -4.901856007979766,
            "mctracer_step1_wins": "5/5",
        },
        "resource_result": "Case3 Step1 210 MT, 52 ST, zero private/stack, 32 KiB dynamic shared, 2 static waves/PEU",
        "mcprofiler_result": "period0 waves 16896/16896; DNOC reads -5.370%; global read bytes -5.241%; AP active cycles -3.019%; MMA duty +3.113%; MTE duty +51.727%",
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
