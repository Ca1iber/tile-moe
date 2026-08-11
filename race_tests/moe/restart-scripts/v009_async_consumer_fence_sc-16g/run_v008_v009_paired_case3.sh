#!/usr/bin/env bash
set -euo pipefail

project_root="/root/tilelang-metax"
moe_dir="${project_root}/race_tests/moe"
current_kernel="${moe_dir}/custom_fusedmoe.py"
v008_kernel="${moe_dir}/restart-experiments/v008_async_stage_to_swizzle_sc-16g/v008_async_stage_to_swizzle_sc-16g_custom_fusedmoe.py"
v009_kernel="${moe_dir}/restart-experiments/v009_async_consumer_fence_sc-16g/v009_async_consumer_fence_sc-16g_custom_fusedmoe.py"
output_dir="${moe_dir}/restart-rep/v009_async_consumer_fence_sc-16g/benchmark"
saved_kernel="/tmp/v009_async_consumer_fence_sc-16g_saved_kernel.py"

mkdir -p "${output_dir}"
cp "${current_kernel}" "${saved_kernel}"
trap 'cp "${saved_kernel}" "${current_kernel}"' EXIT

run_one() {
    local label="$1"
    local source="$2"
    local pair="$3"
    local log="${output_dir}/paired_case3_${pair}_${label}.log"

    cp "${source}" "${current_kernel}"
    PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${project_root}" \
        /opt/conda/bin/python "${moe_dir}/oj_benchmark.py" \
        --cases 3 --warmup 20 --repeat 100 2>&1 | tee "${log}"
}

run_one v008 "${v008_kernel}" 1
run_one v009 "${v009_kernel}" 1
run_one v008 "${v008_kernel}" 2
run_one v009 "${v009_kernel}" 2

