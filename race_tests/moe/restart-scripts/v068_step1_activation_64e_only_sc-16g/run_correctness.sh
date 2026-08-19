#!/usr/bin/env bash
set -euo pipefail

: "${CORRECTNESS_COMMAND:?Set CORRECTNESS_COMMAND after discovering the repository-authoritative correctness command}"

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
iteration_id="${ITERATION_ID:-$(basename "${script_dir}")}"
project_root="${PROJECT_ROOT:-$(git -C "${script_dir}" rev-parse --show-toplevel)}"
output_dir="${RESTART_REP_DIR:-${project_root}/race_tests/moe/restart-rep}/${iteration_id}/correctness"
mkdir -p "${output_dir}"

printf '%s\n' "${CORRECTNESS_COMMAND}" > "${output_dir}/${iteration_id}_correctness_command.txt"
(
  cd "${project_root}"
  bash -lc "${CORRECTNESS_COMMAND}"
) 2>&1 | tee "${output_dir}/${iteration_id}_correctness.log"
