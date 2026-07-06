#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "${SCRIPT_DIR}/../.." && pwd)"
cd "${REPO_ROOT}"

if [[ -f "${HOME}/.bashrc" ]]; then
  # Useful for non-interactive SSH runs where MACA_PATH is not loaded yet.
  # Ignore failures because some shells keep interactive-only commands there.
  set +u
  source "${HOME}/.bashrc" >/dev/null 2>&1 || true
  set -u
fi

export MACA_PATH="${MACA_PATH:-/opt/maca}"
export MACA_CLANG_PATH="${MACA_CLANG_PATH:-${MACA_PATH}/mxgpu_llvm/bin}"
export LD_LIBRARY_PATH="${MACA_PATH}/lib:${MACA_PATH}/ompi/lib:${MACA_PATH}/ucx/lib:/opt/mxdriver/lib:${LD_LIBRARY_PATH:-}"
export PATH="/opt/conda/bin:${MACA_CLANG_PATH}:${MACA_PATH}/ompi/bin:${MACA_PATH}/ucx/bin:/opt/mxdriver/bin:${PATH}"

if [[ -z "${PYTHON_BIN:-}" ]]; then
  if [[ -x /opt/conda/bin/python ]]; then
    PYTHON_BIN=/opt/conda/bin/python
  else
    PYTHON_BIN=python
  fi
fi

export PYTHONPATH="${REPO_ROOT}:${PYTHONPATH:-}"

usage() {
  cat <<'EOF'
Usage:
  bash race_tests/mla/run.sh
      Run default JSON benchmark: race_tests/mla/test_cases_mla_batch_ctx.json

  bash race_tests/mla/run.sh [1:15]
      Run an inclusive case_id range.

  bash race_tests/mla/run.sh front
      Run cases 1-10.

  bash race_tests/mla/run.sh mid
      Run cases 11-20.

  bash race_tests/mla/run.sh end
      Run cases 21-30. Case 31 is intentionally separate because it is memory-heavy.

  bash race_tests/mla/run.sh single
      Run a small single-case smoke benchmark.

  bash race_tests/mla/run.sh case31
      Run the largest default case alone.

  bash race_tests/mla/run.sh json <path>
      Run a custom JSON case file.

  bash race_tests/mla/run.sh --no-json --batch ... --heads ... --kv_ctx ...
      Pass arguments directly to test_tilelang_mla.py.

Environment:
  PYTHON_BIN=/path/to/python can override the Python executable.
EOF
}

run_case_range() {
  local start_case="$1"
  local end_case="$2"
  local output_name="${3:-${start_case}_to_${end_case}}"
  local src_json="race_tests/mla/test_cases_mla_batch_ctx.json"
  local tmp_json
  tmp_json="$(mktemp "/tmp/mla_cases_${start_case}_${end_case}.XXXXXX.json")"
  local tmp_csv="${tmp_json%.json}_results.csv"
  local output_csv="race_tests/mla/${output_name}.csv"

  "${PYTHON_BIN}" - "${src_json}" "${tmp_json}" "${start_case}" "${end_case}" <<'PY'
import json
import sys

src_path, dst_path, start_raw, end_raw = sys.argv[1:]
start = int(start_raw)
end = int(end_raw)
if start > end:
    raise SystemExit(f"invalid range: {start}:{end}")

with open(src_path) as f:
    cases = json.load(f)

selected = [case for case in cases if start <= int(case.get("case_id", -1)) <= end]
if not selected:
    raise SystemExit(f"no cases selected for range {start}:{end}")

with open(dst_path, "w") as f:
    json.dump(selected, f, indent=2)
    f.write("\n")

print(f"Selected {len(selected)} case(s): {start}-{end}")
print(f"Temporary JSON: {dst_path}")
PY

  "${PYTHON_BIN}" race_tests/mla/test_tilelang_mla.py --json "${tmp_json}"
  if [[ ! -f "${tmp_csv}" ]]; then
    echo "Expected CSV was not generated: ${tmp_csv}" >&2
    exit 1
  fi
  mv "${tmp_csv}" "${output_csv}"
  rm -f "${tmp_json}"
  echo "Final CSV saved to: ${output_csv}"
}

mode="${1:-all}"
case "${mode}" in
  all)
    "${PYTHON_BIN}" race_tests/mla/test_tilelang_mla.py
    ;;
  front)
    run_case_range 1 10 front
    ;;
  mid)
    run_case_range 11 20 mid
    ;;
  end)
    run_case_range 21 30 end
    ;;
  single)
    "${PYTHON_BIN}" race_tests/mla/test_tilelang_mla.py \
      --no-json \
      --batch 1 \
      --heads 16 \
      --kv_heads 1 \
      --kv_ctx 2048 \
      --dim 512 \
      --pe_dim 64
    ;;
  case31)
    PYTORCH_CUDA_ALLOC_CONF="${PYTORCH_CUDA_ALLOC_CONF:-expandable_segments:True}" \
      "${PYTHON_BIN}" race_tests/mla/test_tilelang_mla.py \
      --no-json \
      --batch 32 \
      --heads 16 \
      --kv_heads 1 \
      --kv_ctx 65536 \
      --dim 512 \
      --pe_dim 64
    ;;
  json)
    if [[ $# -ne 2 ]]; then
      usage
      exit 2
    fi
    "${PYTHON_BIN}" race_tests/mla/test_tilelang_mla.py --json "$2"
    ;;
  -h|--help|help)
    usage
    ;;
  *)
    if [[ "${mode}" =~ ^\[([0-9]+):([0-9]+)\]$ ]]; then
      run_case_range "${BASH_REMATCH[1]}" "${BASH_REMATCH[2]}" "${BASH_REMATCH[1]}_to_${BASH_REMATCH[2]}"
    else
      "${PYTHON_BIN}" race_tests/mla/test_tilelang_mla.py "$@"
    fi
    ;;
esac
