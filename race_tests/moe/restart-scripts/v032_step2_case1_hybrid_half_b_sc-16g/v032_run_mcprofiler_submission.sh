#!/usr/bin/env bash
set -euo pipefail

source_tag="${1:?usage: script SOURCE_TAG SUBMISSION METRIC_SET SCOPE}"
submission="$(realpath "${2:?usage: script SOURCE_TAG SUBMISSION METRIC_SET SCOPE}")"
metric_set="${3:?usage: script SOURCE_TAG SUBMISSION METRIC_SET SCOPE}"
scope="${4:?usage: script SOURCE_TAG SUBMISSION METRIC_SET SCOPE}"
if [[ "${metric_set}" != targeted && "${metric_set}" != roofline ]]; then
  echo "metric set must be targeted or roofline" >&2
  exit 2
fi

repo=/root/tilelang-metax
profile_script="${repo}/race_tests/moe/restart-scripts/v032_step2_case1_hybrid_half_b_sc-16g/profile_submission.py"
out="${repo}/race_tests/moe/restart-rep/v032_step2_case1_hybrid_half_b_sc-16g/profiler/mcprofiler/raw/${scope}_${source_tag}_case1_step2_${metric_set}"
profiler_root=/opt/mcProfiler-ubuntu18.04
if [[ -e "${out}" ]]; then
  echo "refusing to overwrite ${out}" >&2
  exit 1
fi
mkdir -p "${out}"

target="env MACA_PATH=/opt/maca LD_LIBRARY_PATH=/opt/maca/lib:/opt/maca/ompi/lib:/opt/maca/ucx/lib:/opt/mxdriver/lib MACA_CLANG_PATH=/opt/maca/mxgpu_llvm/bin PATH=/opt/conda/bin:/opt/maca/mxgpu_llvm/bin:/opt/maca/ompi/bin:/opt/maca/ucx/bin:/opt/mxdriver/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${repo} MCTX_TARGET_PROFILE_PATH=${out} /opt/conda/bin/python ${profile_script} --case 1 --warmup 3 --source-tag ${source_tag} --submission ${submission}"
printf '%s\n' "${target}" > "${out}/target_command.txt"
sha256sum "${submission}" > "${out}/submission.sha256"
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
    --kernelname kernel_kernel_1 \
    --casename "v032_${scope}_${source_tag}_case1_step2_${metric_set}" \
    --cwd "${out}" \
    --per-kernel \
    --profile-from-start 0 \
    --counts 1 \
    --kernelnames kernel_kernel_1 \
    --metrics "${metrics[@]}"
) > "${out}/mcprofiler.log" 2>&1

find "${profiler_root}" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' | sort > "${out}/after.txt"
latest="$(comm -13 "${out}/before.txt" "${out}/after.txt" | tail -n 1)"
if [[ -z "${latest}" || ! -f "${latest}/report.txt.json" ]]; then
  echo "mcProfiler output missing" >&2
  exit 1
fi
cp -a "${latest}" "${out}/mcprofiler_output"
grep -q '"event": "PROFILE_DONE"' "${out}/mcprofiler.log"
echo "MCPROFILER_DONE source=${source_tag} metric=${metric_set} output=${latest}"
