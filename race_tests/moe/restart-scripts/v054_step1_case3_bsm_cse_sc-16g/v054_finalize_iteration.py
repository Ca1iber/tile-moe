#!/usr/bin/env python3
"""Archive rejected v054 Case3 BSM address-CSE probes."""

import hashlib
import json
import shutil
import subprocess
from pathlib import Path


REPO = Path("/root/tilelang-metax")
MOE = REPO / "race_tests/moe"
WORK = Path("/tmp/tile-moe-scratch-20260814/v054-work")
MCPROF = Path("/tmp/tile-moe-scratch-20260814/v052-work/mcprofiler/case3")
ID = "v054_step1_case3_bsm_cse_sc-16g"
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
    src, dst = Path(src), Path(dst)
    if not src.is_dir():
        raise FileNotFoundError(src)
    shutil.copytree(src, dst, dirs_exist_ok=True)


def diff(left, right, output):
    output = Path(output)
    output.parent.mkdir(parents=True, exist_ok=True)
    with output.open("w", encoding="utf-8") as stream:
        subprocess.run(
            ["git", "diff", "--no-index", "--", str(left), str(right)],
            cwd=REPO,
            stdout=stream,
            text=True,
            check=False,
        )


def sha(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def main():
    roots = {
        name: MOE / name / ID
        for name in ("moe-roofline", "restart-experiments", "restart-rep", "restart-scripts")
    }
    for path in roots.values():
        path.mkdir(parents=True, exist_ok=True)
    roof, exp, rep, scripts = (roots[name] for name in roots)

    parent = MOE / "restart-submission" / PARENT_ID / "submission.py"
    candidate = WORK / "v054_submission.py"
    repair = WORK / "v054_repair_submission.py"
    candidate_hash, repair_hash = sha(candidate), sha(repair)

    copy(candidate, exp / f"{ID}_custom_fusedmoe.py")
    copy(repair, exp / "v054b_split_branch_repair.py")
    diff(parent, candidate, exp / f"{ID}.patch")
    diff(candidate, repair, exp / "v054b_split_branch_repair.patch")
    write(
        exp / "hypothesis.md",
        """# v054 hypothesis

v052's 7168-wide two-row helper inlines the same lane, row, swizzle, and base-address arithmetic twice. Compute those values once and issue the two adjacent 16-byte BSM transactions from the shared expressions. Keep logical bytes, math, barriers, tiles, grid, Step2, and imports unchanged. If grouping both transactions inside one divergent branch harms issue behavior, repair it by restoring one branch-reconvergence region per row while retaining the common address arithmetic.
""",
    )
    write(
        exp / f"{ID}_experiment.md",
        f"""# v054 Case3 BSM address-CSE experiment

Parent `{PARENT_ID}` / `{PARENT_COMMIT}`. Primary SHA-256 `{candidate_hash}`; split-branch repair SHA-256 `{repair_hash}`.

The primary probe passes Case3 correctness but regresses W20/R100 by +4.38801% paired median with 0/9 wins. mcTracer localizes it to Step1 at +4.75816% median while Step2 changes only +0.19336%. Despite fewer registers (216 MT/36 ST -> 200 MT/36 ST), the same two-wave tier, no spill, and 13.2375% fewer static Step1 instructions, wave-matched mcProfiler reports +11.7949% global-read bytes, +11.9706% DNOC read requests, L2 hit rate 55.14% -> 50.68%, MMA duty 25.81% -> 24.97%, and MTE duty 40.76% -> 38.89%.

The repair restores a separate branch-reconvergence region for each row while retaining common address calculations. It reduces the regression to +1.65531% paired median but still loses 7/7 pairs. Its resources return to 216 MT/52 ST at the same two-wave tier; static Step1 ISA grows +1.2355%, including eight additional `ldg_b128` and sixteen additional `snop` instructions. The original two helper calls therefore preserve a better backend transaction/cache schedule than either manual CSE form.
""",
    )

    for src, name in (
        (WORK / "pair_case3_w20_r100_9pairs.log", "case3_primary_pair9_w20_r100.log"),
        (WORK / "repair_pair_case3_w20_r100_7pairs.log", "case3_repair_pair7_w20_r100.log"),
    ):
        copy(src, rep / "benchmark" / name)
    copy(WORK / "validate_case3.log", rep / "correctness" / "primary_case3.log")
    copy(WORK / "oj_import_validation.log", rep / "correctness" / "primary_oj_import.log")
    copy(WORK / "repair_correctness_case3.log", rep / "correctness" / "repair_case3.log")
    copy(WORK / "repair_import.log", rep / "correctness" / "repair_oj_import.log")

    tree(WORK / "codegen_candidate_case3", rep / "codegen" / "primary")
    tree(WORK / "codegen_repair_case3", rep / "codegen" / "repair")
    tree(
        MOE / "restart-rep" / PARENT_ID / "codegen/candidate/case3",
        rep / "codegen" / "parent_v052",
    )
    tree(WORK / "isa_candidate_case3", rep / "codegen" / "isa_primary")
    tree(WORK / "isa_analysis", rep / "codegen" / "isa_primary_analysis")
    tree(WORK / "isa_repair_case3", rep / "codegen" / "isa_repair")
    tree(WORK / "isa_repair_analysis", rep / "codegen" / "isa_repair_analysis")
    for name in (
        "capture_codegen.log",
        "capture_codegen_repair.log",
        "isa_analysis.log",
        "isa_repair_analysis.log",
    ):
        copy(WORK / name, rep / "codegen" / name)

    tree(WORK / "mctracer_case3", rep / "profiler/mctracer/raw_case3")
    copy(WORK / "mctracer_driver.log", rep / "profiler/mctracer/driver.log")
    tree(MCPROF / "v052_parent_for_v054", rep / "profiler/mcprofiler/raw/v052_parent")
    tree(MCPROF / "v054_candidate_for_v054", rep / "profiler/mcprofiler/raw/v054_primary")
    copy(WORK / "mcprofiler_summary.json", rep / "profiler/mcprofiler/wave_matched_summary.json")
    write(
        rep / "profiler/mxsmi/UNAVAILABLE.md",
        "No version-specific mx-smi sample was required; wave-matched mcProfiler and paired mcTracer directly explain the rejected source delta.",
    )
    write(
        roof / "UNAVAILABLE.md",
        "No new Roofline image is generated for this rejected address-CSE probe. The analytical FLOPs and logical bytes are unchanged; mcProfiler instead reveals 11.79% more actual global-read traffic from the changed BSM issue/cache behavior.",
    )

    inherited = MOE / "restart-scripts" / PARENT_ID
    for src, dst in (
        ("v052_pair_benchmark.py", "v054_pair_benchmark.py"),
        ("v052_capture_codegen.py", "v054_capture_codegen.py"),
        ("v052_run_paired_mctracer_used.py", "v054_run_paired_mctracer.py"),
        ("v052_run_mcprofiler.sh", "v054_run_mcprofiler.sh"),
        ("v052_summarize_mcprofiler.py", "v054_summarize_mcprofiler.py"),
        ("v052_analyze_isa.py", "v054_analyze_isa.py"),
        ("extract_metax_isa.sh", "extract_metax_isa.sh"),
        ("profile_submission.py", "profile_submission.py"),
        ("validate_submission.py", "validate_submission.py"),
        ("validate_oj_submission.py", "validate_oj_submission.py"),
        ("validate_iteration.py", "validate_iteration.py"),
    ):
        copy(inherited / src, scripts / dst)
    copy(Path(__file__), scripts / "v054_finalize_iteration.py")
    write(
        scripts / f"{ID}_scripts.md",
        """# v054 scripts

- Paired benchmark: nine primary and seven split-branch-repair Case3 pairs at W20/R100.
- Paired mcTracer: three Case3 pairs to localize the primary regression.
- mcProfiler: one wave-matched parent/primary replay with memory, L2, MMA, and MTE counters.
- Codegen/ISA: resource capture, final xcore1000 extraction, and Step1 opcode comparison for both probes.
- Validation: exact OJ import and numerical checks.
""",
    )

    report = f"""# v054 report: rejected Case3 BSM address CSE

Status: rejected; v052 remains the best. Parent `{PARENT_ID}` / `{PARENT_COMMIT}`.

Primary manual CSE passes correctness but regresses Case3 10.001931 -> 10.443203 ms, +4.38801% paired median, 0/9 wins. mcTracer Step1 is 6.828800 -> 7.107584 ms at the median (+4.75816% paired); Step2 is effectively unchanged (+0.19336%). Resources improve from 216 MT/36 ST to 200 MT/36 ST, stay at two waves, and do not spill. Static Step1 instructions fall 3966 -> 3441 (-13.2375%).

The regression is a memory-transaction effect, not extra arithmetic. With identical achieved waves and Memory Instructions, mcProfiler measures global-read bytes +11.7949%, DNOC read requests +11.9706%, and L2 hit rate -4.46 percentage points. MMA duty falls 25.81% -> 24.97% and MTE duty 40.76% -> 38.89%. Grouping two BSM operations within one divergent branch changes hardware issue/cache behavior enough to overwhelm the address-instruction savings.

The split-branch repair recovers most of the loss but remains +1.65531%, 0/7 wins. It restores 216 MT registers but raises ST registers 36 -> 52 and static ISA 3966 -> 4015 (+1.2355%), including +8 `ldg_b128` and +16 `snop`. This repair falsifies the narrower hypothesis that branch reconvergence alone caused all loss.

Decision: retain the exact v052 submission and preserve its two separate 7168 helper calls. Do not create a v054 restart-submission directory.
"""
    write(rep / f"{ID}_report.md", report)
    write(
        rep / ".gitattributes",
        """*.log binary
*.csv binary
*.pdf binary
*.bc binary
*.mcfb binary
*.elf binary
*.bin binary
codegen/**/*.cpp -text
codegen/**/*.s -text
""",
    )

    manifest = {
        "iteration_id": ID,
        "status": "rejected",
        "machine": "sc-16g",
        "parent_iteration": PARENT_ID,
        "parent_commit": PARENT_COMMIT,
        "change": "manually common Case3 Step1 two-row BSM address calculations",
        "primary": {
            "paired_median_change_percent": 4.38800846328169,
            "wins": "0/9",
            "step1_mctracer_change_percent": 4.75816406688363,
            "resources": "200 MT/36 ST, two waves, no spill",
            "static_instruction_change_percent": -13.237518910741297,
            "global_read_bytes_change_percent": 11.794946567840103,
            "l2_hit_rate_percentage_points": -4.46,
        },
        "split_branch_repair": {
            "paired_median_change_percent": 1.6553050980195216,
            "wins": "0/7",
            "resources": "216 MT/52 ST, two waves, no spill",
            "static_instruction_change_percent": 1.2355017650025113,
        },
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
