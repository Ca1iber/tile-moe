#!/usr/bin/env bash
set -euo pipefail

REPO=/root/tilelang-metax
PARENT="$REPO/race_tests/moe/restart-experiments/v152_dynamic_step2_m192n128_sc-16g/v152_dynamic_step2_m192n128_sc-16g_custom_fusedmoe.py"
CANDIDATE=/tmp/trial_v152_case2_unified_mixedslot_step2.py
SCRIPTS="$REPO/race_tests/moe/restart-scripts/v152_dynamic_step2_m192n128_sc-16g"

cd "$REPO"
/opt/conda/bin/python "$SCRIPTS/validate_oj_submission.py" "$CANDIDATE"
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="$REPO" /opt/conda/bin/python \
  "$SCRIPTS/run_v110_fullcheck.py" \
  --parent "$PARENT" --candidate "$CANDIDATE" --case 2 \
  --output /tmp/trial_v152_case2_unified_mixedslot_step2_screen.json \
  --rounds 1 --warmup 2 --repeat 5
MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="$REPO" \
  /opt/conda/bin/python "$SCRIPTS/capture_codegen.py" \
  --submission "$CANDIDATE" --source-tag mixedslot \
  --output-dir /tmp/mixedslot_codegen --case 2
/tmp/run_candidate_mcprofiler_subset.sh 2 kernel_kernel_2 mixedslot_case2 memory "$CANDIDATE"
/tmp/run_candidate_mcprofiler_subset.sh 2 kernel_kernel_2 v152parent_case2 memory "$PARENT"
