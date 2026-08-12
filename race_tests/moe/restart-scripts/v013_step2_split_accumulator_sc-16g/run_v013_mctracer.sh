#!/usr/bin/env bash
set -euo pipefail

case_id="${1:?usage: run_v013_mctracer.sh CASE_ID [SCOPE]}"
scope="${2:-retry_20260812}"
if [[ "${case_id}" != 1 && "${case_id}" != 2 && "${case_id}" != 3 ]]; then
  echo "case id must be 1, 2, or 3" >&2
  exit 2
fi

repo="${MOE_PROJECT_ROOT:-/root/tilelang-metax}"
iid=v013_step2_split_accumulator_sc-16g
scripts="${repo}/race_tests/moe/restart-scripts/${iid}"
out_rel="race_tests/moe/restart-rep/${iid}/profiler/mctracer/case${case_id}_${scope}"
out="${repo}/${out_rel}"
if [[ -e "${out}" ]]; then
  echo "refusing to overwrite existing trace: ${out}" >&2
  exit 1
fi
mkdir -p "${out}"

target=(
  /usr/bin/env
  MACA_PATH=/opt/maca
  PYTHONDONTWRITEBYTECODE=1
  PYTHONPATH="${repo}"
  MOE_PROJECT_ROOT="${repo}"
  /opt/conda/bin/python
  "${scripts}/profile_one_case_v013.py"
  --case "${case_id}"
  --warmup 3
)
{
  printf '%q ' /opt/maca-3.7.1/bin/mcTracer --mctx --odname "${out_rel}" --name "${iid}_case${case_id}_${scope}" "${target[@]}"
  printf '\n'
} > "${out}/command.txt"

(
  cd "${repo}"
  /opt/maca-3.7.1/bin/mcTracer \
    --mctx \
    --odname "${out_rel}" \
    --name "${iid}_case${case_id}_${scope}" \
    "${target[@]}"
) 2>&1 | tee "${out}/mctracer_console.log"

if grep -q '\[FATAL\]' "${out}/mctracer_console.log" || ! grep -q '"event": "PROFILE_DONE"' "${out}/mctracer_console.log"; then
  echo "mcTracer target did not complete for case ${case_id}" >&2
  exit 1
fi
echo "MCTRACER_CASE_DONE case=${case_id} scope=${scope} out=${out}"
