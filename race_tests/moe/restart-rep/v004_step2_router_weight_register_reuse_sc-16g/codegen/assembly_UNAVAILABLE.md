# Final device ISA unavailable

This iteration does not claim to contain backend ISA assembly.

- Toolchain: MXCC 3.7.1, target `xcore1000`.
- `mxcc -S` was tested and rejected by this toolchain.
- No installed device-object disassembler capable of decoding the emitted MetaX device object was found under the MXGPU LLVM tool directory.
- The lowest exact compiler representation archived here is optimized LLVM IR with target triple `mxc-metax-macahca`, produced from the exact archived generated C++ for both v002 and v004 with identical commands.
- Resource reports are archived separately. They show 256 MT registers, 38 ST registers and `staticMaxWarps/PEU=2` for Step2, but they are not a substitute for ISA spill inspection.

Therefore, conclusions about the routed-weight load-site reduction are made from generated C++ plus optimized LLVM IR. No unverified claim is made about final instruction selection, scalar/vector load opcodes, or backend spill code.
