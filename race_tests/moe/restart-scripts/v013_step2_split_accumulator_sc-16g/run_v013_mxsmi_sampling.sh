#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
iid=v013_step2_split_accumulator_sc-16g
scope="${1:-retry2_20260812}"
out="${repo}/race_tests/moe/restart-rep/${iid}/profiler/mxsmi"
samples="${out}/${iid}_${scope}_hbm_ap_samples.txt"
workload_log="${out}/${iid}_${scope}_sampled_workload.log"
snapshot="${out}/${iid}_${scope}_mxsmi_snapshot.txt"
command_file="${out}/${iid}_${scope}_workload_command.txt"
if [[ -e "${samples}" || -e "${workload_log}" ]]; then
  echo "refusing to overwrite existing mx-smi sampling output" >&2
  exit 1
fi
mkdir -p "${out}"

{
  date -u +snapshot_time_utc=%Y-%m-%dT%H:%M:%S.%NZ
  mx-smi --summary -i 0
  mx-smi --show-hwinfo -i 0
  mx-smi --show-memory -i 0
  mx-smi --show-clock -i 0
  mx-smi sgpu --show-mode -i 0
  mx-smi sgpu --show-sched-class -i 0
  mx-smi sgpu --show-timeslice -i 0
  mx-smi sgpu --show-remain -i 0
} > "${snapshot}" 2>&1

workload=(
  /usr/bin/env
  PYTHONDONTWRITEBYTECODE=1
  PYTHONPATH="${repo}"
  /opt/conda/bin/python
  "${repo}/race_tests/moe/oj_benchmark.py"
  --cases 3
  --warmup 10
  --repeat 2000
)
printf '%q ' "${workload[@]}" > "${command_file}"
printf '\n' >> "${command_file}"

(
  cd "${repo}/race_tests/moe"
  "${workload[@]}"
) > "${workload_log}" 2>&1 &
workload_pid=$!

completed_samples=0
for _ in $(seq 1 600); do
  {
    date -u +sample_time_utc=%Y-%m-%dT%H:%M:%S.%NZ
    mx-smi --show-hbm-bandwidth -i 0
    mx-smi --show-ap-usage -i 0
    echo sample_end
  } >> "${samples}" 2>&1
  sleep 0.1
  if ! kill -0 "${workload_pid}" 2>/dev/null; then
    completed_samples=$((completed_samples + 1))
    if (( completed_samples >= 3 )); then
      break
    fi
  fi
done
wait "${workload_pid}"
grep -q '"status": "PASS"' "${workload_log}"
echo "MXSMI_SAMPLING_DONE samples=${samples} workload=${workload_log}"
