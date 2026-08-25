#!/usr/bin/env bash
set -euo pipefail

repo_root="${1:-/root/tilelang-metax}"
cd "${repo_root}"

echo "SDK declaration and async-copy wrapper:"
grep -n -A12 -B8 '__builtin_mxc_ldg_b128_bsm\|ldg_b128_bsm' \
  /opt/maca/include/mctlass/arch/maca_memory.h

echo "Direct TileLang/compiler references (expected: 0):"
matches="$(grep -RIl --include='*.cc' --include='*.h' --include='*.py' \
  '__builtin_mxc_ldg_b128_bsm\|ldg_b128_bsm' src tilelang include 2>/dev/null | wc -l || true)"
echo "${matches}"
test "${matches}" -eq 0

echo "Public async API and shared-to-register loader declarations:"
grep -n -A12 -B4 'def maca_async_copy' tilelang/language/copy_op.py
grep -n -A52 -B2 'def ldmatrix_b' tilelang/intrinsics/maca_mma_macro_generator.py | head -60
