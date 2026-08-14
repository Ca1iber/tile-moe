#!/usr/bin/env python3
"""Close rejected v044 without placing scratch data under race_tests/moe."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v044-work")
CANDIDATE = Path("/tmp/v044_fast_rcp_all_shapes.py")
ID = "v044_fast_rcp_all_shapes_sc-16g"
PARENT_ID = "v043_step1_vector_fast_rcp_sc-16g"
PARENT_COMMIT = "cdbeb24ab52aa4686fe9b22d6de6a0cab07b68cf"
ROOT_NAMES = ("moe-roofline", "restart-experiments", "restart-rep", "restart-scripts")


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
    submission_dir = MOE / "restart-submission" / ID
    if submission_dir.exists():
        existing.append(str(submission_dir))
    if existing:
        raise SystemExit("refusing to overwrite:\n" + "\n".join(existing))
    for path in roots.values():
        path.mkdir(parents=True)
    roof, exp, rep, scripts = (roots[name] for name in ROOT_NAMES)
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"
    parent_scripts = MOE / "restart-scripts" / PARENT_ID
    source_hash = sha256(CANDIDATE)

    write(rep / ".gitattributes", """*.bc binary
*.mcfb binary
*.bin binary
*.elf binary
*.pdf binary
*.png binary
codegen/**/*.cpp -text
profiler/**/*.txt -text
""")
    copy_file(CANDIDATE, exp / f"{ID}_custom_fusedmoe.py")
    with (exp / f"{ID}.patch").open("w", encoding="utf-8") as stream:
        subprocess.run(
            ["git", "diff", "--no-index", "--", str(parent_submission), str(CANDIDATE)],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )

    # Correctness and clean performance evidence from the exact candidate hash.
    copy_file(WORK / "oj_import_validation.log", rep / "correctness" / "oj_import_validation.log")
    copy_file(WORK / "three_oj_shapes_reference.jsonl", rep / "correctness" / "three_oj_shapes_reference.jsonl")
    copy_file(WORK / "official_functional_0.log", rep / "correctness" / "official_functional_0.log")
    copy_file(WORK / "official_functional_1.log", rep / "correctness" / "official_functional_1.log")
    copy_file(WORK / "case2_pair7_screen.log", rep / "benchmark" / "case2_pair7_w20_r100.log")
    copy_file(WORK / "case3_pair7_screen.log", rep / "benchmark" / "case3_pair7_w20_r100.log")
    copy_file(WORK / "oj_w20_r100.jsonl", rep / "benchmark" / "oj_w20_r100.jsonl")
    write(rep / "benchmark" / "candidate.sha256", f"{source_hash}  v044_fast_rcp_all_shapes.py")

    # Codegen and exact final backend ISA for the two changed paths.
    for case in (2, 3):
        copy_tree(WORK / "codegen" / f"case{case}", rep / "codegen" / f"candidate_case{case}")
        copy_tree(WORK / "codegen" / f"isa_case{case}", rep / "codegen" / f"candidate_isa_case{case}")
        copy_tree(WORK / "codegen" / f"parent_isa_case{case}", rep / "codegen" / f"parent_isa_case{case}")
    comparison = {
        "candidate_sha256": source_hash,
        "case2": {
            "parent_step1_resources": "210 MT / 36 ST / 2 static waves/PEU",
            "candidate_step1_resources": "214 MT / 36 ST / 2 static waves/PEU",
            "unchanged_step1_isa": {"mma_16x16x16f16": 256, "ldg_b128": 36, "lds_b128": 64, "sts_b128": 16, "exp_f32": 64, "rcp_f32": 64},
            "parent_removed_by_candidate": {"div_scale_f32": 128, "div_fmas_f32": 64, "div_fixup_f32": 64},
            "snop": {"parent": 346, "candidate": 192},
        },
        "case3": {
            "parent_step1_resources": "230 MT / 26 ST / 2 static waves/PEU",
            "candidate_step1_resources": "230 MT / 26 ST / 2 static waves/PEU",
            "unchanged_step1_isa": {"mma_16x16x16f16": 256, "ldg_b128": 28, "lds_b128": 64, "sts_b128": 16, "exp_f32": 64, "rcp_f32": 64},
            "parent_removed_by_candidate": {"div_scale_f32": 128, "div_fmas_f32": 64, "div_fixup_f32": 64},
            "snop": {"parent": 341, "candidate": 181},
        },
        "interpretation": "The intended reciprocal simplification materialized. Static instruction reduction alone did not predict elapsed time; Case2 also raised MT register pressure. No spill/private traffic or occupancy-class change is reported.",
    }
    write(rep / "codegen" / "comparison.json", json.dumps(comparison, indent=2))

    # Tracer data includes the first tool-path failure and the valid retry.
    copy_tree(WORK / "mctracer_case2", rep / "profiler" / "mctracer" / "failed_output_path_attempt")
    copy_tree(WORK / "mctracer_case2_retry", rep / "profiler" / "mctracer" / "case2_paired_retry")
    copy_file(WORK / "mctracer_case2_console.log", rep / "profiler" / "mctracer" / "failed_output_path_console.log")
    copy_file(WORK / "mctracer_case2_retry_console.log", rep / "profiler" / "mctracer" / "case2_paired_retry_console.log")
    write(
        rep / "profiler" / "mctracer" / "INTERPRETATION.md",
        """# mcTracer interpretation

