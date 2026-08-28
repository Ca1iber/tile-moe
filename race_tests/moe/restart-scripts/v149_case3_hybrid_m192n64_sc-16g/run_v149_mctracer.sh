#!/usr/bin/env bash
set -euo pipefail

tag=${1:?tag}
submission=${2:?submission}
destination=${3:?destination}
repo=/root/tilelang-metax
profile=${repo}/race_tests/moe/restart-scripts/v149_case3_hybrid_m192n64_sc-16g/profile_submission.py

if [[ -e "${destination}" ]]; then
  printf 'refusing to overwrite %s\n' "${destination}" >&2
  exit 1
fi

cd /root
/usr/bin/env \
  MACA_PATH=/opt/maca \
  PYTHONDONTWRITEBYTECODE=1 \
  PYTHONPATH="${repo}" \
  /opt/maca-3.7.1/bin/mcTracer \
    --mctx \
    --odname "${destination#/root/}" \
    --name "${tag}" \
    /opt/conda/bin/python "${profile}" \
      --submission "${submission}" \
      --source-tag "${tag}" \
      --case 3 \
      --warmup 3
