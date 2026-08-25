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
	.file	2 "/tmp/v129_codegen_case1" "v129_case1_case1_generated_device.cpp"
	.loc	2 12 0                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:12:0
; %bb.0:                                ; %entry
	and_b32 r0, 0x3ff, r0
	ldu_b128 s0, s0, 0x0
	shl_b32 r1, 6, r0
	sshl_b32 s5, 18, s5
	sshl_b32 s6, 8, s4
	sadd_co_i32 s5, s6, s5
	and_b32 r1, 0xf800, r1
	add_u32 r1, s5, r1
	shl_b32 r2, 3, r0
	smov_b32 s6, 0xf8
	and_or_b32 r1, r2, s6, r1
.Ltmp4:
	.loc	2 16 97 prologue_end            ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	shl_b32 r6, 1, r1
	arrive slcnt(0)
	add_co_u32 r4, s2, r6
	mov_b32 r1, 0
	mov_b32 r5, s3
	addc_co_u32 r5, r5, r1
	add_co_u32 r10, 0x8000, r4
	addc_co_u32 r11, r5, 0
	add_co_u32 r12, 0x10000, r4
	addc_co_u32 r13, r5, 0
	add_co_u32 r18, 0x18000, r4
	addc_co_u32 r19, r5, 0
	add_co_u32 r20, 0x20000, r4
	addc_co_u32 r21, r5, 0
	add_co_u32 r26, 0x28000, r4
	addc_co_u32 r27, r5, 0
	add_co_u32 r28, 0x30000, r4
	addc_co_u32 r29, r5, 0
	add_co_u32 r34, 0x38000, r4
	addc_co_u32 r35, r5, 0
	add_co_u32 r36, 0x40000, r4
	addc_co_u32 r37, r5, 0
	add_co_u32 r42, 0x48000, r4
	addc_co_u32 r43, r5, 0
	.loc	2 16 70 is_stmt 0               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r6, s2, r6, 0x0
	ldg_b128 r14, r10, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	add_co_u32 r44, 0x50000, r4
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r10, r12, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	addc_co_u32 r45, r5, 0
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r22, r18, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	add_co_u32 r50, 0x58000, r4
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r18, r20, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	addc_co_u32 r51, r5, 0
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r30, r26, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	add_co_u32 r52, 0x60000, r4
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r26, r28, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	addc_co_u32 r53, r5, 0
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r38, r34, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	add_co_u32 r58, 0x68000, r4
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r34, r36, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	addc_co_u32 r59, r5, 0
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r46, r42, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	add_co_u32 r60, 0x70000, r4
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r42, r44, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	addc_co_u32 r61, r5, 0
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r54, r50, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	add_co_u32 r4, 0x78000, r4
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r50, r52, 0x0
	ldg_b128 r62, r58, 0x0
	.loc	2 16 97                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:97
	addc_co_u32 r5, r5, 0
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r58, r60, 0x0
	.loc	2 15 8 is_stmt 1                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:15:8
	shl_add_u32 r3, 4, r0, 0
	.loc	2 16 70                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:16:70
	ldg_b128 r66, r4, 0x0
	add_i32 r4, 0x1000, r3
	arrive gvmcnt(15)
	sts_b128 r3, 0x0, r6
	arrive gvmcnt(14)
	sts_b128 r4, 0x0, r14
	add_i32 r4, 0x2000, r3
	arrive gvmcnt(13)
	snop 0
	sts_b128 r4, 0x0, r10
	add_i32 r4, 0x3000, r3
	arrive gvmcnt(12)
	snop 0
	sts_b128 r4, 0x0, r22
	add_i32 r4, 0x4000, r3
	arrive gvmcnt(11)
	snop 0
	sts_b128 r4, 0x0, r18
	add_i32 r4, 0x5000, r3
	arrive gvmcnt(10)
	snop 0
	sts_b128 r4, 0x0, r30
	add_i32 r4, 0x6000, r3
	arrive gvmcnt(9)
	snop 0
	sts_b128 r4, 0x0, r26
	add_i32 r4, 0x7000, r3
	arrive gvmcnt(8)
	snop 0
	sts_b128 r4, 0x0, r38
	add_i32 r4, 0x8000, r3
	arrive gvmcnt(7)
	snop 0
	sts_b128 r4, 0x0, r34
	add_i32 r4, 0x9000, r3
	arrive gvmcnt(6)
	snop 0
	sts_b128 r4, 0x0, r46
	add_i32 r4, 0xa000, r3
	arrive gvmcnt(5)
	snop 0
	sts_b128 r4, 0x0, r42
	add_i32 r4, 0xb000, r3
	arrive gvmcnt(4)
	snop 0
	sts_b128 r4, 0x0, r54
	add_i32 r4, 0xc000, r3
	arrive gvmcnt(3)
	snop 0
	sts_b128 r4, 0x0, r50
	add_i32 r4, 0xd000, r3
	arrive gvmcnt(2)
	snop 0
	sts_b128 r4, 0x0, r62
	add_i32 r4, 0xe000, r3
	add_i32 r3, 0xf000, r3
	arrive gvmcnt(1)
	sts_b128 r4, 0x0, r58
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r66
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	shl_b32 r3, 7, r0
	shl_b32 r4, 8, r0
	shr_b32 r0, 1, r0
	smul_i32 s2, 0x7f00, s4
	and_b32 r3, 0x1e000, r3
	and_b32 r4, 0xf00, r4
	and_b32 r0, r0, 24
	or3_b32 r3, r4, r3, r0
	sadd_co_i32 s2, s5, s2
	or_b32 r0, s2, r2
.Ltmp6:
	.loc	2 21 188                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:188
	shl_add_u32 r2, 1, r3, 0
	.loc	2 21 164 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	add_i32 r3, 0x2000, r2
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	shl_b64 r4, 1, r0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	lds_b128 r6, r2, 0x0
	lds_b128 r10, r3, 0x0
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	add_co_u32 r4, s0, r4
	mov_b32 r1, s1
	addc_co_u32 r5, r1, r5
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	add_i32 r1, 64, r2
	add_i32 r3, 0x2040, r2
	arrive bsmcnt(1)
	stg_b128 r4, 0x0, r6 devc
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	snop 1
	add_co_u32 r6, 0x1000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(0)
	snop 0
	stg_b128 r6, 0x0, r10 devc
	lds_b128 r8, r1, 0x0
	lds_b128 r12, r3, 0x0
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	add_co_u32 r6, 0x2000, r4
	addc_co_u32 r7, r5, 0
	or_b32 r1, 0x2000, r0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	add_i32 r3, 0x2080, r2
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r8 devc
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	snop 1
	add_co_u32 r6, 0x3000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(0)
	snop 0
	stg_b128 r6, 0x0, r12 devc
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	snop 1
	mad_u32 r6, r1, 2, s0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
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
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	add_co_u32 r6, 0x5000, r4
	addc_co_u32 r7, r5, 0
	or_b32 r0, 0x6000, r0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r12 devc
	lds_b128 r12, r3, 0x0
	add_i32 r3, 0x2100, r2
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	add_co_u32 r6, 0x6000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(1)
	snop 0
	stg_b128 r6, 0x0, r8 devc
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	snop 1
	add_co_u32 r6, 0x7000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(0)
	snop 0
	stg_b128 r6, 0x0, r12 devc
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	snop 1
	mad_u32 r6, r1, 2, s0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
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
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	add_co_u32 r6, 0x9000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(1)
	snop 0
	stg_b128 r6, 0x0, r12 devc
	lds_b128 r12, r3, 0x0
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	snop 0
	add_co_u32 r6, 0xa000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(1)
	snop 0
	stg_b128 r6, 0x0, r8 devc
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	snop 1
	add_co_u32 r6, 0xb000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(0)
	snop 0
	stg_b128 r6, 0x0, r12 devc
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	snop 1
	mad_u32 r6, r0, 2, s0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	add_i32 r0, 0x180, r2
	snop 1
	lds_b128 r8, r0, 0x0
	lds_b128 r12, r1, 0x0
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	add_co_u32 r0, 0xd000, r4
	addc_co_u32 r1, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r8 devc
	arrive bsmcnt(0)
	stg_b128 r0, 0x0, r12 devc
	snop 1
	add_i32 r0, 0x1c0, r2
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	add_co_u32 r6, 0xe000, r4
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	add_i32 r1, 0x21c0, r2
	lds_b128 r8, r0, 0x0
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	addc_co_u32 r7, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	lds_b128 r0, r1, 0x0
	.loc	2 21 23                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:23
	add_co_u32 r4, 0xf000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 21 164                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:21:164
	arrive bsmcnt(1)
	stg_b128 r6, 0x0, r8 devc
	arrive bsmcnt(0)
	stg_b128 r4, 0x0, r0 devc
	.loc	2 24 1 is_stmt 1                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:24:1
	snop 1
	endk
.Ltmp7:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 9
		.macahca_streg_size 1
		.macahca_priority 0
		.macahca_float_mode 192
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
; codeLenInByte = 2040
; NumMTRegsForWarps/PEU: 70
; NumSTRegsForWarps/PEU: 11
; MaxWarpsPerPEU: 7
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 26 0                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:26:0
; %bb.0:                                ; %entry
	ldu_b128 s12, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 3, r1
	mov_b32 r2, s5
	shl_or_b32 r2, 18, r2, r0
.Ltmp8:
	.loc	2 52 66 prologue_end            ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:52:66
	shl_b32 r6, 1, r2
	mov_b32 r5, 0
	arrive slcnt(0)
	add_co_u32 r3, s12, r6
	mov_b32 r4, s13
	addc_co_u32 r4, r4, r5
	add_co_u32 r8, 0x1000, r3
	addc_co_u32 r9, r4, 0
	add_co_u32 r10, 0x2000, r3
	addc_co_u32 r11, r4, 0
	.loc	2 52 48 is_stmt 0               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:52:48
	ldg_b128 r142, r8, 0x0
	.loc	2 52 66                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:52:66
	add_co_u32 r8, 0x3000, r3
	addc_co_u32 r9, r4, 0
	.loc	2 52 48                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:52:48
	ldg_b128 r146, r10, 0x0
	ldg_b128 r154, s12, r6, 0x0
	ldg_b128 r158, r8, 0x0
	ldu_b256 s16, s0, 0x0
	smov_b32 s8, s5
	.loc	2 33 19 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:33:19
	smov_b32 s9, 0
	sshl_b64 s2, 2, s8
	shr_b32 r4, 1, r1
	shr_b32 r10, 5, r1
	and_b32 r20, r0, 32
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s6, s2, 0x0
	ldu_b64 s2, s0, 0x30
	and_b32 r3, 0x1e0, r4
	add_shl_u32 r4, r10, r4, 4
	add_u32 r7, r20, r1
	and_b32 r8, r0, 16
	mul_u24 r9, r1, 9
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 34 20                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:34:20
	sshl_b64 s10, 2, s6
	sadd_co_u32 s0, s22, s10
	saddc_co_u32 s1, s23, s11
	.loc	2 35 22                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:35:22
	sadd_co_u32 s10, s20, s10
	saddc_co_u32 s11, s21, s11
	.loc	2 34 20                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:34:20
	ldu_b32 s0, s0, 0x0
	.loc	2 35 22                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:35:22
	ldu_b32 s1, s10, 0x0
	sshl_b32 s5, 7, s5
	shl_b32 r6, 8, r1
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r1
	and_or_b32 r5, r1, 15, r3
	arrive slcnt(0)
	ssub_co_i32 s0, s0, s5
	sadd_co_i32 s0, s0, s1
	sadd_co_u32 s10, 0x4000, s12
	saddc_co_u32 s11, s13, 0
	sshl_b32 s5, 24, s6
	sshl_b32 s9, 18, s4
	sadd_co_u32 s18, 0x40000, s16
	saddc_co_u32 s19, s17, 0
	sadd_co_u32 s20, 0x40000, s14
	saddc_co_u32 s21, s15, 0
	sadd_co_u32 s24, 0x40080, s16
	saddc_co_u32 s25, s17, 0
	add_u32 r8, r8, r1
	sadd_co_u32 s26, 0x40080, s14
	and_b32 r28, 0x3f800, r6
	add_shl_u32 r13, r4, r1, 3
	and_b32 r6, 0x1fc0, r0
	and_b32 r7, r7, 32
	and_b32 r9, r9, 8
	or_b32 r4, r5, 16
	saddc_co_u32 s27, s15, 0
	cmp_lt_i32 s22, r3, s0
	shl_b32 r3, 6, r1
	and_b32 r8, r8, 16
	cmp_lt_i32 s6, r5, s0
	or_b32 r5, r6, r7
	cmp_lt_i32 s0, r4, s0
	or_b32 r4, r7, r9
	and_b32 r19, 0x3c0, r3
	sadd_co_u32 s12, 0x8000, s12
	or3_b32 r4, r4, r6, r8
	and_or_b32 r27, r13, 8, r12
	or3_b32 r5, r5, r8, r9
	mov_b32 r6, 0x1000
	saddc_co_u32 s13, s13, 0
	shl_b32 r10, 1, r4
	shl_add_u32 r11, 1, r5, r6
	or_b32 r21, r27, r19
	sadd_co_i32 s28, 0x2000, 0
	or_b32 r22, 0x400, r19
	or_b32 r23, r27, r20
	or_b32 r24, 0x800, r19
	or_b32 r25, 0xc00, r19
	or_b32 r26, 0x1000, r19
	or_b32 r30, 0x1400, r19
	or_b32 r31, 0x1800, r19
	or_b32 r32, 0x1c00, r19
	xor_b32 r33, r20, 32
	or_b32 r12, r21, r20
	or_b32 r20, r21, r33
	or_b32 r13, r23, r22
	or_b32 r14, r23, r24
	or_b32 r15, r23, r25
	or_b32 r16, r23, r26
	or_b32 r17, r23, r30
	or_b32 r18, r23, r31
	or_b32 r19, r23, r32
	or3_b32 r23, r27, r25, r33
	or3_b32 r21, r27, r22, r33
	or3_b32 r22, r27, r24, r33
	or3_b32 r24, r27, r26, r33
	or3_b32 r25, r27, r30, r33
	or3_b32 r26, r27, r31, r33
	add_u32 r6, s28, r10
	add_u32 r7, s28, r11
	sadd_co_i32 s28, 0x4000, 0
	.loc	2 0 0 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:0
	shl_b64 r30, 0, 0
	shl_b64 r178, 0, 0
	or3_b32 r27, r27, r32, r33
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
	shl_b64 r150, 0, r30
	shl_b64 r166, 0, r30
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
	shl_b64 r162, 0, r30
	shl_b64 r170, 0, r30
	and_b32 r29, r0, 56
	add_u32 r8, s28, r10
	add_u32 r9, s28, r11
	sadd_co_i32 s28, 0x6000, 0
	.loc	2 54 3 is_stmt 1                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:54:3
	sadd_co_i32 s5, s5, s9
	shr_b32 r3, 2, r1
	add_u32 r4, 0, r10
	add_u32 r5, 0, r11
	add_u32 r10, s28, r10
	add_u32 r11, s28, r11
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
	or3_b32 r174, s5, r28, r29
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
	shl_b64 r152, 0, r32
	shl_b64 r168, 0, r32
	shl_b64 r36, 0, r32
	shl_b64 r44, 0, r32
	shl_b64 r52, 0, r32
	shl_b64 r176, 0, r178
	shl_b64 r186, 0, r178
	shl_b64 r184, 0, r178
	shl_b64 r190, 0, r178
	shl_b64 r188, 0, r178
	shl_b64 r182, 0, r178
	shl_b64 r180, 0, r178
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
	shl_b64 r164, 0, r32
	shl_b64 r172, 0, r32
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %for.inc1037
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 54 31 is_stmt 0               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:54:31
	sadd_co_u32 s30, 0x80, s30
	saddc_co_u32 s31, s31, 0
	scmp_eq_u64 0x800, s30
	add_u32 r2, 0x4000, r2
	.loc	2 54 3                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:54:3
	bra_smsks LBB3_26