The first capture failed before producing a trace because mcTracer 3.7.1 prepended the process cwd to an absolute `--odname`. The retry ran the tracer wrapper from `/` and wrote only to system `/tmp`.

The valid three-pair Case2 trace reports Step1 median change -0.22293% and Step2 median change -0.24035%, but individual Step1 changes range from -1.598% to +0.096%. This short-kernel tracer sample conflicts with the much higher precision 7-pair W20/R100 end-to-end verdict (+0.10640%, 7/7 regressions), so it is diagnostic only and cannot reverse rejection.
""",
    )
    write(
        rep / "profiler" / "mcprofiler" / "UNAVAILABLE.md",
        """# mcProfiler not collected

The candidate was already rejected by stable clean paired timing on both newly changed cases. A multi-event replay could not alter that decision and would add a large low-authority artifact bundle. Codegen/resource output and mcTracer are retained for causal diagnosis; v043 remains the profiled current best.
""",
    )
    copy_file(WORK / "mxsmi_snapshot.txt", rep / "profiler" / "mxsmi" / "snapshot.txt")

    write(
        roof / "UNAVAILABLE.md",
        """# Roofline unavailable by design

v044 changes only the Step1 SwiGLU reciprocal implementation; declared GEMM FLOPs and compulsory bytes are unchanged from v043. Both changed cases regress in the authoritative paired benchmark, and the short mcTracer sample conflicts with that verdict. A performance point derived from the noisy trace would mislead, so no v044 Roofline image is published. Use the accepted v043 Roofline as the unchanged-AI current-best reference.
""",
    )

    script_mapping = {
        "v043_pair_benchmark.py": "v044_pair_benchmark.py",
        "v043_capture_codegen.py": "v044_capture_codegen.py",
        "extract_metax_isa.sh": "extract_metax_isa.sh",
        "validate_submission.py": "validate_submission.py",
        "validate_oj_submission.py": "validate_oj_submission.py",
        "oj_submission_benchmark.py": "oj_submission_benchmark.py",
        "official_submission_benchmark.py": "official_submission_benchmark.py",
        "summarize_iteration.py": "summarize_iteration.py",
        "validate_iteration.py": "validate_iteration.py",
    }
    for source, destination in script_mapping.items():
        copy_file(parent_scripts / source, scripts / destination)
    copy_file(WORK / "v044_run_paired_mctracer.py", scripts / "v044_run_paired_mctracer.py")
    copy_file(Path(__file__), scripts / "v044_finalize_iteration.py")

    write(
        exp / f"{ID}_experiment.md",
        f"""# v044 extend vector fast reciprocal to all OJ shapes

Parent/current best: `{PARENT_ID}` at `{PARENT_COMMIT}`. Candidate SHA-256: `{source_hash}`.

Observed evidence: v043 improved Case1 by replacing the exact FP32 reciprocal correction chain with an OJ-compliant float4x16 `__builtin_mxc_rcpf` helper while preserving the vector lowering.

Hypothesis: Case2 and Case3 contain the same 64-lane SwiGLU epilogue and exact division chain, so applying the same helper should remove 128 `div_scale`, 64 `div_fmas`, and 64 `div_fixup` instructions per static Step1 body and reduce end-to-end latency.

Prediction/falsifier: accept only if exact Case2/3 output passes reference and repeated AB/BA timing wins outside noise. Any stable regression rejects the all-shape extension even if static ISA shrinks.

Result: the mechanism materialized and correctness passed, but Case2 regressed +0.10640% median (7/7) and Case3 +0.19618% median (7/7). Case2 MT registers increased 210->214; Case3 resources stayed flat. Rejected; v043's Case1-only specialization remains current best.
""",
    )
    write(
        rep / f"{ID}_report.md",
        f"""# v044 report: all-shape vector fast reciprocal

