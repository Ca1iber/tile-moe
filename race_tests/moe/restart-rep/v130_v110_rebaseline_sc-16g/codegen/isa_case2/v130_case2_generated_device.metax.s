	.text
	.weak	__cxa_pure_virtual              ; -- Begin function __cxa_pure_virtual
	.p2align	3
	.type	__cxa_pure_virtual,@function
__cxa_pure_virtual:                     ; @__cxa_pure_virtual
.Lfunc_begin0:
	.file	1 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_runtime_wrapper.h"
	.loc	1 38 0                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_runtime_wrapper.h:38:0
; %bb.0:                                ; %entry
	arrive 0
.Ltmp0:
	.loc	1 39 3 prologue_end             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_runtime_wrapper.h:39:3
	trap 2
.Ltmp1:
.Lfunc_end0:
	.size	__cxa_pure_virtual, .Lfunc_end0-__cxa_pure_virtual
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 16
; NumSTRegs: 0
; NumMTRegs: 1
; PrivateSize: 0
	.text
	.weak	__cxa_deleted_virtual           ; -- Begin function __cxa_deleted_virtual
	.p2align	3
	.type	__cxa_deleted_virtual,@function
__cxa_deleted_virtual:                  ; @__cxa_deleted_virtual
.Lfunc_begin1:
	.loc	1 43 0                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_runtime_wrapper.h:43:0
; %bb.0:                                ; %entry
	arrive 0
.Ltmp2:
	.loc	1 44 3 prologue_end             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_runtime_wrapper.h:44:3
	trap 2
.Ltmp3:
.Lfunc_end1:
	.size	__cxa_deleted_virtual, .Lfunc_end1-__cxa_deleted_virtual
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 16
; NumSTRegs: 0
; NumMTRegs: 1
; PrivateSize: 0
	.text
	.protected	kernel_kernel           ; -- Begin function kernel_kernel
	.globl	kernel_kernel
	.p2align	8
	.type	kernel_kernel,@function
kernel_kernel:                          ; @kernel_kernel
.Lfunc_begin2:
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp"
	.loc	2 12 0                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:12:0
; %bb.0:                                ; %entry
	ldu_b128 s0, s0, 0x0
	smul_i32 s5, 0xe0000, s5
	sshl_b32 s6, 8, s4
	and_b32 r2, 0x3ff, r0
	sadd_co_i32 s5, s6, s5
	shr_b32 r0, 5, r2
	smov_b32 s6, 0x1c00
	mov_b32 r1, s5
	mad_u24 r0, r0, s6, r1
	shl_b32 r3, 3, r2
	smov_b32 s6, 0xf8
	and_or_b32 r0, r3, s6, r0
.Ltmp4:
	.loc	2 15 3 prologue_end             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:15:3
	mov_b32 r1, 0
	.loc	2 16 97                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:97
	shl_b64 r6, 1, r0
	arrive slcnt(0)
	add_co_u32 r18, s2, r6
	mov_b32 r0, s3
	addc_co_u32 r19, r0, r7
	add_co_u32 r6, 0x1c000, r18
	addc_co_u32 r7, r19, 0
	.loc	2 16 70 is_stmt 0               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	ldg_b128 r20, r18, 0x0
	.loc	2 15 8 is_stmt 1                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:15:8
	shl_add_u32 r4, 4, r2, 0
	.loc	2 16 70                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	ldg_b128 r24, r6, 0x0
	.loc	2 16 97 is_stmt 0               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:97
	add_co_u32 r6, 0x38000, r18
	addc_co_u32 r7, r19, 0
	add_co_u32 r8, 0x54000, r18
	addc_co_u32 r9, r19, 0
	.loc	2 16 70                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	ldg_b128 r28, r6, 0x0
	add_i32 r0, 0x1000, r4
	ldg_b128 r32, r8, 0x0
	.loc	2 16 97                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:97
	add_co_u32 r8, 0x70000, r18
	addc_co_u32 r9, r19, 0
	add_co_u32 r10, 0x8c000, r18
	addc_co_u32 r11, r19, 0
	.loc	2 16 70                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	ldg_b128 r36, r8, 0x0
	add_i32 r5, 0x2000, r4
	ldg_b128 r40, r10, 0x0
	.loc	2 16 97                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:97
	add_co_u32 r10, 0xa8000, r18
	addc_co_u32 r11, r19, 0
	add_co_u32 r12, 0xc4000, r18
	addc_co_u32 r13, r19, 0
	.loc	2 16 70                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	ldg_b128 r44, r10, 0x0
	add_i32 r6, 0x3000, r4
	ldg_b128 r48, r12, 0x0
	.loc	2 16 97                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:97
	add_co_u32 r12, 0xe0000, r18
	addc_co_u32 r13, r19, 0
	add_co_u32 r14, 0xfc000, r18
	addc_co_u32 r15, r19, 0
	.loc	2 16 70                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	ldg_b128 r52, r12, 0x0
	add_i32 r7, 0x4000, r4
	ldg_b128 r56, r14, 0x0
	.loc	2 16 97                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:97
	add_co_u32 r14, 0x118000, r18
	addc_co_u32 r15, r19, 0
	add_co_u32 r16, 0x134000, r18
	addc_co_u32 r17, r19, 0
	.loc	2 16 70                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	ldg_b128 r60, r14, 0x0
	.loc	2 16 97                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:97
	add_co_u32 r68, 0x150000, r18
	addc_co_u32 r69, r19, 0
	add_co_u32 r70, 0x16c000, r18
	addc_co_u32 r71, r19, 0
	add_co_u32 r76, 0x188000, r18
	addc_co_u32 r77, r19, 0
	add_co_u32 r18, 0x1a4000, r18
	.loc	2 16 70                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	add_i32 r8, 0x5000, r4
	add_i32 r9, 0x6000, r4
	add_i32 r10, 0x7000, r4
	add_i32 r11, 0x8000, r4
	add_i32 r12, 0x9000, r4
	add_i32 r13, 0xa000, r4
	.loc	2 16 97                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:97
	addc_co_u32 r19, r19, 0
	.loc	2 16 70                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:16:70
	ldg_b128 r64, r16, 0x0
	ldg_b128 r72, r68, 0x0
	ldg_b128 r68, r70, 0x0
	add_i32 r14, 0xb000, r4
	add_i32 r15, 0xc000, r4
	add_i32 r16, 0xd000, r4
	add_i32 r17, 0xe000, r4
	arrive gvmcnt(13)
	sts_b128 r4, 0x0, r20
	arrive gvmcnt(12)
	sts_b128 r0, 0x0, r24
	add_i32 r0, 0xf000, r4
	arrive gvmcnt(11)
	sts_b128 r5, 0x0, r28
	arrive gvmcnt(10)
	sts_b128 r6, 0x0, r32
	arrive gvmcnt(9)
	sts_b128 r7, 0x0, r36
	arrive gvmcnt(8)
	sts_b128 r8, 0x0, r40
	arrive gvmcnt(7)
	sts_b128 r9, 0x0, r44
	ldg_b128 r6, r76, 0x0
	arrive gvmcnt(7)
	sts_b128 r10, 0x0, r48
	arrive gvmcnt(6)
	sts_b128 r11, 0x0, r52
	arrive gvmcnt(5)
	sts_b128 r12, 0x0, r56
	arrive gvmcnt(4)
	sts_b128 r13, 0x0, r60
	ldg_b128 r10, r18, 0x0
	arrive gvmcnt(4)
	sts_b128 r14, 0x0, r64
	arrive gvmcnt(3)
	sts_b128 r15, 0x0, r72
	arrive gvmcnt(2)
	sts_b128 r16, 0x0, r68
	arrive gvmcnt(1)
	sts_b128 r17, 0x0, r6
	arrive gvmcnt(0)
	sts_b128 r0, 0x0, r10
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	shl_b32 r0, 7, r2
	shl_b32 r4, 8, r2
	shr_b32 r2, 1, r2
	and_b32 r0, 0x1e000, r0
	and_b32 r4, 0xf00, r4
	and_b32 r2, r2, 24
	or3_b32 r2, r4, r0, r2
	smul_i32 s2, 0x7f00, s4
.Ltmp6:
	.loc	2 21 188                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:188
	shl_add_u32 r2, 1, r2, 0
	sadd_co_i32 s2, s5, s2
	or_b32 r0, s2, r3
	.loc	2 21 164 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	lds_b128 r6, r2, 0x0
	add_i32 r3, 0x2000, r2
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	shl_b64 r4, 1, r0
	add_co_u32 r4, s0, r4
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	lds_b128 r10, r3, 0x0
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	mov_b32 r1, s1
	addc_co_u32 r5, r1, r5
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	add_i32 r1, 64, r2
	add_i32 r3, 0x2040, r2
	arrive bsmcnt(1)
	stg_b128 r4, 0x0, r6 devc
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	snop 1
	add_co_u32 r6, 0x1000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(0)
	snop 0
	stg_b128 r6, 0x0, r10 devc
	lds_b128 r8, r1, 0x0
	lds_b128 r12, r3, 0x0
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	add_co_u32 r6, 0x2000, r4
	addc_co_u32 r7, r5, 0
	or_b32 r1, 0x2000, r0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	add_i32 r3, 0x2080, r2
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r8 devc
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	snop 1
	add_co_u32 r6, 0x3000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(0)
	snop 0
	stg_b128 r6, 0x0, r12 devc
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	snop 1
	mad_u32 r6, r1, 2, s0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	add_i32 r1, 0x80, r2
	snop 1
	lds_b128 r8, r1, 0x0
	lds_b128 r12, r3, 0x0
	add_i32 r1, 0xc0, r2
	add_i32 r3, 0x20c0, r2
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r8 devc
	lds_b128 r8, r1, 0x0
	or_b32 r1, 0x4000, r0
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	add_co_u32 r6, 0x5000, r4
	addc_co_u32 r7, r5, 0
	or_b32 r0, 0x6000, r0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r12 devc
	lds_b128 r12, r3, 0x0
	add_i32 r3, 0x2100, r2
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	add_co_u32 r6, 0x6000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(1)
	snop 0
	stg_b128 r6, 0x0, r8 devc
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	snop 1
	add_co_u32 r6, 0x7000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(0)
	snop 0
	stg_b128 r6, 0x0, r12 devc
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	snop 1
	mad_u32 r6, r1, 2, s0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	add_i32 r1, 0x100, r2
	snop 1
	lds_b128 r8, r1, 0x0
	lds_b128 r12, r3, 0x0
	add_i32 r1, 0x140, r2
	add_i32 r3, 0x2140, r2
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r8 devc
	lds_b128 r8, r1, 0x0
	add_i32 r1, 0x2180, r2
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	add_co_u32 r6, 0x9000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(1)
	snop 0
	stg_b128 r6, 0x0, r12 devc
	lds_b128 r12, r3, 0x0
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	snop 0
	add_co_u32 r6, 0xa000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(1)
	snop 0
	stg_b128 r6, 0x0, r8 devc
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	snop 1
	add_co_u32 r6, 0xb000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(0)
	snop 0
	stg_b128 r6, 0x0, r12 devc
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	snop 1
	mad_u32 r6, r0, 2, s0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	add_i32 r0, 0x180, r2
	snop 1
	lds_b128 r8, r0, 0x0
	lds_b128 r12, r1, 0x0
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	add_co_u32 r0, 0xd000, r4
	addc_co_u32 r1, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r8 devc
	arrive bsmcnt(0)
	stg_b128 r0, 0x0, r12 devc
	snop 1
	add_i32 r0, 0x1c0, r2
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	add_co_u32 r6, 0xe000, r4
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	add_i32 r1, 0x21c0, r2
	lds_b128 r8, r0, 0x0
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	lds_b128 r0, r1, 0x0
	.loc	2 21 23                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:23
	add_co_u32 r4, 0xf000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 21 164                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:21:164
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r8 devc
	arrive bsmcnt(0)
	stg_b128 r4, 0x0, r0 devc
	.loc	2 24 1 is_stmt 1                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:24:1
	snop 1
	endk
.Ltmp7:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 10
		.macahca_streg_size 1
		.macahca_priority 0
		.macahca_float_mode 240
		.macahca_privilege 0
		.macahca_debug_mode 0
		.macahca_ieee_mode 1
		.macahca_bulky_mode 0
		.macahca_fp16_overflow_mode 0
		.macahca_perf_on 0
		.macahca_priv_segm_on 0
		.macahca_user_streg_count 4
		.macahca_user_trap_handler_on 0
		.macahca_streg_block_id_x_on 1
		.macahca_streg_block_id_y_on 1
		.macahca_streg_block_id_z_on 0
		.macahca_streg_block_info_on 0
		.macahca_enable_mtreg_thread_id 0
		.macahca_exception_address_watch_on 0
		.macahca_exception_memory_violation_on 0
		.macahca_bsm_size 0
		.macahca_exception_on 0
		.macahca_streg_kernarg_segm_ptr_on 1
		.macahca_streg_dispatch_ptr_on 0
		.macahca_streg_prvt_init_on 0
		.macahca_streg_prvt_segm_size_on 0
		.macahca_unorder_dispatch_on 0
		.macahca_warps_per_dpc 416
		.macahca_blocks_per_ap 16
	.end_macahca_kernel
	.text
	.fill 4, 8, 0x2320
	.p2align 8
