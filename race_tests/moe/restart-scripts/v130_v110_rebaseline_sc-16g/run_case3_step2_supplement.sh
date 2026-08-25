#!/usr/bin/env bash
set -euo pipefail

project_root=/root/tilelang-metax
profiler_root=/opt/mcProfiler-ubuntu18.04
iteration_id=v130_v110_rebaseline_sc-16g
source_file=${project_root}/race_tests/moe/restart-experiments/${iteration_id}/${iteration_id}_custom_fusedmoe.py
profile_script=${project_root}/race_tests/moe/restart-scripts/${iteration_id}/profile_submission.py
destination=${project_root}/race_tests/moe/restart-rep/${iteration_id}/profiler/mcprofiler/raw/case3/step2_supplement

if [[ -e "${destination}" ]]; then
  echo "refusing to overwrite ${destination}" >&2
  exit 1
fi
mkdir -p "${destination}"
metrics=(
  "RoofLine"
  "Average Wave life cycles"
  "ISU stall cycles layout"
  "Global Memory Read bytes"
  "Global Memory Write bytes"
  "Dnoc Read Average Latency"
  "Memory Data Flow Chart"
  "VL1 partition stall cycles layout"
  "Dispatched waves"
  "AP MTE Duty ratio"
  "L2C Duty ratio"
)
workload="/usr/bin/env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${project_root} /opt/conda/bin/python ${profile_script} --case 3 --warmup 3 --source-tag v130_mcprof_case3_step2_supplement --submission ${source_file}"
printf '%q ' "${profiler_root}/mcProfiler" perf_exec --cwd "${project_root}" --cmdline "${workload}" --kernelname v130_case3_step2_supplement --casename v130_case3_step2_supplement --metrics "${metrics[@]}" --per-kernel --kernelnames kernel_kernel_2 --counts 1 > "${destination}/mcprofiler_command.txt"
printf '\n' >> "${destination}/mcprofiler_command.txt"
(
  cd "${profiler_root}"
  ./mcProfiler perf_exec \
    --cwd "${project_root}" \
    --cmdline "${workload}" \
    --kernelname v130_case3_step2_supplement \
    --casename v130_case3_step2_supplement \
    --metrics "${metrics[@]}" \
    --per-kernel \
    --kernelnames kernel_kernel_2 \
    --counts 1
) > "${destination}/mcprofiler_console.log" 2>&1
newest=$(find "${profiler_root}" -maxdepth 1 -mindepth 1 -type d -name 'output20*' -printf '%T@ %p\n' | sort -n | tail -1 | cut -d' ' -f2-)
if [[ ! -s "${newest}/report.txt.json" ]]; then
  echo "missing supplement report: ${newest}" >&2
  exit 1
fi
cp -a "${newest}/." "${destination}/"
echo "PROFILE_ARCHIVED case=3 stage=step2_supplement source=${newest} destination=${destination}"