LBB3_2:                                 ; %for.cond74.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 56 11 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:56:11
	and_xmsk s34, s6
	snop 0
	bra_xmsks LBB3_20
; %bb.3:                                ; %for.inc105
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:56:11
	and_xmsk s34, s0
	snop 0
	bra_xmsks LBB3_21
LBB3_4:                                 ; %for.inc105.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:56:11
	and_xmsk s34, s6
	snop 0
	bra_xmsks LBB3_22
LBB3_5:                                 ; %for.inc105.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:56:11
	and_xmsk s34, s0
	snop 0
	bra_xmskz LBB3_7
LBB3_6:                                 ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	mad_u32 r28, r2, 2, s10
	add_co_u32 r28, 0x3000, r28
	addc_co_u32 r29, r29, 0
	.loc	2 57 56 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:57:56
	snop 1
	ldg_b128 r176, r28, 0x0
LBB3_7:                                 ; %for.inc105.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s34
	.loc	2 62 362 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:62:362
	add_co_u32 r28, r174, s30
	add_u32 r29, 0x10000, r28
	mad_i32 r192, r28, 2, s16
	mad_i32 r194, r29, 2, s16
	.loc	2 66 371                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:66:371
	mad_i32 r200, r28, 2, s18
	mad_i32 r202, r29, 2, s18
	.loc	2 70 369                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:70:369
	mad_i32 r208, r28, 2, s14
	mad_i32 r210, r29, 2, s14
	.loc	2 74 370                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:74:370
	mad_i32 r216, r28, 2, s20
	mad_i32 r218, r29, 2, s20
	.loc	2 62 345                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:62:345
	ldg_b128 r196, r192, 0x0
	ldg_b128 r192, r194, 0x0
	.loc	2 66 354                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:66:354
	ldg_b128 r204, r200, 0x0
	ldg_b128 r200, r202, 0x0
	.loc	2 70 354                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:70:354
	ldg_b128 r212, r208, 0x0
	ldg_b128 r208, r210, 0x0
	.loc	2 74 355                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:74:355
	ldg_b128 r220, r216, 0x0
	ldg_b128 r216, r218, 0x0
	.loc	2 62 345                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:62:345
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r196
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r192
	.loc	2 66 354                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:66:354
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r204
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r200
	.loc	2 70 354                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:70:354
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r212
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r208
	.loc	2 74 355                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:74:355
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r220
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r216
.Ltmp9:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 77 9                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:77:9
	and_xmsk s34, s22
	snop 0
	bra_xmskz LBB3_9
; %bb.8:                                ; %for.cond370.preheader.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r192, r12, 0x0
	lds_b128 r196, r13, 0x0
	lds_b128 r200, r14, 0x0
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	add_i32 r175, 0x4000, r12
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r192, r154, r166
	mma_16x16x16f16 r86, r192, r142, r86
	mma_16x16x16f16 r166, r194, r156, r166
	mma_16x16x16f16 r86, r194, r144, r86
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r192, r15, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r196, r154, r150
	mma_16x16x16f16 r78, r196, r142, r78
	mma_16x16x16f16 r150, r198, r156, r150
	mma_16x16x16f16 r78, r198, r144, r78
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r196, r16, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r200, r154, r134
	mma_16x16x16f16 r70, r200, r142, r70
	mma_16x16x16f16 r134, r202, r156, r134
	mma_16x16x16f16 r70, r202, r144, r70
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r200, r17, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r154, r126
	mma_16x16x16f16 r62, r192, r142, r62
	mma_16x16x16f16 r126, r194, r156, r126
	mma_16x16x16f16 r62, r194, r144, r62
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r192, r18, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r196, r154, r118
	mma_16x16x16f16 r54, r196, r142, r54
	mma_16x16x16f16 r118, r198, r156, r118
	mma_16x16x16f16 r54, r198, r144, r54
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r196, r19, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r200, r154, r110
	mma_16x16x16f16 r46, r200, r142, r46
	mma_16x16x16f16 r110, r202, r156, r110
	mma_16x16x16f16 r46, r202, r144, r46
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r200, r175, 0x0
	add_i32 r175, 0x4000, r13
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r192, r154, r102
	mma_16x16x16f16 r38, r192, r142, r38
	mma_16x16x16f16 r102, r194, r156, r102
	mma_16x16x16f16 r38, r194, r144, r38
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r192, r175, 0x0
	add_i32 r175, 0x4000, r14
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r196, r154, r94
	mma_16x16x16f16 r30, r196, r142, r30
	mma_16x16x16f16 r94, r198, r156, r94
	mma_16x16x16f16 r30, r198, r144, r30
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r196, r175, 0x0
	add_i32 r175, 0x4000, r15
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r200, r154, r170
	mma_16x16x16f16 r90, r200, r142, r90
	mma_16x16x16f16 r170, r202, r156, r170
	mma_16x16x16f16 r90, r202, r144, r90
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r200, r175, 0x0
	add_i32 r175, 0x4000, r16
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r192, r154, r162
	mma_16x16x16f16 r82, r192, r142, r82
	mma_16x16x16f16 r162, r194, r156, r162
	mma_16x16x16f16 r82, r194, r144, r82
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r192, r175, 0x0
	add_i32 r175, 0x4000, r17
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r196, r154, r138
	mma_16x16x16f16 r74, r196, r142, r74
	mma_16x16x16f16 r138, r198, r156, r138
	mma_16x16x16f16 r74, r198, r144, r74
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r196, r175, 0x0
	add_i32 r175, 0x4000, r18
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r200, r154, r130
	mma_16x16x16f16 r66, r200, r142, r66
	mma_16x16x16f16 r130, r202, r156, r130
	mma_16x16x16f16 r66, r202, r144, r66
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r200, r175, 0x0
	add_i32 r175, 0x4000, r19
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r192, r154, r122
	mma_16x16x16f16 r58, r192, r142, r58
	mma_16x16x16f16 r122, r194, r156, r122
	mma_16x16x16f16 r58, r194, r144, r58
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r192, r175, 0x0
	add_i32 r175, 0x4000, r20
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r196, r154, r114
	mma_16x16x16f16 r50, r196, r142, r50
	mma_16x16x16f16 r114, r198, r156, r114
	mma_16x16x16f16 r50, r198, r144, r50
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r196, r20, 0x0
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r200, r154, r106
	mma_16x16x16f16 r42, r200, r142, r42
	mma_16x16x16f16 r106, r202, r156, r106
	mma_16x16x16f16 r42, r202, r144, r42
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r200, r21, 0x0
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r192, r154, r98
	mma_16x16x16f16 r34, r192, r142, r34
	mma_16x16x16f16 r98, r194, r156, r98
	mma_16x16x16f16 r34, r194, r144, r34
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r192, r22, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r196, r146, r166
	mma_16x16x16f16 r86, r196, r158, r86
	mma_16x16x16f16 r166, r198, r148, r166
	mma_16x16x16f16 r86, r198, r160, r86
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r196, r23, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r200, r146, r150
	mma_16x16x16f16 r78, r200, r158, r78
	mma_16x16x16f16 r150, r202, r148, r150
	mma_16x16x16f16 r78, r202, r160, r78
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r200, r24, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r146, r134
	mma_16x16x16f16 r70, r192, r158, r70
	mma_16x16x16f16 r134, r194, r148, r134
	mma_16x16x16f16 r70, r194, r160, r70
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r192, r25, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r196, r146, r126
	mma_16x16x16f16 r62, r196, r158, r62
	mma_16x16x16f16 r126, r198, r148, r126
	mma_16x16x16f16 r62, r198, r160, r62
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r196, r26, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r200, r146, r118
	mma_16x16x16f16 r54, r200, r158, r54
	mma_16x16x16f16 r118, r202, r148, r118
	mma_16x16x16f16 r54, r202, r160, r54
	.loc	2 80 45                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:80:45
	lds_b128 r200, r27, 0x0
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r192, r146, r110
	mma_16x16x16f16 r46, r192, r158, r46
	mma_16x16x16f16 r110, r194, r148, r110
	mma_16x16x16f16 r46, r194, r160, r46
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r192, r175, 0x0
	add_i32 r175, 0x4000, r21
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r196, r146, r102
	mma_16x16x16f16 r38, r196, r158, r38
	mma_16x16x16f16 r102, r198, r148, r102
	mma_16x16x16f16 r38, r198, r160, r38
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r196, r175, 0x0
	add_i32 r175, 0x4000, r22
	.loc	2 86 57                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:86:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r200, r146, r94
	mma_16x16x16f16 r30, r200, r158, r30
	mma_16x16x16f16 r94, r202, r148, r94
	mma_16x16x16f16 r30, r202, r160, r30
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r200, r175, 0x0
	add_i32 r175, 0x4000, r23
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r192, r146, r170
	mma_16x16x16f16 r90, r192, r158, r90
	mma_16x16x16f16 r170, r194, r148, r170
	mma_16x16x16f16 r90, r194, r160, r90
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r192, r175, 0x0
	add_i32 r175, 0x4000, r24
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r196, r146, r162
	mma_16x16x16f16 r82, r196, r158, r82
	mma_16x16x16f16 r162, r198, r148, r162
	mma_16x16x16f16 r82, r198, r160, r82
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r196, r175, 0x0
	add_i32 r175, 0x4000, r25
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r200, r146, r138
	mma_16x16x16f16 r74, r200, r158, r74
	mma_16x16x16f16 r138, r202, r148, r138
	mma_16x16x16f16 r74, r202, r160, r74
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r200, r175, 0x0
	add_i32 r175, 0x4000, r26
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r192, r146, r130
	mma_16x16x16f16 r66, r192, r158, r66
	mma_16x16x16f16 r130, r194, r148, r130
	mma_16x16x16f16 r66, r194, r160, r66
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r192, r175, 0x0
	add_i32 r175, 0x4000, r27
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r196, r146, r122
	mma_16x16x16f16 r58, r196, r158, r58
	mma_16x16x16f16 r122, r198, r148, r122
	mma_16x16x16f16 r58, r198, r160, r58
	.loc	2 94 47                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:94:47
	lds_b128 r196, r175, 0x0
	.loc	2 100 55                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:100:55
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r200, r146, r114
	mma_16x16x16f16 r50, r200, r158, r50
	mma_16x16x16f16 r114, r202, r148, r114
	mma_16x16x16f16 r50, r202, r160, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r192, r146, r106
	mma_16x16x16f16 r42, r192, r158, r42
	mma_16x16x16f16 r106, r194, r148, r106
	mma_16x16x16f16 r42, r194, r160, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r196, r146, r98
	mma_16x16x16f16 r34, r196, r158, r34
	mma_16x16x16f16 r98, r198, r148, r98
	mma_16x16x16f16 r34, r198, r160, r34
LBB3_9:                                 ; %if.end548
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 55 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:55
	sor_b64 xmsk, xmsk, s34
.Ltmp11:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp12:
	.loc	2 110 16                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:110:16
	mov_b32 r192, 0x780
	mov_b32 r193, 0
	cmp_lg_u64 s34, s30, r192
	scmp_eq_u64 0x780, s30
	.loc	2 110 9 is_stmt 0               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:110:9
	snop 0
	bra_smsks LBB3_16
; %bb.10:                               ; %for.cond551.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 112 13 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:112:13
	and_xmsk s36, s6
	snop 0
	bra_xmsks LBB3_23
; %bb.11:                               ; %for.inc587
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:112:13
	and_xmsk s36, s0
	snop 0
	bra_xmsks LBB3_24
LBB3_12:                                ; %for.inc587.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:112:13
	and_xmsk s36, s6
	snop 0
	bra_xmsks LBB3_25
LBB3_13:                                ; %for.inc587.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:112:13
	and_xmsk s36, s0
	snop 0
	bra_xmskz LBB3_15
LBB3_14:                                ; %if.then569.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:13
	mad_u32 r158, r2, 2, s12
	add_co_u32 r158, 0x3000, r158
	addc_co_u32 r159, r159, 0
	.loc	2 113 56 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:113:56
	snop 1
	ldg_b128 r158, r158, 0x0
