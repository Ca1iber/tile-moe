# Backend assembly unavailable for v000

The installed MXCC 3.7.1 compiler rejects `-S` with `mxcc: error: unknown argument: '-S'`.
The installed MXGPU LLVM tool directory provides `llvm-dis`, but no device `objdump` or disassembler for the generated `mcbin` object. TileLang's `export_sass` and `export_ptx` implementations are explicitly CUDA-only.

For this iteration, the lowest reproducible representation is therefore the optimized `mxc-metax-macahca` LLVM IR (`*_optimized_device.ll`). Generated MXMACA device C++, TileLang PrimFunc, compiler logs, and resource-usage output are also archived. No backend-ISA claim is made.
