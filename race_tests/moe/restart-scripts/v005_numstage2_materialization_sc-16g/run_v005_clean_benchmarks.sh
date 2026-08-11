#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
iid=v005_numstage2_materialization_sc-16g
moe="${repo}/race_tests/moe"
rep="${moe}/restart-rep/${iid}"
bench="${rep}/benchmark"
correctness="${rep}/correctness"
python=/opt/conda/bin/python
mkdir -p "${bench}" "${correctness}"

printf '%s\n' 'cd /root/tilelang-metax/race_tests/moe && PYTHONDONTWRITEBYTECODE=1 /opt/conda/bin/python fusedmoe_benchmark.py' > "${bench}/${iid}_official_command.txt"
printf '%s\n' 'cd /root/tilelang-metax/race_tests/moe && PYTHONDONTWRITEBYTECODE=1 /opt/conda/bin/python oj_benchmark.py --cases 1,2,3 --warmup 10 --repeat 100' > "${bench}/${iid}_oj_command.txt"

for run in 1 2 3; do
  (
    cd "${moe}"
    PYTHONDONTWRITEBYTECODE=1 "${python}" fusedmoe_benchmark.py
  ) 2>&1 | tee "${bench}/${iid}_official_run${run}.log"
done

for run in 1 2 3; do
  (
    cd "${moe}"
    PYTHONDONTWRITEBYTECODE=1 "${python}" oj_benchmark.py --cases 1,2,3 --warmup 10 --repeat 100
  ) 2>&1 | tee "${bench}/${iid}_oj_run${run}.log"
done

"${python}" "${moe}/restart-scripts/${iid}/summarize_v005_benchmarks.py"
