#!/usr/bin/env bash
set -euo pipefail

REPO=/root/tilelang-metax
ID=v153_case2_unified_m192_sharedreuse_sc-16g
PARENT="$REPO/race_tests/moe/restart-experiments/v152_dynamic_step2_m192n128_sc-16g/v152_dynamic_step2_m192n128_sc-16g_custom_fusedmoe.py"
CANDIDATE="$REPO/race_tests/moe/restart-experiments/$ID/${ID}_custom_fusedmoe.py"
SCRIPTS="$REPO/race_tests/moe/restart-scripts/$ID"

cd "$REPO"
/opt/conda/bin/python "$SCRIPTS/validate_oj_submission.py" "$CANDIDATE"
for case_id in 1 2 3; do
  PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="$REPO" /opt/conda/bin/python \
    "$SCRIPTS/run_v110_fullcheck.py" \
    --parent "$PARENT" --candidate "$CANDIDATE" --case "$case_id" \
    --output "/tmp/${ID}_case${case_id}.json" \
    --rounds 5 --warmup 5 --repeat 20
done
MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="$REPO" \
  /opt/conda/bin/python "$SCRIPTS/capture_codegen.py" \
  --submission "$CANDIDATE" --source-tag "$ID" \
  --output-dir "/tmp/${ID}_codegen" --case 2

