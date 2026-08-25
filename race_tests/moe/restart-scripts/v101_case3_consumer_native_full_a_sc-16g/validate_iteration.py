#!/usr/bin/env python3
"""Validate the structure and evidence presence of one restart iteration."""

from __future__ import annotations

import argparse
import hashlib
import json
import math
import re
import subprocess
import sys
from pathlib import Path


ACCEPTED_STATUSES = {"accepted", "final", "accepted-final"}
SHA256_RE = re.compile(r"^[0-9a-f]{64}$")


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, required=True, help="MoE root, usually race_tests/moe")
    parser.add_argument("--iteration-id", required=True)
    parser.add_argument("--strict", action="store_true", help="Require evidence or an explicit UNAVAILABLE.md")
    return parser.parse_args()


def has_payload(path: Path, ignored_names: set[str] | None = None) -> bool:
    ignored_names = ignored_names or set()
    return path.is_dir() and any(
        item.is_file() and item.name not in ignored_names and item.stat().st_size > 0
        for item in path.rglob("*")
    )


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def is_number(value: object) -> bool:
    return isinstance(value, (int, float)) and not isinstance(value, bool) and math.isfinite(value)


def validate_sota_gate(gate: object, submission_hash: str) -> list[str]:
    errors: list[str] = []
    if not isinstance(gate, dict):
        return ["accepted version missing object-valued evidence manifest field: sota_gate"]

    if gate.get("authority") != "oj-platform":
        errors.append("sota_gate.authority must be 'oj-platform'")
    incumbent_id = gate.get("incumbent_id")
    if not isinstance(incumbent_id, str) or not incumbent_id.strip():
        errors.append("sota_gate.incumbent_id must identify the incumbent OJ SOTA")

    incumbent_hash = gate.get("incumbent_submission_sha256")
    if not isinstance(incumbent_hash, str) or not SHA256_RE.fullmatch(incumbent_hash):
        errors.append("sota_gate.incumbent_submission_sha256 must be a lowercase SHA-256")
    candidate_hash = gate.get("candidate_submission_sha256")
    if not isinstance(candidate_hash, str) or not SHA256_RE.fullmatch(candidate_hash):
        errors.append("sota_gate.candidate_submission_sha256 must be a lowercase SHA-256")
    elif candidate_hash != submission_hash:
        errors.append("sota_gate candidate hash does not match restart-submission/<id>/submission.py")

    metric = gate.get("metric")
    if not isinstance(metric, str) or not metric.strip():
        errors.append("sota_gate.metric must be a non-empty OJ metric name")
    higher_is_better = gate.get("higher_is_better")
    if not isinstance(higher_is_better, bool):
        errors.append("sota_gate.higher_is_better must be boolean")

    case_count = gate.get("official_case_count")
    cases = gate.get("cases")
    if not isinstance(case_count, int) or isinstance(case_count, bool) or case_count <= 0:
        errors.append("sota_gate.official_case_count must be a positive integer")
    if not isinstance(cases, list):
        errors.append("sota_gate.cases must be a list")
        return errors
    if isinstance(case_count, int) and not isinstance(case_count, bool) and len(cases) != case_count:
        errors.append("sota_gate.cases length does not match official_case_count")

    case_ids: set[object] = set()
    all_non_regressing = True
    at_least_one_improved = False
    comparable = isinstance(higher_is_better, bool)
    for index, case in enumerate(cases, start=1):
        if not isinstance(case, dict):
            errors.append(f"sota_gate.cases[{index}] must be an object")
            comparable = False
            continue
        case_id = case.get("case")
        try:
            duplicate = case_id in case_ids
            case_ids.add(case_id)
        except TypeError:
            errors.append(f"sota_gate.cases[{index}].case must be a unique scalar identifier")
            comparable = False
            duplicate = False
        if case_id is None or duplicate:
            errors.append(f"sota_gate.cases[{index}].case must be unique and non-null")
        incumbent = case.get("incumbent")
        candidate = case.get("candidate")
        if not is_number(incumbent) or not is_number(candidate):
            errors.append(f"sota_gate.cases[{index}] requires finite numeric incumbent/candidate values")
            comparable = False
            continue
        if isinstance(higher_is_better, bool):
            non_regressing = candidate >= incumbent if higher_is_better else candidate <= incumbent
            improved = candidate > incumbent if higher_is_better else candidate < incumbent
            all_non_regressing = all_non_regressing and non_regressing
            at_least_one_improved = at_least_one_improved or improved

    declared_non_regressing = gate.get("all_cases_non_regressing")
    declared_improved = gate.get("at_least_one_case_improved")
    if not isinstance(declared_non_regressing, bool):
        errors.append("sota_gate.all_cases_non_regressing must be boolean")
    if not isinstance(declared_improved, bool):
        errors.append("sota_gate.at_least_one_case_improved must be boolean")
    if comparable:
        if declared_non_regressing != all_non_regressing:
            errors.append("sota_gate.all_cases_non_regressing disagrees with the per-case values")
        if declared_improved != at_least_one_improved:
            errors.append("sota_gate.at_least_one_case_improved disagrees with the per-case values")
        if not all_non_regressing:
            errors.append("accepted version regresses against the incumbent SOTA in at least one OJ case")
        if not at_least_one_improved:
            errors.append("accepted version does not strictly improve any OJ case")
    return errors