LBB3_15:                                ; %Flow
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s36
LBB3_16:                                ; %if.end590
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 119 362 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:119:362
	add_u32 r175, r28, 64
	add_u32 r192, 0x10040, r28
	mad_i32 r194, r175, 2, s16
	mad_i32 r196, r192, 2, s16
	.loc	2 123 372                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:123:372
	mad_i32 r202, r28, 2, s24
	mad_i32 r204, r29, 2, s24
	.loc	2 127 370                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:127:370
	mad_i32 r210, r175, 2, s14
	mad_i32 r192, r192, 2, s14
	.loc	2 119 345                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:119:345
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	.loc	2 123 355                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:123:355
	ldg_b128 r206, r202, 0x0
	ldg_b128 r202, r204, 0x0
	.loc	2 127 355                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:127:355
	ldg_b128 r210, r210, 0x0
	ldg_b128 r214, r192, 0x0
	.loc	2 131 371                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:131:371
	mad_i32 r192, r28, 2, s26
	mad_i32 r28, r29, 2, s26
	.loc	2 131 356 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:131:356
	snop 0
	ldg_b128 r218, r192, 0x0
	ldg_b128 r222, r28, 0x0
	.loc	2 119 345 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:119:345
	arrive gvmcnt(7)
	sts_b128 r4, 0x0, r198
	arrive gvmcnt(6)
	sts_b128 r5, 0x0, r194
	.loc	2 123 355                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:123:355
	arrive gvmcnt(5)
	sts_b128 r6, 0x0, r206
	arrive gvmcnt(4)
	sts_b128 r7, 0x0, r202
	.loc	2 127 355                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:127:355
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r210
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r214
	.loc	2 131 356                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:131:356
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r218
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r222
.Ltmp13:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp14:
	.loc	2 134 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:134:9
	and_xmsk s36, s22
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %for.cond855.preheader.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r192, r12, 0x0
	lds_b128 r196, r13, 0x0
	lds_b128 r200, r14, 0x0
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	add_i32 r28, 0x4000, r12
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r192, r180, r166
	mma_16x16x16f16 r86, r192, r188, r86
	mma_16x16x16f16 r166, r194, r182, r166
	mma_16x16x16f16 r86, r194, r190, r86
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r192, r15, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r196, r180, r150
	mma_16x16x16f16 r78, r196, r188, r78
	mma_16x16x16f16 r150, r198, r182, r150
	mma_16x16x16f16 r78, r198, r190, r78
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r196, r16, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r200, r180, r134
	mma_16x16x16f16 r70, r200, r188, r70
	mma_16x16x16f16 r134, r202, r182, r134
	mma_16x16x16f16 r70, r202, r190, r70
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r200, r17, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r180, r126
	mma_16x16x16f16 r62, r192, r188, r62
	mma_16x16x16f16 r126, r194, r182, r126
	mma_16x16x16f16 r62, r194, r190, r62
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r192, r18, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r196, r180, r118
	mma_16x16x16f16 r54, r196, r188, r54
	mma_16x16x16f16 r118, r198, r182, r118
	mma_16x16x16f16 r54, r198, r190, r54
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r196, r19, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r200, r180, r110
	mma_16x16x16f16 r46, r200, r188, r46
	mma_16x16x16f16 r110, r202, r182, r110
	mma_16x16x16f16 r46, r202, r190, r46
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r13
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r192, r180, r102
	mma_16x16x16f16 r38, r192, r188, r38
	mma_16x16x16f16 r102, r194, r182, r102
	mma_16x16x16f16 r38, r194, r190, r38
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r14
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r196, r180, r94
	mma_16x16x16f16 r30, r196, r188, r30
	mma_16x16x16f16 r94, r198, r182, r94
	mma_16x16x16f16 r30, r198, r190, r30
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r196, r28, 0x0
	add_i32 r28, 0x4000, r15
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r200, r180, r170
	mma_16x16x16f16 r90, r200, r188, r90
	mma_16x16x16f16 r170, r202, r182, r170
	mma_16x16x16f16 r90, r202, r190, r90
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r16
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r192, r180, r162
	mma_16x16x16f16 r82, r192, r188, r82
	mma_16x16x16f16 r162, r194, r182, r162
	mma_16x16x16f16 r82, r194, r190, r82
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r17
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r196, r180, r138
	mma_16x16x16f16 r74, r196, r188, r74
	mma_16x16x16f16 r138, r198, r182, r138
	mma_16x16x16f16 r74, r198, r190, r74
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r196, r28, 0x0
	add_i32 r28, 0x4000, r18
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r200, r180, r130
	mma_16x16x16f16 r66, r200, r188, r66
	mma_16x16x16f16 r130, r202, r182, r130
	mma_16x16x16f16 r66, r202, r190, r66
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r19
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r192, r180, r122
	mma_16x16x16f16 r58, r192, r188, r58
	mma_16x16x16f16 r122, r194, r182, r122
	mma_16x16x16f16 r58, r194, r190, r58
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r20
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r196, r180, r114
	mma_16x16x16f16 r50, r196, r188, r50
	mma_16x16x16f16 r114, r198, r182, r114
	mma_16x16x16f16 r50, r198, r190, r50
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r196, r20, 0x0
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r200, r180, r106
	mma_16x16x16f16 r42, r200, r188, r42
	mma_16x16x16f16 r106, r202, r182, r106
	mma_16x16x16f16 r42, r202, r190, r42
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r200, r21, 0x0
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r192, r180, r98
	mma_16x16x16f16 r34, r192, r188, r34
	mma_16x16x16f16 r98, r194, r182, r98
	mma_16x16x16f16 r34, r194, r190, r34
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r192, r22, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r196, r184, r166
	mma_16x16x16f16 r86, r196, r176, r86
	mma_16x16x16f16 r166, r198, r186, r166
	mma_16x16x16f16 r86, r198, r178, r86
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r196, r23, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r200, r184, r150
	mma_16x16x16f16 r78, r200, r176, r78
	mma_16x16x16f16 r150, r202, r186, r150
	mma_16x16x16f16 r78, r202, r178, r78
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r200, r24, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r184, r134
	mma_16x16x16f16 r70, r192, r176, r70
	mma_16x16x16f16 r134, r194, r186, r134
	mma_16x16x16f16 r70, r194, r178, r70
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r192, r25, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r196, r184, r126
	mma_16x16x16f16 r62, r196, r176, r62
	mma_16x16x16f16 r126, r198, r186, r126
	mma_16x16x16f16 r62, r198, r178, r62
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r196, r26, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r200, r184, r118
	mma_16x16x16f16 r54, r200, r176, r54
	mma_16x16x16f16 r118, r202, r186, r118
	mma_16x16x16f16 r54, r202, r178, r54
	.loc	2 137 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:137:47
	lds_b128 r200, r27, 0x0
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r192, r184, r110
	mma_16x16x16f16 r46, r192, r176, r46
	mma_16x16x16f16 r110, r194, r186, r110
	mma_16x16x16f16 r46, r194, r178, r46
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r21
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r196, r184, r102
	mma_16x16x16f16 r38, r196, r176, r38
	mma_16x16x16f16 r102, r198, r186, r102
	mma_16x16x16f16 r38, r198, r178, r38
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r196, r28, 0x0
	add_i32 r28, 0x4000, r22
	.loc	2 143 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:143:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r200, r184, r94
	mma_16x16x16f16 r30, r200, r176, r30
	mma_16x16x16f16 r94, r202, r186, r94
	mma_16x16x16f16 r30, r202, r178, r30
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r23
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r170, r192, r184, r170
	mma_16x16x16f16 r90, r192, r176, r90
	mma_16x16x16f16 r170, r194, r186, r170
	mma_16x16x16f16 r90, r194, r178, r90
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r24
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r196, r184, r162
	mma_16x16x16f16 r82, r196, r176, r82
	mma_16x16x16f16 r162, r198, r186, r162
	mma_16x16x16f16 r82, r198, r178, r82
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r196, r28, 0x0
	add_i32 r28, 0x4000, r25
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r200, r184, r138
	mma_16x16x16f16 r74, r200, r176, r74
	mma_16x16x16f16 r138, r202, r186, r138
	mma_16x16x16f16 r74, r202, r178, r74
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r200, r28, 0x0
	add_i32 r28, 0x4000, r26
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r192, r184, r130
	mma_16x16x16f16 r66, r192, r176, r66
	mma_16x16x16f16 r130, r194, r186, r130
	mma_16x16x16f16 r66, r194, r178, r66
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r192, r28, 0x0
	add_i32 r28, 0x4000, r27
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r196, r184, r122
	mma_16x16x16f16 r58, r196, r176, r58
	mma_16x16x16f16 r122, r198, r186, r122
	mma_16x16x16f16 r58, r198, r178, r58
	.loc	2 151 47                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:151:47
	lds_b128 r196, r28, 0x0
	.loc	2 157 56                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:157:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r200, r184, r114
	mma_16x16x16f16 r50, r200, r176, r50
	mma_16x16x16f16 r114, r202, r186, r114
	mma_16x16x16f16 r50, r202, r178, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r192, r184, r106
	mma_16x16x16f16 r42, r192, r176, r42
	mma_16x16x16f16 r106, r194, r186, r106
	mma_16x16x16f16 r42, r194, r178, r42
	arrive bsmcnt(0)
	mma_16x16x16f16 r98, r196, r184, r98
	mma_16x16x16f16 r34, r196, r176, r34
	mma_16x16x16f16 r98, r198, r186, r98
	mma_16x16x16f16 r34, r198, r178, r34
LBB3_18:                                ; %if.end1033
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s36
	.loc	2 166 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:166:9
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
	mad_u32 r28, r2, 2, s10
	.loc	2 57 56 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:57:56
	snop 1
	ldg_b128 r180, r28, 0x0
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:56:11
	and_xmsk s34, s0
	snop 0
	bra_xmskz LBB3_4
LBB3_21:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	mad_u32 r28, r2, 2, s10
	add_co_u32 r28, 0x1000, r28
	addc_co_u32 r29, r29, 0
	.loc	2 57 56 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:57:56
	snop 1
	ldg_b128 r188, r28, 0x0
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:56:11
	and_xmsk s34, s6
	snop 0
	bra_xmskz LBB3_5
LBB3_22:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	mad_u32 r28, r2, 2, s10
	add_co_u32 r28, 0x2000, r28
	addc_co_u32 r29, r29, 0
	.loc	2 57 56 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:57:56
	snop 1
	ldg_b128 r184, r28, 0x0
	sor_b64 xmsk, xmsk, s34
	.loc	2 56 11                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:56:11
	and_xmsk s34, s0
	snop 0
	bra_xmsks LBB3_6
	bra LBB3_7
	.p2align	5
LBB3_23:                                ; %if.then569
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	mad_u32 r154, r2, 2, s12
	.loc	2 113 56 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:113:56
	snop 1
	ldg_b128 r154, r154, 0x0
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:112:13
	and_xmsk s36, s0
	snop 0
	bra_xmskz LBB3_12
LBB3_24:                                ; %if.then569.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:13
	mad_u32 r142, r2, 2, s12
	add_co_u32 r142, 0x1000, r142
	addc_co_u32 r143, r143, 0
	.loc	2 113 56 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:113:56
	snop 1
	ldg_b128 r142, r142, 0x0
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:112:13
	and_xmsk s36, s6
	snop 0
	bra_xmskz LBB3_13
LBB3_25:                                ; %if.then569.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:13
	mad_u32 r146, r2, 2, s12
	add_co_u32 r146, 0x2000, r146
	addc_co_u32 r147, r147, 0
	.loc	2 113 56 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:113:56
	snop 1
	ldg_b128 r146, r146, 0x0
	sor_b64 xmsk, xmsk, s36
	.loc	2 112 13                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:112:13
	and_xmsk s36, s0
	snop 0
	bra_xmsks LBB3_14
	bra LBB3_15
LBB3_26:                                ; %for.cond1040.preheader
	.loc	2 0 13 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:13
	shl_b32 r1, 2, r1
	sshl_b32 s5, 20, s8
	sshl_b32 s4, 14, s4
	and_b32 r2, 0x1e00, r0
	and_b32 r1, 0x80, r1
	sadd_co_i32 s4, s5, s4
	and_b32 r0, 0x78, r0
	and_b32 r3, r3, 4
	or3_b32 r1, s4, r2, r1
	or3_b32 r0, r1, r0, r3
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_43
; %bb.27:                               ; %if.end1227
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_44
LBB3_28:                                ; %if.end1227.1
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_45
LBB3_29:                                ; %if.end1227.2
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_46
LBB3_30:                                ; %if.end1227.3
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_47
LBB3_31:                                ; %if.end1227.4
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_48
LBB3_32:                                ; %if.end1227.5
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_49
LBB3_33:                                ; %if.end1227.6
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmsks LBB3_50
LBB3_34:                                ; %if.end1227.7
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_51
LBB3_35:                                ; %if.end1227.8
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_52
LBB3_36:                                ; %if.end1227.9
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_53
LBB3_37:                                ; %if.end1227.10
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_54
LBB3_38:                                ; %if.end1227.11
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_55
LBB3_39:                                ; %if.end1227.12
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_56
LBB3_40:                                ; %if.end1227.13
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_57
LBB3_41:                                ; %if.end1227.14
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_58
LBB3_42:                                ; %if.end1227.15
	.loc	2 226 1 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:226:1
	snop 1
	endk
LBB3_43:                                ; %if.then1157
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r169
.Ltmp17:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp18:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r168
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s8
	csel_b32 r4, r1, r2, s8
.Ltmp20:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r169, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp22:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r167
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s8
	csel_b32 r5, r1, r2, s8
.Ltmp24:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r168, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp26:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r166
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp27:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s8
	csel_b32 r6, r1, r2, s8
.Ltmp28:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp29:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r167, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp30:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp31:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s8
	csel_b32 r2, r3, 0, s8
	fmka_f32 r2, r166, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp32:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r169, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r166, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r168, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r167, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r170
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r171
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r172
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r173
.Ltmp33:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp34:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp35:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp36:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp37:
	.loc	2 223 333 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	snop 0
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_28
LBB3_44:                                ; %if.then1157.1
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r153
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp39:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r152
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s8
	csel_b32 r4, r1, r2, s8
.Ltmp41:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r153, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp43:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r151
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s8
	csel_b32 r5, r1, r2, s8
.Ltmp45:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp46:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r152, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp47:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r150
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp48:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s8
	csel_b32 r6, r1, r2, s8
.Ltmp49:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp50:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r151, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp51:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp52:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s8
	csel_b32 r2, r3, 0, s8
	fmka_f32 r2, r150, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp53:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r153, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r150, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r152, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r151, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r162
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r163
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r164
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r165
.Ltmp54:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp55:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp56:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp57:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp58:
	.loc	2 223 290 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:290
	snop 0
	or_b32 r3, 0x100, r0
	.loc	2 223 27 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	mad_i32 r6, r3, 2, s2
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_29
LBB3_45:                                ; %if.then1157.2
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r137
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp60:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r136
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s8
	csel_b32 r4, r1, r2, s8
