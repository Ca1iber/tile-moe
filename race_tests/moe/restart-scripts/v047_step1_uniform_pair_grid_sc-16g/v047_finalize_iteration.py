#!/usr/bin/env python3
"""Finalize rejected v047 uniform-pair CTA-mapping experiment."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests" / "moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v047-work")
CANDIDATE = WORK / "v047_uniform_pair_grid.py"
ID = "v047_step1_uniform_pair_grid_sc-16g"
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
    write(rep / "benchmark" / "candidate.sha256", f"{source_hash}  v047_uniform_pair_grid.py")
    copy_tree(WORK / "codegen", rep / "codegen" / "candidate_case1")
    copy_tree(WORK / "isa", rep / "codegen" / "candidate_isa_case1")
    copy_file(WORK / "isa.log", rep / "codegen" / "candidate_isa_case1.log")
    write(
        rep / "codegen" / "summary.json",
        json.dumps(
            {
                "candidate_sha256": source_hash,
                "logical_cta_order_byte_equivalent_to_v045": False,
                "resources": "Step1 218 MT / 52 ST / 2 static waves/PEU; Step2 unchanged",
                "lowering": "uniform all-block pair mapping lowers to cheap scalar shifts, masks, and adds without the v045 entry branch or v046 divide-selector chain",
                "unchanged": {"mma_16x16x16f16": 128, "ldg_b128": 51, "lds_b128": 32, "private_or_stack_spill": 0},
            },
            indent=2,
        ),
    )
    write(
        rep / "profiler" / "mctracer" / "UNAVAILABLE.md",
        "v047 was rejected by a stable 5/5 clean AB/BA regression before tracer collection. It changes only the first eight single-block experts; the fully profiled v045 remains the authoritative accepted schedule.",
    )
    write(
        rep / "profiler" / "mcprofiler" / "UNAVAILABLE.md",
        "v047 interleaves pairs of unrelated single-block experts for the first third of Case1 Step1. Clean timing already rejects this locality tradeoff; the wave-matched v045 counters remain the accepted reference.",
    )
    write(
        rep / "profiler" / "mxsmi" / "UNAVAILABLE.md",
        "v047 was tested immediately after v045/v046 on the same sc-16g allocation and was rejected by clean timing. Use v045's archived MetaX C500 25% compute / 16,000 MiB sGPU snapshot.",
    )
    write(
        roof / "UNAVAILABLE.md",
        "v047 preserves v045's declared FLOPs, bytes, and arithmetic intensity but regresses clean timing after changing first-eight-expert locality. No new Roofline point is published; use accepted v045.",
    )

    script_mapping = {
        "v045_pair_benchmark.py": "v047_pair_benchmark.py",
        "v045_capture_codegen.py": "v047_capture_codegen.py",
        "extract_metax_isa.sh": "extract_metax_isa.sh",
        "validate_submission.py": "validate_submission.py",
        "validate_oj_submission.py": "validate_oj_submission.py",
        "summarize_iteration.py": "summarize_iteration.py",
        "validate_iteration.py": "validate_iteration.py",
    }
    for source, destination in script_mapping.items():
        copy_file(parent_scripts / source, scripts / destination)
    copy_file(Path(__file__), scripts / "v047_finalize_iteration.py")

    write(
        exp / f"{ID}_experiment.md",
        f"""# v047 uniform paired CTA mapping

Parent/current best: `{PARENT_ID}` at `{PARENT_COMMIT}`. Candidate SHA-256: `{source_hash}`.

The candidate applies v045's cheap paired mapping to all 24 row blocks. This removes v045's CTA-entry branch without v046's divide-selector chain and preserves the adjacent two-block weight reuse for the last eight experts. The first eight single-block experts are now interleaved in unrelated pairs, increasing each input tile's reuse distance from one CTA to two and mixing two expert weight streams. Resources and occupancy remain unchanged.

Case1 W20/R100 five-pair AB/BA regresses +0.07614% median, +0.07281% mean, with 5/5 regressions. Correctness and OJ imports pass. Rejected; retain v045's identity ordering for the first eight experts.
""",
    )
    write(
        rep / f"{ID}_report.md",
        f"""# v047 report: uniform paired expert-grid mapping

Status: rejected. Parent/current best `{PARENT_ID}` / `{PARENT_COMMIT}`. Candidate SHA-256 `{source_hash}`. No `restart-submission` is created.

Case1 five-pair W20/R100: paired changes +0.1310%, +0.0238%, +0.0761%, +0.0879%, +0.0453%; median +0.07614%, 5/5 regressions. Case1 reference passes with max_abs=0.001953125 and zero padding; OJ import validation passes.

The branch disappears without a divide chain; C++ uses only the uniform pair mapping and Step1 remains 218 MT / 52 ST and two waves with unchanged MMA/vector-memory/LDS counts. The consistent regression isolates the cost to locality: interleaving unrelated one-block experts is slightly worse than retaining v045's contiguous input reuse.
""",
    )
    write(
        scripts / f"{ID}_scripts.md",
        """# v047 scripts

- `v047_pair_benchmark.py`: five-pair W20/R100 clean rejection gate against exact v045.
- `v047_capture_codegen.py` and `extract_metax_isa.sh`: branchless uniform-pair lowering evidence.
- OJ/reference validators confirm the rejected candidate remains legal and correct.
- `v047_finalize_iteration.py`: copies only final evidence from system `/tmp` into the four matching rejected-version directories.
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
        "decision": "Reject uniform pairing of unrelated single-block experts; retain v045 first-eight identity order.",
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
