#!/usr/bin/env python3
"""Finalize rejected v046 branchless CTA-mapping experiment."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v046-work")
CANDIDATE = WORK / "v046_branchless_expert_grid.py"
ID = "v046_step1_branchless_expert_grid_sc-16g"
PARENT_ID = "v045_step1_expert_grouped_grid_sc-16g"
PARENT_COMMIT = "f53fbe9ee4c2d07e5a170b08afedb32726cb5ec8"
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
    if existing:
        raise SystemExit("refusing to overwrite:\n" + "\n".join(existing))
    for path in roots.values():
        path.mkdir(parents=True)
    roof, exp, rep, scripts = (roots[name] for name in ROOT_NAMES)
    parent_submission = MOE / "restart-submission" / PARENT_ID / "submission.py"
    parent_scripts = MOE / "restart-scripts" / PARENT_ID
    source_hash = sha256(CANDIDATE)

    write(rep / ".gitattributes", "*.bc binary\n*.mcfb binary\n*.bin binary\n*.elf binary\n*.pdf binary\n*.png binary\ncodegen/**/*.cpp -text")
    copy_file(CANDIDATE, exp / f"{ID}_custom_fusedmoe.py")
    copy_file(WORK / "hypothesis.md", exp / "hypothesis.md")
    with (exp / f"{ID}.patch").open("w", encoding="utf-8") as stream:
        subprocess.run(
            ["git", "diff", "--no-index", "--", str(parent_submission), str(CANDIDATE)],
            cwd=REPO,
            text=True,
            stdout=stream,
            check=False,
        )

    copy_file(WORK / "pair_case1_screen_w20_r100.log", rep / "benchmark" / "case1_pair5_w20_r100.log")
    copy_file(WORK / "correctness_case1.log", rep / "correctness" / "case1_reference.log")
    copy_file(WORK / "oj_import_validation.log", rep / "correctness" / "oj_import_validation.log")
    write(rep / "benchmark" / "candidate.sha256", f"{source_hash}  v046_branchless_expert_grid.py")
    copy_tree(WORK / "codegen", rep / "codegen" / "candidate_case1")
    copy_tree(WORK / "isa", rep / "codegen" / "candidate_isa_case1")
    copy_file(WORK / "isa.log", rep / "codegen" / "candidate_isa_case1.log")
    write(
        rep / "codegen" / "summary.json",
        json.dumps(
            {
                "candidate_sha256": source_hash,
                "logical_cta_order_byte_equivalent_to_v045": True,
                "resources": "Step1 218 MT / 52 ST / 2 static waves/PEU; Step2 unchanged",
                "lowering": "branch removed, but selector division by 24 lowers to scalar add + smul_hi + shift, followed by scalar multiply/add address mapping",
                "unchanged": {"mma_16x16x16f16": 128, "ldg_b128": 51, "lds_b128": 32, "private_or_stack_spill": 0},
            },
            indent=2,
        ),
    )
    write(
        rep / "profiler" / "mctracer" / "UNAVAILABLE.md",
        "v046 was rejected by a stable 5/5 clean AB/BA regression before tracer collection. The exact logical CTA order is unchanged from fully profiled v045, so tracer cannot reverse the decision.",
    )
    write(
        rep / "profiler" / "mcprofiler" / "UNAVAILABLE.md",
        "v046 changes only CTA-entry scalar control while preserving v045's exact logical order and memory locality. Clean timing rejects it; the wave-matched v045 memory counters remain the relevant locality evidence.",
    )
    write(
        roof / "UNAVAILABLE.md",
        "v046 preserves v045's declared FLOPs, bytes, arithmetic intensity, logical CTA order, and memory locality but regresses clean timing. No new Roofline point is published; use accepted v045.",
    )

    script_mapping = {
        "v045_pair_benchmark.py": "v046_pair_benchmark.py",
        "v045_capture_codegen.py": "v046_capture_codegen.py",
        "extract_metax_isa.sh": "extract_metax_isa.sh",
        "validate_submission.py": "validate_submission.py",
        "validate_oj_submission.py": "validate_oj_submission.py",
        "summarize_iteration.py": "summarize_iteration.py",
        "validate_iteration.py": "validate_iteration.py",
    }
    for source, destination in script_mapping.items():
        copy_file(parent_scripts / source, scripts / destination)
    copy_file(Path(__file__), scripts / "v046_finalize_iteration.py")

    write(
        exp / f"{ID}_experiment.md",
        f"""# v046 branchless exact v045 CTA mapping

Parent/current best: `{PARENT_ID}` at `{PARENT_COMMIT}`. Candidate SHA-256: `{source_hash}`.

The candidate preserves v045's exact `(bx, by)` permutation and replaces the uniform `pid1 < 8` branch with a 0/1 selector `(pid1 + 16) // 24`. Generated C++ computes the mapping once, but final ISA expands the constant division into `smul_hi`, shift, multiply, subtract, and add operations. Resources and occupancy remain unchanged.

Case1 W20/R100 five-pair AB/BA regresses +0.49146% median, +0.48845% mean, with 5/5 regressions. Correctness and OJ imports pass. Rejected; retain v045's uniform branch.
""",
    )
    write(
        rep / f"{ID}_report.md",
        f"""# v046 report: branchless expert-grid mapping

Status: rejected. Parent/current best `{PARENT_ID}` / `{PARENT_COMMIT}`. Candidate SHA-256 `{source_hash}`. No `restart-submission` is created.

Case1 five-pair W20/R100: paired changes +0.4941%, +0.4913%, +0.4304%, +0.4915%, +0.5350%; median +0.49146%, 5/5 regressions. Case1 reference passes with max_abs=0.001953125 and zero padding; OJ import validation passes.

The branch disappears in C++/ISA, but the selector requires a constant-division multiply-high/shift chain plus arithmetic selection. Step1 remains 218 MT / 52 ST and two waves with unchanged MMA/vector-memory/LDS counts. The clean verdict shows this scalar chain costs more than v045's uniform CTA-entry branch.
""",
    )
    write(
        scripts / f"{ID}_scripts.md",
        """# v046 scripts

- `v046_pair_benchmark.py`: five-pair W20/R100 clean rejection gate against exact v045.
- `v046_capture_codegen.py` and `extract_metax_isa.sh`: branch-removal and scalar-chain lowering evidence.
- OJ/reference validators confirm the rejected candidate remains legal and correct.
- `v046_finalize_iteration.py`: copies only final evidence from system `/tmp` into the four matching rejected-version directories.
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
        "decision": "Reject branchless selector arithmetic; retain v045 uniform branch.",
    }
    manifest_text = json.dumps(manifest, ensure_ascii=False, indent=2)
    for directory in roots.values():
        write(directory / f"{ID}_manifest.json", manifest_text)
    write(rep / f"{ID}_source_hashes.sha256", f"{source_hash}  {ID}_custom_fusedmoe.py")

    subprocess.run(
        ["/opt/conda/bin/python", str(scripts / "summarize_iteration.py"), "--root", str(MOE), "--iteration-id", ID],
        cwd=REPO,
        check=True,
    )
    final_manifest = rep / f"{ID}_manifest.json"
    for directory in (roof, exp, scripts):
        shutil.copy2(final_manifest, directory / f"{ID}_manifest.json")
    subprocess.run(
        ["/opt/conda/bin/python", str(scripts / "validate_iteration.py"), "--root", str(MOE), "--iteration-id", ID, "--strict"],
        cwd=REPO,
        check=True,
    )
    print(json.dumps({"iteration_id": ID, "status": "rejected", "candidate_sha256": source_hash}, indent=2))


if __name__ == "__main__":
    main()