.Lfunc_end2:
	.size	kernel_kernel, .Lfunc_end2-kernel_kernel
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 1952
; NumMTRegsForWarps/PEU: 78
; NumSTRegsForWarps/PEU: 11
; MaxWarpsPerPEU: 6
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 26 0                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:26:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s8, s5
.Ltmp8:
	.loc	2 33 19 prologue_end            ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:33:19
	smov_b32 s9, 0
	sshl_b64 s2, 2, s8
	ldu_b128 s12, s0, 0x20
	and_b32 r0, 0x3ff, r0
	shl_b32 r1, 3, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s6, s2, 0x0
	ldu_b64 s2, s0, 0x30
	smul_i32 s0, 0xe0000, s5
	or_b32 r150, r1, s0
	.loc	2 51 3                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:51:3
	mov_b32 r151, 0
	.loc	2 52 66                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:52:66
	shl_b64 r2, 1, r150
	add_co_u32 r4, s12, r2
	mov_b32 r2, s13
	addc_co_u32 r5, r2, r3
	add_co_u32 r2, 0x1000, r4
	addc_co_u32 r3, r5, 0
	.loc	2 52 48 is_stmt 0               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:52:48
	ldg_b128 r152, r4, 0x0
	.loc	2 33 19 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:33:19
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 52 48                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:52:48
	ldg_b128 r156, r2, 0x0
	.loc	2 52 66 is_stmt 0               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:52:66
	add_co_u32 r2, 0x2000, r4
	addc_co_u32 r3, r5, 0
	add_co_u32 r4, 0x3000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 52 48                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:52:48
	ldg_b128 r160, r2, 0x0
	.loc	2 34 20 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:34:20
	sshl_b64 s10, 2, s6
	.loc	2 52 48                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:52:48
	ldg_b128 r164, r4, 0x0
	.loc	2 34 20                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:34:20
	sadd_co_u32 s18, s22, s10
	saddc_co_u32 s19, s23, s11
	.loc	2 35 22                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:35:22
	sadd_co_u32 s10, s20, s10
	saddc_co_u32 s11, s21, s11
	.loc	2 34 20                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:34:20
	ldu_b32 s1, s18, 0x0
	.loc	2 35 22                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:35:22
	ldu_b32 s5, s10, 0x0
	sshl_b32 s0, 7, s8
	shr_b32 r3, 1, r0
	shr_b32 r9, 5, r0
	and_b32 r19, r1, 32
	and_b32 r2, 0x1e0, r3
	arrive slcnt(0)
	ssub_co_i32 s0, s1, s0
	sadd_co_i32 s0, s0, s5
	sadd_co_u32 s10, 0x4000, s12
	saddc_co_u32 s11, s13, 0
	sadd_co_u32 s18, 0xe0000, s16
	saddc_co_u32 s19, s17, 0
	sadd_co_u32 s20, 0xe0000, s14
	saddc_co_u32 s21, s15, 0
	sadd_co_u32 s24, 0xe0080, s16
	add_shl_u32 r3, r9, r3, 4
	add_u32 r6, r19, r0
	and_b32 r7, r1, 16
	mul_u24 r8, r0, 9
	saddc_co_u32 s25, s17, 0
	and_b32 r11, r3, 16
	shr_b32 r3, 4, r0
	and_or_b32 r4, r0, 15, r2
	add_u32 r7, r7, r0
	sadd_co_u32 s26, 0xe0080, s14
	add_shl_u32 r12, r3, r0, 3
	and_b32 r5, 0x1fc0, r1
	and_b32 r6, r6, 32
	and_b32 r8, r8, 8
	or_b32 r3, r4, 16
	saddc_co_u32 s27, s15, 0
	smul_i32 s5, 0xe00000, s6
	cmp_lt_i32 s6, r4, s0
	and_b32 r7, r7, 16
	cmp_lt_i32 s22, r2, s0
	cmp_lt_i32 s0, r3, s0
	or_b32 r3, r6, r8
	or_b32 r4, r5, r6
	sadd_co_u32 s12, 0x8000, s12
	or3_b32 r3, r3, r5, r7
	or3_b32 r4, r4, r7, r8
	mov_b32 r5, 0x1000
	shl_b32 r9, 1, r3
	shl_add_u32 r10, 1, r4, r5
	shl_b32 r2, 6, r0
	saddc_co_u32 s13, s13, 0
	sadd_co_i32 s28, 0x2000, 0
	and_b32 r18, 0x3c0, r2
	and_or_b32 r26, r12, 8, r11
	smul_i32 s9, 0xe0000, s4
	add_u32 r5, s28, r9
	add_u32 r6, s28, r10
	sadd_co_i32 s28, 0x4000, 0
	or_b32 r20, r26, r18
	add_u32 r7, s28, r9
	add_u32 r8, s28, r10
	sadd_co_i32 s28, 0x6000, 0
	or_b32 r21, 0x400, r18
	or_b32 r22, r26, r19
	or_b32 r23, 0x800, r18
	or_b32 r24, 0xc00, r18
	or_b32 r25, 0x1000, r18
	or_b32 r28, 0x1400, r18
	or_b32 r29, 0x1800, r18
	or_b32 r30, 0x1c00, r18
	xor_b32 r31, r19, 32
	.loc	2 54 3                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:54:3
	sadd_co_i32 s5, s5, s9
	or_b32 r11, r20, r19
	or_b32 r19, r20, r31
	or_b32 r12, r22, r21
	or_b32 r13, r22, r23
	or_b32 r14, r22, r24
	or_b32 r15, r22, r25
	or_b32 r16, r22, r28
	or_b32 r17, r22, r29
	or_b32 r18, r22, r30
	or3_b32 r22, r26, r24, r31
	or3_b32 r24, r26, r28, r31
	or3_b32 r20, r26, r21, r31
	or3_b32 r21, r26, r23, r31
	or3_b32 r23, r26, r25, r31
	or3_b32 r25, r26, r29, r31
	or3_b32 r26, r26, r30, r31
	shr_b32 r27, 3, r0
	add_u32 r3, 0, r9
	add_u32 r4, 0, r10
	add_u32 r9, s28, r9
	add_u32 r10, s28, r10
	smov_b32 s28, 0x1c00
	mov_b32 r28, s5
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:0
	shl_b64 r30, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 54 3                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:54:3
	mad_u24 r27, r27, s28, r28
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:0
	shl_b64 r32, 0, 0
	shl_b64 r38, 0, r30
	shl_b64 r46, 0, r30
	shl_b64 r54, 0, r30
	shl_b64 r62, 0, r30
	shl_b64 r70, 0, r30
	shl_b64 r78, 0, r30
	shl_b64 r86, 0, r30
	shl_b64 r94, 0, r30
	shl_b64 r102, 0, r30
	shl_b64 r110, 0, r30
	shl_b64 r118, 0, r30
	shl_b64 r126, 0, r30
	shl_b64 r134, 0, r30
	shl_b64 r142, 0, r30
	shl_b64 r168, 0, r30
	shl_b64 r34, 0, r30
	shl_b64 r42, 0, r30
	shl_b64 r50, 0, r30
	shl_b64 r58, 0, r30
	shl_b64 r66, 0, r30
	shl_b64 r74, 0, r30
	shl_b64 r82, 0, r30
	shl_b64 r90, 0, r30
	shl_b64 r98, 0, r30
	shl_b64 r106, 0, r30
	shl_b64 r114, 0, r30
	shl_b64 r122, 0, r30
	shl_b64 r130, 0, r30
	shl_b64 r138, 0, r30
	shl_b64 r146, 0, r30
	shl_b64 r172, 0, r30
	shr_b32 r2, 2, r0
	shl_add_u32 r11, 1, r11, 0
	shl_add_u32 r12, 1, r12, 0
	shl_add_u32 r13, 1, r13, 0
	shl_add_u32 r14, 1, r14, 0
	shl_add_u32 r15, 1, r15, 0
	shl_add_u32 r16, 1, r16, 0
	shl_add_u32 r17, 1, r17, 0
	shl_add_u32 r18, 1, r18, 0
	shl_add_u32 r19, 1, r19, 0
	shl_add_u32 r20, 1, r20, 0
	shl_add_u32 r21, 1, r21, 0
	shl_add_u32 r22, 1, r22, 0
	shl_add_u32 r23, 1, r23, 0
	shl_add_u32 r24, 1, r24, 0
	shl_add_u32 r25, 1, r25, 0
	shl_add_u32 r26, 1, r26, 0
	.loc	2 54 3                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:54:3
	and_or_b32 r176, r1, 56, r27
	smov_b64 s30, 0
	shl_b64 r40, 0, r32
	shl_b64 r48, 0, r32
	shl_b64 r56, 0, r32
	shl_b64 r64, 0, r32
	shl_b64 r72, 0, r32
	shl_b64 r80, 0, r32
	shl_b64 r88, 0, r32
	shl_b64 r96, 0, r32
	shl_b64 r104, 0, r32
	shl_b64 r112, 0, r32
	shl_b64 r120, 0, r32
	shl_b64 r128, 0, r32
	shl_b64 r136, 0, r32
	shl_b64 r144, 0, r32
	shl_b64 r170, 0, r32
	shl_b64 r36, 0, r32
	shl_b64 r44, 0, r32
	shl_b64 r52, 0, r32
	shl_b64 r178, 0, r180
	shl_b64 r188, 0, r180
	shl_b64 r186, 0, r180
	shl_b64 r192, 0, r180
	shl_b64 r190, 0, r180
	shl_b64 r184, 0, r180
	shl_b64 r182, 0, r180
	shl_b64 r60, 0, r32
	shl_b64 r68, 0, r32
	shl_b64 r76, 0, r32
	shl_b64 r84, 0, r32
	shl_b64 r92, 0, r32
	shl_b64 r100, 0, r32
	shl_b64 r108, 0, r32
	shl_b64 r116, 0, r32
	shl_b64 r124, 0, r32
	shl_b64 r132, 0, r32
	shl_b64 r140, 0, r32
	shl_b64 r148, 0, r32
	shl_b64 r174, 0, r32
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %for.inc1037
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 54 31                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:54:31
	sadd_co_u32 s30, 0x80, s30
	saddc_co_u32 s31, s31, 0
	scmp_eq_u64 0x1c00, s30
	add_u32 r150, 0x4000, r150
	.loc	2 54 3                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:54:3
	bra_smsks LBB3_26
LBB3_2:                                 ; %for.cond74.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 56 11 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:56:11
	and_xmsk s34, s6
	snop 0
	bra_xmsks LBB3_20
; %bb.3:                                ; %for.inc105
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:56:11
	and_xmsk s34, s0
	snop 0
	bra_xmsks LBB3_21
LBB3_4:                                 ; %for.inc105.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:56:11
	and_xmsk s34, s6
	snop 0
	bra_xmsks LBB3_22
LBB3_5:                                 ; %for.inc105.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:56:11
	and_xmsk s34, s0
	snop 0
	bra_xmskz LBB3_7
LBB3_6:                                 ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:11
	mad_u32 r28, r150, 2, s10
	add_co_u32 r28, 0x3000, r28
	addc_co_u32 r29, r29, 0
	.loc	2 57 56 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:57:56
	snop 1
	ldg_b128 r178, r28, 0x0
LBB3_7:                                 ; %for.inc105.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s34
	.loc	2 62 362 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:62:362
	add_co_u32 r27, r176, s30
	add_u32 r28, 0x38000, r27
	mad_i32 r194, r27, 2, s16
	mad_i32 r196, r28, 2, s16
	.loc	2 66 371                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:66:371
	mad_i32 r202, r27, 2, s18
	mad_i32 r204, r28, 2, s18
	.loc	2 70 369                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:70:369
	mad_i32 r210, r27, 2, s14
	mad_i32 r212, r28, 2, s14
	.loc	2 74 370                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:74:370
	mad_i32 r218, r27, 2, s20
	mad_i32 r220, r28, 2, s20
	.loc	2 62 345                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:62:345
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	.loc	2 66 354                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:66:354
	ldg_b128 r206, r202, 0x0
	ldg_b128 r202, r204, 0x0
	.loc	2 70 354                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:70:354
	ldg_b128 r214, r210, 0x0
	ldg_b128 r210, r212, 0x0
	.loc	2 74 355                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:74:355
	ldg_b128 r222, r218, 0x0
	ldg_b128 r218, r220, 0x0
	.loc	2 62 345                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:62:345
	arrive gvmcnt(7)
	sts_b128 r3, 0x0, r198
	arrive gvmcnt(6)
	sts_b128 r4, 0x0, r194
	.loc	2 66 354                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:66:354
	arrive gvmcnt(5)
	sts_b128 r5, 0x0, r206
	arrive gvmcnt(4)
	sts_b128 r6, 0x0, r202
	.loc	2 70 354                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:70:354
	arrive gvmcnt(3)
	sts_b128 r7, 0x0, r214
	arrive gvmcnt(2)
	sts_b128 r8, 0x0, r210
	.loc	2 74 355                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:74:355
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r222
	arrive gvmcnt(0)
	sts_b128 r10, 0x0, r218
.Ltmp9:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 77 9                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:77:9
	and_xmsk s34, s22
	snop 0
	bra_xmskz LBB3_9
; %bb.8:                                ; %for.cond370.preheader.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r194, r11, 0x0
	lds_b128 r198, r12, 0x0
	lds_b128 r202, r13, 0x0
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	add_i32 r29, 0x4000, r11
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r194, r152, r168
	mma_16x16x16f16 r86, r194, r156, r86
	mma_16x16x16f16 r168, r196, r154, r168
	mma_16x16x16f16 r86, r196, r158, r86
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r194, r14, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r198, r152, r142
	mma_16x16x16f16 r78, r198, r156, r78
	mma_16x16x16f16 r142, r200, r154, r142
	mma_16x16x16f16 r78, r200, r158, r78
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r198, r15, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r202, r152, r134
	mma_16x16x16f16 r70, r202, r156, r70
	mma_16x16x16f16 r134, r204, r154, r134
	mma_16x16x16f16 r70, r204, r158, r70
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r202, r16, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r194, r152, r126
	mma_16x16x16f16 r62, r194, r156, r62
	mma_16x16x16f16 r126, r196, r154, r126
	mma_16x16x16f16 r62, r196, r158, r62
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r194, r17, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r198, r152, r118
	mma_16x16x16f16 r54, r198, r156, r54
	mma_16x16x16f16 r118, r200, r154, r118
	mma_16x16x16f16 r54, r200, r158, r54
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r198, r18, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r202, r152, r110
	mma_16x16x16f16 r46, r202, r156, r46
	mma_16x16x16f16 r110, r204, r154, r110
	mma_16x16x16f16 r46, r204, r158, r46
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r12
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r194, r152, r102
	mma_16x16x16f16 r38, r194, r156, r38
	mma_16x16x16f16 r102, r196, r154, r102
	mma_16x16x16f16 r38, r196, r158, r38
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r13
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r198, r152, r94
	mma_16x16x16f16 r30, r198, r156, r30
	mma_16x16x16f16 r94, r200, r154, r94
	mma_16x16x16f16 r30, r200, r158, r30
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r14
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r202, r152, r172
	mma_16x16x16f16 r90, r202, r156, r90
	mma_16x16x16f16 r172, r204, r154, r172
	mma_16x16x16f16 r90, r204, r158, r90
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r15
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r194, r152, r146
	mma_16x16x16f16 r82, r194, r156, r82
	mma_16x16x16f16 r146, r196, r154, r146
	mma_16x16x16f16 r82, r196, r158, r82
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r16
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r198, r152, r138
	mma_16x16x16f16 r74, r198, r156, r74
	mma_16x16x16f16 r138, r200, r154, r138
	mma_16x16x16f16 r74, r200, r158, r74
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r17
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r202, r152, r130
	mma_16x16x16f16 r66, r202, r156, r66
	mma_16x16x16f16 r130, r204, r154, r130
	mma_16x16x16f16 r66, r204, r158, r66
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r18
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r194, r152, r122
	mma_16x16x16f16 r58, r194, r156, r58
	mma_16x16x16f16 r122, r196, r154, r122
	mma_16x16x16f16 r58, r196, r158, r58
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r19
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r198, r152, r114
	mma_16x16x16f16 r50, r198, r156, r50
	mma_16x16x16f16 r114, r200, r154, r114
	mma_16x16x16f16 r50, r200, r158, r50
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r198, r19, 0x0
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r202, r152, r106
	mma_16x16x16f16 r42, r202, r156, r42
	mma_16x16x16f16 r106, r204, r154, r106
	mma_16x16x16f16 r42, r204, r158, r42
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r202, r20, 0x0
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r194, r152, r98
	mma_16x16x16f16 r34, r194, r156, r34
	mma_16x16x16f16 r98, r196, r154, r98
	mma_16x16x16f16 r34, r196, r158, r34
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r194, r21, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r198, r160, r168
	mma_16x16x16f16 r86, r198, r164, r86
	mma_16x16x16f16 r168, r200, r162, r168
	mma_16x16x16f16 r86, r200, r166, r86
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r198, r22, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r202, r160, r142
	mma_16x16x16f16 r78, r202, r164, r78
	mma_16x16x16f16 r142, r204, r162, r142
	mma_16x16x16f16 r78, r204, r166, r78
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r202, r23, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r194, r160, r134
	mma_16x16x16f16 r70, r194, r164, r70
	mma_16x16x16f16 r134, r196, r162, r134
	mma_16x16x16f16 r70, r196, r166, r70
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r194, r24, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r198, r160, r126
	mma_16x16x16f16 r62, r198, r164, r62
	mma_16x16x16f16 r126, r200, r162, r126
	mma_16x16x16f16 r62, r200, r166, r62
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r198, r25, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r202, r160, r118
	mma_16x16x16f16 r54, r202, r164, r54
	mma_16x16x16f16 r118, r204, r162, r118
	mma_16x16x16f16 r54, r204, r166, r54
	.loc	2 80 45                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:80:45
	lds_b128 r202, r26, 0x0
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r194, r160, r110
	mma_16x16x16f16 r46, r194, r164, r46
	mma_16x16x16f16 r110, r196, r162, r110
	mma_16x16x16f16 r46, r196, r166, r46
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r20
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r198, r160, r102
	mma_16x16x16f16 r38, r198, r164, r38
	mma_16x16x16f16 r102, r200, r162, r102
	mma_16x16x16f16 r38, r200, r166, r38
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r21
	.loc	2 86 57                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r202, r160, r94
	mma_16x16x16f16 r30, r202, r164, r30
	mma_16x16x16f16 r94, r204, r162, r94
	mma_16x16x16f16 r30, r204, r166, r30
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r22
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r194, r160, r172
	mma_16x16x16f16 r90, r194, r164, r90
	mma_16x16x16f16 r172, r196, r162, r172
	mma_16x16x16f16 r90, r196, r166, r90
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r23
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r198, r160, r146
	mma_16x16x16f16 r82, r198, r164, r82
	mma_16x16x16f16 r146, r200, r162, r146
	mma_16x16x16f16 r82, r200, r166, r82
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r24
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r202, r160, r138
	mma_16x16x16f16 r74, r202, r164, r74
	mma_16x16x16f16 r138, r204, r162, r138
	mma_16x16x16f16 r74, r204, r166, r74
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r25
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r194, r160, r130
	mma_16x16x16f16 r66, r194, r164, r66
	mma_16x16x16f16 r130, r196, r162, r130
	mma_16x16x16f16 r66, r196, r166, r66
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r26
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r198, r160, r122
	mma_16x16x16f16 r58, r198, r164, r58
	mma_16x16x16f16 r122, r200, r162, r122
	mma_16x16x16f16 r58, r200, r166, r58
	.loc	2 94 47                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:94:47
	lds_b128 r198, r29, 0x0
	.loc	2 100 55                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r202, r160, r114
	mma_16x16x16f16 r50, r202, r164, r50
	mma_16x16x16f16 r114, r204, r162, r114
	mma_16x16x16f16 r50, r204, r166, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r194, r160, r106
	mma_16x16x16f16 r42, r194, r164, r42
	mma_16x16x16f16 r106, r196, r162, r106
	mma_16x16x16f16 r42, r196, r166, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r198, r160, r98
	mma_16x16x16f16 r34, r198, r164, r34
	mma_16x16x16f16 r98, r200, r162, r98
	mma_16x16x16f16 r34, r200, r166, r34
