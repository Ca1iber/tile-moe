#!/usr/bin/env python3
"""Archive already-produced TileLang lowering/codegen/assembly artifacts with hashes."""

from __future__ import annotations

import argparse
import hashlib
import json
import shutil
from datetime import datetime, timezone
from pathlib import Path


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--source", type=Path, action="append", default=[], help="Kernel/source snapshot; repeatable")
    parser.add_argument("--lowering", type=Path, action="append", default=[], help="Lowering dump; repeatable")
    parser.add_argument("--generated", type=Path, action="append", default=[], help="Generated device source; repeatable")
    parser.add_argument("--assembly", type=Path, action="append", default=[], help="Backend assembly; repeatable")
    parser.add_argument("--resource-usage", type=Path, action="append", default=[], help="Register/LDS/resource report; repeatable")
    parser.add_argument("--output-dir", type=Path, required=True)
    return parser.parse_args()


def sha256(path: Path) -> str:
    digest = hashlib.sha256()
    with path.open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def main() -> int:
    args = parse_args()
    groups = {
        "source": args.source,
        "lowering": args.lowering,
        "generated_device": args.generated,
        "assembly": args.assembly,
        "resource_usage": args.resource_usage,
    }
    if not any(groups.values()):
        raise SystemExit("Provide at least one artifact path")
    output_dir = args.output_dir.resolve()
    output_dir.mkdir(parents=True, exist_ok=True)
    inventory = []
    for kind, sources in groups.items():
        for index, source in enumerate(sources, start=1):
            source = source.resolve()
            if not source.is_file():
                raise SystemExit(f"missing {kind} artifact: {source}")
            suffix = "".join(source.suffixes) or ".txt"
            destination = output_dir / f"{kind}_{index:02d}{suffix}"
            shutil.copy2(source, destination)
            inventory.append(
                {
                    "kind": kind,
                    "source": str(source),
                    "archived": destination.name,
                    "bytes": destination.stat().st_size,
                    "sha256": sha256(destination),
                }
            )
    manifest = {
        "archived_at_utc": datetime.now(timezone.utc).isoformat(),
        "artifacts": inventory,
    }
    manifest_path = output_dir / "codegen_archive_manifest.json"
    manifest_path.write_text(json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8")
    print(manifest_path)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