Status: rejected. Parent/current best `{PARENT_ID}` / `{PARENT_COMMIT}`. Candidate SHA-256 `{source_hash}`. No `restart-submission` is created for this rejected version.

Correctness: OJ import validation passes; all three OJ shapes pass FP32 reference with max_abs 0.001953125 and zero padding; official functional tests pass 2/2.

Authoritative paired timing (W20/R100, alternating AB/BA): Case2 parent/candidate medians 4.919675/4.924948 ms, paired median +0.10640%, 7/7 regressions. Case3 medians 10.642427/10.663723 ms, paired median +0.19618%, 7/7 regressions. One-shot OJ W20/R100 candidate values are 2.844728/4.935997/10.664962 ms; these are context, not the paired verdict.

Codegen/ISA: both changed Step1 paths remove 128 div_scale, 64 div_fmas, and 64 div_fixup sites; MMA, 128-bit global/shared accesses, exp, and rcp counts stay unchanged. Step1 SNOP falls 346->192 (Case2) and 341->181 (Case3). Case2 resources rise 210->214 MT registers; Case3 stays 230 MT. Both remain two static waves/PEU with zero stack/private spill in tool reports.

mcTracer: valid Case2 three-pair Step1 median is -0.22293%, but the range (-1.598% to +0.096%) is noisy and conflicts with the stable clean verdict. It is used only to confirm unchanged Step2/grid/resource identity. mcProfiler was intentionally not collected after clean timing rejected both changed cases.

Conclusion: fewer static division-correction/SNOP instructions are not sufficient on the long-K Case2/3 schedules. The backend schedule and, for Case2, added register pressure offset the apparent instruction saving. Keep fast reciprocal restricted to v043 Case1.
""",
    )
    write(
        scripts / f"{ID}_scripts.md",
        """# v044 scripts

- `v044_pair_benchmark.py`: exact candidate-vs-parent AB/BA timing and parent-equality check. Used with `--pairs 7 --warmup 20 --repeat 100` for Case2 and Case3.
- `validate_submission.py` and `validate_oj_submission.py`: three-shape FP32 reference and OJ import gates.
- `oj_submission_benchmark.py` and `official_submission_benchmark.py`: standard project-native absolute OJ timing and official functional adapter.
- `v044_capture_codegen.py` and `extract_metax_isa.sh`: generated MXMACA C++, compiler resources, and final MetaX ISA.
- `v044_run_paired_mctracer.py`: three-pair Case2 stage capture. It launches mcTracer from `/` because mcTracer 3.7.1 prepends cwd to `--odname`; all transient traces remain under system `/tmp`.
- `v044_finalize_iteration.py`: copies final evidence from `/tmp/tile-moe-scratch-20260814/v044-work` into the four matching version directories. It refuses to overwrite existing archives.
""",
    )

    manifest = {
        "iteration_id": ID,
        "status": "rejected",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "current_best_iteration": PARENT_ID,
        "machine": "sc-16g",
        "candidate_sha256": source_hash,
        "oj_submission_created": False,
        "decision": "Reject all-shape fast reciprocal; retain v043 Case1-only specialization.",
    }
    write(rep / f"{ID}_manifest.json", json.dumps(manifest, indent=2))
    write(roof / f"{ID}_manifest.json", json.dumps(manifest, indent=2))
    write(exp / f"{ID}_manifest.json", json.dumps(manifest, indent=2))
    write(scripts / f"{ID}_manifest.json", json.dumps(manifest, indent=2))
    write(rep / f"{ID}_source_hashes.sha256", f"{source_hash}  {ID}_custom_fusedmoe.py")

    subprocess.run(
        ["/opt/conda/bin/python", str(scripts / "summarize_iteration.py"), "--root", str(MOE), "--iteration-id", ID],
        cwd=REPO,
        check=True,
    )
    final_manifest = rep / f"{ID}_manifest.json"
    for destination in (roof, exp, scripts):
        shutil.copy2(final_manifest, destination / f"{ID}_manifest.json")
    subprocess.run(
        ["/opt/conda/bin/python", str(scripts / "validate_iteration.py"), "--root", str(MOE), "--iteration-id", ID, "--strict"],
        cwd=REPO,
        check=True,
    )
    print(json.dumps({"iteration_id": ID, "status": "rejected", "candidate_sha256": source_hash}, indent=2))


if __name__ == "__main__":
    main()
