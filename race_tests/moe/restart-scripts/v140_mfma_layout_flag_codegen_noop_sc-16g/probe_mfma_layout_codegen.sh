#!/usr/bin/env bash
set -euo pipefail

repo_root="${1:-/root/tilelang-metax}"
probe_root="${2:-/root/moe_runs/v140_mfma_layout_probe}"
cd "${repo_root}"

python_bin="/opt/conda/bin/python"
capture="race_tests/moe/restart-scripts/v138_step1_direct_shuffled_a_sc-16g/capture_codegen.py"
validator="race_tests/moe/restart-scripts/v138_step1_direct_shuffled_a_sc-16g/validate_oj_submission.py"

export MACA_PATH=/opt/maca
export PYTHONDONTWRITEBYTECODE=1
export PYTHONPATH="${repo_root}"

"${python_bin}" "${validator}" "${probe_root}/candidate.py"
for role in parent candidate; do
  for case_id in 1 2 3; do
    "${python_bin}" "${capture}" \
      --submission "${probe_root}/${role}.py" \
      --source-tag "${role}" \
      --output-dir "${probe_root}/${role}_codegen" \
      --case "${case_id}"
  done
done

for case_id in 1 2 3; do
  cmp -s \
    "${probe_root}/parent_codegen/parent_case${case_id}_generated_device.cpp" \
    "${probe_root}/candidate_codegen/candidate_case${case_id}_generated_device.cpp"
done

echo "PASS: all official cases are byte-identical"