.Ltmp62:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r137, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp64:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r135
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp65:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s8
	csel_b32 r5, r1, r2, s8
.Ltmp66:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp67:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r136, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp68:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r134
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp69:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s8
	csel_b32 r6, r1, r2, s8
.Ltmp70:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp71:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r135, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp72:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp73:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s8
	csel_b32 r2, r3, 0, s8
	fmka_f32 r2, r134, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp74:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r137, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r134, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r136, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r135, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r138
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r139
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r140
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r141
.Ltmp75:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp76:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp77:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp78:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp79:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x2000, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_30
LBB3_46:                                ; %if.then1157.3
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r129
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp81:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r128
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s8
	csel_b32 r4, r1, r2, s8
.Ltmp83:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp84:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r129, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp85:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r127
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp86:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s8
	csel_b32 r5, r1, r2, s8
.Ltmp87:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp88:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r128, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp89:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r126
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp90:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s8
	csel_b32 r6, r1, r2, s8
.Ltmp91:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp92:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r127, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp93:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp94:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s8
	csel_b32 r2, r3, 0, s8
	fmka_f32 r2, r126, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp95:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r129, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r126, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r128, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r127, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r130
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r131
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r132
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r133
.Ltmp96:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp97:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp98:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp99:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp100:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x2200, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_31
LBB3_47:                                ; %if.then1157.4
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r121
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp102:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r120
.Ltmp103:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s8
	csel_b32 r4, r1, r2, s8
.Ltmp104:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp105:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r121, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp106:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r119
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp107:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s8
	csel_b32 r5, r1, r2, s8
.Ltmp108:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp109:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r120, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp110:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r118
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp111:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s8
	csel_b32 r6, r1, r2, s8
.Ltmp112:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp113:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r119, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp114:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp115:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s8
	csel_b32 r2, r3, 0, s8
	fmka_f32 r2, r118, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp116:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r121, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r118, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r120, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r119, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r122
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r123
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r124
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r125
.Ltmp117:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp118:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp119:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp120:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp121:
	.loc	2 223 152 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:152
	snop 0
	or_b32 r3, 0x2000, r0
	.loc	2 223 27 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	mad_i32 r6, r3, 2, s2
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_32
LBB3_48:                                ; %if.then1157.5
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r113
.Ltmp122:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp123:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r112
.Ltmp124:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s8
	csel_b32 r4, r1, r2, s8
.Ltmp125:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp126:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r113, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp127:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r111
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp128:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s8
	csel_b32 r5, r1, r2, s8
.Ltmp129:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp130:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r112, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp131:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r110
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp132:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s8
	csel_b32 r6, r1, r2, s8
.Ltmp133:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp134:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r111, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp135:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp136:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s8
	csel_b32 r2, r3, 0, s8
	fmka_f32 r2, r110, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp137:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r113, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r110, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r112, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r111, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r114
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r115
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r116
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r117
.Ltmp138:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp139:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp140:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp142:
	.loc	2 223 290 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:290
	snop 0
	or_b32 r3, 0x2100, r0
	.loc	2 223 27 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	mad_i32 r6, r3, 2, s2
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_33
LBB3_49:                                ; %if.then1157.6
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r105
.Ltmp143:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp144:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r104
.Ltmp145:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s8
	csel_b32 r4, r1, r2, s8
.Ltmp146:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r6
.Ltmp147:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r105, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp148:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r103
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp149:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s8
	csel_b32 r5, r1, r2, s8
.Ltmp150:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r7
.Ltmp151:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r104, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp152:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r102
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp153:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s8
	csel_b32 r6, r1, r2, s8
.Ltmp154:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r8
.Ltmp155:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r103, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp156:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp157:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s8
	csel_b32 r2, r3, 0, s8
	fmka_f32 r2, r102, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp158:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r105, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r102, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r104, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r103, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r106
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r107
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r108
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r109
.Ltmp159:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp160:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp161:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp163:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x6000, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_34
LBB3_50:                                ; %if.then1157.7
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r97
.Ltmp164:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp165:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r96
.Ltmp166:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s6
	csel_b32 r4, r1, r2, s6
.Ltmp167:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp168:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r97, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp169:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r95
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp170:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s6
	csel_b32 r5, r1, r2, s6
.Ltmp171:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp172:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r96, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp173:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r94
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp174:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s6
	csel_b32 r6, r1, r2, s6
.Ltmp175:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp176:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r95, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp177:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp178:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s6
	csel_b32 r2, r3, 0, s6
	fmka_f32 r2, r94, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp179:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r97, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r94, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r96, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r95, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r98
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r99
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r100
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r101
.Ltmp180:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp181:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp182:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp183:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp184:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x6200, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_35
LBB3_51:                                ; %if.then1157.8
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r89
.Ltmp185:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp186:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r88
.Ltmp187:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s6
	csel_b32 r4, r1, r2, s6
.Ltmp188:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp189:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r89, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp190:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r87
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp191:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s6
	csel_b32 r5, r1, r2, s6
.Ltmp192:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp193:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r88, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp194:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r86
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp195:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s6
	csel_b32 r6, r1, r2, s6
.Ltmp196:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp197:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r87, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp198:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp199:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s6
	csel_b32 r2, r3, 0, s6
	fmka_f32 r2, r86, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp200:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r89, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r86, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r88, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r87, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r90
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r91
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r92
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r93
.Ltmp201:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp202:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp203:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp204:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp205:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x1000, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_36
LBB3_52:                                ; %if.then1157.9
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r81
.Ltmp206:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp207:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r80
.Ltmp208:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s6
	csel_b32 r4, r1, r2, s6
.Ltmp209:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp210:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r81, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp211:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r79
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp212:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s6
	csel_b32 r5, r1, r2, s6
.Ltmp213:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp214:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r80, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp215:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r78
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp216:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s6
	csel_b32 r6, r1, r2, s6
.Ltmp217:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp218:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r79, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp219:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp220:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s6
	csel_b32 r2, r3, 0, s6
	fmka_f32 r2, r78, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp221:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r81, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r78, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r80, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r79, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r82
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r83
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r84
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r85
.Ltmp222:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp223:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp224:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp225:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp226:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x1200, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_37
LBB3_53:                                ; %if.then1157.10
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r73
.Ltmp227:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp228:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r72
.Ltmp229:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s6
	csel_b32 r4, r1, r2, s6
.Ltmp230:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp231:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r73, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp232:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r71
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp233:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s6
	csel_b32 r5, r1, r2, s6
.Ltmp234:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp235:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r72, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp236:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r70
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp237:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s6
	csel_b32 r6, r1, r2, s6
.Ltmp238:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp239:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r71, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp240:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s6
	csel_b32 r2, r3, 0, s6
	fmka_f32 r2, r70, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp242:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r73, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r70, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r72, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r71, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r74
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r75
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r76
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r77
.Ltmp243:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp244:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp245:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp246:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp247:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x3000, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_38
LBB3_54:                                ; %if.then1157.11
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r65
.Ltmp248:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp249:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r64
.Ltmp250:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s6
	csel_b32 r4, r1, r2, s6
.Ltmp251:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp252:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r65, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp253:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r63
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp254:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s6
	csel_b32 r5, r1, r2, s6
.Ltmp255:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp256:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r64, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp257:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r62
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp258:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s6
	csel_b32 r6, r1, r2, s6
.Ltmp259:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r63, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp261:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s6
	csel_b32 r2, r3, 0, s6
	fmka_f32 r2, r62, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp263:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r65, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r62, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r64, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r63, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r66
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r67
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r68
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r69
.Ltmp264:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp265:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp266:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp267:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp268:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x3200, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_39
LBB3_55:                                ; %if.then1157.12
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r57
.Ltmp269:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp270:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r56
.Ltmp271:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s6
	csel_b32 r4, r1, r2, s6
.Ltmp272:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp273:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r57, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp274:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r55
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp275:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s6
	csel_b32 r5, r1, r2, s6
.Ltmp276:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp277:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r56, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp278:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r54
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s6
	csel_b32 r6, r1, r2, s6
.Ltmp280:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r55, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp282:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s6
	csel_b32 r2, r3, 0, s6
	fmka_f32 r2, r54, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp284:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r57, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r54, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r56, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r55, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r58
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r59
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r60
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r61
.Ltmp285:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp286:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp287:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp288:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp289:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x5000, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_40
LBB3_56:                                ; %if.then1157.13
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r49
.Ltmp290:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp291:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r48
.Ltmp292:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s6
	csel_b32 r4, r1, r2, s6
.Ltmp293:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp294:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r49, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp295:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r47
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp296:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s6
	csel_b32 r5, r1, r2, s6
.Ltmp297:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r48, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp299:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r46
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s6
	csel_b32 r6, r1, r2, s6
.Ltmp301:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r47, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp303:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s6
	csel_b32 r2, r3, 0, s6
	fmka_f32 r2, r46, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp305:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r49, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r46, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r48, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r47, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r50
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r51
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r52
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r53
.Ltmp306:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp307:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp308:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp309:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp310:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x5200, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_41
LBB3_57:                                ; %if.then1157.14
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r41
.Ltmp311:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp312:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r40
.Ltmp313:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s6
	csel_b32 r4, r1, r2, s6
.Ltmp314:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r6
.Ltmp315:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r41, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp316:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r39
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp317:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s6
	csel_b32 r5, r1, r2, s6
.Ltmp318:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r7
.Ltmp319:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r40, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp320:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r38
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp321:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s6
	csel_b32 r6, r1, r2, s6
.Ltmp322:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r8
.Ltmp323:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r39, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp324:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp325:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s6
	csel_b32 r2, r3, 0, s6
	fmka_f32 r2, r38, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp326:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r41, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r38, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r40, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r39, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r42
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r43
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r44
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r45
.Ltmp327:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp328:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp330:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp331:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r3, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x7000, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 212 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:212:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_42
LBB3_58:                                ; %if.then1157.15
	.loc	2 194 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:194:27
	mul_f32 r1, 0xbfb8aa3b, r33
.Ltmp332:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	mov_b32 r3, 0x42800000
.Ltmp333:
	.loc	2 193 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:193:27
	mul_f32 r6, 0xbfb8aa3b, r32
.Ltmp334:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r5, r3, 0, s0
	csel_b32 r4, r1, r2, s0
.Ltmp335:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp336:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r5, r33, 0xbfb8aa3b, r5
	exp_f32 r5, r5
.Ltmp337:
	.loc	2 192 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:192:27
	mul_f32 r7, 0xbfb8aa3b, r31
	.loc	2 202 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:202:26
	fmak_f32 r4, r4, r5, 0x3f800000
.Ltmp338:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r3, 0, s0
	csel_b32 r5, r1, r2, s0
.Ltmp339:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp340:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r6, r32, 0xbfb8aa3b, r6
	exp_f32 r6, r6
.Ltmp341:
	.loc	2 191 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:191:27
	mul_f32 r8, 0xbfb8aa3b, r30
	.loc	2 201 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:201:26
	fmak_f32 r5, r5, r6, 0x3f800000
.Ltmp342:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r7, r3, 0, s0
	csel_b32 r6, r1, r2, s0
.Ltmp343:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r8
.Ltmp344:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r7, r31, 0xbfb8aa3b, r7
	exp_f32 r7, r7
.Ltmp345:
	.loc	2 206 24 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:206:24
	rcp_f32 r4, r4
	.loc	2 200 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:200:26
	fmak_f32 r6, r6, r7, 0x3f800000
.Ltmp346:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r1, r1, r2, s0
	csel_b32 r2, r3, 0, s0
	fmka_f32 r2, r30, 0xbfb8aa3b, r2
	exp_f32 r2, r2
.Ltmp347:
	.loc	2 205 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:205:24
	rcp_f32 r5, r5
	.loc	2 199 26                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:199:26
	fmak_f32 r1, r1, r2, 0x3f800000
	.loc	2 204 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:204:24
	rcp_f32 r6, r6
	.loc	2 203 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:203:24
	rcp_f32 r1, r1
	.loc	2 210 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:210:20
	mul_f32 r4, r33, r4
	.loc	2 207 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:207:20
	mul_f32 r1, r30, r1
	.loc	2 209 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:209:20
	mul_f32 r5, r32, r5
	.loc	2 208 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:208:20
	mul_f32 r6, r31, r6
	.loc	2 217 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:217:24
	mul_f32 r1, r1, r34
	.loc	2 218 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:218:24
	mul_f32 r2, r6, r35
	.loc	2 219 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:219:24
	mul_f32 r3, r5, r36
	.loc	2 220 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:220:24
	mul_f32 r4, r4, r37
.Ltmp348:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp349:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp350:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp351:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp352:
	.loc	2 223 27 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	snop 0
	mad_i32 r6, r0, 2, s2
	.loc	2 223 333 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	shl_b32 r0, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	add_co_u32 r6, 0x7200, r6
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r5
	and_b32 r1, 0xffff, r1
	.loc	2 223 27                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:27
	addc_co_u32 r7, r7, 0
	.loc	2 223 333                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:223:333
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	.loc	2 226 1 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:226:1
	snop 2
	endk
.Ltmp353:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 29
		.macahca_streg_size 3
		.macahca_priority 0
		.macahca_float_mode 192
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
; codeLenInByte = 17720
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
	.loc	2 228 0                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:228:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s40, s0, 0x0
.Ltmp354:
	.loc	2 240 25 prologue_end           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:240:25
	scmp_gt_u32 s5, 7
	.loc	2 240 7 is_stmt 0               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:240:7
	snop 0
	bra_smskz LBB4_2
; %bb.1:                                ; %if.else
	.loc	2 244 46 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:244:46
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 244 72 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:244:72
	sand_b32 s1, s4, 1
	.loc	2 244 51                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:244:51
	sor_b32 s6, s0, s1
	.loc	2 245 45 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:245:45
	sshl_b32 s0, 2, s5
	sand_b32 s0, s0, 4
	.loc	2 245 71 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:245:71
	sshr_b32 s1, 1, s4
	.loc	2 245 50                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:245:50
	sadd_co_i32 s16, s0, s1
	.loc	2 240 7 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:240:7
	bra_xmskz LBB4_3
	bra LBB4_4
