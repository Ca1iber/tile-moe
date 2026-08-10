#!/usr/bin/env bash
set -euo pipefail

case_id="${1:?usage: run_v003_mctracer.sh CASE_ID}"
if [[ "$case_id" != 2 && "$case_id" != 3 ]]; then
  printf 'case id must be 2 or 3\n' >&2
  exit 2
fi

repo=/root/tilelang-metax
iid=v003_step1_register_pressure_tile64_sc-16g
scripts="$repo/race_tests/moe/restart-scripts/$iid"
out_rel="race_tests/moe/restart-rep/$iid/profiler/mctracer/case${case_id}"
out="$repo/$out_rel"
mkdir -p "$out"
target=(
  /usr/bin/env
  MACA_PATH=/opt/maca
  PYTHONDONTWRITEBYTECODE=1
  PYTHONPATH="$repo"
  /opt/conda/bin/python
  "$scripts/profile_one_case.py"
  --case "$case_id"
  --warmup 3
)
{
  printf '%q ' /opt/maca-3.7.1/bin/mcTracer --mctx --odname "$out_rel" --name "${iid}_case${case_id}" "${target[@]}"
  printf '\n'
} > "$out/command.txt"

/opt/maca-3.7.1/bin/mcTracer \
  --mctx \
  --odname "$out_rel" \
  --name "${iid}_case${case_id}" \
  "${target[@]}" \
  2>&1 | tee "$out/mctracer_console.log"

if grep -q '\[FATAL\]' "$out/mctracer_console.log" || ! grep -q '"event": "PROFILE_DONE"' "$out/mctracer_console.log"; then
  printf 'mcTracer target did not complete for case %s\n' "$case_id" >&2
  exit 1
fi
