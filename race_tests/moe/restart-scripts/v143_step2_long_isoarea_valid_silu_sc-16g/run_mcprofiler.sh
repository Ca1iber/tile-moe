#!/usr/bin/env bash
set -euo pipefail

project_root=/root/tilelang-metax
profiler_root=/opt/mcProfiler-ubuntu18.04
source_file=/root/moe_runs/v110_step2_long_isoarea_valid_silu.py
profile_script=${project_root}/race_tests/moe/restart-scripts/v130_v110_rebaseline_sc-16g/profile_submission.py
raw_root=/root/moe_runs/v143_step2_long_isoarea_valid_silu/mcprofiler

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

targets=(
  "kernel_kernel_1 step1"
  "kernel_kernel_2 step2_short"
  "kernel_kernel_3 step2_long"
)

for target in "${targets[@]}"; do
  read -r kernel_symbol stage <<< "${target}"
  destination=${raw_root}/${stage}
  if [[ -e "${destination}" ]]; then
    printf 'refusing to overwrite %s\n' "${destination}" >&2
    exit 1
  fi
  mkdir -p "${destination}"
  case_name=v143_case3_${stage}
  workload="/usr/bin/env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${project_root} /opt/conda/bin/python ${profile_script} --case 3 --warmup 3 --source-tag v143_mcprof_case3_${stage} --submission ${source_file}"
  (
    cd "${profiler_root}"
    ./mcProfiler perf_exec \
      --cwd "${project_root}" \
      --cmdline "${workload}" \
      --kernelname "${case_name}" \
      --casename "${case_name}" \
      --metrics "${metrics[@]}" \
      --per-kernel \
      --kernelnames "${kernel_symbol}" \
      --counts 1
  ) > "${destination}/mcprofiler_console.log" 2>&1
  newest=$(find "${profiler_root}" -maxdepth 1 -mindepth 1 -type d -name 'output20*' -printf '%T@ %p\n' | sort -n | tail -1 | cut -d' ' -f2-)
  if [[ ! -s "${newest}/report.txt" ]]; then
    printf 'missing profiler report for %s: %s\n' "${case_name}" "${newest}" >&2
    exit 1
  fi
  cp -a "${newest}/." "${destination}/"
  printf 'PROFILE_ARCHIVED stage=%s symbol=%s source=%s destination=%s\n' "${stage}" "${kernel_symbol}" "${newest}" "${destination}"
done
