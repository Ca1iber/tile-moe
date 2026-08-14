#!/usr/bin/env python3
"""Archive rejected v053 Case2 BSM transfer and its four-wave repair probe."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests/moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v053-work")
ID = "v053_step1_case2_one_wave_bsm_sc-16g"
PARENT_ID = "v052_step1_case3_one_wave_bsm_sc-16g"
PARENT_COMMIT = "e8591a30"


def write(path, text):
    path = Path(path)
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(text.rstrip() + "\n", encoding="utf-8")


def copy(src, dst):
    src, dst = Path(src), Path(dst)
    if not src.is_file():
        raise FileNotFoundError(src)
    dst.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(src, dst)


def tree(src, dst):
    shutil.copytree(src, dst, dirs_exist_ok=True)


def diff(left, right, output):
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    with output.open("w", encoding="utf-8") as stream:
        subprocess.run(["git", "diff", "--no-index", "--", str(left), str(right)], cwd=REPO, stdout=stream, text=True, check=False)


def sha(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def main():
    roots = {name: MOE / name / ID for name in ("moe-roofline", "restart-experiments", "restart-rep", "restart-scripts")}
    for path in roots.values():
        path.mkdir(parents=True, exist_ok=True)
    roof, exp, rep, scripts = (roots[name] for name in roots)
    parent = MOE / "restart-submission" / PARENT_ID / "submission.py"
    candidate = WORK / "v053_submission.py"
    repair = WORK / "v053b_submission.py"
    candidate_hash, repair_hash = sha(candidate), sha(repair)

    copy(candidate, exp / f"{ID}_custom_fusedmoe.py")
    copy(repair, exp / "v053b_case2_four_wave_bsm_probe.py")
    diff(parent, candidate, exp / f"{ID}.patch")
    diff(candidate, repair, exp / "v053b_four_wave_repair.patch")
    write(exp / "hypothesis.md", """# v053 hypothesis

Case2 and Case3 share hidden=7168 and spend about two thirds of end-to-end kernel time in Step1. Transfer v052's exact 14336-byte one-wave BSM gate/up staging to Case2 without changing math, tiles, grid, Step2, or imports. If Case2's smaller 48-CTA grid under-exposes BSM work, repair it by assigning two waves to each tensor so all four waves issue copies.
""")
    write(exp / f"{ID}_experiment.md", f"""# v053 Case2 BSM transfer experiment

Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. One-wave SHA-256 `{candidate_hash}`; four-wave repair SHA-256 `{repair_hash}`.

The one-wave transfer is correct but regresses Case2 W20/R100 by +4.11984% paired median with 0/9 wins. mcTracer localizes the regression to Step1 at +5.72879%; Step2 is unchanged. Step1 resources move 210 MT/36 ST -> 216 MT/36 ST, retain two static waves, and do not spill. Unlike Case3, Case2 receives no ST reduction.

