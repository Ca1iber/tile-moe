#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
id=v159_case1_unified_hybrid_m192n64_sc-16g
parent="${repo}/race_tests/moe/restart-experiments/v157_case3_unified_exact_step1_sharedraw_sc-16g/v157_case3_unified_exact_step1_sharedraw_sc-16g_custom_fusedmoe.py"
candidate="${repo}/race_tests/moe/restart-experiments/${id}/${id}_custom_fusedmoe.py"
scripts="${repo}/race_tests/moe/restart-scripts/${id}"

cd "${repo}"
/opt/conda/bin/python "${scripts}/validate_oj_submission.py" "${candidate}"
for case_id in 2 3; do
  PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${repo}" /opt/conda/bin/python "${scripts}/run_v110_fullcheck.py" --parent "${parent}" --candidate "${candidate}" --case "${case_id}" --output "/tmp/${id}_case${case_id}_side.json" --rounds 1 --warmup 5 --repeat 20
done
PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${repo}" /opt/conda/bin/python "${scripts}/run_v110_fullcheck.py" --parent "${parent}" --candidate "${candidate}" --case 1 --output "/tmp/${id}_case1_formal.json" --rounds 5 --warmup 10 --repeat 50
MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${repo}" /opt/conda/bin/python "${scripts}/capture_codegen.py" --submission "${candidate}" --source-tag "${id}" --output-dir "/tmp/${id}_codegen" --case 1

