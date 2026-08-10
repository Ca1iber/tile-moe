#!/usr/bin/env bash
set -euo pipefail

case_id="${1:?usage: run_v002_mcprofiler_step2.sh CASE_ID}"
if [[ "$case_id" != 1 && "$case_id" != 2 && "$case_id" != 3 ]]; then
  printf 'case id must be 1, 2, or 3\n' >&2
  exit 2
fi

repo=/root/tilelang-metax
iid=v002_step2_input_locality_grid_sc-16g
scripts="$repo/race_tests/moe/restart-scripts/$iid"
out="$repo/race_tests/moe/restart-rep/$iid/profiler/mcprofiler/raw/case${case_id}"
profiler_root=/opt/mcProfiler-ubuntu18.04
mkdir -p "$out"
if [[ -e "$out/mcprofiler_output" ]]; then
  printf 'refusing to overwrite existing profile: %s\n' "$out/mcprofiler_output" >&2
  exit 1
fi

target="env MACA_PATH=/opt/maca PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=$repo MCTX_TARGET_PROFILE_PATH=$out /opt/conda/bin/python $scripts/profile_one_case.py --case $case_id --warmup 3"
printf '%s\n' "$target" > "$out/target_command.txt"
find "$profiler_root" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' | sort > "$out/before.txt"

(
  cd "$profiler_root"
  ./mcProfiler perf_exec \
    --cmdline "$target" \
    --kernelname kernel_kernel_1 \
    --casename "${iid}_case${case_id}" \
    --cwd "$out" \
    --per-kernel \
    --profile-from-start 0 \
    --counts 1 \
    --kernelnames kernel_kernel_1 \
    --metrics RoofLine
) > "$out/mcprofiler.log" 2>&1

find "$profiler_root" -maxdepth 1 -type d -name 'output20*' -printf '%p\n' | sort > "$out/after.txt"
latest="$(comm -13 "$out/before.txt" "$out/after.txt" | tail -n 1)"
if [[ -z "$latest" || ! -d "$latest" ]]; then
  printf 'no new mcProfiler output found for case %s\n' "$case_id" >&2
  exit 1
fi
cp -a "$latest" "$out/mcprofiler_output"
printf 'MCPROFILER_CASE_DONE case=%s output=%s\n' "$case_id" "$latest"
