#!/usr/bin/env bash
set -euo pipefail

project_root="/root/tilelang-metax"
moe_dir="${project_root}/race_tests/moe"
current_kernel="${moe_dir}/custom_fusedmoe.py"
v011b_kernel="${moe_dir}/restart-experiments/v011_inverse_swizzle_bsm_sc-16g/subprobes/v011b_inverse_swizzle_pingpong.py"
v011c_kernel="${moe_dir}/restart-experiments/v011_inverse_swizzle_bsm_sc-16g/subprobes/v011c_combined_step1_token.py"
output_dir="${moe_dir}/restart-rep/v011_inverse_swizzle_bsm_sc-16g/benchmark/paired_v011b_v011c"
saved_kernel="/tmp/v011b_v011c_saved_kernel.py"

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
        --cases 2,3 --warmup 20 --repeat 100 2>&1 | tee "${log}"
}

run_one v011b "${v011b_kernel}" 1 first
run_one v011c "${v011c_kernel}" 1 second
run_one v011c "${v011c_kernel}" 2 first
run_one v011b "${v011b_kernel}" 2 second
run_one v011b "${v011b_kernel}" 3 first
run_one v011c "${v011c_kernel}" 3 second
