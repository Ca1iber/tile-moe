#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
id=v033_step2_case1_swap_shared_halves_sc-16g
scripts="${repo}/race_tests/moe/restart-scripts/${id}"
reports="${repo}/race_tests/moe/restart-rep/${id}"
parent="${repo}/race_tests/moe/restart-submission/v032_step2_case1_hybrid_half_b_sc-16g/submission.py"
candidate="${repo}/race_tests/moe/restart-submission/${id}/submission.py"

export PYTHONWARNINGS=ignore
export PYTHONDONTWRITEBYTECODE=1
export PYTHONPATH="${repo}"
export MACA_PATH=/opt/maca
export LD_LIBRARY_PATH=/opt/maca/lib:/opt/maca/ompi/lib:/opt/maca/ucx/lib:/opt/mxdriver/lib
export MACA_CLANG_PATH=/opt/maca/mxgpu_llvm/bin
export PATH=/opt/conda/bin:/opt/maca/mxgpu_llvm/bin:/opt/maca/ompi/bin:/opt/maca/ucx/bin:/opt/mxdriver/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

run_pair() {
  local case_id="$1"
  local output="$2"
  /opt/conda/bin/python "${scripts}/v033_pair_benchmark.py" \
    --parent "${parent}" \
    --candidate "${candidate}" \
    --case "${case_id}" --pairs 7 --warmup 20 --repeat 100 \
    > "${reports}/benchmark/${output}" 2>&1
  grep -q '"paired_change_percent"' "${reports}/benchmark/${output}"
}

case "${1:-}" in
  repro1) run_pair 1 v033_vs_v032_case1_pair7_repro1.log ;;
  repro2) run_pair 1 v033_vs_v032_case1_pair7_repro2.log ;;
  case2) run_pair 2 v033_vs_v032_case2_pair7.log ;;
  case3) run_pair 3 v033_vs_v032_case3_pair7.log ;;
  *) echo "usage: $0 repro1|repro2|case2|case3" >&2; exit 2 ;;
esac
