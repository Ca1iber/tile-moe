#!/usr/bin/env python3
"""Validate the structure and evidence presence of one restart iteration."""

from __future__ import annotations

import argparse
import json
import subprocess
import sys
from pathlib import Path


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
        accepted = manifest.get("status") in {"accepted", "final", "accepted-final"}
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
