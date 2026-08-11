#!/usr/bin/env bash
set -euo pipefail

case_id="${1:?usage: run_v008_mctracer.sh CASE_ID}"
if [[ "${case_id}" != 1 && "${case_id}" != 2 && "${case_id}" != 3 ]]; then
  echo "case id must be 1, 2, or 3" >&2
  exit 2
fi

repo=/root/tilelang-metax
iid=v008_async_stage_to_swizzle_sc-16g
scripts="${repo}/race_tests/moe/restart-scripts/${iid}"
out_rel="race_tests/moe/restart-rep/${iid}/profiler/mctracer/case${case_id}"
out="${repo}/${out_rel}"
mkdir -p "${out}"
target=(
  /usr/bin/env
  MACA_PATH=/opt/maca
  PYTHONDONTWRITEBYTECODE=1
  PYTHONPATH="${repo}"
  /opt/conda/bin/python
  "${scripts}/profile_one_case_v008.py"
  --case "${case_id}"
  --warmup 3
)
{
  printf '%q ' /opt/maca-3.7.1/bin/mcTracer --mctx --odname "${out_rel}" --name "${iid}_case${case_id}" "${target[@]}"
  printf '\n'
} > "${out}/command.txt"

(
  cd "${repo}"
  /opt/maca-3.7.1/bin/mcTracer \
    --mctx \
    --odname "${out_rel}" \
    --name "${iid}_case${case_id}" \
    "${target[@]}"
) 2>&1 | tee "${out}/mctracer_console.log"

if grep -q '\[FATAL\]' "${out}/mctracer_console.log" || ! grep -q '"event": "PROFILE_DONE"' "${out}/mctracer_console.log"; then
  echo "mcTracer target did not complete for case ${case_id}" >&2
  exit 1
fi
echo "MCTRACER_CASE_DONE case=${case_id} out=${out}"
