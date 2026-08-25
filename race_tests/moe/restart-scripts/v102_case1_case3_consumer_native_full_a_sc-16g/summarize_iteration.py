#!/usr/bin/env python3
"""Update an iteration manifest with Git identity and a SHA-256 artifact inventory."""

from __future__ import annotations

import argparse
import hashlib
import json
import subprocess
from datetime import datetime, timezone
from pathlib import Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--root", type=Path, required=True, help="MoE root, usually race_tests/moe")
    parser.add_argument("--iteration-id", required=True)
    return parser.parse_args()


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def git_value(cwd: Path, *args: str) -> str | None:
    result = subprocess.run(
        ["git", *args], cwd=cwd, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, check=False
    )
    return result.stdout.strip() if result.returncode == 0 else None


def main() -> int:
    args = parse_args()
    root = args.root.resolve()
    iid = args.iteration_id
    iteration_dirs = [
        root / "moe-roofline" / iid,
        root / "restart-experiments" / iid,
        root / "restart-rep" / iid,
        root / "restart-scripts" / iid,
    ]
    submission_dir = root / "restart-submission" / iid
    if submission_dir.is_dir():
        iteration_dirs.append(submission_dir)
    missing = [str(path) for path in iteration_dirs[:4] if not path.is_dir()]
    if missing:
        raise SystemExit("Missing iteration directories:\n" + "\n".join(missing))

    manifest_path = root / "restart-rep" / iid / f"{iid}_manifest.json"
    manifest: dict = {}
    if manifest_path.is_file():
        manifest = json.loads(manifest_path.read_text(encoding="utf-8"))

    inventory = []
    for directory in iteration_dirs:
        for path in sorted(item for item in directory.rglob("*") if item.is_file()):
            if path.resolve() == manifest_path.resolve():
                continue
            inventory.append(
                {
                    "path": str(path.relative_to(root)),
                    "bytes": path.stat().st_size,
                    "sha256": sha256(path),
                }
            )

    repo_root_text = git_value(root, "rev-parse", "--show-toplevel")
    git_cwd = Path(repo_root_text) if repo_root_text else root
    manifest.update(
        {
            "iteration_id": iid,
            "summarized_at_utc": datetime.now(timezone.utc).isoformat(),
            "git": {
                "root": repo_root_text,
                "branch": git_value(git_cwd, "branch", "--show-current") if repo_root_text else None,
                "commit": git_value(git_cwd, "rev-parse", "HEAD") if repo_root_text else None,
                "status_short": git_value(git_cwd, "status", "--short") if repo_root_text else None,
            },
            "artifact_inventory": inventory,
        }
    )
    manifest_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(f"updated {manifest_path} with {len(inventory)} artifacts")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
