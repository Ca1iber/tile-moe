#!/usr/bin/env bash
set -euo pipefail

project_root=/root/tilelang-metax
name=v146_case1_silu_poly_clamp_sc-16g
experiment=${project_root}/race_tests/moe/restart-experiments/${name}
scripts=${project_root}/race_tests/moe/restart-scripts/${name}
rep=${project_root}/race_tests/moe/restart-rep/${name}
parent=${project_root}/race_tests/moe/restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py
candidate=${experiment}/candidate_submission.py
python=/opt/conda/bin/python

export MACA_PATH=/opt/maca
export PYTHONDONTWRITEBYTECODE=1
export PYTHONPATH=${project_root}

mkdir -p "${rep}/codegen"

"${python}" "${scripts}/validate_oj_submission.py" "${candidate}" \
  > "${rep}/source_validation.log" 2>&1
"${python}" "${scripts}/fit_silu_poly.py" \
  > "${rep}/fit_silu_poly.log" 2>&1

for case_id in 1 2 3; do
  printf 'ABBA case=%s\n' "${case_id}"
  "${python}" "${scripts}/run_v59_fullcheck.py" \
    --parent "${parent}" \
    --candidate "${candidate}" \
    --case "${case_id}" \
    --output "${rep}/v146_case${case_id}_abba5x50.json" \
    --rounds 5 \
    --warmup 3 \
    --repeat 50 \
    > "${rep}/v146_case${case_id}_abba5x50.log" 2>&1
done

printf 'REFERENCE case=1 variants=4\n'
"${python}" "${scripts}/validate_case1_reference.py" \
  > "${rep}/v146_case1_reference_validation.log" 2>&1
printf 'STRESS case=1 variants=8\n'
"${python}" "${scripts}/validate_case1_stress.py" \
  > "${rep}/v146_case1_stress_validation.log" 2>&1

for case_id in 1 2 3; do
  tag=v146_formal_case${case_id}
  printf 'CODEGEN case=%s\n' "${case_id}"
  "${python}" "${scripts}/capture_codegen.py" \
    --submission "${candidate}" \
    --source-tag "${tag}" \
    --output-dir "${rep}/codegen" \
    --case "${case_id}" \
    > "${rep}/codegen/${tag}_capture.log" 2>&1
  generated=${rep}/codegen/${tag}_case${case_id}_generated_device.cpp
  "${python}" "${scripts}/validate_oj_submission.py" "${candidate}" \
    --generated-code "${generated}" \
    > "${rep}/codegen/${tag}_generated_validation.log" 2>&1
done

probe_root=/root/moe_runs/v146_case1_silu_poly_clamp_codegen
{
  for case_id in 1 2 3; do
    formal=${rep}/codegen/v146_formal_case${case_id}_case${case_id}_generated_device.cpp
    probe=${probe_root}/case${case_id}/v146_clamp_case${case_id}_generated_device.cpp
    if cmp -s "${formal}" "${probe}"; then
      printf 'case%s byte_identical=true\n' "${case_id}"
    else
      printf 'case%s byte_identical=false\n' "${case_id}"
      exit 1
    fi
    sha256sum "${formal}" "${probe}"
  done
} > "${rep}/formal_vs_probe_codegen.sha256"

printf 'FORMAL_VALIDATION_COMPLETE rep=%s\n' "${rep}"