The repair probe assigns all four waves to BSM, gate/up two waves each. It passes Case2 correctness but regresses +11.08456% paired median in 7/7 pairs despite lowering Step1 to 182 MT/28 ST at the same two-wave tier. Thus inactive producer waves and nominal register counts are not the primary cause. Case2's accepted synchronous prefetch-before-barrier schedule is shape-specific and more efficient at 48 CTAs than either direct BSM assignment.
""")

    for src, name in (
        (WORK / "pair_case2_w20_r100_9pairs.log", "case2_one_wave_pair9.log"),
        (WORK / "pair_v053b_case2_w20_r100_7pairs.log", "case2_four_wave_pair7.log"),
    ):
        copy(src, rep / "benchmark" / name)
    copy(WORK / "validate_submission.log", rep / "correctness" / "one_wave_all_cases.log")
    copy(WORK / "validate_v053b_case2.log", rep / "correctness" / "four_wave_case2.log")
    copy(WORK / "oj_import_validation.log", rep / "correctness" / "oj_import_validation.log")
    tree(WORK / "codegen_candidate_case2", rep / "codegen" / "one_wave")
    tree(WORK / "codegen_probe_four_wave", rep / "codegen" / "four_wave")
    parent_codegen = MOE / "restart-rep" / PARENT_ID / "codegen/candidate/case2"
    tree(parent_codegen, rep / "codegen" / "parent_v052")
    tree(WORK / "mctracer_case2", rep / "profiler/mctracer/raw_case2")
    copy(WORK / "mctracer_driver.log", rep / "profiler/mctracer/driver.log")
    write(rep / "profiler/mcprofiler/UNAVAILABLE.md", "mcProfiler was not collected because clean timing rejected one-wave by 4.12% and the repair by 11.08%; codegen plus mcTracer already localize the failure.")
    write(rep / "profiler/mxsmi/UNAVAILABLE.md", "No version-specific mx-smi sampling was required after two stable rejection screens.")
    write(roof / "UNAVAILABLE.md", "No Roofline image is generated for this rejected transfer; the fixed math/byte schedule is unchanged and the clean timing direction is unambiguous.")

    inherited = MOE / "restart-scripts" / PARENT_ID
    for src, dst in (
        ("v052_pair_benchmark.py", "v053_pair_benchmark.py"),
        ("v052_capture_codegen.py", "v053_capture_codegen.py"),
        ("v052_run_paired_mctracer_used.py", "v053_run_paired_mctracer.py"),
        ("profile_submission.py", "profile_submission.py"),
        ("validate_submission.py", "validate_submission.py"),
        ("validate_oj_submission.py", "validate_oj_submission.py"),
        ("validate_iteration.py", "validate_iteration.py"),
    ):
        copy(inherited / src, scripts / dst)
    copy(Path(__file__), scripts / "v053_finalize_iteration.py")
    write(scripts / f"{ID}_scripts.md", """# v053 scripts

- Paired benchmark: nine one-wave pairs and seven four-wave repair pairs at W20/R100.
- Paired mcTracer: three Case2 pairs to localize the one-wave regression.
- Codegen capture: parent, one-wave, and four-wave resource/lowering evidence.
- Validation: exact OJ import and numerical checks.
""")

    report = f"""# v053 report: rejected Case2 direct BSM transfer

Status: rejected; v052 remains the best. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`.

One-wave direct BSM passes all three shapes but regresses Case2 4.929011 -> 5.133353 ms, +4.11984% paired median, 0/9 wins. mcTracer Step1 is 3.226368 -> 3.411200 ms, +5.72879%; Step2 median change is -0.10523% and treated unchanged. Resources are 210 MT/36 ST -> 216 MT/36 ST, two waves, zero private spill.

The all-four-wave repair also passes correctness but regresses 4.941225 -> 5.491159 ms, +11.08456%, 0/7 wins. It lowers resources to 182 MT/28 ST but remains at the same two-wave residency tier, another direct counterexample to register-only reasoning. This falsifies the proposed producer-parallelism repair. Case2 has only 48 Step1 CTAs and already owns the specialized synchronous prefetch-before-barrier path; the mechanism that helped Case3 at 96 CTAs is therefore not portable to Case2.

Decision: keep the exact v052 submission. Do not create a v053 restart-submission directory.
"""
    write(rep / f"{ID}_report.md", report)
    write(rep / ".gitattributes", "*.log binary\n*.csv binary\ncodegen/**/*.cpp -text")

    manifest = {
        "iteration_id": ID,
        "status": "rejected",
        "machine": "sc-16g",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "change": "extend exact 7168-wide one-wave BSM staging to Case2",
        "one_wave": {"paired_median_change_percent": 4.119837622035094, "wins": "0/9", "step1_mctracer_change_percent": 5.728794731413167, "resources": "216 MT/36 ST, two waves, no spill"},
        "four_wave_repair": {"paired_median_change_percent": 11.084562329212954, "wins": "0/7", "correctness": "pass", "resources": "182 MT/28 ST, two waves, no spill"},
        "decision": "retain-v052",
    }
    payload = json.dumps(manifest, ensure_ascii=False, indent=2)
    for root in roots.values():
        write(root / f"{ID}_manifest.json", payload)
    rows = []
    for path in sorted(rep.rglob("*")):
        if path.is_file() and path.name != "artifact_inventory.sha256":
            rows.append(f"{sha(path)}  {path.relative_to(rep)}")
    write(rep / "artifact_inventory.sha256", "\n".join(rows))
    print(payload)


if __name__ == "__main__":
    main()
