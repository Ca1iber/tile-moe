#!/usr/bin/env bash
set -euo pipefail

repo=/root/tilelang-metax
iid=v000_minibs_baseline_sc-16g
out="$repo/race_tests/moe/restart-rep/$iid/codegen"
mxcc=/opt/maca-3.7.1/mxgpu_llvm/bin/mxcc
llvm_dis=/opt/maca-3.7.1/mxgpu_llvm/bin/llvm-dis

for case_id in 1 2 3; do
  source="$out/${iid}_case${case_id}_generated_device.cpp"
  bitcode="$out/${iid}_case${case_id}_optimized_device.mcir"
  llvm_ir="$out/${iid}_case${case_id}_optimized_device.ll"
  log="$out/${iid}_case${case_id}_llvm_ir_compiler.log"
  "$mxcc" \
    -x maca -c -emit-llvm -maca-device-only -std=c++17 -O3 -lineinfo \
    --offload-arch=xcore1000 \
    -I"$repo/src" \
    -D__FAST_HALF_CVT__ \
    -o "$bitcode" \
    "$source" >"$log" 2>&1
  "$llvm_dis" "$bitcode" -o "$llvm_ir"
  printf 'LLVM_IR_DONE case=%s bytes=%s\n' "$case_id" "$(wc -c < "$llvm_ir")"
done