LBB3_9:                                 ; %if.end548
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 55 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:55
	sor_b64 xmsk, xmsk, s34
.Ltmp11:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp12:
	.loc	2 110 16                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:110:16
	mov_b32 r194, 0x1b80
	mov_b32 r195, 0
	cmp_lg_u64 s34, s30, r194
	scmp_eq_u64 0x1b80, s30
	.loc	2 110 9 is_stmt 0               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:110:9
	snop 0
	bra_smsks LBB3_16
; %bb.10:                               ; %for.cond551.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 112 13 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:112:13
	and_xmsk s36, s6
	snop 0
	bra_xmsks LBB3_23
; %bb.11:                               ; %for.inc587
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:112:13
	and_xmsk s36, s0
	snop 0
	bra_xmsks LBB3_24
LBB3_12:                                ; %for.inc587.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:112:13
	and_xmsk s36, s6
	snop 0
	bra_xmsks LBB3_25
LBB3_13:                                ; %for.inc587.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:112:13
	and_xmsk s36, s0
	snop 0
	bra_xmskz LBB3_15
LBB3_14:                                ; %if.then569.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:13
	mad_u32 r164, r150, 2, s12
	add_co_u32 r164, 0x3000, r164
	addc_co_u32 r165, r165, 0
	.loc	2 113 56 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:113:56
	snop 1
	ldg_b128 r164, r164, 0x0
LBB3_15:                                ; %Flow
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s36
LBB3_16:                                ; %if.end590
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 119 362 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:119:362
	add_u32 r29, r27, 64
	add_u32 r151, 0x38040, r27
	mad_i32 r194, r29, 2, s16
	mad_i32 r196, r151, 2, s16
	.loc	2 123 372                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:123:372
	mad_i32 r202, r27, 2, s24
	mad_i32 r204, r28, 2, s24
	.loc	2 127 370                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:127:370
	mad_i32 r210, r29, 2, s14
	mad_i32 r212, r151, 2, s14
	.loc	2 131 371                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:131:371
	mad_i32 r218, r27, 2, s26
	mad_i32 r28, r28, 2, s26
	.loc	2 119 345                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:119:345
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	.loc	2 123 355                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:123:355
	ldg_b128 r206, r202, 0x0
	ldg_b128 r202, r204, 0x0
	.loc	2 127 355                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:127:355
	ldg_b128 r214, r210, 0x0
	ldg_b128 r210, r212, 0x0
	.loc	2 131 356                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:131:356
	ldg_b128 r218, r218, 0x0
	ldg_b128 r222, r28, 0x0
	.loc	2 119 345                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:119:345
	arrive gvmcnt(7)
	sts_b128 r3, 0x0, r198
	arrive gvmcnt(6)
	sts_b128 r4, 0x0, r194
	.loc	2 123 355                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:123:355
	arrive gvmcnt(5)
	sts_b128 r5, 0x0, r206
	arrive gvmcnt(4)
	sts_b128 r6, 0x0, r202
	.loc	2 127 355                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:127:355
	arrive gvmcnt(3)
	sts_b128 r7, 0x0, r214
	arrive gvmcnt(2)
	sts_b128 r8, 0x0, r210
	.loc	2 131 356                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:131:356
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r218
	arrive gvmcnt(0)
	sts_b128 r10, 0x0, r222
.Ltmp13:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp14:
	.loc	2 134 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:134:9
	and_xmsk s36, s22
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %for.cond855.preheader.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r194, r11, 0x0
	lds_b128 r198, r12, 0x0
	lds_b128 r202, r13, 0x0
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	add_i32 r27, 0x4000, r11
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r194, r182, r168
	mma_16x16x16f16 r86, r194, r190, r86
	mma_16x16x16f16 r168, r196, r184, r168
	mma_16x16x16f16 r86, r196, r192, r86
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r194, r14, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r198, r182, r142
	mma_16x16x16f16 r78, r198, r190, r78
	mma_16x16x16f16 r142, r200, r184, r142
	mma_16x16x16f16 r78, r200, r192, r78
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r198, r15, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r202, r182, r134
	mma_16x16x16f16 r70, r202, r190, r70
	mma_16x16x16f16 r134, r204, r184, r134
	mma_16x16x16f16 r70, r204, r192, r70
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r202, r16, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r194, r182, r126
	mma_16x16x16f16 r62, r194, r190, r62
	mma_16x16x16f16 r126, r196, r184, r126
	mma_16x16x16f16 r62, r196, r192, r62
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r194, r17, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r198, r182, r118
	mma_16x16x16f16 r54, r198, r190, r54
	mma_16x16x16f16 r118, r200, r184, r118
	mma_16x16x16f16 r54, r200, r192, r54
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r198, r18, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r202, r182, r110
	mma_16x16x16f16 r46, r202, r190, r46
	mma_16x16x16f16 r110, r204, r184, r110
	mma_16x16x16f16 r46, r204, r192, r46
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r202, r27, 0x0
	add_i32 r27, 0x4000, r12
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r194, r182, r102
	mma_16x16x16f16 r38, r194, r190, r38
	mma_16x16x16f16 r102, r196, r184, r102
	mma_16x16x16f16 r38, r196, r192, r38
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r194, r27, 0x0
	add_i32 r27, 0x4000, r13
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r198, r182, r94
	mma_16x16x16f16 r30, r198, r190, r30
	mma_16x16x16f16 r94, r200, r184, r94
	mma_16x16x16f16 r30, r200, r192, r30
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r14
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r202, r182, r172
	mma_16x16x16f16 r90, r202, r190, r90
	mma_16x16x16f16 r172, r204, r184, r172
	mma_16x16x16f16 r90, r204, r192, r90
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r202, r27, 0x0
	add_i32 r27, 0x4000, r15
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r194, r182, r146
	mma_16x16x16f16 r82, r194, r190, r82
	mma_16x16x16f16 r146, r196, r184, r146
	mma_16x16x16f16 r82, r196, r192, r82
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r194, r27, 0x0
	add_i32 r27, 0x4000, r16
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r198, r182, r138
	mma_16x16x16f16 r74, r198, r190, r74
	mma_16x16x16f16 r138, r200, r184, r138
	mma_16x16x16f16 r74, r200, r192, r74
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r17
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r202, r182, r130
	mma_16x16x16f16 r66, r202, r190, r66
	mma_16x16x16f16 r130, r204, r184, r130
	mma_16x16x16f16 r66, r204, r192, r66
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r202, r27, 0x0
	add_i32 r27, 0x4000, r18
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r194, r182, r122
	mma_16x16x16f16 r58, r194, r190, r58
	mma_16x16x16f16 r122, r196, r184, r122
	mma_16x16x16f16 r58, r196, r192, r58
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r194, r27, 0x0
	add_i32 r27, 0x4000, r19
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r198, r182, r114
	mma_16x16x16f16 r50, r198, r190, r50
	mma_16x16x16f16 r114, r200, r184, r114
	mma_16x16x16f16 r50, r200, r192, r50
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r198, r19, 0x0
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r202, r182, r106
	mma_16x16x16f16 r42, r202, r190, r42
	mma_16x16x16f16 r106, r204, r184, r106
	mma_16x16x16f16 r42, r204, r192, r42
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r202, r20, 0x0
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r194, r182, r98
	mma_16x16x16f16 r34, r194, r190, r34
	mma_16x16x16f16 r98, r196, r184, r98
	mma_16x16x16f16 r34, r196, r192, r34
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r194, r21, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r198, r186, r168
	mma_16x16x16f16 r86, r198, r178, r86
	mma_16x16x16f16 r168, r200, r188, r168
	mma_16x16x16f16 r86, r200, r180, r86
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r198, r22, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r202, r186, r142
	mma_16x16x16f16 r78, r202, r178, r78
	mma_16x16x16f16 r142, r204, r188, r142
	mma_16x16x16f16 r78, r204, r180, r78
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r202, r23, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r194, r186, r134
	mma_16x16x16f16 r70, r194, r178, r70
	mma_16x16x16f16 r134, r196, r188, r134
	mma_16x16x16f16 r70, r196, r180, r70
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r194, r24, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r198, r186, r126
	mma_16x16x16f16 r62, r198, r178, r62
	mma_16x16x16f16 r126, r200, r188, r126
	mma_16x16x16f16 r62, r200, r180, r62
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r198, r25, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r202, r186, r118
	mma_16x16x16f16 r54, r202, r178, r54
	mma_16x16x16f16 r118, r204, r188, r118
	mma_16x16x16f16 r54, r204, r180, r54
	.loc	2 137 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:137:47
	lds_b128 r202, r26, 0x0
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r194, r186, r110
	mma_16x16x16f16 r46, r194, r178, r46
	mma_16x16x16f16 r110, r196, r188, r110
	mma_16x16x16f16 r46, r196, r180, r46
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r194, r27, 0x0
	add_i32 r27, 0x4000, r20
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r198, r186, r102
	mma_16x16x16f16 r38, r198, r178, r38
	mma_16x16x16f16 r102, r200, r188, r102
	mma_16x16x16f16 r38, r200, r180, r38
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r21
	.loc	2 143 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r202, r186, r94
	mma_16x16x16f16 r30, r202, r178, r30
	mma_16x16x16f16 r94, r204, r188, r94
	mma_16x16x16f16 r30, r204, r180, r30
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r202, r27, 0x0
	add_i32 r27, 0x4000, r22
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r194, r186, r172
	mma_16x16x16f16 r90, r194, r178, r90
	mma_16x16x16f16 r172, r196, r188, r172
	mma_16x16x16f16 r90, r196, r180, r90
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r194, r27, 0x0
	add_i32 r27, 0x4000, r23
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r198, r186, r146
	mma_16x16x16f16 r82, r198, r178, r82
	mma_16x16x16f16 r146, r200, r188, r146
	mma_16x16x16f16 r82, r200, r180, r82
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r198, r27, 0x0
	add_i32 r27, 0x4000, r24
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r202, r186, r138
	mma_16x16x16f16 r74, r202, r178, r74
	mma_16x16x16f16 r138, r204, r188, r138
	mma_16x16x16f16 r74, r204, r180, r74
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r202, r27, 0x0
	add_i32 r27, 0x4000, r25
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r194, r186, r130
	mma_16x16x16f16 r66, r194, r178, r66
	mma_16x16x16f16 r130, r196, r188, r130
	mma_16x16x16f16 r66, r196, r180, r66
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r194, r27, 0x0
	add_i32 r27, 0x4000, r26
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r198, r186, r122
	mma_16x16x16f16 r58, r198, r178, r58
	mma_16x16x16f16 r122, r200, r188, r122
	mma_16x16x16f16 r58, r200, r180, r58
	.loc	2 151 47                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:151:47
	lds_b128 r198, r27, 0x0
	.loc	2 157 56                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r202, r186, r114
	mma_16x16x16f16 r50, r202, r178, r50
	mma_16x16x16f16 r114, r204, r188, r114
	mma_16x16x16f16 r50, r204, r180, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r194, r186, r106
	mma_16x16x16f16 r42, r194, r178, r42
	mma_16x16x16f16 r106, r196, r188, r106
	mma_16x16x16f16 r42, r196, r180, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r198, r186, r98
	mma_16x16x16f16 r34, r198, r178, r34
	mma_16x16x16f16 r98, r200, r188, r98
	mma_16x16x16f16 r34, r200, r180, r34
LBB3_18:                                ; %if.end1033
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s36
	.loc	2 166 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:166:9
	sandn_b64 cmsk, xmsk, s34
	snop 0
	bra_cmsks LBB3_1
; %bb.19:                               ; %if.then1035
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp15:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp16:
	.p2align	5
LBB3_20:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	mad_u32 r28, r150, 2, s10
	.loc	2 57 56 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:57:56
	snop 1
	ldg_b128 r182, r28, 0x0
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:56:11
	and_xmsk s34, s0
	snop 0
	bra_xmskz LBB3_4
LBB3_21:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:11
	mad_u32 r28, r150, 2, s10
	add_co_u32 r28, 0x1000, r28
	addc_co_u32 r29, r29, 0
	.loc	2 57 56 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:57:56
	snop 1
	ldg_b128 r190, r28, 0x0
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:56:11
	and_xmsk s34, s6
	snop 0
	bra_xmskz LBB3_5
LBB3_22:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:11
	mad_u32 r28, r150, 2, s10
	add_co_u32 r28, 0x2000, r28
	addc_co_u32 r29, r29, 0
	.loc	2 57 56 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:57:56
	snop 1
	ldg_b128 r186, r28, 0x0
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:56:11
	and_xmsk s34, s0
	snop 0
	bra_xmsks LBB3_6
	bra LBB3_7
	.p2align	5
LBB3_23:                                ; %if.then569
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:11
	mad_u32 r152, r150, 2, s12
	.loc	2 113 56 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:113:56
	snop 1
	ldg_b128 r152, r152, 0x0
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:112:13
	and_xmsk s36, s0
	snop 0
	bra_xmskz LBB3_12
LBB3_24:                                ; %if.then569.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:13
	mad_u32 r156, r150, 2, s12
	add_co_u32 r156, 0x1000, r156
	addc_co_u32 r157, r157, 0
	.loc	2 113 56 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:113:56
	snop 1
	ldg_b128 r156, r156, 0x0
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:112:13
	and_xmsk s36, s6
	snop 0
	bra_xmskz LBB3_13
LBB3_25:                                ; %if.then569.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:13
	mad_u32 r160, r150, 2, s12
	add_co_u32 r160, 0x2000, r160
	addc_co_u32 r161, r161, 0
	.loc	2 113 56 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:113:56
	snop 1
	ldg_b128 r160, r160, 0x0
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:112:13
	and_xmsk s36, s0
	snop 0
	bra_xmsks LBB3_14
	bra LBB3_15
LBB3_26:                                ; %for.cond1040.preheader
	.loc	2 0 13 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:13
	shl_b32 r0, 2, r0
	sshl_b32 s5, 18, s8
	sshl_b32 s4, 14, s4
	and_b32 r3, 0x1e00, r1
	and_b32 r0, 0x80, r0
	sadd_co_i32 s4, s5, s4
	and_b32 r1, 0x78, r1
	and_b32 r2, r2, 4
	or3_b32 r0, s4, r3, r0
	or3_b32 r0, r0, r1, r2
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_43
; %bb.27:                               ; %if.end1227
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_44
LBB3_28:                                ; %if.end1227.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_45
LBB3_29:                                ; %if.end1227.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_46
LBB3_30:                                ; %if.end1227.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_47
LBB3_31:                                ; %if.end1227.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_48
LBB3_32:                                ; %if.end1227.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_49
LBB3_33:                                ; %if.end1227.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_50
LBB3_34:                                ; %if.end1227.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_51
LBB3_35:                                ; %if.end1227.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_52
LBB3_36:                                ; %if.end1227.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_53
LBB3_37:                                ; %if.end1227.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_54
LBB3_38:                                ; %if.end1227.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_55
LBB3_39:                                ; %if.end1227.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_56
LBB3_40:                                ; %if.end1227.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_57
LBB3_41:                                ; %if.end1227.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_58
LBB3_42:                                ; %if.end1227.15
	.loc	2 226 1 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:226:1
	snop 1
	endk
LBB3_43:                                ; %if.then1157
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r171
.Ltmp17:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s10, 0x3f800000
	csel_b32 r5, r4, 0, s8
	fmka_f32 r5, r171, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s8
	exp_f32 r5, r5
