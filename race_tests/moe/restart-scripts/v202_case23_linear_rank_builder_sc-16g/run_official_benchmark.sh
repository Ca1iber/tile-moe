#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
iteration_id="${ITERATION_ID:-$(basename "${script_dir}")}"
project_root="${PROJECT_ROOT:-$(git -C "${script_dir}" rev-parse --show-toplevel)}"
output_dir="${RESTART_REP_DIR:-${project_root}/race_tests/moe/restart-rep}/${iteration_id}/benchmark"
command="${OFFICIAL_BENCHMARK_COMMAND:-${PYTHON_BIN:-python} race_tests/moe/fusedmoe_benchmark.py}"
mkdir -p "${output_dir}"

printf '%s\n' "${command}" > "${output_dir}/${iteration_id}_official_command.txt"
(
  cd "${project_root}"
  bash -lc "${command}"
) 2>&1 | tee "${output_dir}/${iteration_id}_official.log"
