#!/usr/bin/env bash
set -euo pipefail

case_id="${1:?usage: run_mcprofiler_source_v016.sh CASE_ID STEP SOURCE_TAG SOURCE_PATH METRIC_SET SCOPE}"
step="${2:?usage: run_mcprofiler_source_v016.sh CASE_ID STEP SOURCE_TAG SOURCE_PATH METRIC_SET SCOPE}"
source_tag="${3:?usage: run_mcprofiler_source_v016.sh CASE_ID STEP SOURCE_TAG SOURCE_PATH METRIC_SET SCOPE}"
source_path="${4:?usage: run_mcprofiler_source_v016.sh CASE_ID STEP SOURCE_TAG SOURCE_PATH METRIC_SET SCOPE}"
metric_set="${5:?usage: run_mcprofiler_source_v016.sh CASE_ID STEP SOURCE_TAG SOURCE_PATH METRIC_SET SCOPE}"
scope="${6:?usage: run_mcprofiler_source_v016.sh CASE_ID STEP SOURCE_TAG SOURCE_PATH METRIC_SET SCOPE}"
if [[ "${case_id}" != 1 && "${case_id}" != 2 && "${case_id}" != 3 ]]; then
  echo "case id must be 1, 2, or 3" >&2
  exit 2
fi
if [[ "${step}" != 1 && "${step}" != 2 ]]; then
  echo "step must be 1 or 2" >&2
  exit 2
fi
if [[ "${metric_set}" != targeted && "${metric_set}" != roofline ]]; then
  echo "metric set must be targeted or roofline" >&2
  exit 2
fi
if [[ ! -f "${source_path}" ]]; then
  echo "kernel source does not exist: ${source_path}" >&2
  exit 2
fi
source_path="$(readlink -f "${source_path}")"

project_root="${MOE_PROJECT_ROOT:-/root/tilelang-metax}"
compiler_root="${MOE_COMPILER_ROOT:-/root/tilelang-metax}"
iid=v016_step2_async_revalidation_sc-16g
scripts="${project_root}/race_tests/moe/restart-scripts/${iid}"
out="${project_root}/race_tests/moe/restart-rep/${iid}/profiler/mcprofiler/raw/${scope}_${source_tag}_case${case_id}_step${step}_${metric_set}"
profiler_root=/opt/mcProfiler-ubuntu18.04
kernel_name=kernel_kernel
if [[ "${step}" == 2 ]]; then
  kernel_name=kernel_kernel_1
fi
if [[ -e "${out}" ]]; then
  echo "refusing to overwrite existing profile: ${out}" >&2
  exit 1
fi
mkdir -p "${out}"

target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${compiler_root} MOE_PROJECT_ROOT=${project_root} MCTX_TARGET_PROFILE_PATH=${out} /opt/conda/bin/python ${scripts}/profile_one_case_source_v016.py --case ${case_id} --warmup 3 --source-tag ${source_tag} --kernel-source ${source_path}"
printf '%s\n' "${target}" > "${out}/target_command.txt"
sha256sum "${source_path}" > "${out}/kernel_source.sha256"
find "${profiler_root}" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' | sort > "${out}/before.txt"

metrics=(RoofLine)
if [[ "${metric_set}" == targeted ]]; then
  metrics=(
    "Total Cycles"
    "Average Wave life cycles"
    "ISU stall cycles layout"
    "VL1 partition stall cycles layout"
    "average latency of all stages per instruction"
    "shared memory access efficiency"
    "Achieved waves"
    "Dispatched waves"
    "AP active cycles"
    "AP MTE Duty ratio"
    "AP MMA Duty ratio"
    "VLS Duty ratio"
    "L2C Duty ratio"
    "Global Memory Read bytes"
    "Global Memory Write bytes"
    "Private Read Instructions"
    "Private Write Instructions"
  )
fi

(
  cd "${profiler_root}"
  ./mcProfiler perf_exec \
    --cmdline "${target}" \
    --kernelname "${kernel_name}" \
    --casename "${iid}_${scope}_${source_tag}_case${case_id}_step${step}_${metric_set}" \
    --cwd "${out}" \
    --per-kernel \
    --profile-from-start 0 \
    --counts 1 \
    --kernelnames "${kernel_name}" \
    --metrics "${metrics[@]}"
) > "${out}/mcprofiler.log" 2>&1

find "${profiler_root}" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' | sort > "${out}/after.txt"
latest="$(comm -13 "${out}/before.txt" "${out}/after.txt" | tail -n 1)"
if [[ -z "${latest}" || ! -d "${latest}" ]]; then
  echo "no new mcProfiler output found for ${source_tag} case ${case_id} step ${step}" >&2
  exit 1
fi
cp -a "${latest}" "${out}/mcprofiler_output"
if ! grep -q '"event": "PROFILE_DONE"' "${out}/mcprofiler.log"; then
  echo "mcProfiler target did not complete for ${source_tag} case ${case_id} step ${step}" >&2
  exit 1
fi
if [[ ! -f "${out}/mcprofiler_output/report.txt.json" ]]; then
  echo "mcProfiler did not produce report.txt.json for ${source_tag} case ${case_id} step ${step}" >&2
  exit 1
fi
echo "MCPROFILER_DONE scope=${scope} source=${source_tag} case=${case_id} step=${step} metrics=${metric_set} output=${latest}"