LBB4_2:
                                        ; implicit-def: $streg_32bit_6
                                        ; implicit-def: $streg_32bit_16
LBB4_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:7
	smov_b32 s16, s4
	smov_b32 s6, s5
LBB4_4:                                 ; %if.end
	cmp_lt_u32 s4, s6, 24
	scmp_gt_u32 s6, 23
	smov_b64 s20, 0
	.loc	2 250 18 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:250:18
	bra_smsks LBB4_6
; %bb.5:                                ; %if.then26
	.loc	2 0 18 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:18
	smov_b32 s7, 0
	sshl_b64 s0, 2, s6
	arrive slcnt(0)
	sadd_co_u32 s0, s42, s0
	saddc_co_u32 s1, s43, s1
	.loc	2 251 15 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:251:15
	ldu_b32 s20, s0, 0x0
	arrive slcnt(0)
	sashr_i32 s21, 31, s20
LBB4_6:                                 ; %if.end29
	.loc	2 256 20                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:256:20
	sshl_b64 s2, 2, s20
	arrive slcnt(0)
	sadd_co_u32 s0, s8, s2
	saddc_co_u32 s1, s9, s3
	.loc	2 257 19                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:257:19
	sadd_co_u32 s8, s44, s2
	and_b32 r0, 0x3ff, r0
	saddc_co_u32 s9, s45, s3
	shl_b32 r2, 3, r0
	.loc	2 277 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:277:58
	shl_b64 r166, 0, 0
	.loc	2 258 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:258:22
	sadd_co_u32 s18, s46, s2
	.loc	2 269 3                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:269:3
	mad_u32 r4, r2, 2, s14
	.loc	2 258 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:258:22
	saddc_co_u32 s19, s47, s3
	sshl_b32 s3, 20, s6
	.loc	2 0 0 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:0
	smov_b32 s17, 0
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r164, 0, r166
	shl_b64 r162, 0, r166
	shl_b64 r160, 0, r166
	shl_b64 r158, 0, r166
	shl_b64 r156, 0, r166
	shl_b64 r154, 0, r166
	shl_b64 r152, 0, r166
	bra_cmsks LBB4_8
; %bb.7:                                ; %for.body56.us.preheader
	.loc	2 273 78 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:273:78
	sor_b32 s2, 0x800, s3
	.loc	2 273 39 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:273:39
	mad_u32 r8, s2, 2, r4
	mad_u32 r6, s3, 2, r4
	.loc	2 273 78                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:273:78
	sor_b32 s2, 0x1000, s3
	.loc	2 273 17                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:273:17
	ldg_b128 r156, r8, 0x0
	ldg_b128 r152, r6, 0x0
	.loc	2 273 39                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:273:39
	mad_u32 r6, s2, 2, r4
	.loc	2 273 78                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:273:78
	sor_b32 s2, 0x1800, s3
	.loc	2 273 39                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:273:39
	mad_u32 r4, s2, 2, r4
	.loc	2 273 17                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:273:17
	ldg_b128 r160, r6, 0x0
	snop 0
	ldg_b128 r164, r4, 0x0
LBB4_8:                                 ; %for.cond100.preheader
	.loc	2 0 17                          ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:17
	and_b32 r3, r2, 32
	and_b32 r4, r2, 16
	add_u32 r3, r3, r0
	add_u32 r4, r4, r0
	and_b32 r1, 0x1fc0, r2
	mul_u24 r5, r0, 9
	and_or_b32 r1, r5, 8, r1
	and_b32 r3, r3, 32
	and_b32 r4, r4, 16
	or3_b32 r4, r1, r3, r4
	shr_b32 r5, 5, r0
	shr_b32 r3, 1, r0
	add_shl_u32 r5, r5, r3, 4
	sshl_b64 s22, 25, s20
	.loc	2 279 3 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:279:3
	sshl_b64 s24, 22, s16
	sadd_co_u32 s7, s22, s24
	shl_b32 r1, 10, r0
	and_b32 r6, r5, 16
	shr_b32 r5, 4, r0
	or_b32 r22, r1, r2
	add_shl_u32 r7, r5, r0, 3
	saddc_co_u32 s17, s23, s25
	shl_b32 r2, 6, r0
	shl_b32 r8, 3, r0
	and_b32 r13, 0x3c0, r2
	and_b32 r22, 0xfe038, r22
	sadd_co_u32 s7, s40, s7
	and_b32 r14, r8, 32
	and_or_b32 r21, r7, 8, r6
	or_b32 r15, r21, r13
	or_b32 r16, 0x400, r13
	or_b32 r17, r21, r14
	or_b32 r18, 0x800, r13
	or_b32 r19, 0xc00, r13
	or_b32 r20, 0x1000, r13
	or_b32 r23, 0x1400, r13
	or_b32 r24, 0x1800, r13
	or_b32 r25, 0x1c00, r13
	xor_b32 r26, r14, 32
	shl_b32 r22, 1, r22
	saddc_co_u32 s17, s41, s17
	or_b32 r6, r15, r14
	or_b32 r14, r15, r26
	or_b32 r7, r17, r16
	or_b32 r8, r17, r18
	or_b32 r9, r17, r19
	or_b32 r10, r17, r20
	or_b32 r11, r17, r23
	or_b32 r12, r17, r24
	or_b32 r13, r17, r25
	or3_b32 r17, r21, r19, r26
	or3_b32 r19, r21, r23, r26
	or3_b32 r15, r21, r16, r26
	or3_b32 r16, r21, r18, r26
	or3_b32 r18, r21, r20, r26
	or3_b32 r20, r21, r24, r26
	or3_b32 r21, r21, r25, r26
	shl_b64 r26, 0, s14
	mov_b32 r25, 0
	add_co_u32 r22, s7, r22
	mov_b32 r23, s17
	ldu_b32 s2, s0, 0x0
	ldu_b32 s1, s8, 0x0
	ldu_b32 s0, s18, 0x0
	addc_co_u32 r23, r23, r25
	shl_b32 r24, 4, r0
	mad_u32 r26, s3, 2, r26
	add_co_u32 r24, r26, r24
	and_b32 r5, 0x380, r0
	addc_co_u32 r25, r27, 0
	cmp_lt_i32 s8, s16, 8
	cmp_gt_u32 s18, 0x80, r0
	cmp_eq_u32 s20, 0x80, r5
	add_co_u32 r168, 0x6000, r24
	.loc	2 0 0 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:0
	shl_b64 r88, 0, 0
	shl_add_u32 r4, 1, r4, 0
	.loc	2 279 3                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:279:3
	addc_co_u32 r169, r25, 0
	.loc	2 0 0                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:0
	shl_b64 r90, 0, 0
	shl_b64 r92, 0, r88
	shl_b64 r96, 0, r88
	shl_b64 r100, 0, r88
	shl_b64 r104, 0, r88
	shl_b64 r108, 0, r88
	shl_b64 r112, 0, r88
	shl_b64 r116, 0, r88
	shl_b64 r120, 0, r88
	shl_b64 r124, 0, r88
	shl_b64 r128, 0, r88
	shl_b64 r132, 0, r88
	shl_b64 r136, 0, r88
	shl_b64 r140, 0, r88
	shl_b64 r144, 0, r88
	shl_b64 r148, 0, r88
	shl_b64 r24, 0, r88
	shl_b64 r28, 0, r88
	shl_b64 r32, 0, r88
	shl_b64 r36, 0, r88
	shl_b64 r40, 0, r88
	shl_b64 r44, 0, r88
	shl_b64 r48, 0, r88
	shl_b64 r52, 0, r88
	shl_b64 r56, 0, r88
	shl_b64 r60, 0, r88
	shl_b64 r64, 0, r88
	shl_b64 r68, 0, r88
	shl_b64 r72, 0, r88
	shl_b64 r76, 0, r88
	shl_b64 r80, 0, r88
	shl_b64 r84, 0, r88
	shr_b32 r2, 2, r0
	add_u32 r5, 0x4000, r4
	shl_add_u32 r6, 1, r6, 0
	shl_add_u32 r7, 1, r7, 0
	shl_add_u32 r8, 1, r8, 0
	shl_add_u32 r9, 1, r9, 0
	shl_add_u32 r10, 1, r10, 0
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
	smov_b64 s14, 0
	shl_b64 r94, 0, r90
	shl_b64 r98, 0, r90
	shl_b64 r102, 0, r90
	shl_b64 r106, 0, r90
	shl_b64 r110, 0, r90
	shl_b64 r114, 0, r90
	shl_b64 r118, 0, r90
	shl_b64 r122, 0, r90
	shl_b64 r126, 0, r90
	shl_b64 r130, 0, r90
	shl_b64 r134, 0, r90
	shl_b64 r138, 0, r90
	shl_b64 r142, 0, r90
	shl_b64 r146, 0, r90
	shl_b64 r150, 0, r90
	shl_b64 r26, 0, r90
	shl_b64 r30, 0, r90
	shl_b64 r34, 0, r90
	shl_b64 r38, 0, r90
	shl_b64 r42, 0, r90
	shl_b64 r46, 0, r90
	shl_b64 r50, 0, r90
	shl_b64 r54, 0, r90
	shl_b64 r58, 0, r90
	shl_b64 r62, 0, r90
	shl_b64 r66, 0, r90
	shl_b64 r70, 0, r90
	shl_b64 r74, 0, r90
	shl_b64 r78, 0, r90
	shl_b64 r82, 0, r90
	shl_b64 r86, 0, r90
                                        ; implicit-def: $mtreg_64bits_184
                                        ; implicit-def: $mtreg_64bits_176
                                        ; implicit-def: $mtreg_64bits_172
                                        ; implicit-def: $mtreg_64bits_180
	bra LBB4_10
	.p2align	5
LBB4_9:                                 ; %for.inc802
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 279 31                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:279:31
	sadd_co_u32 s14, 0x100, s14
	saddc_co_u32 s15, s15, 0
	add_co_u32 r168, 0x8000, r168
	scmp_eq_u64 0x4000, s14
	addc_co_u32 r169, r169, 0
	.loc	2 279 3                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:279:3
	bra_smsks LBB4_32
LBB4_10:                                ; %for.cond105.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 282 11 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:282:11
	and_xmsk s22, s18
	snop 0
	bra_xmskz LBB4_13
; %bb.11:                               ; %for.cond113.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, r178
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r170, 0, r178
	shl_b64 r172, 0, r178
	shl_b64 r174, 0, r178
	shl_b64 r176, 0, r178
	shl_b64 r182, 0, r178
	shl_b64 r184, 0, r178
	bra_cmsks LBB4_13
; %bb.12:                               ; %for.body116.us.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 287 23 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:287:23
	add_co_u32 r178, 0xffffe000, r168
	addc_co_u32 r179, r169, -1
	add_co_u32 r182, 0x1000, r168
	addc_co_u32 r183, r169, 0
	ldg_b128 r170, r168, -0x1000
	ldg_b128 r174, r168, 0x0
	ldg_b128 r178, r178, 0x0
	ldg_b128 r182, r182, 0x0
LBB4_13:                                ; %if.end166
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s22
	shl_b64 r186, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r188, 0, 0
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	bra_cmsks LBB4_15
; %bb.14:                               ; %for.body170.us.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 299 21 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:299:21
	add_co_u32 r194, r22, s14
	mov_b32 r186, s15
	addc_co_u32 r195, r23, r186
	add_co_u32 r190, 0x80000, r194
	addc_co_u32 r191, r195, 0
	add_co_u32 r196, 0x100000, r194
	addc_co_u32 r197, r195, 0
	add_co_u32 r198, 0x180000, r194
	addc_co_u32 r199, r195, 0
	ldg_b128 r186, r194, 0x0
	ldg_b128 r190, r190, 0x0
	ldg_b128 r194, r196, 0x0
	ldg_b128 r198, r198, 0x0
LBB4_15:                                ; %for.cond.cleanup169
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 303 362                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:303:362
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r186
	add_i32 r186, 0x1000, r4
	arrive gvmcnt(2)
	snop 0
	sts_b128 r186, 0x0, r190
	add_i32 r186, 0x2000, r4
	arrive gvmcnt(1)
	snop 0
	sts_b128 r186, 0x0, r194
	add_i32 r186, 0x3000, r4
	arrive gvmcnt(0)
	snop 0
	sts_b128 r186, 0x0, r198
	.loc	2 282 11                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:282:11
	and_xmsk s22, s20
	snop 0
	bra_xmskz LBB4_18
; %bb.16:                               ; %for.cond113.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, r178
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r170, 0, r178
	shl_b64 r172, 0, r178
	shl_b64 r174, 0, r178
	shl_b64 r176, 0, r178
	shl_b64 r182, 0, r178
	shl_b64 r184, 0, r178
	bra_cmsks LBB4_18
; %bb.17:                               ; %for.body116.us.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 287 23 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:287:23
	add_co_u32 r178, 0xffffe000, r168
	addc_co_u32 r179, r169, -1
	add_co_u32 r182, 0x1000, r168
	addc_co_u32 r183, r169, 0
	ldg_b128 r170, r168, -0x1000
	ldg_b128 r174, r168, 0x0
	ldg_b128 r178, r178, 0x0
	ldg_b128 r182, r182, 0x0
LBB4_18:                                ; %if.end166.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s22
	shl_b64 r186, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r188, 0, 0
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	bra_cmsks LBB4_20
; %bb.19:                               ; %for.body170.us.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 299 21 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:299:21
	add_co_u32 r194, r22, s14
	mov_b32 r186, s15
	addc_co_u32 r195, r23, r186
	add_co_u32 r186, 0x200000, r194
	addc_co_u32 r187, r195, 0
	add_co_u32 r190, 0x280000, r194
	addc_co_u32 r191, r195, 0
	add_co_u32 r196, 0x300000, r194
	addc_co_u32 r197, r195, 0
	add_co_u32 r198, 0x380000, r194
	addc_co_u32 r199, r195, 0
	ldg_b128 r186, r186, 0x0
	ldg_b128 r190, r190, 0x0
	ldg_b128 r194, r196, 0x0
	ldg_b128 r198, r198, 0x0
