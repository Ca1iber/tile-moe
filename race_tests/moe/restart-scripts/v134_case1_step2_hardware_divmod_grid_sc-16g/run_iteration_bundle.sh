#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

"${script_dir}/collect_environment.sh"

if [[ -n "${OJ_SUBMISSION_SOURCE:-}" ]]; then
  python_bin="${PYTHON_BIN:-python3}"
  "${python_bin}" "${script_dir}/validate_oj_submission.py" "${OJ_SUBMISSION_SOURCE}"
elif [[ "${REQUIRE_OJ_SUBMISSION:-0}" == "1" ]]; then
  echo "OJ_SUBMISSION_SOURCE is required for an accepted-version evidence bundle" >&2
  exit 2
fi

"${script_dir}/run_correctness.sh"
"${script_dir}/run_official_benchmark.sh"
"${script_dir}/run_oj_benchmark.sh"

if [[ -n "${MCTRACER_COMMAND:-}" ]]; then
  "${script_dir}/run_mctracer.sh"
elif [[ "${ALLOW_MISSING_PROFILE:-0}" != "1" ]]; then
  echo "MCTRACER_COMMAND is required for a complete evidence bundle" >&2
  exit 2
fi

if [[ -n "${MCPROFILER_COMMAND:-}" ]]; then
  "${script_dir}/run_mcprofiler.sh"
elif [[ "${ALLOW_MISSING_PROFILE:-0}" != "1" ]]; then
  echo "MCPROFILER_COMMAND is required for a complete evidence bundle" >&2
  exit 2
fi

echo "Evidence bundle commands finished. Archive codegen, render Roofline, summarize, and validate before closing."
