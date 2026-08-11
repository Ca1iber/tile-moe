#!/usr/bin/env python3
"""Copy native mcProfiler RoofLine images and metric payloads into v005."""

from __future__ import annotations

import json
import shutil
from pathlib import Path


IID = "v005_numstage2_materialization_sc-16g"
MOE = Path("/root/tilelang-metax/race_tests/moe")
REP = MOE / "restart-rep" / IID
OUT = MOE / "moe-roofline" / IID / "native"


def main() -> None:
    OUT.mkdir(parents=True, exist_ok=True)
    artifacts = []
    for step, kernel in ((1, "kernel_kernel"), (2, "kernel_kernel_1")):
        root = REP / f"profiler/mcprofiler/raw/roofline_case3_step{step}/mcprofiler_output"
        metric = root / f"1_{kernel}.txt.json"
        payload = json.loads(metric.read_text(encoding="utf-8"))
        value = next(item["value"] for item in payload["Summary"] if item["name"] == "RoofLine")
        source = Path(value["filename"])
        image = OUT / f"{IID}_case3_step{step}_mcprofiler_native.png"
        metric_copy = OUT / f"{IID}_case3_step{step}_roofline_metric.json"
        shutil.copy2(source, image)
        shutil.copy2(metric, metric_copy)
        artifacts.append({"step": step, "image": str(image), "metric": str(metric_copy), "source": str(source)})
    manifest = {"iteration_id": IID, "kind": "native mcProfiler RoofLine", "artifacts": artifacts}
    (OUT / f"{IID}_native_roofline_manifest.json").write_text(
        json.dumps(manifest, ensure_ascii=False, indent=2) + "\n", encoding="utf-8"
    )
    print(json.dumps(manifest, ensure_ascii=False, indent=2))


if __name__ == "__main__":
    main()
