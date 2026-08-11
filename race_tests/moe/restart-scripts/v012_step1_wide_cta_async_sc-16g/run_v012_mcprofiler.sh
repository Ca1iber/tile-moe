#!/usr/bin/env bash
set -euo pipefail

case_id="${1:?usage: run_v012_mcprofiler.sh CASE_ID STEP [SCOPE]}"
step="${2:?usage: run_v012_mcprofiler.sh CASE_ID STEP [SCOPE]}"
scope="${3:-candidate_v012e}"
if [[ "${case_id}" != 1 && "${case_id}" != 2 && "${case_id}" != 3 ]]; then
  echo "case id must be 1, 2, or 3" >&2
  exit 2
fi
if [[ "${step}" != 1 && "${step}" != 2 ]]; then
  echo "step must be 1 or 2" >&2
  exit 2
fi

project_root="${MOE_PROJECT_ROOT:-/root/tilelang-pipeline}"
compiler_root="${MOE_COMPILER_ROOT:-/root/tilelang-metax}"
iid=v012_step1_wide_cta_async_sc-16g
scripts="${project_root}/race_tests/moe/restart-scripts/${iid}"
out="${project_root}/race_tests/moe/restart-rep/${iid}/profiler/mcprofiler/raw/${scope}_case${case_id}_step${step}"
profiler_root=/opt/mcProfiler-ubuntu18.04
kernel_name=kernel_kernel
if [[ "${step}" == 2 ]]; then
  kernel_name=kernel_kernel_1
fi

mkdir -p "${out}"
if [[ -e "${out}/mcprofiler_output" ]]; then
  echo "refusing to overwrite existing profile: ${out}/mcprofiler_output" >&2
  exit 1
fi

target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${compiler_root} MOE_PROJECT_ROOT=${project_root} MCTX_TARGET_PROFILE_PATH=${out} /opt/conda/bin/python ${scripts}/profile_one_case_v012.py --case ${case_id} --warmup 3"
printf '%s\n' "${target}" > "${out}/target_command.txt"
find "${profiler_root}" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' | sort > "${out}/before.txt"

(
  cd "${profiler_root}"
  ./mcProfiler perf_exec \
    --cmdline "${target}" \
    --kernelname "${kernel_name}" \
    --casename "${iid}_${scope}_case${case_id}_step${step}" \
    --cwd "${out}" \
    --per-kernel \
    --profile-from-start 0 \
    --counts 1 \
    --kernelnames "${kernel_name}" \
    --metrics \
      "Total Cycles" \
      "Average Wave life cycles" \
      "ISU stall cycles layout" \
      "VL1 partition stall cycles layout" \
      "average latency of all stages per instruction" \
      "shared memory access efficiency" \
      "Achieved waves" \
      "Dispatched waves" \
      "AP active cycles" \
      "AP MTE Duty ratio" \
      "AP MMA Duty ratio" \
      "VLS Duty ratio" \
      "L2C Duty ratio" \
      "Global Memory Read bytes" \
      "Global Memory Write bytes" \
      "Private Read Instructions" \
      "Private Write Instructions"
) > "${out}/mcprofiler.log" 2>&1

find "${profiler_root}" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' | sort > "${out}/after.txt"
latest="$(comm -13 "${out}/before.txt" "${out}/after.txt" | tail -n 1)"
if [[ -z "${latest}" || ! -d "${latest}" ]]; then
  echo "no new mcProfiler output found for case ${case_id} step ${step}" >&2
  exit 1
fi
cp -a "${latest}" "${out}/mcprofiler_output"
echo "MCPROFILER_DONE scope=${scope} case=${case_id} step=${step} output=${latest}"
