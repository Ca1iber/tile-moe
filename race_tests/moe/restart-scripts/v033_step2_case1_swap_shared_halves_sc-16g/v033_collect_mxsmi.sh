#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
id=v033_step2_case1_swap_shared_halves_sc-16g
export ITERATION_ID="${id}"
export PROJECT_ROOT="${repo}"
export MXSMI_SAMPLE_INTERVAL_SECONDS=0.1
export MXSMI_SAMPLE_COMMAND="mx-smi --show-hbm-bandwidth -i 0; mx-smi --show-ap-usage -i 0"
export WORKLOAD_COMMAND="cd ${repo} && export PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1 PYTHONPATH=${repo} MACA_PATH=/opt/maca LD_LIBRARY_PATH=/opt/maca/lib:/opt/maca/ompi/lib:/opt/maca/ucx/lib:/opt/mxdriver/lib MACA_CLANG_PATH=/opt/maca/mxgpu_llvm/bin PATH=/opt/conda/bin:/opt/maca/mxgpu_llvm/bin:/opt/maca/ompi/bin:/opt/maca/ucx/bin:/opt/mxdriver/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin && /opt/conda/bin/python race_tests/moe/restart-scripts/${id}/oj_submission_benchmark.py --submission race_tests/moe/restart-submission/${id}/submission.py --cases 1 --warmup 10 --repeat 5000"

exec "${repo}/race_tests/moe/restart-scripts/${id}/collect_mxsmi.sh"
