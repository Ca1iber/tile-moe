#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
id=v157_case3_unified_exact_step1_sharedraw_sc-16g
parent="${repo}/race_tests/moe/restart-experiments/v154_case3_unified_m192_sharedreuse_sc-16g/v154_case3_unified_m192_sharedreuse_sc-16g_custom_fusedmoe.py"
candidate="${repo}/race_tests/moe/restart-experiments/${id}/${id}_custom_fusedmoe.py"
scripts="${repo}/race_tests/moe/restart-scripts/${id}"

cd "${repo}"
/opt/conda/bin/python "${scripts}/validate_oj_submission.py" "${candidate}"

for case_id in 1 2; do
  PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${repo}" /opt/conda/bin/python \
    "${scripts}/run_v110_fullcheck.py" \
    --parent "${parent}" --candidate "${candidate}" --case "${case_id}" \
    --output "/tmp/${id}_case${case_id}.json" \
    --rounds 1 --warmup 5 --repeat 10
done

PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${repo}" /opt/conda/bin/python \
  "${scripts}/run_v110_fullcheck.py" \
  --parent "${parent}" --candidate "${candidate}" --case 3 \
  --output "/tmp/${id}_case3_formal_5x20.json" \
  --rounds 5 --warmup 5 --repeat 20

MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${repo}" \
  /opt/conda/bin/python "${scripts}/capture_codegen.py" \
  --submission "${candidate}" --source-tag "${id}" \
  --output-dir "/tmp/${id}_codegen" --case 3

# mcTracer and mcProfiler commands are preserved in the report artifacts and
# use profile_submission.py with Case3, warmup 3, and exact source SHA-256.
