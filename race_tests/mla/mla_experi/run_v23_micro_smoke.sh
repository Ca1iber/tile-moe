#!/usr/bin/env bash
set -euo pipefail
cd /root/tilelang-metax
/opt/conda/bin/python race_tests/mla/mla_experi/v23_pv4x_micro.py \
  --num-blocks 1024 \
  --configs 2x2,4x1,4x2 \
  --repeats 1 \
  --warmup 100 \
  --output race_tests/mla/mla_experi/v23_pv4x_micro_smoke.csv