LBB4_20:                                ; %for.cond.cleanup169.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 303 362                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:303:362
	arrive gvmcnt(3)
	sts_b128 r5, 0x0, r186
	add_i32 r186, 0x1000, r5
	arrive gvmcnt(2)
	snop 0
	sts_b128 r186, 0x0, r190
	add_i32 r186, 0x2000, r5
	arrive gvmcnt(1)
	snop 0
	sts_b128 r186, 0x0, r194
	add_i32 r186, 0x3000, r5
	arrive gvmcnt(0)
	snop 0
	sts_b128 r186, 0x0, r198
.Ltmp355:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp356:
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r186, r6, 0x0
	lds_b128 r190, r7, 0x0
	lds_b128 r194, r8, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r186, r152, r148
	mma_16x16x16f16 r116, r186, r156, r116
	mma_16x16x16f16 r148, r188, r154, r148
	mma_16x16x16f16 r116, r188, r158, r116
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r186, r9, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r152, r144
	mma_16x16x16f16 r112, r190, r156, r112
	mma_16x16x16f16 r144, r192, r154, r144
	mma_16x16x16f16 r112, r192, r158, r112
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r190, r10, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r152, r140
	mma_16x16x16f16 r108, r194, r156, r108
	mma_16x16x16f16 r140, r196, r154, r140
	mma_16x16x16f16 r108, r196, r158, r108
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r194, r11, 0x0
	lds_b128 r198, r12, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r136, r186, r152, r136
	mma_16x16x16f16 r104, r186, r156, r104
	mma_16x16x16f16 r136, r188, r154, r136
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	add_i32 r186, 0x4000, r6
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	mma_16x16x16f16 r104, r188, r158, r104
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r152, r132
	mma_16x16x16f16 r100, r190, r156, r100
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r188, r13, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	mma_16x16x16f16 r132, r192, r154, r132
	mma_16x16x16f16 r100, r192, r158, r100
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r152, r128
	mma_16x16x16f16 r96, r194, r156, r96
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r7
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	mma_16x16x16f16 r128, r196, r154, r128
	mma_16x16x16f16 r96, r196, r158, r96
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r198, r152, r124
	mma_16x16x16f16 r92, r198, r156, r92
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r196, r186, 0x0
	add_i32 r186, 0x4000, r8
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	mma_16x16x16f16 r124, r200, r154, r124
	mma_16x16x16f16 r92, r200, r158, r92
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r188, r152, r120
	mma_16x16x16f16 r88, r188, r156, r88
	mma_16x16x16f16 r120, r190, r154, r120
	mma_16x16x16f16 r88, r190, r158, r88
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r188, r186, 0x0
	add_i32 r186, 0x4000, r9
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r192, r152, r84
	mma_16x16x16f16 r52, r192, r156, r52
	mma_16x16x16f16 r84, r194, r154, r84
	mma_16x16x16f16 r52, r194, r158, r52
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r10
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r196, r152, r80
	mma_16x16x16f16 r48, r196, r156, r48
	mma_16x16x16f16 r80, r198, r154, r80
	mma_16x16x16f16 r48, r198, r158, r48
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r196, r186, 0x0
	add_i32 r186, 0x4000, r11
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r188, r152, r76
	mma_16x16x16f16 r44, r188, r156, r44
	mma_16x16x16f16 r76, r190, r154, r76
	mma_16x16x16f16 r44, r190, r158, r44
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r188, r186, 0x0
	add_i32 r186, 0x4000, r12
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r192, r152, r72
	mma_16x16x16f16 r40, r192, r156, r40
	mma_16x16x16f16 r72, r194, r154, r72
	mma_16x16x16f16 r40, r194, r158, r40
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r13
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r196, r152, r68
	mma_16x16x16f16 r36, r196, r156, r36
	mma_16x16x16f16 r68, r198, r154, r68
	mma_16x16x16f16 r36, r198, r158, r36
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r196, r186, 0x0
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r188, r152, r64
	mma_16x16x16f16 r32, r188, r156, r32
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r186, r14, 0x0
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	mma_16x16x16f16 r64, r190, r154, r64
	mma_16x16x16f16 r32, r190, r158, r32
	arrive bsmcnt(2)
	mma_16x16x16f16 r60, r192, r152, r60
	mma_16x16x16f16 r28, r192, r156, r28
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r190, r15, 0x0
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	mma_16x16x16f16 r60, r194, r154, r60
	mma_16x16x16f16 r28, r194, r158, r28
	arrive bsmcnt(2)
	mma_16x16x16f16 r56, r196, r152, r56
	mma_16x16x16f16 r24, r196, r156, r24
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r194, r16, 0x0
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	mma_16x16x16f16 r56, r198, r154, r56
	mma_16x16x16f16 r24, r198, r158, r24
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r186, r160, r148
	mma_16x16x16f16 r116, r186, r164, r116
	mma_16x16x16f16 r148, r188, r162, r148
	mma_16x16x16f16 r116, r188, r166, r116
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r186, r17, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r160, r144
	mma_16x16x16f16 r112, r190, r164, r112
	mma_16x16x16f16 r144, r192, r162, r144
	mma_16x16x16f16 r112, r192, r166, r112
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r190, r18, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r160, r140
	mma_16x16x16f16 r108, r194, r164, r108
	mma_16x16x16f16 r140, r196, r162, r140
	mma_16x16x16f16 r108, r196, r166, r108
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r194, r19, 0x0
	lds_b128 r198, r20, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r136, r186, r160, r136
	mma_16x16x16f16 r104, r186, r164, r104
	mma_16x16x16f16 r136, r188, r162, r136
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	add_i32 r186, 0x4000, r14
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	mma_16x16x16f16 r104, r188, r166, r104
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r160, r132
	mma_16x16x16f16 r100, r190, r164, r100
	.loc	2 309 41                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:309:41
	lds_b128 r188, r21, 0x0
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	mma_16x16x16f16 r132, r192, r162, r132
	mma_16x16x16f16 r100, r192, r166, r100
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r160, r128
	mma_16x16x16f16 r96, r194, r164, r96
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r15
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	mma_16x16x16f16 r128, r196, r162, r128
	mma_16x16x16f16 r96, r196, r166, r96
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r198, r160, r124
	mma_16x16x16f16 r92, r198, r164, r92
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r196, r186, 0x0
	add_i32 r186, 0x4000, r16
	.loc	2 315 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:315:58
	mma_16x16x16f16 r124, r200, r162, r124
	mma_16x16x16f16 r92, r200, r166, r92
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r188, r160, r120
	mma_16x16x16f16 r88, r188, r164, r88
	mma_16x16x16f16 r120, r190, r162, r120
	mma_16x16x16f16 r88, r190, r166, r88
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r188, r186, 0x0
	add_i32 r186, 0x4000, r17
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r192, r160, r84
	mma_16x16x16f16 r52, r192, r164, r52
	mma_16x16x16f16 r84, r194, r162, r84
	mma_16x16x16f16 r52, r194, r166, r52
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r18
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r196, r160, r80
	mma_16x16x16f16 r48, r196, r164, r48
	mma_16x16x16f16 r80, r198, r162, r80
	mma_16x16x16f16 r48, r198, r166, r48
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r196, r186, 0x0
	add_i32 r186, 0x4000, r19
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r188, r160, r76
	mma_16x16x16f16 r44, r188, r164, r44
	mma_16x16x16f16 r76, r190, r162, r76
	mma_16x16x16f16 r44, r190, r166, r44
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r188, r186, 0x0
	add_i32 r186, 0x4000, r20
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r192, r160, r72
	mma_16x16x16f16 r40, r192, r164, r40
	mma_16x16x16f16 r72, r194, r162, r72
	mma_16x16x16f16 r40, r194, r166, r40
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r21
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r196, r160, r68
	mma_16x16x16f16 r36, r196, r164, r36
	mma_16x16x16f16 r68, r198, r162, r68
	mma_16x16x16f16 r36, r198, r166, r36
	.loc	2 323 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:323:43
	lds_b128 r196, r186, 0x0
	.loc	2 329 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:329:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r188, r160, r64
	mma_16x16x16f16 r32, r188, r164, r32
	mma_16x16x16f16 r64, r190, r162, r64
	mma_16x16x16f16 r32, r190, r166, r32
	arrive bsmcnt(1)
	mma_16x16x16f16 r60, r192, r160, r60
	mma_16x16x16f16 r28, r192, r164, r28
	mma_16x16x16f16 r60, r194, r162, r60
	mma_16x16x16f16 r28, r194, r166, r28
	arrive bsmcnt(0)
	mma_16x16x16f16 r56, r196, r160, r56
	mma_16x16x16f16 r24, r196, r164, r24
	mma_16x16x16f16 r56, r198, r162, r56
	mma_16x16x16f16 r24, r198, r166, r24
.Ltmp357:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	mov_b32 r186, 0x3f00
	mov_b32 r187, 0
	cmp_lg_u64 s22, s14, r186
.Ltmp358:
	.loc	2 340 11                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:340:11
	snop 3
	sand_b64 s26, s18, s22
	and_xmsk s24, s26
	snop 0
	bra_xmskz LBB4_23
; %bb.21:                               ; %for.cond460.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, r152
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r156, 0, r152
	shl_b64 r158, 0, r152
	shl_b64 r160, 0, r152
	shl_b64 r162, 0, r152
	shl_b64 r164, 0, r152
	shl_b64 r166, 0, r152
	bra_cmsks LBB4_23
; %bb.22:                               ; %for.body463.us.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 346 25 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:346:25
	add_co_u32 r152, 0x2000, r168
	addc_co_u32 r153, r169, 0
	add_co_u32 r156, 0x3000, r168
	addc_co_u32 r157, r169, 0
	add_co_u32 r160, 0x4000, r168
	addc_co_u32 r161, r169, 0
	add_co_u32 r164, 0x5000, r168
	addc_co_u32 r165, r169, 0
	ldg_b128 r152, r152, 0x0
	ldg_b128 r156, r156, 0x0
	ldg_b128 r160, r160, 0x0
	ldg_b128 r164, r164, 0x0
LBB4_23:                                ; %if.end514
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 25 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:25
	sor_b64 xmsk, xmsk, s24
	shl_b64 r186, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r188, 0, 0
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	bra_cmsks LBB4_25
; %bb.24:                               ; %for.body518.us.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 359 21 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:359:21
	add_co_u32 r194, r22, s14
	mov_b32 r186, s15
	addc_co_u32 r195, r23, r186
	add_co_u32 r190, 0x80080, r194
	addc_co_u32 r191, r195, 0
	add_co_u32 r196, 0x100080, r194
	addc_co_u32 r197, r195, 0
	add_co_u32 r198, 0x180080, r194
	addc_co_u32 r199, r195, 0
	ldg_b128 r186, r194, 0x80
	ldg_b128 r190, r190, 0x0
	ldg_b128 r194, r196, 0x0
	ldg_b128 r198, r198, 0x0
LBB4_25:                                ; %for.cond.cleanup517
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 363 364                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:363:364
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r186
	add_i32 r186, 0x1000, r4
	.loc	2 340 11                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:340:11
	sand_b64 s24, s20, s22
	.loc	2 363 364                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:363:364
	arrive gvmcnt(2)
	sts_b128 r186, 0x0, r190
	add_i32 r186, 0x2000, r4
	arrive gvmcnt(1)
	snop 0
	sts_b128 r186, 0x0, r194
	add_i32 r186, 0x3000, r4
	arrive gvmcnt(0)
	snop 0
	sts_b128 r186, 0x0, r198
	.loc	2 340 11                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:340:11
	and_xmsk s22, s24
	snop 0
	bra_xmskz LBB4_28
; %bb.26:                               ; %for.cond460.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:11
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, r152
	sandn_b64 cmsk, xmsk, s4
	shl_b64 r156, 0, r152
	shl_b64 r158, 0, r152
	shl_b64 r160, 0, r152
	shl_b64 r162, 0, r152
	shl_b64 r164, 0, r152
	shl_b64 r166, 0, r152
	bra_cmsks LBB4_28
; %bb.27:                               ; %for.body463.us.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 346 25 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:346:25
	add_co_u32 r152, 0x2000, r168
	addc_co_u32 r153, r169, 0
	add_co_u32 r156, 0x3000, r168
	addc_co_u32 r157, r169, 0
	add_co_u32 r160, 0x4000, r168
	addc_co_u32 r161, r169, 0
	add_co_u32 r164, 0x5000, r168
	addc_co_u32 r165, r169, 0
	ldg_b128 r152, r152, 0x0
	ldg_b128 r156, r156, 0x0
	ldg_b128 r160, r160, 0x0
	ldg_b128 r164, r164, 0x0
LBB4_28:                                ; %if.end514.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 25 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:25
	sor_b64 xmsk, xmsk, s22
	shl_b64 r186, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r188, 0, 0
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	bra_cmsks LBB4_30
; %bb.29:                               ; %for.body518.us.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 359 21 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:359:21
	add_co_u32 r194, r22, s14
	mov_b32 r186, s15
	addc_co_u32 r195, r23, r186
	add_co_u32 r186, 0x200080, r194
	addc_co_u32 r187, r195, 0
	add_co_u32 r190, 0x280080, r194
	addc_co_u32 r191, r195, 0
	add_co_u32 r196, 0x300080, r194
	addc_co_u32 r197, r195, 0
	add_co_u32 r198, 0x380080, r194
	addc_co_u32 r199, r195, 0
	ldg_b128 r186, r186, 0x0
	ldg_b128 r190, r190, 0x0
	ldg_b128 r194, r196, 0x0
	ldg_b128 r198, r198, 0x0
LBB4_30:                                ; %for.cond.cleanup517.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 363 364                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:363:364
	arrive gvmcnt(3)
	sts_b128 r5, 0x0, r186
	add_i32 r186, 0x1000, r5
	arrive gvmcnt(2)
	snop 0
	sts_b128 r186, 0x0, r190
	add_i32 r186, 0x2000, r5
	arrive gvmcnt(1)
	snop 0
	sts_b128 r186, 0x0, r194
	add_i32 r186, 0x3000, r5
	arrive gvmcnt(0)
	snop 0
	sts_b128 r186, 0x0, r198