.Ltmp18:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s10, r3, s10
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r170
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r5
.Ltmp20:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r171, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r175
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s8
	fmka_f32 r6, r170, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s8
	exp_f32 r6, r6
.Ltmp22:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s10
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r5, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r169
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp24:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s10
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r170, r5
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s8
	fmka_f32 r7, r169, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s8
	exp_f32 r7, r7
.Ltmp26:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s10
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s10, r6, s10
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r168
.Ltmp27:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp28:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s10
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r169, r6
.Ltmp29:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s8
	fmka_f32 r4, r168, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s8
	exp_f32 r4, r4
.Ltmp30:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s10
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s10, r1, s10
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s10
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r168, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r172
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r173
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r174
.Ltmp31:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp32:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp33:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp34:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp35:
	.loc	2 223 332 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_28
LBB3_44:                                ; %if.then1157.1
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r145
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s10, 0x3f800000
	csel_b32 r5, r4, 0, s8
	fmka_f32 r5, r145, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s8
	exp_f32 r5, r5
.Ltmp37:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s10, r3, s10
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r144
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r5
.Ltmp39:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r145, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r149
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s8
	fmka_f32 r6, r144, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s8
	exp_f32 r6, r6
.Ltmp41:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s10
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r5, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r143
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp43:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s10
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r144, r5
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s8
	fmka_f32 r7, r143, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s8
	exp_f32 r7, r7
.Ltmp45:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s10
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s10, r6, s10
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r142
.Ltmp46:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp47:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s10
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r143, r6
.Ltmp48:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s8
	fmka_f32 r4, r142, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s8
	exp_f32 r4, r4
.Ltmp49:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s10
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s10, r1, s10
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s10
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r142, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r146
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r147
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r148
.Ltmp50:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp51:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp52:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp53:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp54:
	.loc	2 223 289 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:289
	snop 0
	or_b32 r3, 0x100, r0
	.loc	2 223 27 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	mad_i32 r6, r3, 2, s2
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_29
LBB3_45:                                ; %if.then1157.2
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r137
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s10, 0x3f800000
	csel_b32 r5, r4, 0, s8
	fmka_f32 r5, r137, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s8
	exp_f32 r5, r5
.Ltmp56:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s10, r3, s10
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r136
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r5
.Ltmp58:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r137, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r141
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s8
	fmka_f32 r6, r136, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s8
	exp_f32 r6, r6
.Ltmp60:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s10
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r5, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r135
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp62:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s10
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r136, r5
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s8
	fmka_f32 r7, r135, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s8
	exp_f32 r7, r7
.Ltmp64:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s10
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s10, r6, s10
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r134
.Ltmp65:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp66:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s10
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r135, r6
.Ltmp67:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s8
	fmka_f32 r4, r134, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s8
	exp_f32 r4, r4
.Ltmp68:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s10
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s10, r1, s10
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s10
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r134, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r138
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r139
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r140
.Ltmp69:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp70:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp71:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp72:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp73:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x2000, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_30
LBB3_46:                                ; %if.then1157.3
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r129
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s10, 0x3f800000
	csel_b32 r5, r4, 0, s8
	fmka_f32 r5, r129, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s8
	exp_f32 r5, r5
.Ltmp75:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s10, r3, s10
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r128
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r5
.Ltmp77:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r129, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r133
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s8
	fmka_f32 r6, r128, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s8
	exp_f32 r6, r6
.Ltmp79:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s10
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r5, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r127
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp81:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s10
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r128, r5
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s8
	fmka_f32 r7, r127, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s8
	exp_f32 r7, r7
.Ltmp83:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s10
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s10, r6, s10
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r126
.Ltmp84:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp85:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s10
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r127, r6
.Ltmp86:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s8
	fmka_f32 r4, r126, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s8
	exp_f32 r4, r4
.Ltmp87:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s10
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s10, r1, s10
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s10
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r126, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r130
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r131
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r132
.Ltmp88:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp89:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp90:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp91:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp92:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x2200, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_31
LBB3_47:                                ; %if.then1157.4
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r121
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s10, 0x3f800000
	csel_b32 r5, r4, 0, s8
	fmka_f32 r5, r121, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s8
	exp_f32 r5, r5
.Ltmp94:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s10, r3, s10
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r120
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r5
.Ltmp96:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r121, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r125
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s8
	fmka_f32 r6, r120, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s8
	exp_f32 r6, r6
.Ltmp98:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s10
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r5, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r119
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp100:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s10
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r120, r5
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s8
	fmka_f32 r7, r119, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s8
	exp_f32 r7, r7
.Ltmp102:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s10
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s10, r6, s10
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r118
.Ltmp103:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp104:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s10
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r119, r6
.Ltmp105:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s8
	fmka_f32 r4, r118, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s8
	exp_f32 r4, r4
.Ltmp106:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s10
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s10, r1, s10
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s10
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r118, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r122
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r123
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r124
.Ltmp107:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp108:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp109:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp110:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp111:
	.loc	2 223 151 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:151
	snop 0
	or_b32 r3, 0x2000, r0
	.loc	2 223 27 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	mad_i32 r6, r3, 2, s2
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_32
LBB3_48:                                ; %if.then1157.5
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r113
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s10, 0x3f800000
	csel_b32 r5, r4, 0, s8
	fmka_f32 r5, r113, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s8
	exp_f32 r5, r5
.Ltmp113:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s10, r3, s10
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r112
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r5
.Ltmp115:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r113, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r117
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s8
	fmka_f32 r6, r112, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s8
	exp_f32 r6, r6
.Ltmp117:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s10
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r5, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r111
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp119:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s10
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r112, r5
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s8
	fmka_f32 r7, r111, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s8
	exp_f32 r7, r7
.Ltmp121:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s10
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s10, r6, s10
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r110
.Ltmp122:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp123:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s10
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r111, r6
.Ltmp124:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s8
	fmka_f32 r4, r110, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s8
	exp_f32 r4, r4
.Ltmp125:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s10
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s10, r1, s10
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s10
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r110, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r114
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r115
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r116
.Ltmp126:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp127:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp128:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp129:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp130:
	.loc	2 223 289 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:289
	snop 0
	or_b32 r3, 0x2100, r0
	.loc	2 223 27 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	mad_i32 r6, r3, 2, s2
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_33
LBB3_49:                                ; %if.then1157.6
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r105
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s10, 0x3f800000
	csel_b32 r5, r4, 0, s8
	fmka_f32 r5, r105, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s8
	exp_f32 r5, r5
.Ltmp132:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s10
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s10, r3, s10
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r104
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r5
.Ltmp134:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s10
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r105, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r109
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s8
	fmka_f32 r6, r104, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s8
	exp_f32 r6, r6
.Ltmp136:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s10
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s10, r5, s10
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r103
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp138:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s10
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r104, r5
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s8
	fmka_f32 r7, r103, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s8
	exp_f32 r7, r7
.Ltmp140:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s10
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s10, r6, s10
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r102
.Ltmp141:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp142:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s10
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r103, r6
.Ltmp143:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s8
	fmka_f32 r4, r102, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s8
	exp_f32 r4, r4
.Ltmp144:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s10
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s10, r1, s10
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s10
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r102, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r106
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r107
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r108
.Ltmp145:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp146:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp147:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp148:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp149:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x6000, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_34
LBB3_50:                                ; %if.then1157.7
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r97
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r97, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp151:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r96
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp153:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r97, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r101
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r96, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp155:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r95
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp157:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r96, r5
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r95, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp159:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r94
.Ltmp160:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp161:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r95, r6
.Ltmp162:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r94, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp163:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r94, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r98
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r99
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r100
.Ltmp164:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp165:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp166:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp167:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp168:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x6200, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_35
LBB3_51:                                ; %if.then1157.8
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r89
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r89, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp170:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r88
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp172:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r89, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r93
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r88, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp174:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r87
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp176:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r88, r5
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r87, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp178:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r86
.Ltmp179:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp180:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r87, r6
.Ltmp181:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r86, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp182:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r86, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r90
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r91
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r92
.Ltmp183:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp184:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp185:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp186:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp187:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x1000, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_36
LBB3_52:                                ; %if.then1157.9
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r81
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r81, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp189:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r80
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp191:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r81, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r85
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r80, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp193:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r79
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp195:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r80, r5
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r79, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp197:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r78
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp199:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r79, r6
.Ltmp200:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r78, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp201:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r78, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r82
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r83
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r84
.Ltmp202:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp203:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp204:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp205:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp206:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x1200, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_37
LBB3_53:                                ; %if.then1157.10
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r73
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r73, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp208:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r72
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp210:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r73, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r77
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r72, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp212:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r71
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp214:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r72, r5
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r71, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp216:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r70
.Ltmp217:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp218:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r71, r6
.Ltmp219:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r70, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp220:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r70, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r74
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r75
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r76
.Ltmp221:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp222:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp223:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp224:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp225:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x3000, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_38
LBB3_54:                                ; %if.then1157.11
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r65
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r65, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp227:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r64
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp229:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r65, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r69
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r64, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp231:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r63
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp233:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r64, r5
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r63, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp235:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r62
.Ltmp236:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp237:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r63, r6
.Ltmp238:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r62, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp239:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r62, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r66
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r67
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r68
.Ltmp240:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp241:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp242:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp243:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp244:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x3200, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_39
LBB3_55:                                ; %if.then1157.12
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r57
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r57, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp246:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r56
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp248:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r57, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r61
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r56, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp250:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r55
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp252:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r56, r5
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r55, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp254:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r54
.Ltmp255:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp256:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r55, r6
.Ltmp257:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r54, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp258:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r54, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r58
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r59
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r60
.Ltmp259:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp260:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp261:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp262:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp263:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x5000, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_40
LBB3_56:                                ; %if.then1157.13
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r49
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r49, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp265:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r48
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp267:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r49, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r53
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r48, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp269:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r47
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp271:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r48, r5
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r47, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp273:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r46
.Ltmp274:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp275:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r47, r6
.Ltmp276:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r46, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp277:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r46, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r50
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r51
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r52
.Ltmp278:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp279:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp280:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp281:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp282:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x5200, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_41
LBB3_57:                                ; %if.then1157.14
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r41
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s8, 0x3f800000
	csel_b32 r5, r4, 0, s6
	fmka_f32 r5, r41, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s6
	exp_f32 r5, r5
.Ltmp284:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s8
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s8, r3, s8
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r40
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r5
.Ltmp286:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s8
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r41, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r45
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s6
	fmka_f32 r6, r40, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s6
	exp_f32 r6, r6
.Ltmp288:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s8
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s8, r5, s8
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r39
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp290:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s8
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r40, r5
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s6
	fmka_f32 r7, r39, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s6
	exp_f32 r7, r7
.Ltmp292:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s8
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s8, r6, s8
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r38
.Ltmp293:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp294:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s8
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r39, r6
.Ltmp295:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s6
	fmka_f32 r4, r38, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s6
	exp_f32 r4, r4
.Ltmp296:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s8
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s8, r1, s8
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s8
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r38, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r42
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r43
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r44
.Ltmp297:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp298:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp299:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp300:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp301:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x7000, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_42
LBB3_58:                                ; %if.then1157.15
	.loc	2 194 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r33
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r33, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp303:
	.loc	2 202 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:202:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_scale_f32 r5, r3, r3, s4
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s4, r3, s4
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 193 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:193:27
	mul_f32 r5, 0xbfb8aa3b, r32
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp305:
	.loc	2 206 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:206:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 210 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:210:20
	mul_f32 r3, r33, r3
	.loc	2 220 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:220:24
	mul_f32 r3, r3, r37
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r32, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp307:
	.loc	2 201 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:201:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_scale_f32 r6, r5, r5, s4
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s4, r5, s4
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 192 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:192:27
	mul_f32 r6, 0xbfb8aa3b, r31
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp309:
	.loc	2 205 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:205:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 209 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:209:20
	mul_f32 r5, r32, r5
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r31, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp311:
	.loc	2 200 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:200:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_scale_f32 r7, r6, r6, s4
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s4, r6, s4
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 191 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:191:27
	mul_f32 r7, 0xbfb8aa3b, r30
.Ltmp312:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp313:
	.loc	2 204 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:204:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 208 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:208:20
	mul_f32 r6, r31, r6
.Ltmp314:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r30, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp315:
	.loc	2 199 26                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:199:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:203:24
	div_scale_f32 r4, r1, r1, s4
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s4, r1, s4
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s4
	.loc	2 207 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:207:20
	mul_f32 r1, r30, r1
	.loc	2 217 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:217:24
	mul_f32 r1, r1, r34
	.loc	2 218 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:218:24
	mul_f32 r2, r6, r35
	.loc	2 219 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:219:24
	mul_f32 r4, r5, r36
.Ltmp316:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp317:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp318:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp319:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp320:
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 332 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	shl_b32 r0, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	add_co_u32 r6, 0x7200, r6
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 332                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:223:332
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 226 1 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:226:1
	snop 2
	endk
.Ltmp321:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 29
		.macahca_streg_size 3
		.macahca_priority 0
		.macahca_float_mode 240
		.macahca_privilege 0
		.macahca_debug_mode 0
		.macahca_ieee_mode 1
		.macahca_bulky_mode 0
		.macahca_fp16_overflow_mode 0
		.macahca_perf_on 0
		.macahca_priv_segm_on 0
		.macahca_user_streg_count 4
		.macahca_user_trap_handler_on 0
		.macahca_streg_block_id_x_on 1
		.macahca_streg_block_id_y_on 1
		.macahca_streg_block_id_z_on 0
		.macahca_streg_block_info_on 0
		.macahca_enable_mtreg_thread_id 0
		.macahca_exception_address_watch_on 0
		.macahca_exception_memory_violation_on 0
		.macahca_bsm_size 0
		.macahca_exception_on 0
		.macahca_streg_kernarg_segm_ptr_on 1
		.macahca_streg_dispatch_ptr_on 0
		.macahca_streg_prvt_init_on 0
		.macahca_streg_prvt_segm_size_on 0
		.macahca_unorder_dispatch_on 0
		.macahca_warps_per_dpc 416
		.macahca_blocks_per_ap 16
	.end_macahca_kernel
	.text
	.fill 4, 8, 0x2320
	.p2align 8
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 24240
; NumMTRegsForWarps/PEU: 226
; NumSTRegsForWarps/PEU: 42
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_2         ; -- Begin function kernel_kernel_2
	.globl	kernel_kernel_2
	.p2align	8
	.type	kernel_kernel_2,@function
kernel_kernel_2:                        ; @kernel_kernel_2
.Lfunc_begin4:
	.loc	2 228 0                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:228:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s20, s5
.Ltmp322:
	.loc	2 238 19 prologue_end           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:238:19
	smov_b32 s21, 0
	sshl_b64 s2, 2, s20
	ldu_b256 s8, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shr_b32 r4, 1, r1
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	ldu_b32 s22, s2, 0x0
	and_b32 r0, r1, 15
	and_b32 r2, 0x1e0, r4
	or_b32 r5, r2, r0
	shl_b64 r156, 0, 0
	shl_b32 r28, 3, r1
	shl_b64 r154, 0, r156
	arrive slcnt(0)
	sashr_i32 s23, 31, s22
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:239:20
	sshl_b64 s0, 2, s22
	sadd_co_u32 s2, s8, s0
	saddc_co_u32 s3, s9, s1
	.loc	2 240 19                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:240:19
	sadd_co_u32 s24, s44, s0
	saddc_co_u32 s25, s45, s1
	.loc	2 241 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:241:22
	sadd_co_u32 s0, s46, s0
	saddc_co_u32 s1, s47, s1
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:239:20
	ldu_b32 s2, s2, 0x0
	.loc	2 241 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:241:22
	ldu_b32 s0, s0, 0x0
	sshl_b32 s1, 7, s5
	sshl_b32 s3, 18, s5
	or_b32 r3, r28, s3
	arrive slcnt(0)
	ssub_co_i32 s2, s2, s1
	sadd_co_i32 s5, s2, s0
	.loc	2 253 106                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:253:106
	cmp_ge_i32 s8, r5, s5
	cmp_lt_i32 s18, r5, s5
	.loc	2 253 9 is_stmt 0               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:253:9
	snop 3
	and_xmsk s6, s18
	snop 0
	bra_xmskz LBB4_2
