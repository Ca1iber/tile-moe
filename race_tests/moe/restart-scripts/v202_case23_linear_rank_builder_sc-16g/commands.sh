#!/usr/bin/env bash
set -euo pipefail

project_root=/root/tilelang-metax
parent="${project_root}/race_tests/moe/restart-submission/v166_gateup_pairload_sc-16g/submission.py"
candidate="${project_root}/race_tests/moe/restart-experiments/v202_case23_linear_rank_builder_sc-16g/candidate_submission.py"
script_dir="${project_root}/race_tests/moe/restart-scripts/v202_case23_linear_rank_builder_sc-16g"

/opt/conda/bin/python "${script_dir}/validate_oj_submission.py" "${candidate}"

for case_id in 1 2 3; do
  /usr/bin/env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${project_root}" \
    /opt/conda/bin/python "${script_dir}/run_v110_fullcheck.py" \
      --parent "${parent}" --candidate "${candidate}" --case "${case_id}" \
      --output "/tmp/v202_case${case_id}_recheck.json" \
      --rounds 3 --warmup 10 --repeat 20
done
