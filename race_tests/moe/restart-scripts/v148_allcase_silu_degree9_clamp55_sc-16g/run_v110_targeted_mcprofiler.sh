#!/usr/bin/env bash
set -euo pipefail

case_id=${1:?case id}
symbol=${2:?kernel symbol}
label=${3:?label}
project_root=/root/tilelang-metax
profiler_root=/opt/mcProfiler-ubuntu18.04
profile_script=${project_root}/race_tests/moe/restart-scripts/v146_case1_silu_poly_clamp_sc-16g/profile_submission.py
source_file=${project_root}/race_tests/moe/restart-submission/v110_case1_unpredicated_native_up_logits_sc-16g/submission.py
destination=/tmp/v110_reprofile_20260827/${label}
source_tag=v110_reprofile_case${case_id}_${symbol}

if [[ -e "${destination}" ]]; then
  printf 'refusing to overwrite %s\n' "${destination}" >&2
  exit 1
fi
mkdir -p "${destination}"

metrics=(
  "Total Cycles"
  "RoofLine"
  "WORKGROUPS"
  "WAVES"
  "Average Wave life cycles"
  "ISU stall cycles layout"
  "Global Memory Read bytes"
  "Global Memory Write bytes"
  "Memory Data Flow Chart"
  "Dnoc Read Average Latency"
  "VL1 partition stall cycles layout"
  "Achieved waves"
  "Dispatched waves"
  "AP active cycles"
  "AP MTE Duty ratio"
  "AP STE Duty ratio"
  "AP MMA Duty ratio"
  "VLS Duty ratio"
  "L2C Duty ratio"
)

/usr/bin/env \
  MACA_PATH=/opt/maca \
  PYTHONDONTWRITEBYTECODE=1 \
  PYTHONPATH="${project_root}" \
  /opt/conda/bin/python "${profile_script}" \
    --case "${case_id}" \
    --warmup 3 \
    --source-tag "${source_tag}" \
    --submission "${source_file}" \
    > "${destination}/precompile.log" 2>&1

workload="/usr/bin/env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${project_root} /opt/conda/bin/python ${profile_script} --case ${case_id} --warmup 3 --source-tag ${source_tag} --submission ${source_file}"

before=$(find "${profiler_root}" -maxdepth 1 -mindepth 1 -type d -name 'output20*' -printf '%T@ %p\n' | sort -n | tail -1 | cut -d' ' -f2- || true)
(
  cd "${profiler_root}"
  ./mcProfiler perf_exec \
    --cwd "${project_root}" \
    --cmdline "${workload}" \
    --kernelname "${label}" \
    --casename "${label}" \
    --metrics "${metrics[@]}" \
    --per-kernel \
    --kernelnames "${symbol}" \
    --counts 1
) > "${destination}/mcprofiler_console.log" 2>&1

newest=$(find "${profiler_root}" -maxdepth 1 -mindepth 1 -type d -name 'output20*' -printf '%T@ %p\n' | sort -n | tail -1 | cut -d' ' -f2-)
if [[ -z "${newest}" || "${newest}" == "${before}" ]]; then
  printf 'no new mcProfiler output: before=%s newest=%s\n' "${before}" "${newest}" >&2
  exit 2
fi
cp -a "${newest}/." "${destination}/"
report=$(find "${destination}" -maxdepth 1 -type f -name "*${symbol}.txt.json" -print -quit)
if [[ -z "${report}" ]]; then
  printf 'missing report in %s\n' "${destination}" >&2
  exit 3
fi
printf 'PROFILE_ARCHIVED case=%s symbol=%s source=%s report=%s\n' "${case_id}" "${symbol}" "${newest}" "${report}"
