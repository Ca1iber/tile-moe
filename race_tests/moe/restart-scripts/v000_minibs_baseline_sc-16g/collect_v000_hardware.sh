#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
iid=v000_minibs_baseline_sc-16g
out="$repo/race_tests/moe/restart-rep/$iid/profiler/mxsmi"
mkdir -p "$out"

capture() {
  local name="$1"
  shift
  {
    printf 'collected_at_utc=%s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
    printf 'command='
    printf '%q ' "$@"
    printf '\n'
    "$@"
  } 2>&1 | tee "$out/${iid}_${name}.txt"
}

capture summary mx-smi
capture hwinfo mx-smi --show-hwinfo -i 0
capture memory mx-smi --show-memory -i 0
capture clock mx-smi --show-clock -i 0
capture hbm_idle mx-smi --show-hbm-bandwidth -i 0
capture ap_idle mx-smi --show-ap-usage -i 0
capture sgpu_mode mx-smi sgpu --show-mode -i 0
capture sgpu_sched_class mx-smi sgpu --show-sched-class -i 0
capture sgpu_timeslice mx-smi sgpu --show-timeslice -i 0
capture sgpu_remain mx-smi sgpu --show-remain -i 0

capture runtime /opt/conda/bin/python -c 'import json, torch; p=torch.cuda.get_device_properties(0); print(json.dumps({"torch": torch.__version__, "cuda_available": torch.cuda.is_available(), "device": p.name, "total_memory_bytes": p.total_memory, "multi_processor_count": p.multi_processor_count}, indent=2))'

capture mcprofiler_version_file /usr/bin/sed -n 1,20p /opt/mcProfiler-ubuntu18.04/config/.version
capture mctracer_version /opt/maca-3.7.1/bin/mcTracer --help || true

{
  printf 'collected_at_utc=%s\n' "$(date -u +%Y-%m-%dT%H:%M:%SZ)"
  printf 'git_branch=%s\n' "$(git -C "$repo" branch --show-current)"
  printf 'git_commit=%s\n' "$(git -C "$repo" rev-parse HEAD)"
  git -C "$repo" status --short
  sha256sum \
    "$repo/race_tests/moe/custom_fusedmoe.py" \
    "$repo/race_tests/moe/fusedmoe_benchmark.py" \
    "$repo/race_tests/moe/oj_benchmark.py"
} > "$repo/race_tests/moe/restart-rep/$iid/${iid}_identity.txt"

printf 'hardware snapshot complete: %s\n' "$out"
