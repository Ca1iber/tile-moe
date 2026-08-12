#!/usr/bin/env bash
set -euo pipefail

output="${1:?usage: collect_v014_snapshot.sh OUTPUT}"
{
  date -Is
  mx-smi --show-version
  mx-smi --show-memory -i 0
  mx-smi --show-usage -i 0
  mx-smi --show-clock -i 0
  mx-smi --show-hbm-bandwidth -i 0
  mx-smi --show-ap-usage -i 0
  mx-smi --show-process
  mx-smi sgpu --show-mode -i 0
  mx-smi sgpu --show-sched-class -i 0
  mx-smi sgpu --show-timeslice -i 0
  mx-smi sgpu --show-remain -i 0
} > "${output}" 2>&1
