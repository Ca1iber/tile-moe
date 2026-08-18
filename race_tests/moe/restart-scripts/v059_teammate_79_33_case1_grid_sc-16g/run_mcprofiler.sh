#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 5 ]]; then
  echo "usage: $0 LABEL SUBMISSION CASE PROFILE_SCRIPT OUTPUT_ROOT" >&2
  exit 2
fi
label="$1"
submission="$(readlink -f "$2")"
case_id="$3"
profile_script="$(readlink -f "$4")"
output_root="$(readlink -m "$5")"
repo=/root/tilelang-metax
work="${output_root}/${label}"
profiler_root=/opt/mcProfiler-ubuntu18.04
target_profile="/tmp/mcprofiler-target-${label}-case${case_id}"

mkdir -p "${work}" "${target_profile}"
find "${profiler_root}" -maxdepth 1 -type d -name 'output*' -printf '%f\n' | sort > "${work}/before.txt"
target_command="env MACA_PATH=/opt/maca LD_LIBRARY_PATH=/opt/maca/lib:/opt/maca/ompi/lib:/opt/maca/ucx/lib:/opt/mxdriver/lib MACA_CLANG_PATH=/opt/maca/mxgpu_llvm/bin PATH=/opt/conda/bin:/opt/maca/mxgpu_llvm/bin:/opt/maca/ompi/bin:/opt/maca/ucx/bin:/opt/mxdriver/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${repo} MCTX_TARGET_PROFILE_PATH=${target_profile} /opt/conda/bin/python ${profile_script} --case ${case_id} --warmup 3 --source-tag ${label} --submission ${submission}"
printf '%s\n' "${target_command}" > "${work}/target_command.txt"

cd "${profiler_root}"
./mcProfiler perf_exec --cmdline "${target_command}" --casename "${label}" \
  --metrics 'Total Cycles' 'AP active cycles' 'Achieved waves' 'Dispatched waves' \
    'Global Memory Read bytes' 'Global Memory Write bytes' 'Dnoc Read Req' 'Dnoc Write Req' \
    'L2C Read Instructions' 'L2C Write Instructions' 'L2C Hit Rate' 'Memory Instructions' \
    'AP MMA Duty ratio' 'AP MTE Duty ratio' 'Private Read Instructions' 'Private Write Instructions' \
  --custom --counts 1 2>&1 | tee "${work}/mcprofiler.log"

find "${profiler_root}" -maxdepth 1 -type d -name 'output*' -printf '%f\n' | sort > "${work}/after.txt"
new_output="$(comm -13 "${work}/before.txt" "${work}/after.txt" | tail -1)"
if [[ -z "${new_output}" ]]; then
  echo 'mcProfiler did not create a new output directory' >&2
  exit 1
fi
cp -a "${profiler_root}/${new_output}" "${work}/mcprofiler_output"
printf '%s\n' "${profiler_root}/${new_output}" > "${work}/source_output_dir.txt"
