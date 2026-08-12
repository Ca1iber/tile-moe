#!/usr/bin/env bash
set -euo pipefail

project_root="${MOE_PROJECT_ROOT:-/root/tilelang-metax}"
iid=v016_step2_async_revalidation_sc-16g
out="${project_root}/race_tests/moe/restart-rep/${iid}/profiler/mxsmi"
mkdir -p "${out}"
date --iso-8601=seconds > "${out}/captured_at.txt"
mx-smi > "${out}/mx-smi.txt"
mx-smi --help > "${out}/mx-smi-help.txt"