def main() -> int:
    args = parse_args()
    root = args.root.resolve()
    iid = args.iteration_id
    paths = {
        "roofline": root / "moe-roofline" / iid,
        "experiment": root / "restart-experiments" / iid,
        "report": root / "restart-rep" / iid,
        "scripts": root / "restart-scripts" / iid,
    }
    errors: list[str] = []
    for label, path in paths.items():
        if not path.is_dir():
            errors.append(f"missing {label} directory: {path}")

    required_files = (
        paths["roofline"] / f"{iid}_manifest.json",
        paths["experiment"] / f"{iid}_experiment.md",
        paths["report"] / f"{iid}_report.md",
        paths["report"] / f"{iid}_manifest.json",
        paths["scripts"] / f"{iid}_scripts.md",
    )
    for path in required_files:
        if not path.is_file() or path.stat().st_size == 0:
            errors.append(f"missing or empty required file: {path}")

    manifest_path = paths["report"] / f"{iid}_manifest.json"
    manifest: dict = {}
    if manifest_path.is_file():
        try:
            manifest = json.loads(manifest_path.read_text(encoding="utf-8"))
        except (OSError, UnicodeDecodeError, json.JSONDecodeError) as error:
            errors.append(f"invalid evidence manifest: {manifest_path}: {error}")

    if args.strict and all(path.is_dir() for path in paths.values()):
        snapshot = paths["experiment"] / f"{iid}_custom_fusedmoe.py"
        patch = paths["experiment"] / f"{iid}.patch"
        exp_unavailable = paths["experiment"] / "UNAVAILABLE.md"
        if not snapshot.is_file() and not exp_unavailable.is_file():
            errors.append(f"missing source snapshot or UNAVAILABLE.md: {snapshot}")
        if not patch.is_file() and not exp_unavailable.is_file():
            errors.append(f"missing patch or UNAVAILABLE.md: {patch}")

        roof_artifacts = list(paths["roofline"].glob("*.png")) + list(paths["roofline"].glob("*.svg"))
        if not roof_artifacts and not (paths["roofline"] / "UNAVAILABLE.md").is_file():
            errors.append("missing Roofline image or moe-roofline/<id>/UNAVAILABLE.md")

        evidence_dirs = (
            "correctness",
            "benchmark",
            "profiler/mcprofiler",
            "profiler/mctracer",
            "profiler/mxsmi",
            "codegen",
        )
        for relative in evidence_dirs:
            path = paths["report"] / relative
            if not has_payload(path):
                errors.append(f"no evidence or UNAVAILABLE.md under: {path}")

        ignored = {f"{iid}_scripts.md"}
        if not has_payload(paths["scripts"], ignored):
            errors.append(f"no archived executable/helper scripts under: {paths['scripts']}")

        submission_dir = root / "restart-submission" / iid
        submission = submission_dir / "submission.py"
        accepted = manifest.get("status") in ACCEPTED_STATUSES
        if not accepted and submission_dir.exists():
            errors.append(
                "non-SOTA version must not have restart-submission/<id>/; "
                "stage candidates under /tmp or restart-experiments/<id>/"
            )
        if accepted:
            required_submission_files = (
                submission,
                submission_dir / "oj_import_validation.txt",
                submission_dir / "submission.sha256",
            )
            for path in required_submission_files:
                if not path.is_file() or path.stat().st_size == 0:
                    errors.append(f"accepted version missing OJ submission artifact: {path}")
            if submission.is_file():
                submission_hash = sha256(submission)
                hash_file = submission_dir / "submission.sha256"
                if hash_file.is_file():
                    recorded_hash = hash_file.read_text(encoding="utf-8").split()
                    if not recorded_hash or recorded_hash[0] != submission_hash:
                        errors.append("submission.sha256 does not match submission.py")
                errors.extend(validate_sota_gate(manifest.get("sota_gate"), submission_hash))
        if submission.is_file():
            validator = Path(__file__).resolve().with_name("validate_oj_submission.py")
            if not validator.is_file():
                errors.append(f"missing OJ import validator: {validator}")
            else:
                result = subprocess.run(
                    [sys.executable, str(validator), str(submission)],
                    text=True,
                    stdout=subprocess.PIPE,
                    stderr=subprocess.STDOUT,
                    check=False,
                )
                if result.returncode != 0:
                    errors.append(
                        f"OJ submission import validation failed: {submission}: "
                        f"{result.stdout.strip()}"
                    )

    if errors:
        print("INVALID")
        for error in errors:
            print(f"- {error}")
        return 1
    print(f"VALID: {iid}{' (strict)' if args.strict else ''}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