; %bb.1:                                ; %if.then
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	mad_u32 r6, r3, 2, s14
	.loc	2 254 60 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:254:60
	snop 1
	ldg_b128 r154, r6, 0x0
LBB4_2:                                 ; %for.inc58
	.loc	2 0 60 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:60
	sor_b64 xmsk, xmsk, s6
	.loc	2 253 77 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:253:77
	or_b32 r5, r5, 16
	.loc	2 253 106 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:253:106
	cmp_ge_i32 s6, r5, s5
	cmp_lt_i32 s16, r5, s5
	shl_b64 r164, 0, 0
	shl_b64 r162, 0, r164
	.loc	2 253 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:253:9
	snop 1
	and_xmsk s26, s16
	snop 0
	bra_xmskz LBB4_4
; %bb.3:                                ; %if.then.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	mad_u32 r6, r3, 2, s14
	add_co_u32 r6, 0x1000, r6
	addc_co_u32 r7, r7, 0
	.loc	2 254 60 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:254:60
	snop 1
	ldg_b128 r162, r6, 0x0
LBB4_4:                                 ; %for.inc58.1
	.loc	2 0 60 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:60
	sor_b64 xmsk, xmsk, s26
	shl_b64 r168, 0, 0
	shl_b64 r166, 0, r168
	.loc	2 253 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:253:9
	and_xmsk s26, s18
	snop 0
	bra_xmskz LBB4_6
; %bb.5:                                ; %if.then.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	mad_u32 r6, r3, 2, s14
	add_co_u32 r6, 0x2000, r6
	addc_co_u32 r7, r7, 0
	.loc	2 254 60 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:254:60
	snop 1
	ldg_b128 r166, r6, 0x0
LBB4_6:                                 ; %for.inc58.2
	.loc	2 0 60 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:60
	sor_b64 xmsk, xmsk, s26
	shl_b64 r176, 0, 0
	shl_b64 r174, 0, r176
	.loc	2 253 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:253:9
	and_xmsk s26, s16
	snop 0
	bra_xmskz LBB4_8
; %bb.7:                                ; %if.then.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	mad_u32 r6, r3, 2, s14
	add_co_u32 r6, 0x3000, r6
	addc_co_u32 r7, r7, 0
	.loc	2 254 60 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:254:60
	snop 1
	ldg_b128 r174, r6, 0x0
LBB4_8:                                 ; %for.inc58.3
	.loc	2 0 60 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:60
	sor_b64 xmsk, xmsk, s26
	and_b32 r5, r28, 32
	and_b32 r6, r28, 16
	shl_b32 r3, 8, r1
	add_u32 r5, r5, r1
	add_u32 r6, r6, r1
	and_b32 r29, 0x3f800, r3
	and_b32 r3, 0x1fc0, r28
	mul_u24 r7, r1, 9
	and_b32 r5, r5, 32
	and_b32 r6, r6, 16
	and_or_b32 r3, r7, 8, r3
	or3_b32 r5, r3, r5, r6
	shr_b32 r6, 5, r1
	sshl_b32 s36, 19, s4
	add_shl_u32 r4, r6, r4, 4
	smul_i32 s28, 0xe00000, s22
	sadd_co_u32 s22, 0x4000, s14
	saddc_co_u32 s23, s15, 0
	ldu_b32 s2, s24, 0x0
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r1
	sadd_co_u32 s26, 0x80, s40
	add_shl_u32 r13, r4, r1, 3
	shl_b32 r3, 6, r1
	and_b32 r8, 0x380, r1
	shl_b32 r14, 3, r1
	and_b32 r19, 0x3c0, r3
	saddc_co_u32 s27, s41, 0
	and_b32 r20, r14, 32
	cmp_lt_i32 s24, r2, s5
	cmp_gt_u32 s30, 0x80, r1
	cmp_eq_u32 s34, 0x80, r8
	and_or_b32 r27, r13, 8, r12
	sadd_co_u32 s14, 0x8000, s14
	or_b32 r21, r27, r19
	or_b32 r22, 0x400, r19
	or_b32 r23, r27, r20
	or_b32 r24, 0x800, r19
	or_b32 r25, 0xc00, r19
	or_b32 r26, 0x1000, r19
	or_b32 r31, 0x1400, r19
	or_b32 r32, 0x1800, r19
	or_b32 r33, 0x1c00, r19
	xor_b32 r34, r20, 32
	shl_b64 r98, 0, 0
	shl_add_u32 r4, 1, r5, 0
	shl_b64 r186, 0, 0
	or_b32 r12, r21, r20
	or_b32 r20, r21, r34
	or_b32 r13, r23, r22
	or_b32 r14, r23, r24
	or_b32 r15, r23, r25
	or_b32 r16, r23, r26
	or_b32 r17, r23, r31
	or_b32 r18, r23, r32
	or_b32 r19, r23, r33
	or3_b32 r23, r27, r25, r34
	or3_b32 r21, r27, r22, r34
	or3_b32 r22, r27, r24, r34
	or3_b32 r24, r27, r26, r34
	or3_b32 r25, r27, r31, r34
	or3_b32 r26, r27, r32, r34
	or3_b32 r27, r27, r33, r34
	and_b32 r30, r28, 56
	saddc_co_u32 s15, s15, 0
	.loc	2 257 3 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:257:3
	add_u32 r28, s3, r28
	sadd_co_i32 s3, s28, s36
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:0
	shl_b64 r100, 0, 0
	shl_b64 r106, 0, r98
	shl_b64 r110, 0, r98
	shl_b64 r114, 0, r98
	shl_b64 r118, 0, r98
	shl_b64 r122, 0, r98
	shl_b64 r126, 0, r98
	shl_b64 r130, 0, r98
	shl_b64 r134, 0, r98
	shl_b64 r138, 0, r98
	shl_b64 r142, 0, r98
	shl_b64 r146, 0, r98
	shl_b64 r150, 0, r98
	shl_b64 r158, 0, r98
	shl_b64 r170, 0, r98
	shl_b64 r178, 0, r98
	shl_b64 r38, 0, r98
	shl_b64 r42, 0, r98
	shl_b64 r46, 0, r98
	shl_b64 r50, 0, r98
	shl_b64 r54, 0, r98
	shl_b64 r58, 0, r98
	shl_b64 r62, 0, r98
	shl_b64 r66, 0, r98
	shl_b64 r70, 0, r98
	shl_b64 r74, 0, r98
	shl_b64 r78, 0, r98
	shl_b64 r82, 0, r98
	shl_b64 r86, 0, r98
	shl_b64 r90, 0, r98
	shl_b64 r94, 0, r98
	shl_b64 r102, 0, r98
	shr_b32 r3, 2, r1
	add_u32 r5, 0x1000, r4
	add_u32 r6, 0x2000, r4
	add_u32 r7, 0x3000, r4
	add_u32 r8, 0x4000, r4
	add_u32 r9, 0x5000, r4
	add_u32 r10, 0x6000, r4
	add_u32 r11, 0x7000, r4
	shl_add_u32 r12, 1, r12, 0
	shl_add_u32 r13, 1, r13, 0
	shl_add_u32 r14, 1, r14, 0
	shl_add_u32 r15, 1, r15, 0
	shl_add_u32 r16, 1, r16, 0
	shl_add_u32 r17, 1, r17, 0
	shl_add_u32 r18, 1, r18, 0
	shl_add_u32 r19, 1, r19, 0
	shl_add_u32 r20, 1, r20, 0
	shl_add_u32 r21, 1, r21, 0
	shl_add_u32 r22, 1, r22, 0
	shl_add_u32 r23, 1, r23, 0
	shl_add_u32 r24, 1, r24, 0
	shl_add_u32 r25, 1, r25, 0
	shl_add_u32 r26, 1, r26, 0
	shl_add_u32 r27, 1, r27, 0
	.loc	2 257 3                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:257:3
	or3_b32 r182, s3, r29, r30
	smov_b64 s36, 0
	shl_b64 r108, 0, r100
	shl_b64 r112, 0, r100
	shl_b64 r116, 0, r100
	shl_b64 r120, 0, r100
	shl_b64 r124, 0, r100
	shl_b64 r128, 0, r100
	shl_b64 r132, 0, r100
	shl_b64 r136, 0, r100
	shl_b64 r140, 0, r100
	shl_b64 r144, 0, r100
	shl_b64 r148, 0, r100
	shl_b64 r152, 0, r100
	shl_b64 r160, 0, r100
	shl_b64 r172, 0, r100
	shl_b64 r180, 0, r100
	shl_b64 r40, 0, r100
	shl_b64 r44, 0, r100
	shl_b64 r48, 0, r100
	shl_b64 r52, 0, r100
	shl_b64 r56, 0, r100
	shl_b64 r60, 0, r100
	shl_b64 r64, 0, r100
	shl_b64 r184, 0, r186
	shl_b64 r190, 0, r186
	shl_b64 r188, 0, r186
	shl_b64 r198, 0, r186
	shl_b64 r196, 0, r186
	shl_b64 r194, 0, r186
	shl_b64 r192, 0, r186
	shl_b64 r68, 0, r100
	shl_b64 r72, 0, r100
	shl_b64 r76, 0, r100
	shl_b64 r80, 0, r100
	shl_b64 r84, 0, r100
	shl_b64 r88, 0, r100
	shl_b64 r92, 0, r100
	shl_b64 r96, 0, r100
	shl_b64 r104, 0, r100
	bra LBB4_10
	.p2align	5
LBB4_9:                                 ; %for.inc689
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 257 31                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:257:31
	sadd_co_u32 s36, 0x80, s36
	saddc_co_u32 s37, s37, 0
	scmp_eq_u64 0x800, s36
	add_u32 r28, 0x4000, r28
	.loc	2 257 3                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:257:3
	bra_smsks LBB4_56
LBB4_10:                                ; %for.cond66.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 259 5 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:259:5
	add_co_u32 r29, r182, s36
	.loc	2 260 11                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:260:11
	and_xmsk s38, s30
	snop 0
	bra_xmskz LBB4_17
; %bb.11:                               ; %for.body77.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s18
	snop 0
	bra_xmsks LBB4_44
; %bb.12:                               ; %for.inc110
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s16
	snop 0
	bra_xmsks LBB4_45
LBB4_13:                                ; %for.inc110.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s18
	snop 0
	bra_xmsks LBB4_46
LBB4_14:                                ; %for.inc110.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s16
	snop 0
	bra_xmskz LBB4_16
LBB4_15:                                ; %if.then92.3
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	or_b32 r30, 0x1800, r28
	mad_u32 r30, r30, 2, s22
	.loc	2 263 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:263:70
	snop 1
	ldg_b128 r184, r30, 0x0
LBB4_16:                                ; %Flow288
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 70 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:70
	sor_b64 xmsk, xmsk, s42
LBB4_17:                                ; %Flow289
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s38
	.loc	2 269 379 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:379
	mad_i32 r32, r29, 2, s40
	add_u32 r30, 0x10000, r29
	add_u32 r31, 0x20000, r29
	.loc	2 269 362 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:362
	ldg_b128 r200, r32, 0x0
	.loc	2 269 379                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:379
	add_u32 r32, 0x30000, r29
	mad_i32 r34, r30, 2, s40
	mad_i32 r204, r31, 2, s40
	mad_i32 r206, r32, 2, s40
	.loc	2 269 362                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:362
	ldg_b128 r34, r34, 0x0
	ldg_b128 r208, r204, 0x0
	ldg_b128 r204, r206, 0x0
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r200
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r34
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r208
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r204
	.loc	2 260 11 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:260:11
	and_xmsk s38, s34
	snop 0
	bra_xmskz LBB4_24
; %bb.18:                               ; %for.body77.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s18
	snop 0
	bra_xmsks LBB4_47
; %bb.19:                               ; %for.inc110.11273
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s16
	snop 0
	bra_xmsks LBB4_48
LBB4_20:                                ; %for.inc110.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s18
	snop 0
	bra_xmsks LBB4_49
LBB4_21:                                ; %for.inc110.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s16
	snop 0
	bra_xmskz LBB4_23
LBB4_22:                                ; %if.then92.3.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	or_b32 r33, 0x1800, r28
	mad_u32 r34, r33, 2, s22
	.loc	2 263 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:263:70
	snop 1
	ldg_b128 r184, r34, 0x0
LBB4_23:                                ; %Flow286
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 70 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:70
	sor_b64 xmsk, xmsk, s42
LBB4_24:                                ; %Flow287
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s38
	.loc	2 269 379 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:379
	add_u32 r33, 0x40000, r29
	mad_i32 r36, r33, 2, s40
	add_u32 r34, 0x50000, r29
	mad_i32 r200, r34, 2, s40
	.loc	2 269 362 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:362
	ldg_b128 r202, r36, 0x0
	.loc	2 269 379                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:379
	add_u32 r36, 0x70000, r29
	add_u32 r35, 0x60000, r29
	.loc	2 269 362                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:362
	ldg_b128 r206, r200, 0x0
	.loc	2 269 379                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:379
	mad_i32 r200, r35, 2, s40
	mad_i32 r210, r36, 2, s40
	.loc	2 269 362                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:269:362
	snop 0
	ldg_b128 r212, r200, 0x0
	ldg_b128 r216, r210, 0x0
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r202
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r206
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r212
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r216
.Ltmp323:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp324:
	.loc	2 273 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:273:9
	and_xmsk s38, s24
	snop 0
	bra_xmskz LBB4_26
