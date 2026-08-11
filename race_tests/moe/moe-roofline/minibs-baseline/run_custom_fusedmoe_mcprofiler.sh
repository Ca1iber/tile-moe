#!/usr/bin/env bash
set -euo pipefail

case_id="${1:?usage: run_custom_fusedmoe_mcprofiler.sh CASE_ID}"
if [[ "$case_id" != "1" && "$case_id" != "2" && "$case_id" != "3" ]]; then
  printf 'case id must be 1, 2, or 3\n' >&2
  exit 2
fi

repo=/root/tilelang-metax
artifact="$repo/race_tests/moe/moe-roofline/minibs-baseline"
driver="$artifact/profile_custom_fusedmoe.py"
output_dir="$artifact/mcprofiler_raw/oj_case${case_id}_sc-16g"
profiler_root=/opt/mcProfiler-ubuntu18.04

if [[ -e "$output_dir/mcprofiler_output" ]]; then
  printf 'refusing to overwrite existing profile: %s\n' "$output_dir/mcprofiler_output" >&2
  exit 1
fi
mkdir -p "$output_dir"

profile_command="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${repo} MCTX_TARGET_PROFILE_PATH=${output_dir} /opt/conda/bin/python ${driver} --case ${case_id} --warmup 3"
printf '%s\n' "$profile_command" > "$output_dir/profile_command.txt"
find "$profiler_root" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' \
  | sort > "$output_dir/output_dirs_before.txt"

cd "$profiler_root"
./mcProfiler perf_exec \
  --cmdline "$profile_command" \
  --kernelname kernel_kernel \
  --casename "custom_fusedmoe_oj_case${case_id}" \
  --cwd "$output_dir" \
  --per-kernel \
  --profile-from-start 0 \
  --counts 2 \
  --kernelnames kernel_kernel kernel_kernel_1 \
  --metrics RoofLine \
  > "$output_dir/mcprofiler.log" 2>&1

find "$profiler_root" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' \
  | sort > "$output_dir/output_dirs_after.txt"
latest_report="$(comm -13 "$output_dir/output_dirs_before.txt" "$output_dir/output_dirs_after.txt" | tail -n 1)"
if [[ -z "$latest_report" || ! -d "$latest_report" ]]; then
  printf 'no new mcProfiler output found for case %s\n' "$case_id" >&2
  exit 1
fi
cp -a "$latest_report" "$output_dir/mcprofiler_output"
printf 'PROFILE_CASE_DONE case=%s output=%s\n' "$case_id" "$latest_report"
