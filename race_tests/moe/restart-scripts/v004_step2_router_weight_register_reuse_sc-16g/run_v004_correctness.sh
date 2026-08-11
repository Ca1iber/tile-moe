#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
iid=v004_step2_router_weight_register_reuse_sc-16g
moe="$repo/race_tests/moe"
out="$moe/restart-rep/$iid/correctness"
python=/opt/conda/bin/python
mkdir -p "$out"

command='cd /root/tilelang-metax/race_tests/moe && PYTHONDONTWRITEBYTECODE=1 /opt/conda/bin/python oj_benchmark.py --cases 1,2,3 --warmup 0 --repeat 1'
printf '%s\n' "$command" > "$out/${iid}_correctness_command.txt"
(
  cd "$moe"
  PYTHONDONTWRITEBYTECODE=1 "$python" oj_benchmark.py --cases 1,2,3 --warmup 0 --repeat 1
) 2>&1 | tee "$out/${iid}_correctness.log"
