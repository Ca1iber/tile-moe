#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
iteration_id="${ITERATION_ID:-$(basename "${script_dir}")}" 
project_root="${PROJECT_ROOT:-$(git -C "${script_dir}" rev-parse --show-toplevel)}"
report_dir="${RESTART_REP_DIR:-${project_root}/race_tests/moe/restart-rep}/${iteration_id}"
output_dir="${report_dir}/profiler/mxsmi"
mkdir -p "${output_dir}"

python_bin="${PYTHON_BIN:-/opt/conda/bin/python}"
mcprofiler_bin="${MCPROFILER_BIN:-/opt/mcProfiler-ubuntu18.04/mcProfiler}"
mctracer_bin="${MCTRACER_BIN:-/opt/maca-3.7.1/bin/mcTracer}"

environment_file="${report_dir}/${iteration_id}_environment.txt"
hash_file="${report_dir}/${iteration_id}_source_hashes.sha256"

{
  echo "collected_at_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  echo "hostname=$(hostname)"
  echo "project_root=${project_root}"
  echo "iteration_id=${iteration_id}"
  echo "git_branch=$(git -C "${project_root}" branch --show-current 2>/dev/null || true)"
  echo "git_commit=$(git -C "${project_root}" rev-parse HEAD 2>/dev/null || true)"
  echo "git_status_begin"
  git -C "${project_root}" status --short 2>&1 || true
  echo "git_status_end"
  echo "python_version_begin"
  "${python_bin}" --version 2>&1 || true
  echo "python_version_end"
  echo "tilelang_version_begin"
  PYTHONPATH="${project_root}" "${python_bin}" -c 'import tilelang; print(getattr(tilelang, "__version__", "unknown")); print(tilelang.__file__)' 2>&1 || true
  echo "tilelang_version_end"
  echo "torch_version_begin"
  "${python_bin}" -c 'import torch; print(torch.__version__); print(torch.version.cuda); print(torch.version.git_version)' 2>&1 || true
  echo "torch_version_end"
  echo "mcprofiler_version_begin"
  (cd "$(dirname "${mcprofiler_bin}")" && "./$(basename "${mcprofiler_bin}")" version) 2>&1 || true
  echo "mcprofiler_version_end"
  echo "mctracer_help_begin"
  "${mctracer_bin}" --help 2>&1 || true
  echo "mctracer_help_end"
} | tee "${environment_file}"

{
  echo "collected_at_utc=$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  mx-smi 2>&1 || true
} | tee "${output_dir}/${iteration_id}_mxsmi_snapshot.txt"

hash_targets=(
  "${project_root}/race_tests/moe/custom_fusedmoe.py"
  "${project_root}/race_tests/moe/fusedmoe_benchmark.py"
  "${project_root}/race_tests/moe/oj_benchmark.py"
)
: > "${hash_file}"
for target in "${hash_targets[@]}"; do
  if [[ -f "${target}" ]]; then
    sha256sum "${target}" >> "${hash_file}"
  else
    echo "MISSING  ${target}" >> "${hash_file}"
  fi
done

echo "environment=${environment_file}"
echo "hashes=${hash_file}"