; %bb.25:                               ; %for.cond195.preheader.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r200, r12, 0x0
	lds_b128 r204, r13, 0x0
	lds_b128 r208, r14, 0x0
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	add_i32 r37, 0x4000, r12
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r200, r154, r178
	mma_16x16x16f16 r130, r200, r162, r130
	mma_16x16x16f16 r178, r202, r156, r178
	mma_16x16x16f16 r130, r202, r164, r130
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r200, r15, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r204, r154, r170
	mma_16x16x16f16 r126, r204, r162, r126
	mma_16x16x16f16 r170, r206, r156, r170
	mma_16x16x16f16 r126, r206, r164, r126
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r204, r16, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r208, r154, r158
	mma_16x16x16f16 r122, r208, r162, r122
	mma_16x16x16f16 r158, r210, r156, r158
	mma_16x16x16f16 r122, r210, r164, r122
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r208, r17, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r200, r154, r150
	mma_16x16x16f16 r118, r200, r162, r118
	mma_16x16x16f16 r150, r202, r156, r150
	mma_16x16x16f16 r118, r202, r164, r118
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r200, r18, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r204, r154, r146
	mma_16x16x16f16 r114, r204, r162, r114
	mma_16x16x16f16 r146, r206, r156, r146
	mma_16x16x16f16 r114, r206, r164, r114
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r204, r19, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r208, r154, r142
	mma_16x16x16f16 r110, r208, r162, r110
	mma_16x16x16f16 r142, r210, r156, r142
	mma_16x16x16f16 r110, r210, r164, r110
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r13
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r200, r154, r138
	mma_16x16x16f16 r106, r200, r162, r106
	mma_16x16x16f16 r138, r202, r156, r138
	mma_16x16x16f16 r106, r202, r164, r106
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r200, r37, 0x0
	add_i32 r37, 0x4000, r14
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r204, r154, r134
	mma_16x16x16f16 r98, r204, r162, r98
	mma_16x16x16f16 r134, r206, r156, r134
	mma_16x16x16f16 r98, r206, r164, r98
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r204, r37, 0x0
	add_i32 r37, 0x4000, r15
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r208, r154, r102
	mma_16x16x16f16 r66, r208, r162, r66
	mma_16x16x16f16 r102, r210, r156, r102
	mma_16x16x16f16 r66, r210, r164, r66
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r16
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r200, r154, r94
	mma_16x16x16f16 r62, r200, r162, r62
	mma_16x16x16f16 r94, r202, r156, r94
	mma_16x16x16f16 r62, r202, r164, r62
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r200, r37, 0x0
	add_i32 r37, 0x4000, r17
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r204, r154, r90
	mma_16x16x16f16 r58, r204, r162, r58
	mma_16x16x16f16 r90, r206, r156, r90
	mma_16x16x16f16 r58, r206, r164, r58
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r204, r37, 0x0
	add_i32 r37, 0x4000, r18
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r208, r154, r86
	mma_16x16x16f16 r54, r208, r162, r54
	mma_16x16x16f16 r86, r210, r156, r86
	mma_16x16x16f16 r54, r210, r164, r54
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r19
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r200, r154, r82
	mma_16x16x16f16 r50, r200, r162, r50
	mma_16x16x16f16 r82, r202, r156, r82
	mma_16x16x16f16 r50, r202, r164, r50
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r200, r37, 0x0
	add_i32 r37, 0x4000, r20
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r204, r154, r78
	mma_16x16x16f16 r46, r204, r162, r46
	mma_16x16x16f16 r78, r206, r156, r78
	mma_16x16x16f16 r46, r206, r164, r46
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r204, r20, 0x0
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r208, r154, r74
	mma_16x16x16f16 r42, r208, r162, r42
	mma_16x16x16f16 r74, r210, r156, r74
	mma_16x16x16f16 r42, r210, r164, r42
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r208, r21, 0x0
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r200, r154, r70
	mma_16x16x16f16 r38, r200, r162, r38
	mma_16x16x16f16 r70, r202, r156, r70
	mma_16x16x16f16 r38, r202, r164, r38
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r200, r22, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r204, r166, r178
	mma_16x16x16f16 r130, r204, r174, r130
	mma_16x16x16f16 r178, r206, r168, r178
	mma_16x16x16f16 r130, r206, r176, r130
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r204, r23, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r208, r166, r170
	mma_16x16x16f16 r126, r208, r174, r126
	mma_16x16x16f16 r170, r210, r168, r170
	mma_16x16x16f16 r126, r210, r176, r126
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r208, r24, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r200, r166, r158
	mma_16x16x16f16 r122, r200, r174, r122
	mma_16x16x16f16 r158, r202, r168, r158
	mma_16x16x16f16 r122, r202, r176, r122
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r200, r25, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r204, r166, r150
	mma_16x16x16f16 r118, r204, r174, r118
	mma_16x16x16f16 r150, r206, r168, r150
	mma_16x16x16f16 r118, r206, r176, r118
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r204, r26, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r208, r166, r146
	mma_16x16x16f16 r114, r208, r174, r114
	mma_16x16x16f16 r146, r210, r168, r146
	mma_16x16x16f16 r114, r210, r176, r114
	.loc	2 276 43                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:276:43
	lds_b128 r208, r27, 0x0
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r200, r166, r142
	mma_16x16x16f16 r110, r200, r174, r110
	mma_16x16x16f16 r142, r202, r168, r142
	mma_16x16x16f16 r110, r202, r176, r110
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r200, r37, 0x0
	add_i32 r37, 0x4000, r21
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r204, r166, r138
	mma_16x16x16f16 r106, r204, r174, r106
	mma_16x16x16f16 r138, r206, r168, r138
	mma_16x16x16f16 r106, r206, r176, r106
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r204, r37, 0x0
	add_i32 r37, 0x4000, r22
	.loc	2 282 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:282:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r208, r166, r134
	mma_16x16x16f16 r98, r208, r174, r98
	mma_16x16x16f16 r134, r210, r168, r134
	mma_16x16x16f16 r98, r210, r176, r98
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r23
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r200, r166, r102
	mma_16x16x16f16 r66, r200, r174, r66
	mma_16x16x16f16 r102, r202, r168, r102
	mma_16x16x16f16 r66, r202, r176, r66
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r200, r37, 0x0
	add_i32 r37, 0x4000, r24
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r204, r166, r94
	mma_16x16x16f16 r62, r204, r174, r62
	mma_16x16x16f16 r94, r206, r168, r94
	mma_16x16x16f16 r62, r206, r176, r62
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r204, r37, 0x0
	add_i32 r37, 0x4000, r25
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r208, r166, r90
	mma_16x16x16f16 r58, r208, r174, r58
	mma_16x16x16f16 r90, r210, r168, r90
	mma_16x16x16f16 r58, r210, r176, r58
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r208, r37, 0x0
	add_i32 r37, 0x4000, r26
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r200, r166, r86
	mma_16x16x16f16 r54, r200, r174, r54
	mma_16x16x16f16 r86, r202, r168, r86
	mma_16x16x16f16 r54, r202, r176, r54
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r200, r37, 0x0
	add_i32 r37, 0x4000, r27
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r204, r166, r82
	mma_16x16x16f16 r50, r204, r174, r50
	mma_16x16x16f16 r82, r206, r168, r82
	mma_16x16x16f16 r50, r206, r176, r50
	.loc	2 290 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:290:45
	lds_b128 r204, r37, 0x0
	.loc	2 296 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:296:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r208, r166, r78
	mma_16x16x16f16 r46, r208, r174, r46
	mma_16x16x16f16 r78, r210, r168, r78
	mma_16x16x16f16 r46, r210, r176, r46
	arrive bsmcnt(1)
	mma_16x16x16f16 r74, r200, r166, r74
	mma_16x16x16f16 r42, r200, r174, r42
	mma_16x16x16f16 r74, r202, r168, r74
	mma_16x16x16f16 r42, r202, r176, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r70, r204, r166, r70
	mma_16x16x16f16 r38, r204, r174, r38
	mma_16x16x16f16 r70, r206, r168, r70
	mma_16x16x16f16 r38, r206, r176, r38
LBB4_26:                                ; %if.end373
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 58 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:58
	sor_b64 xmsk, xmsk, s38
.Ltmp325:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	mov_b32 r200, 0x780
	mov_b32 r201, 0
	cmp_lg_u64 s38, s36, r200
.Ltmp326:
	.loc	2 308 11                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:308:11
	snop 3
	sand_b64 s44, s30, s38
	and_xmsk s42, s44
	snop 0
	bra_xmskz LBB4_33
; %bb.27:                               ; %for.body387.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s44, s18
	snop 0
	bra_xmsks LBB4_50
; %bb.28:                               ; %for.inc420
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s44
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s44, s16
	snop 0
	bra_xmsks LBB4_51
LBB4_29:                                ; %for.inc420.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s44
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s44, s18
	snop 0
	bra_xmsks LBB4_52
LBB4_30:                                ; %for.inc420.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s44
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s44, s16
	snop 0
	bra_xmskz LBB4_32
LBB4_31:                                ; %if.then402.3
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	or_b32 r37, 0x1800, r28
	mad_u32 r174, r37, 2, s14
	.loc	2 312 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:312:70
	snop 1
	ldg_b128 r174, r174, 0x0
LBB4_32:                                ; %Flow284
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 70 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:70
	sor_b64 xmsk, xmsk, s44
LBB4_33:                                ; %Flow285
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s42
	.loc	2 319 381 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:319:381
	mad_i32 r200, r29, 2, s26
	mad_i32 r202, r30, 2, s26
	mad_i32 r30, r31, 2, s26
	mad_i32 r208, r32, 2, s26
	.loc	2 319 364 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:319:364
	ldg_b128 r204, r200, 0x0
	ldg_b128 r200, r202, 0x0
	ldg_b128 r210, r30, 0x0
	ldg_b128 r214, r208, 0x0
	.loc	2 308 11 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:308:11
	sand_b64 s42, s34, s38
	.loc	2 319 364                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:319:364
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r204
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r200
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r210
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r214
	.loc	2 308 11                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:308:11
	and_xmsk s38, s42
	snop 0
	bra_xmskz LBB4_40
; %bb.34:                               ; %for.body387.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s42, s18
	snop 0
	bra_xmsks LBB4_53
; %bb.35:                               ; %for.inc420.11355
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s42
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s42, s16
	snop 0
	bra_xmsks LBB4_54
LBB4_36:                                ; %for.inc420.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s42
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s42, s18
	snop 0
	bra_xmsks LBB4_55
LBB4_37:                                ; %for.inc420.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s42
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s42, s16
	snop 0
	bra_xmskz LBB4_39
LBB4_38:                                ; %if.then402.3.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17                          ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	or_b32 r29, 0x1800, r28
	mad_u32 r30, r29, 2, s14
	.loc	2 312 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:312:70
	snop 1
	ldg_b128 r174, r30, 0x0
LBB4_39:                                ; %Flow282
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 70 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:70
	sor_b64 xmsk, xmsk, s42
LBB4_40:                                ; %Flow283
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s38
	.loc	2 319 381 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:319:381
	mad_i32 r30, r33, 2, s26
	mad_i32 r32, r34, 2, s26
	mad_i32 r34, r35, 2, s26
	mad_i32 r36, r36, 2, s26
	.loc	2 319 364 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:319:364
	ldg_b128 r200, r30, 0x0
	ldg_b128 r30, r32, 0x0
	ldg_b128 r204, r34, 0x0
	ldg_b128 r34, r36, 0x0
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r200
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r30
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r204
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r34
.Ltmp327:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp328:
	.loc	2 323 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:323:9
	and_xmsk s38, s24
	snop 0
	bra_xmskz LBB4_42
; %bb.41:                               ; %for.cond507.preheader.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r30, r12, 0x0
	lds_b128 r34, r13, 0x0
	lds_b128 r200, r14, 0x0
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	add_i32 r29, 0x4000, r12
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r30, r192, r178
	mma_16x16x16f16 r130, r30, r196, r130
	mma_16x16x16f16 r178, r32, r194, r178
	mma_16x16x16f16 r130, r32, r198, r130
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r30, r15, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r34, r192, r170
	mma_16x16x16f16 r126, r34, r196, r126
	mma_16x16x16f16 r170, r36, r194, r170
	mma_16x16x16f16 r126, r36, r198, r126
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r34, r16, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r200, r192, r158
	mma_16x16x16f16 r122, r200, r196, r122
	mma_16x16x16f16 r158, r202, r194, r158
	mma_16x16x16f16 r122, r202, r198, r122
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r200, r17, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r30, r192, r150
	mma_16x16x16f16 r118, r30, r196, r118
	mma_16x16x16f16 r150, r32, r194, r150
	mma_16x16x16f16 r118, r32, r198, r118
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r30, r18, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r34, r192, r146
	mma_16x16x16f16 r114, r34, r196, r114
	mma_16x16x16f16 r146, r36, r194, r146
	mma_16x16x16f16 r114, r36, r198, r114
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r34, r19, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r200, r192, r142
	mma_16x16x16f16 r110, r200, r196, r110
	mma_16x16x16f16 r142, r202, r194, r142
	mma_16x16x16f16 r110, r202, r198, r110
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r200, r29, 0x0
	add_i32 r29, 0x4000, r13
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r30, r192, r138
	mma_16x16x16f16 r106, r30, r196, r106
	mma_16x16x16f16 r138, r32, r194, r138
	mma_16x16x16f16 r106, r32, r198, r106
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r14
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r34, r192, r134
	mma_16x16x16f16 r98, r34, r196, r98
	mma_16x16x16f16 r134, r36, r194, r134
	mma_16x16x16f16 r98, r36, r198, r98
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r34, r29, 0x0
	add_i32 r29, 0x4000, r15
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r200, r192, r102
	mma_16x16x16f16 r66, r200, r196, r66
	mma_16x16x16f16 r102, r202, r194, r102
	mma_16x16x16f16 r66, r202, r198, r66
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r200, r29, 0x0
	add_i32 r29, 0x4000, r16
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r30, r192, r94
	mma_16x16x16f16 r62, r30, r196, r62
	mma_16x16x16f16 r94, r32, r194, r94
	mma_16x16x16f16 r62, r32, r198, r62
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r17
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r34, r192, r90
	mma_16x16x16f16 r58, r34, r196, r58
	mma_16x16x16f16 r90, r36, r194, r90
	mma_16x16x16f16 r58, r36, r198, r58
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r34, r29, 0x0
	add_i32 r29, 0x4000, r18
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r200, r192, r86
	mma_16x16x16f16 r54, r200, r196, r54
	mma_16x16x16f16 r86, r202, r194, r86
	mma_16x16x16f16 r54, r202, r198, r54
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r200, r29, 0x0
	add_i32 r29, 0x4000, r19
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r30, r192, r82
	mma_16x16x16f16 r50, r30, r196, r50
	mma_16x16x16f16 r82, r32, r194, r82
	mma_16x16x16f16 r50, r32, r198, r50
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r20
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r34, r192, r78
	mma_16x16x16f16 r46, r34, r196, r46
	mma_16x16x16f16 r78, r36, r194, r78
	mma_16x16x16f16 r46, r36, r198, r46
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r34, r20, 0x0
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r200, r192, r74
	mma_16x16x16f16 r42, r200, r196, r42
	mma_16x16x16f16 r74, r202, r194, r74
	mma_16x16x16f16 r42, r202, r198, r42
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r200, r21, 0x0
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r30, r192, r70
	mma_16x16x16f16 r38, r30, r196, r38
	mma_16x16x16f16 r70, r32, r194, r70
	mma_16x16x16f16 r38, r32, r198, r38
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r30, r22, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r34, r188, r178
	mma_16x16x16f16 r130, r34, r184, r130
	mma_16x16x16f16 r178, r36, r190, r178
	mma_16x16x16f16 r130, r36, r186, r130
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r34, r23, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r200, r188, r170
	mma_16x16x16f16 r126, r200, r184, r126
	mma_16x16x16f16 r170, r202, r190, r170
	mma_16x16x16f16 r126, r202, r186, r126
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r200, r24, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r30, r188, r158
	mma_16x16x16f16 r122, r30, r184, r122
	mma_16x16x16f16 r158, r32, r190, r158
	mma_16x16x16f16 r122, r32, r186, r122
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r30, r25, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r34, r188, r150
	mma_16x16x16f16 r118, r34, r184, r118
	mma_16x16x16f16 r150, r36, r190, r150
	mma_16x16x16f16 r118, r36, r186, r118
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r34, r26, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r200, r188, r146
	mma_16x16x16f16 r114, r200, r184, r114
	mma_16x16x16f16 r146, r202, r190, r146
	mma_16x16x16f16 r114, r202, r186, r114
	.loc	2 326 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:326:45
	lds_b128 r200, r27, 0x0
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r30, r188, r142
	mma_16x16x16f16 r110, r30, r184, r110
	mma_16x16x16f16 r142, r32, r190, r142
	mma_16x16x16f16 r110, r32, r186, r110
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r21
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r34, r188, r138
	mma_16x16x16f16 r106, r34, r184, r106
	mma_16x16x16f16 r138, r36, r190, r138
	mma_16x16x16f16 r106, r36, r186, r106
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r34, r29, 0x0
	add_i32 r29, 0x4000, r22
	.loc	2 332 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:332:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r200, r188, r134
	mma_16x16x16f16 r98, r200, r184, r98
	mma_16x16x16f16 r134, r202, r190, r134
	mma_16x16x16f16 r98, r202, r186, r98
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r200, r29, 0x0
	add_i32 r29, 0x4000, r23
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r30, r188, r102
	mma_16x16x16f16 r66, r30, r184, r66
	mma_16x16x16f16 r102, r32, r190, r102
	mma_16x16x16f16 r66, r32, r186, r66
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r24
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r34, r188, r94
	mma_16x16x16f16 r62, r34, r184, r62
	mma_16x16x16f16 r94, r36, r190, r94
	mma_16x16x16f16 r62, r36, r186, r62
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r34, r29, 0x0
	add_i32 r29, 0x4000, r25
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r200, r188, r90
	mma_16x16x16f16 r58, r200, r184, r58
	mma_16x16x16f16 r90, r202, r190, r90
	mma_16x16x16f16 r58, r202, r186, r58
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r200, r29, 0x0
	add_i32 r29, 0x4000, r26
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r30, r188, r86
	mma_16x16x16f16 r54, r30, r184, r54
	mma_16x16x16f16 r86, r32, r190, r86
	mma_16x16x16f16 r54, r32, r186, r54
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r30, r29, 0x0
	add_i32 r29, 0x4000, r27
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r34, r188, r82
	mma_16x16x16f16 r50, r34, r184, r50
	mma_16x16x16f16 r82, r36, r190, r82
	mma_16x16x16f16 r50, r36, r186, r50
	.loc	2 340 45                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:340:45
	lds_b128 r34, r29, 0x0
	.loc	2 346 58                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:346:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r200, r188, r78
	mma_16x16x16f16 r46, r200, r184, r46
	mma_16x16x16f16 r78, r202, r190, r78
	mma_16x16x16f16 r46, r202, r186, r46
	arrive bsmcnt(1)
	mma_16x16x16f16 r74, r30, r188, r74
	mma_16x16x16f16 r42, r30, r184, r42
	mma_16x16x16f16 r74, r32, r190, r74
	mma_16x16x16f16 r42, r32, r186, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r70, r34, r188, r70
	mma_16x16x16f16 r38, r34, r184, r38
	mma_16x16x16f16 r70, r36, r190, r70
	mma_16x16x16f16 r38, r36, r186, r38
