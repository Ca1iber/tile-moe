#!/usr/bin/env bash
set -euo pipefail

project_root="/root/tilelang-metax"
moe_dir="${project_root}/race_tests/moe"
current_kernel="${moe_dir}/custom_fusedmoe.py"
v004_kernel="${moe_dir}/restart-experiments/v004_step2_router_weight_register_reuse_sc-16g/v004_step2_router_weight_register_reuse_sc-16g_custom_fusedmoe.py"
v012e_kernel="${moe_dir}/restart-experiments/v012_step1_wide_cta_async_sc-16g/subprobes/v012e_sync_split_accumulator.py"
output_dir="${moe_dir}/restart-rep/v012_step1_wide_cta_async_sc-16g/benchmark/paired_v004_v012e_all"
saved_kernel="/tmp/v004_v012e_saved_kernel.py"

mkdir -p "${output_dir}"
cp "${current_kernel}" "${saved_kernel}"
trap 'cp "${saved_kernel}" "${current_kernel}"' EXIT

run_one() {
    local label="$1"
    local source="$2"
    local pair="$3"
    local order="$4"
    local log="${output_dir}/pair${pair}_${order}_${label}.log"

    cp "${source}" "${current_kernel}"
    PYTHONDONTWRITEBYTECODE=1 PYTHONPATH="${project_root}" \
        /opt/conda/bin/python "${moe_dir}/oj_benchmark.py" \
        --cases 1,2,3 --warmup 20 --repeat 100 2>&1 | tee "${log}"
}

run_one v004 "${v004_kernel}" 1 first
run_one v012e "${v012e_kernel}" 1 second
run_one v012e "${v012e_kernel}" 2 first
run_one v004 "${v004_kernel}" 2 second
