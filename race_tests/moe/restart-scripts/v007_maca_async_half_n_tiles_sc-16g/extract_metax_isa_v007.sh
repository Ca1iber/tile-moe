#!/usr/bin/env bash
set -euo pipefail

# v007 helper: recover the final xcore1000 ISA from TileLang's generated C++.

if [[ $# -ne 2 ]]; then
  echo "usage: $0 GENERATED_DEVICE_SOURCE OUTPUT_DIR" >&2
  exit 2
fi

source_file="$(readlink -f "$1")"
output_dir="$(readlink -m "$2")"
repo="${PROJECT_ROOT:-/root/tilelang-metax}"
maca_root="${MACA_ROOT:-/opt/maca-3.7.1}"
mxcc="${maca_root}/mxgpu_llvm/bin/mxcc"
bundler="${maca_root}/mxgpu_llvm/bin/clang-offload-bundler"
objcopy="${maca_root}/mxgpu_llvm/bin/llvm-objcopy"
stem="$(basename "${source_file%.*}")"

mkdir -p "${output_dir}"
bundle="${output_dir}/${stem}.mcfb"
device_elf="${output_dir}/${stem}.xcore1000.elf"
embedded_bc="${output_dir}/${stem}.embedded.bc"
llvmcmd="${output_dir}/${stem}.llvmcmd"
assembly="${output_dir}/${stem}.metax.s"

"${mxcc}" -x maca -device-obj -O3 -lineinfo \
  --offload-arch=xcore1000 -resource-usage -std=c++17 \
  -I"${repo}/src" -I"${maca_root}/include" -D__FAST_HALF_CVT__ \
  -o "${bundle}" "${source_file}" 2>&1 | tee "${output_dir}/${stem}.device_obj.log"

"${bundler}" --list --type=o --input="${bundle}" \
  > "${output_dir}/${stem}.bundle_targets.txt" 2>&1 || true
if [[ -s "${output_dir}/${stem}.bundle_targets.txt" ]]; then
  "${bundler}" --unbundle --type=o \
    --targets=maca-mxc-metax-macahca--xcore1000 \
    --input="${bundle}" --output="${device_elf}"
else
  # TileLang's single-architecture `-device-obj` output is already the final
  # xcore1000 ELF; older MXCC invocations may instead produce an MCFB bundle.
  cp "${bundle}" "${device_elf}"
  printf '%s\n' 'direct-xcore1000-elf' > "${output_dir}/${stem}.bundle_targets.txt"
fi

"${objcopy}" --dump-section ".llvmbc=${embedded_bc}" "${device_elf}"
"${objcopy}" --dump-section ".llvmcmd=${llvmcmd}" "${device_elf}"
strings "${llvmcmd}" > "${output_dir}/${stem}.llvmcmd.txt"

# The embedded module is the post-link device IR from the final ELF. Re-running
# the same backend at -O3/-S emits the real xcore1000 MetaX ISA plus its resource
# metadata; compiling the earlier unbundled bitcode does not reproduce final ISA.
"${mxcc}" -cc1 \
  -triple mxc-metax-macahca \
  -aux-triple x86_64-unknown-linux-gnu \
  -target-cpu xcore1000 \
  -fcuda-is-device \
  -mllvm -metaxgpu-internalize-symbols \
  -fcuda-allow-variadic-functions \
  -fvisibility=protected \
  -fapply-global-visibility-to-externs \
  -ftz=false \
  -fdenormal-fp-math-f32=ieee \
  -prec-div=true -prec-sqrt=true -fmad=true \
  -ffp-contract=fast -vectorize-loops -vectorize-slp \
  -resource-usage -O3 -S -x ir \
  "${embedded_bc}" -o "${assembly}" \
  2>&1 | tee "${output_dir}/${stem}.isa_backend.log"

"${objcopy}" --only-section=.text "${device_elf}" "${output_dir}/${stem}.text.bin"
sha256sum "${source_file}" "${bundle}" "${device_elf}" "${embedded_bc}" "${assembly}" \
  > "${output_dir}/${stem}.sha256"

echo "assembly=${assembly}"