.Ltmp359:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp360:
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r186, r6, 0x0
	lds_b128 r190, r7, 0x0
	lds_b128 r194, r8, 0x0
	.loc	2 397 16                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:397:16
	scmp_eq_u64 0x3f00, s14
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r186, r178, r148
	mma_16x16x16f16 r116, r186, r170, r116
	mma_16x16x16f16 r148, r188, r180, r148
	mma_16x16x16f16 r116, r188, r172, r116
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r186, r9, 0x0
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r178, r144
	mma_16x16x16f16 r112, r190, r170, r112
	mma_16x16x16f16 r144, r192, r180, r144
	mma_16x16x16f16 r112, r192, r172, r112
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r190, r10, 0x0
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r178, r140
	mma_16x16x16f16 r108, r194, r170, r108
	mma_16x16x16f16 r140, r196, r180, r140
	mma_16x16x16f16 r108, r196, r172, r108
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r194, r11, 0x0
	lds_b128 r198, r12, 0x0
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r136, r186, r178, r136
	mma_16x16x16f16 r104, r186, r170, r104
	mma_16x16x16f16 r136, r188, r180, r136
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	add_i32 r186, 0x4000, r6
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	mma_16x16x16f16 r104, r188, r172, r104
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r178, r132
	mma_16x16x16f16 r100, r190, r170, r100
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r188, r13, 0x0
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	mma_16x16x16f16 r132, r192, r180, r132
	mma_16x16x16f16 r100, r192, r172, r100
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r178, r128
	mma_16x16x16f16 r96, r194, r170, r96
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r7
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	mma_16x16x16f16 r128, r196, r180, r128
	mma_16x16x16f16 r96, r196, r172, r96
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r198, r178, r124
	mma_16x16x16f16 r92, r198, r170, r92
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r196, r186, 0x0
	add_i32 r186, 0x4000, r8
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	mma_16x16x16f16 r124, r200, r180, r124
	mma_16x16x16f16 r92, r200, r172, r92
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r188, r178, r120
	mma_16x16x16f16 r88, r188, r170, r88
	mma_16x16x16f16 r120, r190, r180, r120
	mma_16x16x16f16 r88, r190, r172, r88
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r188, r186, 0x0
	add_i32 r186, 0x4000, r9
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r192, r178, r84
	mma_16x16x16f16 r52, r192, r170, r52
	mma_16x16x16f16 r84, r194, r180, r84
	mma_16x16x16f16 r52, r194, r172, r52
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r10
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r196, r178, r80
	mma_16x16x16f16 r48, r196, r170, r48
	mma_16x16x16f16 r80, r198, r180, r80
	mma_16x16x16f16 r48, r198, r172, r48
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r196, r186, 0x0
	add_i32 r186, 0x4000, r11
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r188, r178, r76
	mma_16x16x16f16 r44, r188, r170, r44
	mma_16x16x16f16 r76, r190, r180, r76
	mma_16x16x16f16 r44, r190, r172, r44
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r188, r186, 0x0
	add_i32 r186, 0x4000, r12
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r192, r178, r72
	mma_16x16x16f16 r40, r192, r170, r40
	mma_16x16x16f16 r72, r194, r180, r72
	mma_16x16x16f16 r40, r194, r172, r40
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r13
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r196, r178, r68
	mma_16x16x16f16 r36, r196, r170, r36
	mma_16x16x16f16 r68, r198, r180, r68
	mma_16x16x16f16 r36, r198, r172, r36
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r196, r186, 0x0
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r188, r178, r64
	mma_16x16x16f16 r32, r188, r170, r32
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r186, r14, 0x0
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	mma_16x16x16f16 r64, r190, r180, r64
	mma_16x16x16f16 r32, r190, r172, r32
	arrive bsmcnt(2)
	mma_16x16x16f16 r60, r192, r178, r60
	mma_16x16x16f16 r28, r192, r170, r28
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r190, r15, 0x0
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	mma_16x16x16f16 r60, r194, r180, r60
	mma_16x16x16f16 r28, r194, r172, r28
	arrive bsmcnt(2)
	mma_16x16x16f16 r56, r196, r178, r56
	mma_16x16x16f16 r24, r196, r170, r24
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r194, r16, 0x0
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	mma_16x16x16f16 r56, r198, r180, r56
	mma_16x16x16f16 r24, r198, r172, r24
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r186, r174, r148
	mma_16x16x16f16 r116, r186, r182, r116
	mma_16x16x16f16 r148, r188, r176, r148
	mma_16x16x16f16 r116, r188, r184, r116
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r186, r17, 0x0
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r190, r174, r144
	mma_16x16x16f16 r112, r190, r182, r112
	mma_16x16x16f16 r144, r192, r176, r144
	mma_16x16x16f16 r112, r192, r184, r112
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r190, r18, 0x0
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r194, r174, r140
	mma_16x16x16f16 r108, r194, r182, r108
	mma_16x16x16f16 r140, r196, r176, r140
	mma_16x16x16f16 r108, r196, r184, r108
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r194, r19, 0x0
	lds_b128 r198, r20, 0x0
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r136, r186, r174, r136
	mma_16x16x16f16 r104, r186, r182, r104
	mma_16x16x16f16 r136, r188, r176, r136
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	add_i32 r186, 0x4000, r14
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	mma_16x16x16f16 r104, r188, r184, r104
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r190, r174, r132
	mma_16x16x16f16 r100, r190, r182, r100
	.loc	2 369 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:369:43
	lds_b128 r188, r21, 0x0
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	mma_16x16x16f16 r132, r192, r176, r132
	mma_16x16x16f16 r100, r192, r184, r100
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r194, r174, r128
	mma_16x16x16f16 r96, r194, r182, r96
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r15
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	mma_16x16x16f16 r128, r196, r176, r128
	mma_16x16x16f16 r96, r196, r184, r96
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r198, r174, r124
	mma_16x16x16f16 r92, r198, r182, r92
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r196, r186, 0x0
	add_i32 r186, 0x4000, r16
	.loc	2 375 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:375:58
	mma_16x16x16f16 r124, r200, r176, r124
	mma_16x16x16f16 r92, r200, r184, r92
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r188, r174, r120
	mma_16x16x16f16 r88, r188, r182, r88
	mma_16x16x16f16 r120, r190, r176, r120
	mma_16x16x16f16 r88, r190, r184, r88
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r188, r186, 0x0
	add_i32 r186, 0x4000, r17
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r192, r174, r84
	mma_16x16x16f16 r52, r192, r182, r52
	mma_16x16x16f16 r84, r194, r176, r84
	mma_16x16x16f16 r52, r194, r184, r52
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r18
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r196, r174, r80
	mma_16x16x16f16 r48, r196, r182, r48
	mma_16x16x16f16 r80, r198, r176, r80
	mma_16x16x16f16 r48, r198, r184, r48
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r196, r186, 0x0
	add_i32 r186, 0x4000, r19
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r188, r174, r76
	mma_16x16x16f16 r44, r188, r182, r44
	mma_16x16x16f16 r76, r190, r176, r76
	mma_16x16x16f16 r44, r190, r184, r44
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r188, r186, 0x0
	add_i32 r186, 0x4000, r20
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r192, r174, r72
	mma_16x16x16f16 r40, r192, r182, r40
	mma_16x16x16f16 r72, r194, r176, r72
	mma_16x16x16f16 r40, r194, r184, r40
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r192, r186, 0x0
	add_i32 r186, 0x4000, r21
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r196, r174, r68
	mma_16x16x16f16 r36, r196, r182, r36
	mma_16x16x16f16 r68, r198, r176, r68
	mma_16x16x16f16 r36, r198, r184, r36
	.loc	2 383 43                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:383:43
	lds_b128 r196, r186, 0x0
	.loc	2 389 58                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:389:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r188, r174, r64
	mma_16x16x16f16 r32, r188, r182, r32
	mma_16x16x16f16 r64, r190, r176, r64
	mma_16x16x16f16 r32, r190, r184, r32
	arrive bsmcnt(1)
	mma_16x16x16f16 r60, r192, r174, r60
	mma_16x16x16f16 r28, r192, r182, r28
	mma_16x16x16f16 r60, r194, r176, r60
	mma_16x16x16f16 r28, r194, r184, r28
	arrive bsmcnt(0)
	mma_16x16x16f16 r56, r196, r174, r56
	mma_16x16x16f16 r24, r196, r182, r24
	mma_16x16x16f16 r56, r198, r176, r56
	mma_16x16x16f16 r24, r198, r184, r24
	.loc	2 397 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:397:9
	bra_smsks LBB4_9
; %bb.31:                               ; %if.then800
                                        ;   in Loop: Header=BB4_10 Depth=1
.Ltmp361:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB4_9
.Ltmp362:
LBB4_32:                                ; %for.cond805.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	and_b32 r4, r0, 15
	smov_b32 s3, 0x1e0
	and_or_b32 r6, r3, s3, r4
	sshl_b32 s3, 7, s6
	ssub_co_i32 s2, s2, s3
	sadd_co_i32 s14, s2, s0
	sadd_co_i32 s2, s1, s3
	add_u32 r5, s2, r6
	sashr_i32 s2, 31, s1
	mov_b32 r11, s2
	mov_b32 r10, s1
	mov_b32 r8, 0x80
	mad_u32 r8, s6, r8, r10
	add_co_u32 r8, r8, r6
	.loc	2 403 92 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:403:92
	cmp_lt_i32 s2, r6, s14
	sashr_i32 s1, 31, s0
	mov_b32 r4, s0
	addc_co_u32 r9, r9, 0
	sub_co_u32 r8, r8, r4
	mov_b32 r7, s1
	mov_b32 r3, 0
	subb_co_u32 r9, r9, r7
	sashr_i32 s15, 31, s14
	mov_b32 r4, 0
	.loc	2 403 9 is_stmt 0               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:403:9
	and_xmsk s18, s2
	snop 0
	bra_xmskz LBB4_36
; %bb.33:                               ; %if.then822
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sub_u32 r4, r5, s0
	cmp_gt_i32 s22, 0x8e0, r4
	.loc	2 405 15 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:405:15
	cmp_ge_i32 s20, r5, s0
	mov_b32 r4, 0
	.loc	2 405 148 is_stmt 0             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:405:148
	snop 2
	sand_b64 s22, s20, s22
	and_xmsk s20, s22
	snop 0
	bra_xmskz LBB4_35
; %bb.34:                               ; %if.then850
	.loc	2 0 148                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:148
	shl_b64 r10, 2, r8
	add_co_u32 r10, s12, r10
	mov_b32 r4, s13
	addc_co_u32 r11, r4, r11
	.loc	2 406 21 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:406:21
	snop 1
	ldg_b32 r4, r10, 0x0
LBB4_35:                                ; %Flow910
	.loc	2 0 21 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s20
LBB4_36:                                ; %for.inc875
	sor_b64 xmsk, xmsk, s18
	.loc	2 403 63 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:403:63
	mov_b32 r11, r3
	or_b32 r10, r6, 16
	.loc	2 403 92 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:403:92
	cmp_lt_i64 s20, r10, s14
	.loc	2 0 0                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:0
	mov_b32 r3, 0
	.loc	2 403 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:403:9
	snop 2
	and_xmsk s18, s20
	snop 0
	bra_xmskz LBB4_40
; %bb.37:                               ; %if.then822.1
	.loc	2 405 102 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:405:102
	add_u32 r3, r5, 16
	.loc	2 405 15 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:405:15
	cmp_ge_i32 s20, r3, s0
	sub_u32 r3, r3, s0
	cmp_gt_i32 s0, 0x8e0, r3
	mov_b32 r3, 0
	.loc	2 405 148                       ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:405:148
	snop 2
	sand_b64 s20, s20, s0
	and_xmsk s0, s20
	snop 0
	bra_xmskz LBB4_39
; %bb.38:                               ; %if.then850.1
	.loc	2 0 148                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:148
	shl_b64 r8, 2, r8
	add_co_u32 r8, s12, r8
	mov_b32 r3, s13
	addc_co_u32 r9, r3, r9
	.loc	2 406 21 is_stmt 1              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:406:21
	snop 1
	ldg_b32 r3, r8, 0x40
LBB4_39:                                ; %Flow
	.loc	2 0 21 is_stmt 0                ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s0
LBB4_40:                                ; %for.inc875.1
	sor_b64 xmsk, xmsk, s18
	shl_b32 r0, 11, r0
	sand_b64 s0, s8, s4
	sshl_b32 s4, 18, s6
	and_b32 r1, 0xf0000, r1
	and_b32 r0, 0x7800, r0
	sshl_b32 s5, 8, s16
	and_b32 r2, r2, 12
	or3_b32 r0, r0, r1, r2
	sadd_co_i32 s4, s4, s5
	add_u32 r0, s4, r0
	shl_b64 r8, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB4_106
; %bb.41:                               ; %if.end952
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_107
LBB4_42:                                ; %for.inc991
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r8, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB4_108
LBB4_43:                                ; %if.end952.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_109
LBB4_44:                                ; %for.inc991.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r8, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB4_110
LBB4_45:                                ; %if.end952.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_111
LBB4_46:                                ; %for.inc991.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r8, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB4_112
LBB4_47:                                ; %if.end952.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_113
LBB4_48:                                ; %for.inc991.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r8, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB4_114
LBB4_49:                                ; %if.end952.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_115
LBB4_50:                                ; %for.inc991.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r8, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB4_116
LBB4_51:                                ; %if.end952.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_117
LBB4_52:                                ; %for.inc991.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r8, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB4_118
LBB4_53:                                ; %if.end952.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_119
LBB4_54:                                ; %for.inc991.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r8, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB4_120
LBB4_55:                                ; %if.end952.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_57
LBB4_56:                                ; %if.then960.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x70, r0
	mad_i32 r10, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB4_57:                                ; %for.inc991.7
	.loc	2 415 65                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:65
	or_b32 r1, r6, 16
	.loc	2 415 94 is_stmt 0              ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:94
	cmp_lt_i32 s4, r1, s14
	shl_b64 r6, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	snop 2
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB4_121
; %bb.58:                               ; %if.end952.8
	.loc	2 0 9                           ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_122
