#!/usr/bin/env bash
set -euo pipefail

: "${WORKLOAD_COMMAND:?Set WORKLOAD_COMMAND to the exact benchmark/profile command to sample}"

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
iteration_id="${ITERATION_ID:-$(basename "${script_dir}")}"
project_root="${PROJECT_ROOT:-$(git -C "${script_dir}" rev-parse --show-toplevel)}"
report_dir="${RESTART_REP_DIR:-${project_root}/race_tests/moe/restart-rep}/${iteration_id}"
output_dir="${report_dir}/profiler/mxsmi"
sample_interval_seconds="${MXSMI_SAMPLE_INTERVAL_SECONDS:-0.1}"
sample_command="${MXSMI_SAMPLE_COMMAND:-mx-smi}"
mkdir -p "${output_dir}"

command_file="${output_dir}/${iteration_id}_workload_command.txt"
sample_file="${output_dir}/${iteration_id}_hbm_ap_samples.txt"
workload_log="${output_dir}/${iteration_id}_sampled_workload.log"
printf '%s\n' "${WORKLOAD_COMMAND}" > "${command_file}"
: > "${sample_file}"

bash -lc "${WORKLOAD_COMMAND}" > "${workload_log}" 2>&1 &
workload_pid=$!
while kill -0 "${workload_pid}" 2>/dev/null; do
  {
    echo "sample_time_utc=$(date -u +%Y-%m-%dT%H:%M:%S.%NZ)"
    bash -lc "${sample_command}" 2>&1 || true
    echo "sample_end"
  } >> "${sample_file}"
  sleep "${sample_interval_seconds}"
done
wait "${workload_pid}"

echo "samples=${sample_file}"
echo "workload_log=${workload_log}"
