#!/usr/bin/env bash
set -euo pipefail

project_root=/root/tilelang-metax
profiler_root=/opt/mcProfiler-ubuntu18.04
profile_script=${project_root}/race_tests/moe/restart-scripts/v144_case1_fastmath_step2_bounds_sc-16g/profile_submission.py
raw_root=/root/moe_runs/v146_vs_v110_case1_mcprofiler_20260826
source_file=${project_root}/race_tests/moe/restart-experiments/v146_case1_silu_poly_clamp_sc-16g/candidate_submission.py
destination=${raw_root}/v146_step1_retry
source_tag=v146_mcprof_case1_step1_retry

if [[ -e "${destination}" ]]; then
  printf 'refusing to overwrite %s\n' "${destination}" >&2
  exit 1
fi

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

mkdir -p "${destination}"

# Populate the exact TileLang cache before perfcount replay starts.
/usr/bin/env \
  MACA_PATH=/opt/maca \
  PYTHONDONTWRITEBYTECODE=1 \
  PYTHONPATH="${project_root}" \
  /opt/conda/bin/python "${profile_script}" \
    --case 1 \
    --warmup 3 \
    --source-tag "${source_tag}" \
    --submission "${source_file}" \
    > "${destination}/precompile.log" 2>&1

workload="/usr/bin/env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${project_root} /opt/conda/bin/python ${profile_script} --case 1 --warmup 3 --source-tag ${source_tag} --submission ${source_file}"

(
  cd "${profiler_root}"
  ./mcProfiler perf_exec \
    --cwd "${project_root}" \
    --cmdline "${workload}" \
    --kernelname v146_case1_step1_retry \
    --casename v146_case1_step1_retry \
    --metrics "${metrics[@]}" \
    --per-kernel \
    --kernelnames kernel_kernel_1 \
    --counts 1
) > "${destination}/mcprofiler_console.log" 2>&1

newest=$(find "${profiler_root}" -maxdepth 1 -mindepth 1 -type d -name 'output20*' -printf '%T@ %p\n' | sort -n | tail -1 | cut -d' ' -f2-)
cp -a "${newest}/." "${destination}/"

report=$(find "${destination}" -maxdepth 1 -type f -name '*kernel_kernel_1.txt.json' -print -quit)
if [[ -z "${report}" ]]; then
  printf 'missing per-kernel report: source=%s destination=%s\n' "${newest}" "${destination}" >&2
  exit 1
fi

printf 'PROFILE_ARCHIVED tag=v146 stage=step1 symbol=kernel_kernel_1 source=%s report=%s\n' "${newest}" "${report}"