LBB4_59:                                ; %for.inc991.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB4_123
LBB4_60:                                ; %if.end952.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_124
LBB4_61:                                ; %for.inc991.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB4_125
LBB4_62:                                ; %if.end952.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_126
LBB4_63:                                ; %for.inc991.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB4_127
LBB4_64:                                ; %if.end952.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_128
LBB4_65:                                ; %for.inc991.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB4_129
LBB4_66:                                ; %if.end952.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_130
LBB4_67:                                ; %for.inc991.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB4_131
LBB4_68:                                ; %if.end952.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_132
LBB4_69:                                ; %for.inc991.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB4_133
LBB4_70:                                ; %if.end952.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_134
LBB4_71:                                ; %for.inc991.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 415 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmsks LBB4_135
LBB4_72:                                ; %if.end952.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_136
LBB4_73:                                ; %for.inc991.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB4_137
LBB4_74:                                ; %if.end1072
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_138
LBB4_75:                                ; %for.inc1112
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB4_139
LBB4_76:                                ; %if.end1072.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_140
LBB4_77:                                ; %for.inc1112.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB4_141
LBB4_78:                                ; %if.end1072.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_142
LBB4_79:                                ; %for.inc1112.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB4_143
LBB4_80:                                ; %if.end1072.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_144
LBB4_81:                                ; %for.inc1112.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB4_145
LBB4_82:                                ; %if.end1072.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_146
LBB4_83:                                ; %for.inc1112.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB4_147
LBB4_84:                                ; %if.end1072.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_148
LBB4_85:                                ; %for.inc1112.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB4_149
LBB4_86:                                ; %if.end1072.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_150
LBB4_87:                                ; %for.inc1112.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmsks LBB4_151
LBB4_88:                                ; %if.end1072.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s6
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_152
LBB4_89:                                ; %for.inc1112.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r4, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_153
LBB4_90:                                ; %if.end1072.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_154
LBB4_91:                                ; %for.inc1112.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_155
LBB4_92:                                ; %if.end1072.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_156
LBB4_93:                                ; %for.inc1112.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_157
LBB4_94:                                ; %if.end1072.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_158
LBB4_95:                                ; %for.inc1112.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_159
LBB4_96:                                ; %if.end1072.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_160
LBB4_97:                                ; %for.inc1112.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_161
LBB4_98:                                ; %if.end1072.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_162
LBB4_99:                                ; %for.inc1112.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_163
LBB4_100:                               ; %if.end1072.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_164
LBB4_101:                               ; %for.inc1112.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_165
LBB4_102:                               ; %if.end1072.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_166
LBB4_103:                               ; %for.inc1112.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 443 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_167
LBB4_104:                               ; %if.end1072.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_168
LBB4_105:                               ; %for.inc1112.15
	.loc	2 469 1                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:469:1
	snop 1
	endk
LBB4_106:                               ; %if.then895
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r148, r4
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r149, r4
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r150, r4
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r7, r151, r4
.Ltmp363:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp364:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp367:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_42
LBB4_107:                               ; %if.then960
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	mad_i32 r10, r0, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB4_43
LBB4_108:                               ; %if.then895.1
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r144, r4
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r145, r4
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r146, r4
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r7, r147, r4
.Ltmp368:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp369:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp372:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_44
LBB4_109:                               ; %if.then960.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 16
	mad_i32 r10, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB4_45
LBB4_110:                               ; %if.then895.2
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r140, r4
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r141, r4
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r142, r4
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r7, r143, r4
.Ltmp373:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp374:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp375:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp377:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_46
LBB4_111:                               ; %if.then960.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 32
	mad_i32 r10, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB4_47
LBB4_112:                               ; %if.then895.3
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r136, r4
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r137, r4
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r138, r4
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r7, r139, r4
.Ltmp378:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp379:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp380:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp382:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_48
LBB4_113:                               ; %if.then960.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 48
	mad_i32 r10, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB4_49
LBB4_114:                               ; %if.then895.4
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r132, r4
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r133, r4
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r134, r4
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r7, r135, r4
.Ltmp383:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp384:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp387:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_50
LBB4_115:                               ; %if.then960.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 64
	mad_i32 r10, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB4_51
LBB4_116:                               ; %if.then895.5
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r128, r4
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r129, r4
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r130, r4
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r7, r131, r4
.Ltmp388:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp389:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp390:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp392:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_52
LBB4_117:                               ; %if.then960.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x50, r0
	mad_i32 r10, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB4_53
LBB4_118:                               ; %if.then895.6
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r124, r4
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r125, r4
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r126, r4
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r7, r127, r4
.Ltmp393:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp394:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp395:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp397:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_54
LBB4_119:                               ; %if.then960.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x60, r0
	mad_i32 r10, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r10, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB4_55
LBB4_120:                               ; %if.then895.7
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r120, r4
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r121, r4
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r122, r4
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r7, r123, r4
.Ltmp398:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp399:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s4
.Ltmp402:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_56
	bra LBB4_57
LBB4_121:                               ; %if.then895.8
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r116, r3
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r117, r3
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r118, r3
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r8, r119, r3
.Ltmp403:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp404:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp405:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp407:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_59
LBB4_122:                               ; %if.then960.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8000, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB4_60
LBB4_123:                               ; %if.then895.9
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r112, r3
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r113, r3
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r114, r3
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r8, r115, r3
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp409:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp410:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp412:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_61
LBB4_124:                               ; %if.then960.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8010, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB4_62
LBB4_125:                               ; %if.then895.10
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r108, r3
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r109, r3
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r110, r3
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r8, r111, r3
.Ltmp413:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp414:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp417:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_63
LBB4_126:                               ; %if.then960.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8020, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB4_64
LBB4_127:                               ; %if.then895.11
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r104, r3
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r105, r3
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r106, r3
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r8, r107, r3
.Ltmp418:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp419:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp420:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp422:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_65
LBB4_128:                               ; %if.then960.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8030, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB4_66
LBB4_129:                               ; %if.then895.12
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r100, r3
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r101, r3
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r102, r3
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r8, r103, r3
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp424:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp425:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp427:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_67
LBB4_130:                               ; %if.then960.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8040, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB4_68
LBB4_131:                               ; %if.then895.13
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r96, r3
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r97, r3
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r98, r3
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r8, r99, r3
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp429:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp432:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_69
LBB4_132:                               ; %if.then960.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8050, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB4_70
LBB4_133:                               ; %if.then895.14
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r92, r3
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r93, r3
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r94, r3
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r8, r95, r3
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp434:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp437:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_71
LBB4_134:                               ; %if.then960.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8060, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 415 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:415:9
	and_xmsk s6, s4
	snop 0
	bra_xmskz LBB4_72
LBB4_135:                               ; %if.then895.15
	.loc	2 420 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:420:22
	arrive gvmcnt(0)
	mul_f32 r1, r88, r3
	.loc	2 421 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:421:22
	mul_f32 r2, r89, r3
	.loc	2 422 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:422:22
	mul_f32 r5, r90, r3
	.loc	2 423 22                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:423:22
	mul_f32 r8, r91, r3
.Ltmp438:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp439:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp440:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp442:
	.loc	2 431 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:431:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_73
LBB4_136:                               ; %if.then960.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8070, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 435 230 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:435:230
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB4_74
LBB4_137:                               ; %if.then1011
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	arrive gvmcnt(0)
	mul_f32 r1, r84, r4
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r85, r4
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r86, r4
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r8, r87, r4
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp444:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp447:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_75
LBB4_138:                               ; %if.then1080
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	mad_i32 r8, r0, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB4_76
LBB4_139:                               ; %if.then1011.1
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	arrive gvmcnt(0)
	mul_f32 r1, r80, r4
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r81, r4
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r82, r4
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r8, r83, r4
.Ltmp448:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp449:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp452:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_77
LBB4_140:                               ; %if.then1080.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 16
	mad_i32 r8, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB4_78
LBB4_141:                               ; %if.then1011.2
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	arrive gvmcnt(0)
	mul_f32 r1, r76, r4
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r77, r4
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r78, r4
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r8, r79, r4
.Ltmp453:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp454:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp455:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp457:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_79
LBB4_142:                               ; %if.then1080.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 32
	mad_i32 r8, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB4_80
LBB4_143:                               ; %if.then1011.3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	arrive gvmcnt(0)
	mul_f32 r1, r72, r4
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r73, r4
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r74, r4
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r8, r75, r4
.Ltmp458:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp459:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp460:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp462:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_81
LBB4_144:                               ; %if.then1080.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 48
	mad_i32 r8, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB4_82
LBB4_145:                               ; %if.then1011.4
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	arrive gvmcnt(0)
	mul_f32 r1, r68, r4
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r69, r4
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r70, r4
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r8, r71, r4
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp464:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp467:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_83
LBB4_146:                               ; %if.then1080.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 64
	mad_i32 r8, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB4_84
LBB4_147:                               ; %if.then1011.5
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	arrive gvmcnt(0)
	mul_f32 r1, r64, r4
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r65, r4
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r66, r4
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r8, r67, r4
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp469:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp472:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_85
LBB4_148:                               ; %if.then1080.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x50, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB4_86
LBB4_149:                               ; %if.then1011.6
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	arrive gvmcnt(0)
	mul_f32 r1, r60, r4
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r61, r4
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r62, r4
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r8, r63, r4
.Ltmp473:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp474:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp475:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp477:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_87
LBB4_150:                               ; %if.then1080.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x60, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB4_88
LBB4_151:                               ; %if.then1011.7
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	arrive gvmcnt(0)
	mul_f32 r1, r56, r4
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r57, r4
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r58, r4
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r4, r59, r4
.Ltmp478:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp479:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp480:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s6
.Ltmp482:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_89
LBB4_152:                               ; %if.then1080.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x70, r0
	arrive gvmcnt(0)
	mad_i32 r4, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r4, 0x100, r6 devc
	shl_b64 r4, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_90
LBB4_153:                               ; %if.then1011.8
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r54, r3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	mul_f32 r1, r52, r3
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r53, r3
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r6, r55, r3
.Ltmp483:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp484:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp485:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp487:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_91
LBB4_154:                               ; %if.then1080.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8000, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_92
LBB4_155:                               ; %if.then1011.9
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r50, r3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	mul_f32 r1, r48, r3
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r49, r3
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r6, r51, r3
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp489:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp490:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp492:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_93
LBB4_156:                               ; %if.then1080.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8010, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_94
LBB4_157:                               ; %if.then1011.10
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r46, r3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	mul_f32 r1, r44, r3
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r45, r3
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r6, r47, r3
.Ltmp493:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp494:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp495:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp496:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp497:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_95
LBB4_158:                               ; %if.then1080.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8020, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_96
LBB4_159:                               ; %if.then1011.11
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r42, r3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	mul_f32 r1, r40, r3
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r41, r3
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r6, r43, r3
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp499:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp500:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp502:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_97
LBB4_160:                               ; %if.then1080.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8030, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_98
LBB4_161:                               ; %if.then1011.12
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r38, r3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	mul_f32 r1, r36, r3
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r37, r3
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r6, r39, r3
.Ltmp503:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp504:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp505:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp506:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp507:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_99
LBB4_162:                               ; %if.then1080.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8040, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_100
LBB4_163:                               ; %if.then1011.13
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r34, r3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	mul_f32 r1, r32, r3
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r33, r3
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r6, r35, r3
.Ltmp508:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp509:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp510:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp511:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp512:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_101
LBB4_164:                               ; %if.then1080.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8050, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_102
LBB4_165:                               ; %if.then1011.14
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r30, r3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	mul_f32 r1, r28, r3
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r29, r3
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r6, r31, r3
.Ltmp513:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp514:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp515:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp517:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_103
LBB4_166:                               ; %if.then1080.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8060, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 443 9                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:443:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_104
LBB4_167:                               ; %if.then1011.15
	.loc	2 450 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:450:24
	mul_f32 r5, r26, r3
	.loc	2 448 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:448:24
	mul_f32 r1, r24, r3
	.loc	2 449 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:449:24
	mul_f32 r2, r25, r3
	.loc	2 451 24                        ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:451:24
	mul_f32 r3, r27, r3
.Ltmp518:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp519:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp520:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp521:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp522:
	.loc	2 459 9 is_stmt 1               ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:459:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_105
LBB4_168:                               ; %if.then1080.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:0:9
	add_u32 r0, 0x8070, r0
	mad_i32 r0, r0, 2, s10
	.loc	2 463 238 is_stmt 1             ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:463:238
	snop 1
	stg_b64 r0, 0x100, r4 devc
	.loc	2 469 1                         ; /tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp:469:1
	snop 2
	endk
.Ltmp523:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_2
		.macahca_mtreg_size 26
		.macahca_streg_size 4
		.macahca_priority 0
		.macahca_float_mode 192
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
; codeLenInByte = 20424
; NumMTRegsForWarps/PEU: 202
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
	.quad	.Ltmp355                        ; DW_AT_low_pc
	.long	.Ltmp356-.Ltmp355               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	306                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1ff:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp355                        ; DW_AT_low_pc
	.long	.Ltmp356-.Ltmp355               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x214:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp357                        ; DW_AT_low_pc
	.long	.Ltmp358-.Ltmp357               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	337                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x229:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp357                        ; DW_AT_low_pc
	.long	.Ltmp358-.Ltmp357               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x23e:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp359                        ; DW_AT_low_pc
	.long	.Ltmp360-.Ltmp359               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	366                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x253:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp359                        ; DW_AT_low_pc
	.long	.Ltmp360-.Ltmp359               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x268:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp361                        ; DW_AT_low_pc
	.long	.Ltmp362-.Ltmp361               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	398                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x27d:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp361                        ; DW_AT_low_pc
	.long	.Ltmp362-.Ltmp361               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x292:0x36 DW_TAG_inlined_subroutine
	.long	131                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	424                             ; DW_AT_call_line
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
	.short	425                             ; DW_AT_call_line
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
	.short	452                             ; DW_AT_call_line
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
	.short	453                             ; DW_AT_call_line
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
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
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
	.quad	0
	.quad	0
.Ldebug_ranges13:
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
	.quad	0
	.quad	0
.Ldebug_ranges14:
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
	.quad	0
	.quad	0
.Ldebug_ranges15:
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
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
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
	.quad	0
	.quad	0
.Ldebug_ranges20:
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
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
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
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
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
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
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
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
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
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/v129_codegen_case1/v129_case1_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root"                         ; string offset=94
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=100
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=110
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=124
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=130
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=146
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=164
.Linfo_string9:
	.asciz	"kernel_kernel"                 ; string offset=182
.Linfo_string10:
	.asciz	"kernel_kernel_1"               ; string offset=196
.Linfo_string11:
	.asciz	"kernel_kernel_2"               ; string offset=212
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
    .mtreg_count:    70
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
    .mtreg_count:    202
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
