#!/usr/bin/env bash
set -euo pipefail

project_root=/root/tilelang-metax
profiler_root=/opt/mcProfiler-ubuntu18.04
iteration_id=v130_v110_rebaseline_sc-16g
source_file=${project_root}/race_tests/moe/restart-experiments/${iteration_id}/${iteration_id}_custom_fusedmoe.py
profile_script=${project_root}/race_tests/moe/restart-scripts/${iteration_id}/profile_submission.py
raw_root=${project_root}/race_tests/moe/restart-rep/${iteration_id}/profiler/mcprofiler/raw

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
  "1 kernel_kernel_2 step2"
  "2 kernel_kernel_1 step1"
  "2 kernel_kernel_2 step2"
  "3 kernel_kernel_1 step1"
  "3 kernel_kernel_2 step2"
)

for target in "${targets[@]}"; do
  read -r case_id kernel_symbol stage <<< "${target}"
  destination=${raw_root}/case${case_id}/${stage}
  if [[ -e "${destination}" ]]; then
    echo "refusing to overwrite ${destination}" >&2
    exit 1
  fi
  mkdir -p "${destination}"
  case_name=v130_case${case_id}_${stage}
  workload="/usr/bin/env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${project_root} /opt/conda/bin/python ${profile_script} --case ${case_id} --warmup 3 --source-tag v130_mcprof_case${case_id} --submission ${source_file}"
  command_file=${destination}/mcprofiler_command.txt
  console_log=${destination}/mcprofiler_console.log
  printf '%q ' "${profiler_root}/mcProfiler" perf_exec --cwd "${project_root}" --cmdline "${workload}" --kernelname "${case_name}" --casename "${case_name}" --metrics "${metrics[@]}" --per-kernel --kernelnames "${kernel_symbol}" --counts 1 > "${command_file}"
  printf '\n' >> "${command_file}"
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
  ) > "${console_log}" 2>&1
  newest=$(find "${profiler_root}" -maxdepth 1 -mindepth 1 -type d -name 'output20*' -printf '%T@ %p\n' | sort -n | tail -1 | cut -d' ' -f2-)
  if [[ ! -s "${newest}/report.txt" ]]; then
    echo "missing profiler report for ${case_name}: ${newest}" >&2
    exit 1
  fi
  cp -a "${newest}/." "${destination}/"
  echo "PROFILE_ARCHIVED case=${case_id} stage=${stage} symbol=${kernel_symbol} source=${newest} destination=${destination}"
done