LBB4_42:                                ; %if.end685
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 58 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:58
	sor_b64 xmsk, xmsk, s38
	.loc	2 355 16 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:355:16
	scmp_eq_u64 0x780, s36
	.loc	2 355 9 is_stmt 0               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:355:9
	snop 0
	bra_smsks LBB4_9
; %bb.43:                               ; %if.then687
                                        ;   in Loop: Header=BB4_10 Depth=1
.Ltmp329:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB4_9
.Ltmp330:
	.p2align	5
LBB4_44:                                ; %if.then92
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	mad_u32 r30, r28, 2, s22
	.loc	2 263 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:263:70
	snop 1
	ldg_b128 r192, r30, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s16
	snop 0
	bra_xmskz LBB4_13
LBB4_45:                                ; %if.then92.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	or_b32 r30, 0x800, r28
	mad_u32 r30, r30, 2, s22
	.loc	2 263 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:263:70
	snop 1
	ldg_b128 r196, r30, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s18
	snop 0
	bra_xmskz LBB4_14
LBB4_46:                                ; %if.then92.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	or_b32 r30, 0x1000, r28
	mad_u32 r30, r30, 2, s22
	.loc	2 263 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:263:70
	snop 1
	ldg_b128 r188, r30, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s16
	snop 0
	bra_xmsks LBB4_15
	bra LBB4_16
	.p2align	5
LBB4_47:                                ; %if.then92.11272
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	mad_u32 r34, r28, 2, s22
	.loc	2 263 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:263:70
	snop 1
	ldg_b128 r192, r34, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s16
	snop 0
	bra_xmskz LBB4_20
LBB4_48:                                ; %if.then92.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	or_b32 r33, 0x800, r28
	mad_u32 r34, r33, 2, s22
	.loc	2 263 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:263:70
	snop 1
	ldg_b128 r196, r34, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s18
	snop 0
	bra_xmskz LBB4_21
LBB4_49:                                ; %if.then92.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	or_b32 r33, 0x1000, r28
	mad_u32 r34, r33, 2, s22
	.loc	2 263 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:263:70
	snop 1
	ldg_b128 r188, r34, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 262 15                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:262:15
	and_xmsk s42, s16
	snop 0
	bra_xmsks LBB4_22
	bra LBB4_23
	.p2align	5
LBB4_50:                                ; %if.then402
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:15
	mad_u32 r154, r28, 2, s14
	.loc	2 312 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:312:70
	snop 1
	ldg_b128 r154, r154, 0x0
	sor_b64 xmsk, xmsk, s44
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s44, s16
	snop 0
	bra_xmskz LBB4_29
LBB4_51:                                ; %if.then402.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	or_b32 r37, 0x800, r28
	mad_u32 r162, r37, 2, s14
	.loc	2 312 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:312:70
	snop 1
	ldg_b128 r162, r162, 0x0
	sor_b64 xmsk, xmsk, s44
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s44, s18
	snop 0
	bra_xmskz LBB4_30
LBB4_52:                                ; %if.then402.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	or_b32 r37, 0x1000, r28
	mad_u32 r166, r37, 2, s14
	.loc	2 312 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:312:70
	snop 1
	ldg_b128 r166, r166, 0x0
	sor_b64 xmsk, xmsk, s44
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s44, s16
	snop 0
	bra_xmsks LBB4_31
	bra LBB4_32
	.p2align	5
LBB4_53:                                ; %if.then402.11354
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	mad_u32 r30, r28, 2, s14
	.loc	2 312 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:312:70
	snop 1
	ldg_b128 r154, r30, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s42, s16
	snop 0
	bra_xmskz LBB4_36
LBB4_54:                                ; %if.then402.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	or_b32 r29, 0x800, r28
	mad_u32 r30, r29, 2, s14
	.loc	2 312 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:312:70
	snop 1
	ldg_b128 r162, r30, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s42, s18
	snop 0
	bra_xmskz LBB4_37
LBB4_55:                                ; %if.then402.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	or_b32 r29, 0x1000, r28
	mad_u32 r30, r29, 2, s14
	.loc	2 312 70 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:312:70
	snop 1
	ldg_b128 r166, r30, 0x0
	sor_b64 xmsk, xmsk, s42
	.loc	2 311 17                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:311:17
	and_xmsk s42, s16
	snop 0
	bra_xmsks LBB4_38
	bra LBB4_39
LBB4_56:                                ; %for.cond692.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:17
	sshl_b64 s14, 7, s20
	or_b32 r4, r0, s1
	or_b32 r8, s14, r0
	add_u32 r4, r4, r2
	mov_b32 r9, s15
	add_co_u32 r2, r8, r2
	addc_co_u32 r8, r9, 0
	sashr_i32 s1, 31, s2
	add_co_u32 r2, r2, s2
	mov_b32 r9, s1
	sashr_i32 s3, 31, s0
	mov_b32 r6, s0
	addc_co_u32 r8, r8, r9
	mov_b32 r7, s3
	sub_co_u32 r6, r2, r6
	add_u32 r5, r4, s2
	mov_b32 r4, 0
	subb_co_u32 r7, r8, r7
	.loc	2 361 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:361:9
	and_xmsk s2, s18
	snop 0
	bra_xmskz LBB4_60
; %bb.57:                               ; %if.then711
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sub_u32 r2, r5, s0
	.loc	2 363 15 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:363:15
	cmp_ge_i32 s14, r5, s0
	cmp_gt_i32 s22, 0x11c0, r2
	mov_b32 r4, 0
	.loc	2 363 163 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:363:163
	snop 2
	sand_b64 s22, s14, s22
	and_xmsk s14, s22
	snop 0
	bra_xmskz LBB4_59
; %bb.58:                               ; %if.then740
	.loc	2 0 163                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r2, s13
	addc_co_u32 r9, r2, r9
	.loc	2 364 19 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:364:19
	snop 1
	ldg_b32 r4, r8, 0x0
LBB4_59:                                ; %Flow281
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB4_60:                                ; %for.inc764
	sor_b64 xmsk, xmsk, s2
	mov_b32 r2, 0
	.loc	2 361 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:361:9
	and_xmsk s2, s16
	snop 0
	bra_xmskz LBB4_64
; %bb.61:                               ; %if.then711.1
	.loc	2 363 117                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:363:117
	add_u32 r2, r5, 16
	.loc	2 363 15 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:363:15
	cmp_ge_i32 s14, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x11c0, r2
	mov_b32 r2, 0
	.loc	2 363 163                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:363:163
	snop 2
	sand_b64 s14, s14, s0
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_63
; %bb.62:                               ; %if.then740.1
	.loc	2 0 163                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r2, s13
	addc_co_u32 r7, r2, r7
	.loc	2 364 19 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:364:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB4_63:                                ; %Flow280
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB4_64:                                ; %for.inc764.1
	sor_b64 xmsk, xmsk, s2
	smul_i32 s0, 0xe0000, s20
	sshl_b32 s1, 8, s4
	sadd_co_i32 s0, s1, s0
	mov_b32 r5, s0
	shr_b32 r1, 6, r1
	smov_b32 s1, 0x38000
	mad_u24 r1, r1, s1, r5
	smov_b32 s0, 0x1c00
	mad_u24 r0, r0, s0, r1
	and_or_b32 r0, r3, 12, r0
	shl_b64 r8, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s18
	snop 0
	bra_xmskz LBB4_66
; %bb.65:                               ; %if.then785
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(0)
	mul_f32 r1, r178, r4
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r179, r4
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r180, r4
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r6, r181, r4
.Ltmp331:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp332:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp333:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp335:
LBB4_66:                                ; %if.end840
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 22 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mov_b32 r1, 0
	shl_b64 r6, 1, r0
	add_co_u32 r6, s10, r6
	mov_b32 r1, s11
	addc_co_u32 r7, r1, r7
	.loc	2 389 254 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s18
	snop 0
	bra_xmskz LBB4_68
; %bb.67:                               ; %if.then785.1
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(1)
	mul_f32 r1, r170, r4
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r171, r4
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r172, r4
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r10, r173, r4
.Ltmp336:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp337:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp338:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp340:
LBB4_68:                                ; %if.end840.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, r0, 16
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r22, r1, 2, s10
	shl_b64 r10, 0, 0
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 0
	stg_b64 r22, 0x0, r8 devc
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s18
	snop 0
	bra_xmskz LBB4_70
; %bb.69:                               ; %if.then785.2
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(2)
	mul_f32 r1, r158, r4
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r159, r4
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r160, r4
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r8, r161, r4
.Ltmp341:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp342:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp343:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp345:
LBB4_70:                                ; %if.end840.2
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, r0, 32
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r8, r1, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s18
	snop 0
	bra_xmskz LBB4_72
; %bb.71:                               ; %if.then785.3
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(3)
	mul_f32 r1, r150, r4
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r151, r4
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r152, r4
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r12, r153, r4
.Ltmp346:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp347:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp348:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp350:
LBB4_72:                                ; %if.end840.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, r0, 48
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r26, r1, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r26, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s18
	snop 0
	bra_xmskz LBB4_74
; %bb.73:                               ; %if.then785.4
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(4)
	mul_f32 r1, r146, r4
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r147, r4
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r148, r4
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r12, r149, r4
.Ltmp351:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp352:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp353:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp355:
LBB4_74:                                ; %if.end840.4
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, r0, 64
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r14, r1, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r14, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s18
	snop 0
	bra_xmskz LBB4_76
; %bb.75:                               ; %if.then785.5
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(5)
	mul_f32 r1, r142, r4
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r143, r4
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r144, r4
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r12, r145, r4
.Ltmp356:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp357:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp358:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp360:
LBB4_76:                                ; %if.end840.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, 0x50, r0
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r28, r1, 2, s10
	shl_b64 r12, 0, 0
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 0
	stg_b64 r28, 0x0, r10 devc
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s18
	snop 0
	bra_xmskz LBB4_78
; %bb.77:                               ; %if.then785.6
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(6)
	mul_f32 r1, r138, r4
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r139, r4
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r140, r4
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r10, r141, r4
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp362:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp363:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp365:
LBB4_78:                                ; %if.end840.6
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, 0x60, r0
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r10, r1, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r10, 0x0, r12 devc
	shl_b64 r12, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s18
	snop 0
	bra_xmskz LBB4_80
; %bb.79:                               ; %if.then785.7
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(7)
	mul_f32 r1, r134, r4
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r135, r4
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r136, r4
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r16, r137, r4
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp367:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp368:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp370:
LBB4_80:                                ; %if.end840.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, 0x70, r0
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r24, r1, 2, s10
	shl_b64 r16, 0, 0
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 0
	stg_b64 r24, 0x0, r12 devc
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s16
	snop 0
	bra_xmskz LBB4_82
; %bb.81:                               ; %if.then785.8
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(8)
	mul_f32 r1, r130, r2
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r131, r2
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r132, r2
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r12, r133, r2
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp372:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp373:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp375:
LBB4_82:                                ; %if.end840.8
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 22 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	add_co_u32 r12, 0x38000, r6
	addc_co_u32 r13, r7, 0
	.loc	2 389 191 is_stmt 0             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:191
	add_u32 r0, 0x1c000, r0
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 0
	stg_b64 r12, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s16
	snop 0
	bra_xmskz LBB4_84
; %bb.83:                               ; %if.then785.9
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(9)
	mul_f32 r1, r126, r2
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r127, r2
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r128, r2
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r18, r129, r2
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp377:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp378:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp380:
LBB4_84:                                ; %if.end840.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, r0, 16
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r30, r1, 2, s10
	shl_b64 r18, 0, 0
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s16
	snop 0
	bra_xmskz LBB4_86
; %bb.85:                               ; %if.then785.10
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(10)
	mul_f32 r1, r122, r2
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r123, r2
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r124, r2
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r16, r125, r2
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp382:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp383:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp385:
LBB4_86:                                ; %if.end840.10
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, r0, 32
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r16, r1, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s16
	snop 0
	bra_xmskz LBB4_88
; %bb.87:                               ; %if.then785.11
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(11)
	mul_f32 r1, r118, r2
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r119, r2
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r120, r2
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r20, r121, r2
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp387:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp388:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp390:
LBB4_88:                                ; %if.end840.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, r0, 48
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r32, r1, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r32, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s16
	snop 0
	bra_xmskz LBB4_90
; %bb.89:                               ; %if.then785.12
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(12)
	mul_f32 r1, r114, r2
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r115, r2
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r116, r2
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r20, r117, r2
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp392:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp393:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp395:
LBB4_90:                                ; %if.end840.12
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, r0, 64
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r20, r1, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r20, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s16
	snop 0
	bra_xmskz LBB4_92
; %bb.91:                               ; %if.then785.13
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(13)
	mul_f32 r1, r110, r2
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r111, r2
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r112, r2
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r34, r113, r2
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp397:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp398:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r34
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp400:
LBB4_92:                                ; %if.end840.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, 0x50, r0
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r34, r1, 2, s10
	shl_b64 r36, 0, 0
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 0
	stg_b64 r34, 0x0, r18 devc
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s16
	snop 0
	bra_xmskz LBB4_94
; %bb.93:                               ; %if.then785.14
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(14)
	mul_f32 r1, r106, r2
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r107, r2
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r108, r2
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r18, r109, r2
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp402:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp403:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp405:
LBB4_94:                                ; %if.end840.14
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r1, 0x60, r0
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r18, r1, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r18, 0x0, r36 devc
	shl_b64 r36, 0, 0
	.loc	2 373 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:373:9
	and_xmsk s0, s16
	snop 0
	bra_xmskz LBB4_96
; %bb.95:                               ; %if.then785.15
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:378:22
	arrive gvmcnt(15)
	mul_f32 r1, r98, r2
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:379:22
	mul_f32 r3, r99, r2
	.loc	2 380 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:380:22
	mul_f32 r5, r100, r2
	.loc	2 381 22                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:381:22
	mul_f32 r98, r101, r2
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp407:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r98
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp410:
LBB4_96:                                ; %if.end840.15
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 389 211 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:211
	or_b32 r0, 0x70, r0
	.loc	2 389 22 is_stmt 0              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:22
	mad_i32 r0, r0, 2, s10
	.loc	2 389 254                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:389:254
	snop 1
	stg_b64 r0, 0x0, r36 devc
	.loc	2 393 9 is_stmt 1               ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_98
; %bb.97:                               ; %if.end951.1.critedge
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	shl_b64 r36, 0, 0
	snop 1
	stg_b64 r6, 0x100, r36 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB4_98:                                ; %Flow279
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	or_xmsk s0, s0
	shl_b64 r36, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_100
