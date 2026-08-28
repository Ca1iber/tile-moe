#!/usr/bin/env bash
set -euo pipefail

: "${MCTRACER_COMMAND:?Set MCTRACER_COMMAND to the verified mcTracer command for this case and stage}"

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
iteration_id="${ITERATION_ID:-$(basename "${script_dir}")}"
project_root="${PROJECT_ROOT:-$(git -C "${script_dir}" rev-parse --show-toplevel)}"
output_dir="${RESTART_REP_DIR:-${project_root}/race_tests/moe/restart-rep}/${iteration_id}/profiler/mctracer"
mkdir -p "${output_dir}"

printf '%s\n' "${MCTRACER_COMMAND}" > "${output_dir}/${iteration_id}_mctracer_command.txt"
(
  cd "${project_root}"
  bash -lc "${MCTRACER_COMMAND}"
) 2>&1 | tee "${output_dir}/${iteration_id}_mctracer_console.log"