; %bb.99:                               ; %if.then890
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	arrive gvmcnt(16)
	mul_f32 r36, r104, r4
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r37, r105, r4
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r102, r4
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r5, r103, r4
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp412:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp413:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_lo, r36
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_hi, r37
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp415:
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r6, 0x100, r98 devc
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r94, r4
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r5, r95, r4
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r6, r96, r4
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r7, r97, r4
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp417:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r36_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp418:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r37_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp420:
LBB4_100:                               ; %if.end951.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r22, 0x100, r36 devc
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_102
; %bb.101:                              ; %if.end951.3.critedge
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r8, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB4_102:                               ; %Flow278
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_104
; %bb.103:                              ; %if.then890.2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	arrive gvmcnt(17)
	mul_f32 r6, r92, r4
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r7, r93, r4
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r90, r4
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r5, r91, r4
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp422:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp425:
	.loc	2 400 24 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	snop 0
	mul_f32 r7, r88, r4
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	stg_b64 r8, 0x100, r22 devc
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r86, r4
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r5, r87, r4
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r8, r89, r4
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp427:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp430:
LBB4_104:                               ; %if.end951.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_106
; %bb.105:                              ; %if.end951.5.critedge
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r14, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB4_106:                               ; %Flow277
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_108
; %bb.107:                              ; %if.then890.4
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	arrive gvmcnt(18)
	mul_f32 r6, r84, r4
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r7, r85, r4
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r82, r4
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r5, r83, r4
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp432:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp435:
	.loc	2 400 24 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	snop 0
	mul_f32 r7, r80, r4
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	stg_b64 r14, 0x100, r8 devc
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r78, r4
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r5, r79, r4
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r8, r81, r4
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp437:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp438:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp440:
LBB4_108:                               ; %if.end951.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_110
; %bb.109:                              ; %if.end951.7.critedge
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_10
LBB4_110:                               ; %Flow276
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_112
; %bb.111:                              ; %if.then890.6
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	arrive gvmcnt(19)
	mul_f32 r6, r76, r4
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r7, r77, r4
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r74, r4
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r5, r75, r4
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp442:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp445:
	.loc	2 400 24 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	snop 0
	mul_f32 r7, r72, r4
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	stg_b64 r10, 0x100, r8 devc
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r70, r4
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r5, r71, r4
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r4, r73, r4
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp447:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp448:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp450:
LBB4_112:                               ; %if.end951.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_114
; %bb.113:                              ; %if.end951.9.critedge
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB4_114:                               ; %Flow275
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	or_xmsk s0, s0
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_116
; %bb.115:                              ; %if.then890.8
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r4, r67, r2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r5, r68, r2
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r66, r2
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r6, r69, r2
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp452:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp453:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp455:
	.loc	2 399 24 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	snop 0
	mul_f32 r5, r63, r2
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	stg_b64 r12, 0x100, r8 devc
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r62, r2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r6, r64, r2
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r7, r65, r2
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp457:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp458:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp460:
LBB4_116:                               ; %if.end951.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_118
; %bb.117:                              ; %if.end951.11.critedge
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB4_118:                               ; %Flow274
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_120
; %bb.119:                              ; %if.then890.10
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r4, r59, r2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r5, r60, r2
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r58, r2
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r6, r61, r2
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp462:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp465:
	.loc	2 399 24 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	snop 0
	mul_f32 r5, r55, r2
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	stg_b64 r16, 0x100, r8 devc
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r54, r2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r6, r56, r2
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r7, r57, r2
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp467:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp470:
LBB4_120:                               ; %if.end951.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r32, 0x100, r4 devc
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_122
; %bb.121:                              ; %if.end951.13.critedge
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r20, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_20
LBB4_122:                               ; %Flow273
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_124
; %bb.123:                              ; %if.then890.12
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r4, r51, r2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r5, r52, r2
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r50, r2
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r6, r53, r2
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp472:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp473:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp475:
	.loc	2 399 24 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	snop 0
	mul_f32 r5, r47, r2
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	stg_b64 r20, 0x100, r8 devc
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r46, r2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r6, r48, r2
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r7, r49, r2
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp477:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp478:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp480:
LBB4_124:                               ; %if.end951.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r34, 0x100, r4 devc
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	and_xmsk s0, s6
	sxor_b64 s0, xmsk, s0
	bra_xmsks LBB4_127
; %bb.125:                              ; %Flow
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB4_128
LBB4_126:                               ; %if.end951.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 411 1                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:411:1
	snop 0
	endk
LBB4_127:                               ; %if.end951.15.critedge
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r18, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_18
	.loc	2 393 9                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:393:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_126
LBB4_128:                               ; %if.then890.14
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	mul_f32 r4, r43, r2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r5, r44, r2
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r42, r2
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r6, r45, r2
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp482:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp483:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp485:
	.loc	2 399 24 is_stmt 1              ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:399:24
	snop 0
	mul_f32 r5, r39, r2
	.loc	2 409 262                       ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	stg_b64 r18, 0x100, r8 devc
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:398:24
	mul_f32 r3, r38, r2
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:400:24
	mul_f32 r6, r40, r2
	.loc	2 401 24                        ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:401:24
	mul_f32 r2, r41, r2
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp487:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp489:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp490:
	.loc	2 409 262 is_stmt 1             ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:409:262
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 411 1                         ; race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp:411:1
	snop 0
	endk
.Ltmp491:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_2
		.macahca_mtreg_size 28
		.macahca_streg_size 4
		.macahca_priority 0
		.macahca_float_mode 240
		.macahca_privilege 0
		.macahca_debug_mode 0
		.macahca_ieee_mode 1
		.macahca_bulky_mode 0
		.macahca_fp16_overflow_mode 0
		.macahca_perf_on 0
		.macahca_priv_segm_on 0
		.macahca_user_streg_count 4
		.macahca_user_trap_handler_on 0
		.macahca_streg_block_id_x_on 1
		.macahca_streg_block_id_y_on 1
		.macahca_streg_block_id_z_on 0
		.macahca_streg_block_info_on 0
		.macahca_enable_mtreg_thread_id 0
		.macahca_exception_address_watch_on 0
		.macahca_exception_memory_violation_on 0
		.macahca_bsm_size 0
		.macahca_exception_on 0
		.macahca_streg_kernarg_segm_ptr_on 1
		.macahca_streg_dispatch_ptr_on 0
		.macahca_streg_prvt_init_on 0
		.macahca_streg_prvt_segm_size_on 0
		.macahca_unorder_dispatch_on 0
		.macahca_warps_per_dpc 416
		.macahca_blocks_per_ap 16
	.end_macahca_kernel
	.text
	.fill 4, 8, 0x2320
	.p2align 8
.Lfunc_end4:
	.size	kernel_kernel_2, .Lfunc_end4-kernel_kernel_2
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 17840
; NumMTRegsForWarps/PEU: 220
; NumSTRegsForWarps/PEU: 52
; MaxWarpsPerPEU: 2
	.protected	copy_shared
	.protected	buf_dyn_shmem
	.protected	down_shared
	.protected	mcDeviceMemoryInfo      ; @mcDeviceMemoryInfo
	.type	mcDeviceMemoryInfo,@object
	.section	.bss,#alloc,#write
	.weak	mcDeviceMemoryInfo
	.p2align	3, 0x0
mcDeviceMemoryInfo:
	.zero	16
	.size	mcDeviceMemoryInfo, 16

	.section	.debug_abbrev
	.byte	1                               ; Abbreviation Code
	.byte	17                              ; DW_TAG_compile_unit
	.byte	1                               ; DW_CHILDREN_yes
	.byte	37                              ; DW_AT_producer
	.byte	14                              ; DW_FORM_strp
	.byte	19                              ; DW_AT_language
	.byte	5                               ; DW_FORM_data2
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	16                              ; DW_AT_stmt_list
	.byte	23                              ; DW_FORM_sec_offset
	.byte	27                              ; DW_AT_comp_dir
	.byte	14                              ; DW_FORM_strp
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	2                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	0                               ; DW_CHILDREN_no
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	32                              ; DW_AT_inline
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	3                               ; Abbreviation Code
	.byte	46                              ; DW_TAG_subprogram
	.byte	1                               ; DW_CHILDREN_yes
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	3                               ; DW_AT_name
	.byte	14                              ; DW_FORM_strp
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	4                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	5                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	6                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	7                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	11                              ; DW_FORM_data1
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	9                               ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	0                               ; DW_CHILDREN_no
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	85                              ; DW_AT_ranges
	.byte	23                              ; DW_FORM_sec_offset
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	10                              ; Abbreviation Code
	.byte	29                              ; DW_TAG_inlined_subroutine
	.byte	1                               ; DW_CHILDREN_yes
	.byte	49                              ; DW_AT_abstract_origin
	.byte	19                              ; DW_FORM_ref4
	.byte	17                              ; DW_AT_low_pc
	.byte	1                               ; DW_FORM_addr
	.byte	18                              ; DW_AT_high_pc
	.byte	6                               ; DW_FORM_data4
	.byte	88                              ; DW_AT_call_file
	.byte	11                              ; DW_FORM_data1
	.byte	89                              ; DW_AT_call_line
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	0                               ; EOM(3)
	.section	.debug_info
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x361 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	33                              ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin0       ; DW_AT_high_pc
	.byte	2                               ; Abbrev [2] 0x2a:0x6 DW_TAG_subprogram
	.long	.Linfo_string3                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x30:0x6 DW_TAG_subprogram
	.long	.Linfo_string4                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x36:0x3b DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string9                  ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x47:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	18                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x5b:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x71:0x6 DW_TAG_subprogram
	.long	.Linfo_string5                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x77:0x6 DW_TAG_subprogram
	.long	.Linfo_string6                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x7d:0x6 DW_TAG_subprogram
	.long	.Linfo_string7                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x83:0x6 DW_TAG_subprogram
	.long	.Linfo_string8                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x89:0x150 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x9a:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	76                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xae:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xc3:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	109                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xd7:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xec:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp13                         ; DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x100:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp13                         ; DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x115:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp15                         ; DW_AT_low_pc
	.long	.Ltmp16-.Ltmp15                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	167                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x129:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp15                         ; DW_AT_low_pc
	.long	.Ltmp16-.Ltmp15                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x13e:0xc DW_TAG_inlined_subroutine
	.long	113                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	198                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x14a:0xc DW_TAG_inlined_subroutine
	.long	113                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	197                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x156:0xc DW_TAG_inlined_subroutine
	.long	113                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	196                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x162:0xc DW_TAG_inlined_subroutine
	.long	113                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	195                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x16e:0x35 DW_TAG_inlined_subroutine
	.long	131                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	221                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x17a:0x28 DW_TAG_inlined_subroutine
	.long	125                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x187:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x194:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x1a3:0x35 DW_TAG_inlined_subroutine
	.long	131                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	222                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x1af:0x28 DW_TAG_inlined_subroutine
	.long	125                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x1bc:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x1c9:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x1d9:0x192 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   ; DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       ; DW_AT_high_pc
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	10                              ; Abbrev [10] 0x1ea:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	272                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1ff:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x214:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp325                        ; DW_AT_low_pc
	.long	.Ltmp326-.Ltmp325               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	305                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x229:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp325                        ; DW_AT_low_pc
	.long	.Ltmp326-.Ltmp325               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x23e:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp327                        ; DW_AT_low_pc
	.long	.Ltmp328-.Ltmp327               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	322                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x253:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp327                        ; DW_AT_low_pc
	.long	.Ltmp328-.Ltmp327               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x268:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp329                        ; DW_AT_low_pc
	.long	.Ltmp330-.Ltmp329               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	356                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x27d:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp329                        ; DW_AT_low_pc
	.long	.Ltmp330-.Ltmp329               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x292:0x36 DW_TAG_inlined_subroutine
	.long	131                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	382                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x29f:0x28 DW_TAG_inlined_subroutine
	.long	125                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2ac:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2b9:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2c8:0x36 DW_TAG_inlined_subroutine
	.long	131                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	383                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2d5:0x28 DW_TAG_inlined_subroutine
	.long	125                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2e2:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2ef:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2fe:0x36 DW_TAG_inlined_subroutine
	.long	131                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	402                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x30b:0x28 DW_TAG_inlined_subroutine
	.long	125                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x318:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x325:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x334:0x36 DW_TAG_inlined_subroutine
	.long	131                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	403                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x341:0x28 DW_TAG_inlined_subroutine
	.long	125                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x34e:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x35b:0xd DW_TAG_inlined_subroutine
	.long	119                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges
.Ldebug_ranges0:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v130_v110_rebaseline_sc-16g/codegen/v130_case2_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=148
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=169
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=179
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=193
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=199
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=215
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=233
.Linfo_string9:
	.asciz	"kernel_kernel"                 ; string offset=251
.Linfo_string10:
	.asciz	"kernel_kernel_1"               ; string offset=265
.Linfo_string11:
	.asciz	"kernel_kernel_2"               ; string offset=281
	.section	".note.GNU-stack"
	.metaxgpu_metadata
---
macahca.kernels:
  - .args:
      - .arg_name:       input.coerce
        .arg_offset_bytes: 0
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_attribute:  is_constant
        .arg_name:       input_original.coerce
        .arg_offset_bytes: 8
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_offset_bytes: 16
        .arg_param_pass: hidden_global_offset_x
        .arg_size_bytes: 8
      - .arg_offset_bytes: 24
        .arg_param_pass: hidden_global_offset_y
        .arg_size_bytes: 8
      - .arg_offset_bytes: 32
        .arg_param_pass: hidden_global_offset_z
        .arg_size_bytes: 8
      - .arg_offset_bytes: 40
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 48
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 56
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 64
        .arg_param_pass: hidden_multigrid_sync_arg
        .arg_size_bytes: 8
      - .arg_offset_bytes: 72
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 80
        .arg_param_pass: hidden_gridsync
        .arg_size_bytes: 8
      - .arg_offset_bytes: 88
        .arg_param_pass: hidden_device_runtime_info_addr
        .arg_size_bytes: 8
      - .arg_offset_bytes: 96
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 104
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 112
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 120
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 128
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
    .dcompcapab:     8
    .kd_symbol:      kernel_kernel.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 96
    .max_block_size: 256
    .mtreg_count:    78
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    11
  - .args:
      - .access:         read_only
        .arg_attribute:  is_constant
        .arg_name:       gate.coerce
        .arg_offset_bytes: 0
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_idx_for_bx.coerce
        .arg_offset_bytes: 8
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_padded_offsets.coerce
        .arg_offset_bytes: 16
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_sizes.coerce
        .arg_offset_bytes: 24
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_attribute:  is_constant
        .arg_name:       input.coerce
        .arg_offset_bytes: 32
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_attribute:  is_constant
        .arg_name:       up.coerce
        .arg_offset_bytes: 40
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_name:       up_logits.coerce
        .arg_offset_bytes: 48
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_offset_bytes: 56
        .arg_param_pass: hidden_global_offset_x
        .arg_size_bytes: 8
      - .arg_offset_bytes: 64
        .arg_param_pass: hidden_global_offset_y
        .arg_size_bytes: 8
      - .arg_offset_bytes: 72
        .arg_param_pass: hidden_global_offset_z
        .arg_size_bytes: 8
      - .arg_offset_bytes: 80
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 88
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 96
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 104
        .arg_param_pass: hidden_multigrid_sync_arg
        .arg_size_bytes: 8
      - .arg_offset_bytes: 112
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 120
        .arg_param_pass: hidden_gridsync
        .arg_size_bytes: 8
      - .arg_offset_bytes: 128
        .arg_param_pass: hidden_device_runtime_info_addr
        .arg_size_bytes: 8
      - .arg_offset_bytes: 136
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 144
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 152
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 160
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 168
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
    .dcompcapab:     8
    .kd_symbol:      kernel_kernel_1.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 136
    .max_block_size: 256
    .mtreg_count:    226
    .name:           kernel_kernel_1
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    42
  - .args:
      - .access:         read_only
        .arg_attribute:  is_constant
        .arg_name:       down.coerce
        .arg_offset_bytes: 0
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_idx_for_bx.coerce
        .arg_offset_bytes: 8
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_offsets.coerce
        .arg_offset_bytes: 16
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_padded_offsets.coerce
        .arg_offset_bytes: 24
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_sizes.coerce
        .arg_offset_bytes: 32
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_name:       output.coerce
        .arg_offset_bytes: 40
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       routed_weights.coerce
        .arg_offset_bytes: 48
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_attribute:  is_constant
        .arg_name:       up_logits.coerce
        .arg_offset_bytes: 56
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_offset_bytes: 64
        .arg_param_pass: hidden_global_offset_x
        .arg_size_bytes: 8
      - .arg_offset_bytes: 72
        .arg_param_pass: hidden_global_offset_y
        .arg_size_bytes: 8
      - .arg_offset_bytes: 80
        .arg_param_pass: hidden_global_offset_z
        .arg_size_bytes: 8
      - .arg_offset_bytes: 88
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 96
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 104
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 112
        .arg_param_pass: hidden_multigrid_sync_arg
        .arg_size_bytes: 8
      - .arg_offset_bytes: 120
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 128
        .arg_param_pass: hidden_gridsync
        .arg_size_bytes: 8
      - .arg_offset_bytes: 136
        .arg_param_pass: hidden_device_runtime_info_addr
        .arg_size_bytes: 8
      - .arg_offset_bytes: 144
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 152
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 160
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 168
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
      - .arg_offset_bytes: 176
        .arg_param_pass: hidden_none
        .arg_size_bytes: 8
    .dcompcapab:     8
    .kd_symbol:      kernel_kernel_2.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 144
    .max_block_size: 256
    .mtreg_count:    220
    .name:           kernel_kernel_2
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    52
macahca.version:
  - 1
  - 0
...

	.end_metaxgpu_metadata
	.section	.debug_line
.Lline_table_start0:
