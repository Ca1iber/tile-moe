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
	.file	2 "/tmp/v094_evidence/codegen/case3" "v094_case3_case3_generated_device.cpp"
	.loc	2 12 0                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:12:0
; %bb.0:                                ; %entry
	sshl_b32 s6, 8, s4
	smul_i32 s5, 0xe0000, s5
	sadd_co_i32 s5, s6, s5
	and_b32 r0, 0x3ff, r0
	ldu_b128 s0, s0, 0x0
	shr_b32 r1, 5, r0
	smov_b32 s6, 0x1c00
	mov_b32 r2, s5
	smul_i32 s4, 0x7f00, s4
	mad_u24 r1, r1, s6, r2
	sadd_co_i32 s4, s5, s4
	shl_b32 r2, 3, r0
	smov_b32 s6, 0xf8
	and_or_b32 r4, r2, s6, r1
	shl_b32 r1, 10, r0
	shl_b32 r0, 1, r0
	smov_b32 s5, 0x6000
	mov_b32 r3, s4
	and_or_b32 r1, r1, s5, r3
	and_b32 r0, 0x7c0, r0
	and_b32 r2, r2, 56
.Ltmp4:
	.loc	2 14 3 prologue_end             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:14:3
	mov_b32 r5, 0
	or3_b32 r2, r1, r0, r2
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	shl_b64 r0, 1, r4
	arrive slcnt(0)
	add_co_u32 r4, s2, r0
	mov_b32 r0, s3
	.loc	2 14 3                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:14:3
	mov_b32 r3, 0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	addc_co_u32 r5, r0, r1
	.loc	2 15 21 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	shl_b64 r0, 1, r2
	add_co_u32 r6, s0, r0
	mov_b32 r0, s1
	addc_co_u32 r7, r0, r1
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r0, 0x1c000, r4
	addc_co_u32 r1, r5, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r8, r4, 0x0
	snop 0
	ldg_b128 r12, r0, 0x0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r0, 0x38000, r4
	addc_co_u32 r1, r5, 0
	add_co_u32 r16, 0x54000, r4
	addc_co_u32 r17, r5, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r18, r0, 0x0
	.loc	2 15 182                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:182
	or_b32 r0, 0x800, r2
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r22, r16, 0x0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r16, 0x70000, r4
	addc_co_u32 r17, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	mad_u32 r26, r0, 2, s0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r0, 0x8c000, r4
	addc_co_u32 r1, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	add_co_u32 r28, 0x1400, r6
	addc_co_u32 r29, r7, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r30, r16, 0x0
	ldg_b128 r34, r0, 0x0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r0, 0xa8000, r4
	addc_co_u32 r1, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	add_co_u32 r16, 0x1800, r6
	addc_co_u32 r17, r7, 0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r38, 0xc4000, r4
	addc_co_u32 r39, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	add_co_u32 r40, 0x1c00, r6
	addc_co_u32 r41, r7, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r42, r0, 0x0
	ldg_b128 r46, r38, 0x0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r38, 0xe0000, r4
	.loc	2 15 182                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:182
	or_b32 r0, 0x1000, r2
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	addc_co_u32 r39, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	mad_u32 r50, r0, 2, s0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r0, 0xfc000, r4
	addc_co_u32 r1, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	add_co_u32 r52, 0x2400, r6
	addc_co_u32 r53, r7, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r54, r38, 0x0
	ldg_b128 r58, r0, 0x0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r0, 0x118000, r4
	addc_co_u32 r1, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	add_co_u32 r38, 0x2800, r6
	addc_co_u32 r39, r7, 0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r62, 0x134000, r4
	addc_co_u32 r63, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	add_co_u32 r64, 0x2c00, r6
	addc_co_u32 r65, r7, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r66, r0, 0x0
	ldg_b128 r70, r62, 0x0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r62, 0x150000, r4
	addc_co_u32 r63, r5, 0
	.loc	2 15 182                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:182
	or_b32 r0, 0x1800, r2
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	mad_u32 r0, r0, 2, s0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r76, r62, 0x0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r2, 0x16c000, r4
	addc_co_u32 r3, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	add_co_u32 r74, 0x3400, r6
	addc_co_u32 r75, r7, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	ldg_b128 r80, r2, 0x0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r2, 0x188000, r4
	addc_co_u32 r3, r5, 0
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	add_co_u32 r62, 0x3800, r6
	addc_co_u32 r63, r7, 0
	.loc	2 15 244                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:244
	add_co_u32 r4, 0x1a4000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	arrive gvmcnt(13)
	stg_b128 r6, 0x0, r8 devc
	arrive gvmcnt(13)
	stg_b128 r6, 0x400, r12 devc
	arrive gvmcnt(13)
	stg_b128 r6, 0x800, r18 devc
	arrive gvmcnt(13)
	stg_b128 r6, 0xc00, r22 devc
	arrive gvmcnt(13)
	stg_b128 r26, 0x0, r30 devc
	arrive gvmcnt(13)
	stg_b128 r28, 0x0, r34 devc
	arrive gvmcnt(13)
	stg_b128 r16, 0x0, r42 devc
	arrive gvmcnt(13)
	stg_b128 r40, 0x0, r46 devc
	arrive gvmcnt(13)
	stg_b128 r50, 0x0, r54 devc
	arrive gvmcnt(13)
	stg_b128 r52, 0x0, r58 devc
	arrive gvmcnt(13)
	stg_b128 r38, 0x0, r66 devc
	arrive gvmcnt(13)
	stg_b128 r64, 0x0, r70 devc
	arrive gvmcnt(13)
	stg_b128 r0, 0x0, r76 devc
	ldg_b128 r0, r2, 0x0
	ldg_b128 r8, r4, 0x0
	arrive gvmcnt(15)
	stg_b128 r74, 0x0, r80 devc
	arrive gvmcnt(2)
	stg_b128 r62, 0x0, r0 devc
	.loc	2 15 21                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:21
	snop 1
	add_co_u32 r0, 0x3c00, r6
	addc_co_u32 r1, r7, 0
	.loc	2 15 217                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:15:217
	arrive gvmcnt(2)
	snop 0
	stg_b128 r0, 0x0, r8 devc
	.loc	2 17 1 is_stmt 1                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:17:1
	snop 2
	endk
.Ltmp5:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 11
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
; codeLenInByte = 1120
; NumMTRegsForWarps/PEU: 84
; NumSTRegsForWarps/PEU: 11
; MaxWarpsPerPEU: 5
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 19 0                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:19:0
; %bb.0:                                ; %entry
	and_b32 r28, 0x3ff, r0
	ldu_b128 s24, s0, 0x20
	shl_b32 r29, 6, r28
	and_b32 r17, 0x3c0, r29
	shl_b32 r0, 5, r28
	shr_b32 r2, 1, r28
	ldu_b256 s16, s0, 0x0
	ldu_b64 s6, s0, 0x30
	smul_i32 s0, 0xe0000, s5
	and_b32 r0, 0x7800, r0
.Ltmp6:
	.loc	2 48 3 prologue_end             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:48:3
	and_or_b32 r30, r2, 24, r17
	.loc	2 46 212                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:212
	or3_b32 r156, r0, s0, r30
	.loc	2 46 59 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:59
	mov_b32 r157, 0
	shl_b64 r0, 1, r156
	arrive slcnt(0)
	add_co_u32 r0, s24, r0
	mov_b32 r31, s25
	.loc	2 46 212                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:212
	or_b32 r4, 0x400, r156
	.loc	2 46 59                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:59
	mov_b32 r5, 0
	addc_co_u32 r1, r31, r1
	shl_b64 r4, 1, r4
	add_co_u32 r4, s24, r4
	.loc	2 46 41                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:41
	ldg_b128 r158, r0, 0x0
	.loc	2 46 212                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:212
	or_b32 r0, r156, 32
	.loc	2 46 59                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:59
	mov_b32 r1, 0
	addc_co_u32 r5, r31, r5
	shl_b64 r0, 1, r0
	add_co_u32 r0, s24, r0
	.loc	2 46 41                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:41
	ldg_b128 r162, r4, 0x0
	.loc	2 46 212                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:212
	or_b32 r4, 0x420, r156
	.loc	2 46 59                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:59
	mov_b32 r5, 0
	addc_co_u32 r1, r31, r1
	shl_b64 r4, 1, r4
	add_co_u32 r4, s24, r4
	addc_co_u32 r5, r31, r5
	.loc	2 46 41                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:46:41
	ldg_b128 r166, r0, 0x0
	smov_b32 s12, s5
	ldg_b128 r170, r4, 0x0
	.loc	2 26 19 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:26:19
	smov_b32 s13, 0
	sshl_b64 s2, 2, s12
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s2, s2, 0x0
	shl_b32 r27, 3, r28
	and_b32 r18, r27, 32
	add_u32 r0, r18, r28
	and_b32 r4, r0, 32
	and_b32 r0, r27, 16
	add_u32 r0, r0, r28
	arrive slcnt(0)
	sashr_i32 s3, 31, s2
	.loc	2 27 20                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:27:20
	sshl_b64 s8, 2, s2
	sadd_co_u32 s10, s22, s8
	saddc_co_u32 s11, s23, s9
	.loc	2 28 22                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:28:22
	sadd_co_u32 s8, s20, s8
	saddc_co_u32 s9, s21, s9
	.loc	2 27 20                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:27:20
	ldu_b32 s1, s10, 0x0
	.loc	2 28 22                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:28:22
	ldu_b32 s3, s8, 0x0
	sadd_co_u32 s20, 0xe0000, s16
	saddc_co_u32 s21, s17, 0
	sadd_co_u32 s22, 0xe0000, s26
	saddc_co_u32 s23, s27, 0
	sshl_b32 s0, 7, s12
	arrive slcnt(0)
	ssub_co_i32 s0, s1, s0
	and_b32 r5, r0, 16
	mul_u24 r0, r28, 9
	sadd_co_i32 s8, s0, s3
	sadd_co_u32 s34, 0xe0080, s16
	and_b32 r6, r0, 8
	and_b32 r0, r28, 15
	shr_b32 r8, 5, r28
	saddc_co_u32 s35, s17, 0
	add_shl_u32 r8, r8, r2, 4
	and_b32 r7, 0x1e0, r2
	and_or_b32 r2, r2, 32, r0
	sadd_co_u32 s36, 0xe0080, s26
	cmp_lt_i32 s38, r2, s8
	or_b32 r2, r2, 16
	saddc_co_u32 s37, s27, 0
	cmp_lt_i32 s40, r2, s8
	and_b32 r3, 0x1fc0, r27
	or_b32 r2, r4, r6
	sadd_co_u32 s0, 0x4000, s24
	or3_b32 r2, r2, r3, r5
	or_b32 r3, r3, r4
	saddc_co_u32 s1, s25, 0
	or3_b32 r3, r3, r5, r6
	mov_b32 r4, 0x1000
	shl_add_u32 r9, 1, r3, r4
	and_b32 r10, r8, 16
	shr_b32 r8, 4, r28
	or_b32 r4, r7, r0
	smul_i32 s5, 0xe00000, s2
	sadd_co_u32 s2, 0x8000, s24
	add_shl_u32 r11, r8, r28, 3
	shl_b32 r8, 1, r2
	saddc_co_u32 s3, s25, 0
	cmp_lt_i32 s10, r4, s8
	sadd_co_i32 s42, 0x2000, 0
	or_b32 r4, r4, 16
	and_or_b32 r25, r11, 8, r10
	smul_i32 s28, 0xe0000, s4
	cmp_lt_i32 s30, r7, s8
	cmp_lt_i32 s8, r4, s8
	add_u32 r4, s42, r8
	add_u32 r5, s42, r9
	sadd_co_i32 s42, 0x4000, 0
	add_u32 r6, s42, r8
	add_u32 r7, s42, r9
	sadd_co_i32 s42, 0x6000, 0
	or_b32 r20, 0x400, r17
	or_b32 r21, r25, r18
	or_b32 r22, 0x800, r17
	or_b32 r23, 0xc00, r17
	or_b32 r24, 0x1000, r17
	or_b32 r32, 0x1400, r17
	or_b32 r33, 0x1800, r17
	or_b32 r34, 0x1c00, r17
	xor_b32 r35, r18, 32
	.loc	2 48 3                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:48:3
	sadd_co_i32 s5, s5, s28
	or_b32 r11, r21, r20
	or_b32 r12, r21, r22
	or_b32 r13, r21, r23
	or_b32 r14, r21, r24
	or_b32 r15, r21, r32
	or_b32 r16, r21, r33
	or_b32 r19, r25, r17
	or_b32 r17, r21, r34
	or3_b32 r21, r25, r23, r35
	or3_b32 r23, r25, r32, r35
	shr_b32 r26, 3, r28
	add_u32 r2, 0, r8
	add_u32 r3, 0, r9
	add_u32 r8, s42, r8
	add_u32 r9, s42, r9
	smov_b32 s42, 0x1c00
	mov_b32 r32, s5
	mad_u24 r26, r26, s42, r32
	and_or_b32 r182, r27, 56, r26
	mad_u32 r26, r156, 2, s24
	add_co_u32 r26, 0x4800, r26
	cmp_gt_u32 s14, 0x80, r28
	cmp_lt_u32 s18, 0x7f, r28
	smul_hi_u32 s43, 0x1c0000, s12
	smov_b32 s42, 0
	smul_i32 s44, 0x1c0000, s12
	smov_b32 s45, 0
	and_b32 r29, 0x1000, r29
	shl_b32 r30, 1, r30
	addc_co_u32 r27, r27, 0
	sor_b64 s42, s44, s42
	or3_b32 r30, s44, r29, r30
	.loc	2 0 0 is_stmt 0                 ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:0
	shl_b64 r36, 0, 0
	shl_b64 r186, 0, 0
	or_b32 r10, r19, r18
	or_b32 r18, r19, r35
	or3_b32 r19, r25, r20, r35
	or3_b32 r20, r25, r22, r35
	or3_b32 r22, r25, r24, r35
	or3_b32 r24, r25, r33, r35
	or3_b32 r25, r25, r34, r35
	.loc	2 48 3                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:48:3
	add_co_u32 r29, s24, r30
	mov_b32 r33, s43
	smov_b64 s24, 0
	.loc	2 0 0                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:0
	shl_b64 r38, 0, 0
	shl_b64 r44, 0, r36
	shl_b64 r52, 0, r36
	shl_b64 r60, 0, r36
	shl_b64 r68, 0, r36
	shl_b64 r76, 0, r36
	shl_b64 r84, 0, r36
	shl_b64 r92, 0, r36
	shl_b64 r100, 0, r36
	shl_b64 r108, 0, r36
	shl_b64 r116, 0, r36
	shl_b64 r124, 0, r36
	shl_b64 r132, 0, r36
	shl_b64 r140, 0, r36
	shl_b64 r148, 0, r36
	shl_b64 r174, 0, r36
	shl_b64 r40, 0, r36
	shl_b64 r48, 0, r36
	shl_b64 r56, 0, r36
	shl_b64 r64, 0, r36
	shl_b64 r72, 0, r36
	shl_b64 r80, 0, r36
	shl_b64 r88, 0, r36
	shl_b64 r96, 0, r36
	shl_b64 r104, 0, r36
	shl_b64 r112, 0, r36
	shl_b64 r120, 0, r36
	shl_b64 r128, 0, r36
	shl_b64 r136, 0, r36
	shl_b64 r144, 0, r36
	shl_b64 r152, 0, r36
	shl_b64 r178, 0, r36
	shr_b32 r1, 2, r28
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
	shl_add_u32 r22, 1, r22, 0
	shl_add_u32 r23, 1, r23, 0
	shl_add_u32 r24, 1, r24, 0
	shl_add_u32 r25, 1, r25, 0
	.loc	2 48 3                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:48:3
	shr_b32 r28, 6, r28
	addc_co_u32 r30, r31, r33
	smov_b64 s42, s24
	shl_b64 r46, 0, r38
	shl_b64 r54, 0, r38
	shl_b64 r62, 0, r38
	shl_b64 r70, 0, r38
	shl_b64 r78, 0, r38
	shl_b64 r86, 0, r38
	shl_b64 r94, 0, r38
	shl_b64 r102, 0, r38
	shl_b64 r110, 0, r38
	shl_b64 r118, 0, r38
	shl_b64 r126, 0, r38
	shl_b64 r134, 0, r38
	shl_b64 r142, 0, r38
	shl_b64 r150, 0, r38
	shl_b64 r176, 0, r38
	shl_b64 r42, 0, r38
	shl_b64 r50, 0, r38
	shl_b64 r184, 0, r186
	shl_b64 r190, 0, r186
	shl_b64 r188, 0, r186
	shl_b64 r194, 0, r186
	shl_b64 r192, 0, r186
	shl_b64 r198, 0, r186
	shl_b64 r196, 0, r186
	shl_b64 r58, 0, r38
	shl_b64 r66, 0, r38
	shl_b64 r74, 0, r38
	shl_b64 r82, 0, r38
	shl_b64 r90, 0, r38
	shl_b64 r98, 0, r38
	shl_b64 r106, 0, r38
	shl_b64 r114, 0, r38
	shl_b64 r122, 0, r38
	shl_b64 r130, 0, r38
	shl_b64 r138, 0, r38
	shl_b64 r146, 0, r38
	shl_b64 r154, 0, r38
	shl_b64 r180, 0, r38
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %for.inc1212
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 48 31                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:48:31
	sadd_co_u32 s42, 0x80, s42
	saddc_co_u32 s43, s43, 0
	sadd_co_u32 s24, 0x8000, s24
	saddc_co_u32 s25, s25, 0
	add_co_u32 r156, 0x4000, r156
	scmp_eq_u64 0x1c00, s42
	addc_co_u32 r157, r157, 0
	.loc	2 48 3                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:48:3
	bra_smsks LBB3_52
LBB3_2:                                 ; %for.body85
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 49 9 is_stmt 1                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:49:9
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB3_9
; %bb.3:                                ; %for.cond88.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 52 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:52:13
	and_xmsk s46, s38
	snop 0
	bra_xmsks LBB3_40
; %bb.4:                                ; %for.inc136
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s46
	.loc	2 52 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:52:13
	and_xmsk s46, s40
	snop 0
	bra_xmsks LBB3_41
LBB3_5:                                 ; %for.inc136.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s46
	.loc	2 52 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:52:13
	and_xmsk s46, s38
	snop 0
	bra_xmsks LBB3_42
LBB3_6:                                 ; %for.inc136.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s46
	.loc	2 52 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:52:13
	and_xmsk s46, s40
	snop 0
	bra_xmskz LBB3_8
LBB3_7:                                 ; %if.then105.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	add_co_u32 r31, r29, s24
	mov_b32 r32, s25
	addc_co_u32 r32, r30, r32
	add_co_u32 r34, 0x4840, r31
	addc_co_u32 r35, r32, 0
	.loc	2 53 49 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:53:49
	snop 1
	ldg_b128 r184, r34, 0x0
LBB3_8:                                 ; %Flow331
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 49 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:49
	sor_b64 xmsk, xmsk, s46
LBB3_9:                                 ; %Flow332
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s44
	.loc	2 59 362 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:59:362
	add_co_u32 r31, r182, s42
	add_u32 r32, 0x38000, r31
	mad_i32 r34, r31, 2, s16
	mad_i32 r200, r32, 2, s16
	.loc	2 59 345 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:59:345
	snop 0
	ldg_b128 r202, r34, 0x0
	ldg_b128 r206, r200, 0x0
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r202
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r206
	.loc	2 61 9 is_stmt 1                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:61:9
	and_xmsk s44, s18
	snop 0
	bra_xmskz LBB3_16
; %bb.10:                               ; %for.cond204.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 64 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:64:13
	and_xmsk s46, s10
	snop 0
	bra_xmsks LBB3_43
; %bb.11:                               ; %for.inc258
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s46
	.loc	2 64 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:64:13
	and_xmsk s46, s10
	snop 0
	bra_xmsks LBB3_44
LBB3_12:                                ; %for.inc258.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s46
	.loc	2 64 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:64:13
	and_xmsk s46, s8
	snop 0
	bra_xmsks LBB3_45
LBB3_13:                                ; %for.inc258.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	sor_b64 xmsk, xmsk, s46
	.loc	2 64 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:64:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB3_15
LBB3_14:                                ; %if.then222.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	shl_b64 r34, 1, r156
	or_b32 r34, 0x840, r34
	add_co_u32 r34, s0, r34
	mov_b32 r33, s1
	addc_co_u32 r35, r33, r35
	.loc	2 65 77 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:65:77
	snop 1
	ldg_b128 r184, r34, 0x0
LBB3_15:                                ; %Flow329
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 77 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:77
	sor_b64 xmsk, xmsk, s46
LBB3_16:                                ; %Flow330
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s44
	.loc	2 71 371 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:71:371
	mad_i32 r34, r31, 2, s20
	mad_i32 r200, r32, 2, s20
	.loc	2 71 354 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:71:354
	snop 0
	ldg_b128 r202, r34, 0x0
	.loc	2 75 369 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:75:369
	mad_i32 r34, r31, 2, s26
	.loc	2 71 354                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:71:354
	ldg_b128 r206, r200, 0x0
	.loc	2 75 369                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:75:369
	mad_i32 r200, r32, 2, s26
	.loc	2 75 354 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:75:354
	ldg_b128 r210, r34, 0x0
	.loc	2 79 370 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:79:370
	mad_i32 r34, r31, 2, s22
	.loc	2 75 354                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:75:354
	ldg_b128 r214, r200, 0x0
	.loc	2 79 370                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:79:370
	mad_i32 r200, r32, 2, s22
	.loc	2 79 355 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:79:355
	ldg_b128 r218, r34, 0x0
	snop 0
	ldg_b128 r222, r200, 0x0
	.loc	2 71 354 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:71:354
	arrive gvmcnt(5)
	sts_b128 r4, 0x0, r202
	arrive gvmcnt(4)
	sts_b128 r5, 0x0, r206
	.loc	2 75 354                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:75:354
	arrive gvmcnt(3)
	sts_b128 r6, 0x0, r210
	arrive gvmcnt(2)
	sts_b128 r7, 0x0, r214
	.loc	2 79 355                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:79:355
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r218
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r222
.Ltmp7:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 82 9                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:82:9
	and_xmsk s44, s30
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %for.cond463.preheader.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r200, r10, 0x0
	lds_b128 r204, r11, 0x0
	lds_b128 r208, r12, 0x0
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	add_i32 r33, 0x4000, r10
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r200, r158, r174
	mma_16x16x16f16 r92, r200, r162, r92
	mma_16x16x16f16 r174, r202, r160, r174
	mma_16x16x16f16 r92, r202, r164, r92
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r200, r13, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r204, r158, r148
	mma_16x16x16f16 r84, r204, r162, r84
	mma_16x16x16f16 r148, r206, r160, r148
	mma_16x16x16f16 r84, r206, r164, r84
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r204, r14, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r158, r140
	mma_16x16x16f16 r76, r208, r162, r76
	mma_16x16x16f16 r140, r210, r160, r140
	mma_16x16x16f16 r76, r210, r164, r76
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r208, r15, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r200, r158, r132
	mma_16x16x16f16 r68, r200, r162, r68
	mma_16x16x16f16 r132, r202, r160, r132
	mma_16x16x16f16 r68, r202, r164, r68
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r200, r16, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r204, r158, r124
	mma_16x16x16f16 r60, r204, r162, r60
	mma_16x16x16f16 r124, r206, r160, r124
	mma_16x16x16f16 r60, r206, r164, r60
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r204, r17, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r208, r158, r116
	mma_16x16x16f16 r52, r208, r162, r52
	mma_16x16x16f16 r116, r210, r160, r116
	mma_16x16x16f16 r52, r210, r164, r52
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r11
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r200, r158, r108
	mma_16x16x16f16 r44, r200, r162, r44
	mma_16x16x16f16 r108, r202, r160, r108
	mma_16x16x16f16 r44, r202, r164, r44
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r12
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r204, r158, r100
	mma_16x16x16f16 r36, r204, r162, r36
	mma_16x16x16f16 r100, r206, r160, r100
	mma_16x16x16f16 r36, r206, r164, r36
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r13
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r208, r158, r178
	mma_16x16x16f16 r96, r208, r162, r96
	mma_16x16x16f16 r178, r210, r160, r178
	mma_16x16x16f16 r96, r210, r164, r96
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r14
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r200, r158, r152
	mma_16x16x16f16 r88, r200, r162, r88
	mma_16x16x16f16 r152, r202, r160, r152
	mma_16x16x16f16 r88, r202, r164, r88
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r15
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r158, r144
	mma_16x16x16f16 r80, r204, r162, r80
	mma_16x16x16f16 r144, r206, r160, r144
	mma_16x16x16f16 r80, r206, r164, r80
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r16
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r208, r158, r136
	mma_16x16x16f16 r72, r208, r162, r72
	mma_16x16x16f16 r136, r210, r160, r136
	mma_16x16x16f16 r72, r210, r164, r72
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r17
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r200, r158, r128
	mma_16x16x16f16 r64, r200, r162, r64
	mma_16x16x16f16 r128, r202, r160, r128
	mma_16x16x16f16 r64, r202, r164, r64
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r18
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r204, r158, r120
	mma_16x16x16f16 r56, r204, r162, r56
	mma_16x16x16f16 r120, r206, r160, r120
	mma_16x16x16f16 r56, r206, r164, r56
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r204, r18, 0x0
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r208, r158, r112
	mma_16x16x16f16 r48, r208, r162, r48
	mma_16x16x16f16 r112, r210, r160, r112
	mma_16x16x16f16 r48, r210, r164, r48
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r208, r19, 0x0
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r200, r158, r104
	mma_16x16x16f16 r40, r200, r162, r40
	mma_16x16x16f16 r104, r202, r160, r104
	mma_16x16x16f16 r40, r202, r164, r40
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r200, r20, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r204, r166, r174
	mma_16x16x16f16 r92, r204, r170, r92
	mma_16x16x16f16 r174, r206, r168, r174
	mma_16x16x16f16 r92, r206, r172, r92
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r204, r21, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r208, r166, r148
	mma_16x16x16f16 r84, r208, r170, r84
	mma_16x16x16f16 r148, r210, r168, r148
	mma_16x16x16f16 r84, r210, r172, r84
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r208, r22, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r200, r166, r140
	mma_16x16x16f16 r76, r200, r170, r76
	mma_16x16x16f16 r140, r202, r168, r140
	mma_16x16x16f16 r76, r202, r172, r76
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r200, r23, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r204, r166, r132
	mma_16x16x16f16 r68, r204, r170, r68
	mma_16x16x16f16 r132, r206, r168, r132
	mma_16x16x16f16 r68, r206, r172, r68
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r204, r24, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r208, r166, r124
	mma_16x16x16f16 r60, r208, r170, r60
	mma_16x16x16f16 r124, r210, r168, r124
	mma_16x16x16f16 r60, r210, r172, r60
	.loc	2 85 45                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:85:45
	lds_b128 r208, r25, 0x0
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r200, r166, r116
	mma_16x16x16f16 r52, r200, r170, r52
	mma_16x16x16f16 r116, r202, r168, r116
	mma_16x16x16f16 r52, r202, r172, r52
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r19
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r204, r166, r108
	mma_16x16x16f16 r44, r204, r170, r44
	mma_16x16x16f16 r108, r206, r168, r108
	mma_16x16x16f16 r44, r206, r172, r44
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r20
	.loc	2 91 58                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:91:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r166, r100
	mma_16x16x16f16 r36, r208, r170, r36
	mma_16x16x16f16 r100, r210, r168, r100
	mma_16x16x16f16 r36, r210, r172, r36
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r21
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r200, r166, r178
	mma_16x16x16f16 r96, r200, r170, r96
	mma_16x16x16f16 r178, r202, r168, r178
	mma_16x16x16f16 r96, r202, r172, r96
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r22
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r204, r166, r152
	mma_16x16x16f16 r88, r204, r170, r88
	mma_16x16x16f16 r152, r206, r168, r152
	mma_16x16x16f16 r88, r206, r172, r88
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r23
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r208, r166, r144
	mma_16x16x16f16 r80, r208, r170, r80
	mma_16x16x16f16 r144, r210, r168, r144
	mma_16x16x16f16 r80, r210, r172, r80
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r24
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r200, r166, r136
	mma_16x16x16f16 r72, r200, r170, r72
	mma_16x16x16f16 r136, r202, r168, r136
	mma_16x16x16f16 r72, r202, r172, r72
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r25
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r204, r166, r128
	mma_16x16x16f16 r64, r204, r170, r64
	mma_16x16x16f16 r128, r206, r168, r128
	mma_16x16x16f16 r64, r206, r172, r64
	.loc	2 99 47                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:99:47
	lds_b128 r204, r33, 0x0
	.loc	2 105 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:105:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r208, r166, r120
	mma_16x16x16f16 r56, r208, r170, r56
	mma_16x16x16f16 r120, r210, r168, r120
	mma_16x16x16f16 r56, r210, r172, r56
	arrive bsmcnt(1)
	mma_16x16x16f16 r112, r200, r166, r112
	mma_16x16x16f16 r48, r200, r170, r48
	mma_16x16x16f16 r112, r202, r168, r112
	mma_16x16x16f16 r48, r202, r172, r48
	arrive bsmcnt(0)
	mma_16x16x16f16 r104, r204, r166, r104
	mma_16x16x16f16 r40, r204, r170, r40
	mma_16x16x16f16 r104, r206, r168, r104
	mma_16x16x16f16 r40, r206, r172, r40
LBB3_18:                                ; %if.end641
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s44
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 115 16                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:115:16
	mov_b32 r34, 0x1b80
	mov_b32 r35, 0
	cmp_lg_u64 s44, s42, r34
	scmp_eq_u64 0x1b80, s42
	.loc	2 115 9 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:115:9
	snop 0
	bra_smsks LBB3_27
; %bb.19:                               ; %if.then643
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 116 11 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:116:11
	and_xmsk s46, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.20:                               ; %for.cond647.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 119 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:119:15
	and_xmsk s48, s10
	snop 0
	bra_xmsks LBB3_46
; %bb.21:                               ; %for.inc697
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s48
	.loc	2 119 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:119:15
	and_xmsk s48, s8
	snop 0
	bra_xmsks LBB3_47
LBB3_22:                                ; %for.inc697.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s48
	.loc	2 119 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:119:15
	and_xmsk s48, s10
	snop 0
	bra_xmsks LBB3_48
LBB3_23:                                ; %for.inc697.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s48
	.loc	2 119 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:119:15
	and_xmsk s48, s8
	snop 0
	bra_xmskz LBB3_25
LBB3_24:                                ; %if.then665.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	add_co_u32 r33, r29, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r30, r34
	add_co_u32 r170, 0x8840, r33
	addc_co_u32 r171, r34, 0
	.loc	2 120 50 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:120:50
	snop 1
	ldg_b128 r170, r170, 0x0
LBB3_25:                                ; %Flow327
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 50 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:50
	sor_b64 xmsk, xmsk, s48
LBB3_26:                                ; %Flow328
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s46
LBB3_27:                                ; %if.end701
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 127 363 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:127:363
	add_u32 r33, r31, 64
	add_u32 r34, 0x38040, r31
	mad_i32 r200, r33, 2, s16
	mad_i32 r202, r34, 2, s16
	.loc	2 127 346 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:127:346
	snop 0
	ldg_b128 r204, r200, 0x0
	ldg_b128 r200, r202, 0x0
	.loc	2 129 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:129:9
	sandn_b64 cmsk, xmsk, s44
	.loc	2 127 346                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:127:346
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r204
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r200
	.loc	2 129 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:129:9
	bra_cmsks LBB3_36
; %bb.28:                               ; %if.then765
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 130 11                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:130:11
	and_xmsk s46, s18
	snop 0
	bra_xmskz LBB3_35
; %bb.29:                               ; %for.cond769.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 133 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:133:15
	and_xmsk s48, s10
	snop 0
	bra_xmsks LBB3_49
; %bb.30:                               ; %for.inc823
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s48
	.loc	2 133 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:133:15
	and_xmsk s48, s10
	snop 0
	bra_xmsks LBB3_50
LBB3_31:                                ; %for.inc823.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s48
	.loc	2 133 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:133:15
	and_xmsk s48, s8
	snop 0
	bra_xmsks LBB3_51
LBB3_32:                                ; %for.inc823.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s48
	.loc	2 133 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:133:15
	and_xmsk s48, s8
	snop 0
	bra_xmskz LBB3_34
LBB3_33:                                ; %if.then787.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15                          ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	shl_b64 r170, 1, r156
	or_b32 r170, 0x840, r170
	add_co_u32 r170, s2, r170
	mov_b32 r35, s3
	addc_co_u32 r171, r35, r171
	.loc	2 134 79 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:134:79
	snop 1
	ldg_b128 r170, r170, 0x0
LBB3_34:                                ; %Flow
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 79 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:79
	sor_b64 xmsk, xmsk, s48
LBB3_35:                                ; %Flow326
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s46
LBB3_36:                                ; %if.end827
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 141 372 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:141:372
	mad_i32 r200, r31, 2, s34
	mad_i32 r202, r32, 2, s34
	.loc	2 145 370                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:145:370
	mad_i32 r208, r33, 2, s26
	mad_i32 r34, r34, 2, s26
	.loc	2 141 355                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:141:355
	ldg_b128 r204, r200, 0x0
	ldg_b128 r200, r202, 0x0
	.loc	2 145 355                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:145:355
	ldg_b128 r208, r208, 0x0
	ldg_b128 r212, r34, 0x0
	.loc	2 149 371                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:149:371
	mad_i32 r34, r31, 2, s36
	mad_i32 r32, r32, 2, s36
	.loc	2 149 356 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:149:356
	snop 0
	ldg_b128 r216, r34, 0x0
	ldg_b128 r32, r32, 0x0
	.loc	2 141 355 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:141:355
	arrive gvmcnt(5)
	sts_b128 r4, 0x0, r204
	arrive gvmcnt(4)
	sts_b128 r5, 0x0, r200
	.loc	2 145 355                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:145:355
	arrive gvmcnt(3)
	sts_b128 r6, 0x0, r208
	arrive gvmcnt(2)
	sts_b128 r7, 0x0, r212
	.loc	2 149 356                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:149:356
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r216
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r32
.Ltmp11:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp12:
	.loc	2 152 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:152:9
	and_xmsk s46, s30
	snop 0
	bra_xmskz LBB3_38
; %bb.37:                               ; %for.cond1030.preheader.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r32, r10, 0x0
	lds_b128 r200, r11, 0x0
	lds_b128 r204, r12, 0x0
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	add_i32 r31, 0x4000, r10
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r32, r196, r174
	mma_16x16x16f16 r92, r32, r192, r92
	mma_16x16x16f16 r174, r34, r198, r174
	mma_16x16x16f16 r92, r34, r194, r92
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r32, r13, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r200, r196, r148
	mma_16x16x16f16 r84, r200, r192, r84
	mma_16x16x16f16 r148, r202, r198, r148
	mma_16x16x16f16 r84, r202, r194, r84
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r200, r14, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r196, r140
	mma_16x16x16f16 r76, r204, r192, r76
	mma_16x16x16f16 r140, r206, r198, r140
	mma_16x16x16f16 r76, r206, r194, r76
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r204, r15, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r32, r196, r132
	mma_16x16x16f16 r68, r32, r192, r68
	mma_16x16x16f16 r132, r34, r198, r132
	mma_16x16x16f16 r68, r34, r194, r68
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r32, r16, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r200, r196, r124
	mma_16x16x16f16 r60, r200, r192, r60
	mma_16x16x16f16 r124, r202, r198, r124
	mma_16x16x16f16 r60, r202, r194, r60
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r200, r17, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r204, r196, r116
	mma_16x16x16f16 r52, r204, r192, r52
	mma_16x16x16f16 r116, r206, r198, r116
	mma_16x16x16f16 r52, r206, r194, r52
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r11
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r32, r196, r108
	mma_16x16x16f16 r44, r32, r192, r44
	mma_16x16x16f16 r108, r34, r198, r108
	mma_16x16x16f16 r44, r34, r194, r44
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r12
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r200, r196, r100
	mma_16x16x16f16 r36, r200, r192, r36
	mma_16x16x16f16 r100, r202, r198, r100
	mma_16x16x16f16 r36, r202, r194, r36
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r200, r31, 0x0
	add_i32 r31, 0x4000, r13
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r204, r196, r178
	mma_16x16x16f16 r96, r204, r192, r96
	mma_16x16x16f16 r178, r206, r198, r178
	mma_16x16x16f16 r96, r206, r194, r96
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r14
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r32, r196, r152
	mma_16x16x16f16 r88, r32, r192, r88
	mma_16x16x16f16 r152, r34, r198, r152
	mma_16x16x16f16 r88, r34, r194, r88
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r15
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r200, r196, r144
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r144, r202, r198, r144
	mma_16x16x16f16 r80, r202, r194, r80
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r200, r31, 0x0
	add_i32 r31, 0x4000, r16
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r204, r196, r136
	mma_16x16x16f16 r72, r204, r192, r72
	mma_16x16x16f16 r136, r206, r198, r136
	mma_16x16x16f16 r72, r206, r194, r72
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r17
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r32, r196, r128
	mma_16x16x16f16 r64, r32, r192, r64
	mma_16x16x16f16 r128, r34, r198, r128
	mma_16x16x16f16 r64, r34, r194, r64
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r18
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r200, r196, r120
	mma_16x16x16f16 r56, r200, r192, r56
	mma_16x16x16f16 r120, r202, r198, r120
	mma_16x16x16f16 r56, r202, r194, r56
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r200, r18, 0x0
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r204, r196, r112
	mma_16x16x16f16 r48, r204, r192, r48
	mma_16x16x16f16 r112, r206, r198, r112
	mma_16x16x16f16 r48, r206, r194, r48
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r204, r19, 0x0
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r32, r196, r104
	mma_16x16x16f16 r40, r32, r192, r40
	mma_16x16x16f16 r104, r34, r198, r104
	mma_16x16x16f16 r40, r34, r194, r40
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r32, r20, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r200, r188, r174
	mma_16x16x16f16 r92, r200, r184, r92
	mma_16x16x16f16 r174, r202, r190, r174
	mma_16x16x16f16 r92, r202, r186, r92
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r200, r21, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r204, r188, r148
	mma_16x16x16f16 r84, r204, r184, r84
	mma_16x16x16f16 r148, r206, r190, r148
	mma_16x16x16f16 r84, r206, r186, r84
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r204, r22, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r32, r188, r140
	mma_16x16x16f16 r76, r32, r184, r76
	mma_16x16x16f16 r140, r34, r190, r140
	mma_16x16x16f16 r76, r34, r186, r76
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r32, r23, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r200, r188, r132
	mma_16x16x16f16 r68, r200, r184, r68
	mma_16x16x16f16 r132, r202, r190, r132
	mma_16x16x16f16 r68, r202, r186, r68
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r200, r24, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r204, r188, r124
	mma_16x16x16f16 r60, r204, r184, r60
	mma_16x16x16f16 r124, r206, r190, r124
	mma_16x16x16f16 r60, r206, r186, r60
	.loc	2 155 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:155:47
	lds_b128 r204, r25, 0x0
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r32, r188, r116
	mma_16x16x16f16 r52, r32, r184, r52
	mma_16x16x16f16 r116, r34, r190, r116
	mma_16x16x16f16 r52, r34, r186, r52
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r19
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r200, r188, r108
	mma_16x16x16f16 r44, r200, r184, r44
	mma_16x16x16f16 r108, r202, r190, r108
	mma_16x16x16f16 r44, r202, r186, r44
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r200, r31, 0x0
	add_i32 r31, 0x4000, r20
	.loc	2 161 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:161:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r204, r188, r100
	mma_16x16x16f16 r36, r204, r184, r36
	mma_16x16x16f16 r100, r206, r190, r100
	mma_16x16x16f16 r36, r206, r186, r36
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r21
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r32, r188, r178
	mma_16x16x16f16 r96, r32, r184, r96
	mma_16x16x16f16 r178, r34, r190, r178
	mma_16x16x16f16 r96, r34, r186, r96
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r22
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r200, r188, r152
	mma_16x16x16f16 r88, r200, r184, r88
	mma_16x16x16f16 r152, r202, r190, r152
	mma_16x16x16f16 r88, r202, r186, r88
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r200, r31, 0x0
	add_i32 r31, 0x4000, r23
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r188, r144
	mma_16x16x16f16 r80, r204, r184, r80
	mma_16x16x16f16 r144, r206, r190, r144
	mma_16x16x16f16 r80, r206, r186, r80
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r24
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r32, r188, r136
	mma_16x16x16f16 r72, r32, r184, r72
	mma_16x16x16f16 r136, r34, r190, r136
	mma_16x16x16f16 r72, r34, r186, r72
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r25
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r200, r188, r128
	mma_16x16x16f16 r64, r200, r184, r64
	mma_16x16x16f16 r128, r202, r190, r128
	mma_16x16x16f16 r64, r202, r186, r64
	.loc	2 169 47                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:169:47
	lds_b128 r200, r31, 0x0
	.loc	2 175 56                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:175:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r204, r188, r120
	mma_16x16x16f16 r56, r204, r184, r56
	mma_16x16x16f16 r120, r206, r190, r120
	mma_16x16x16f16 r56, r206, r186, r56
	arrive bsmcnt(1)
	mma_16x16x16f16 r112, r32, r188, r112
	mma_16x16x16f16 r48, r32, r184, r48
	mma_16x16x16f16 r112, r34, r190, r112
	mma_16x16x16f16 r48, r34, r186, r48
	arrive bsmcnt(0)
	mma_16x16x16f16 r104, r200, r188, r104
	mma_16x16x16f16 r40, r200, r184, r40
	mma_16x16x16f16 r104, r202, r190, r104
	mma_16x16x16f16 r40, r202, r186, r40
LBB3_38:                                ; %if.end1208
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s46
	.loc	2 184 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:184:9
	sandn_b64 cmsk, xmsk, s44
	snop 0
	bra_cmsks LBB3_1
; %bb.39:                               ; %if.then1210
                                        ;   in Loop: Header=BB3_2 Depth=1
.Ltmp13:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_1
.Ltmp14:
	.p2align	5
LBB3_40:                                ; %if.then105
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	add_co_u32 r31, r29, s24
	mov_b32 r32, s25
	addc_co_u32 r32, r30, r32
	add_co_u32 r34, 0x4000, r31
	addc_co_u32 r35, r32, 0
	.loc	2 53 49 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:53:49
	snop 1
	ldg_b128 r196, r34, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 52 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:52:13
	and_xmsk s46, s40
	snop 0
	bra_xmskz LBB3_5
LBB3_41:                                ; %if.then105.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	add_co_u32 r31, r29, s24
	mov_b32 r32, s25
	addc_co_u32 r32, r30, r32
	add_co_u32 r34, 0x4800, r31
	addc_co_u32 r35, r32, 0
	.loc	2 53 49 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:53:49
	snop 1
	ldg_b128 r192, r34, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 52 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:52:13
	and_xmsk s46, s38
	snop 0
	bra_xmskz LBB3_6
LBB3_42:                                ; %if.then105.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	add_co_u32 r31, r29, s24
	mov_b32 r32, s25
	addc_co_u32 r32, r30, r32
	add_co_u32 r34, 0x4040, r31
	addc_co_u32 r35, r32, 0
	.loc	2 53 49 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:53:49
	snop 1
	ldg_b128 r188, r34, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 52 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:52:13
	and_xmsk s46, s40
	snop 0
	bra_xmsks LBB3_7
	bra LBB3_8
	.p2align	5
LBB3_43:                                ; %if.then222
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	add_co_u32 r34, r26, s24
	mov_b32 r33, s25
	addc_co_u32 r35, r27, r33
	.loc	2 65 77 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:65:77
	snop 1
	ldg_b128 r196, r34, -0x800
	sor_b64 xmsk, xmsk, s46
	.loc	2 64 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:64:13
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB3_12
LBB3_44:                                ; %if.then222.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	add_co_u32 r34, r26, s24
	mov_b32 r33, s25
	addc_co_u32 r35, r27, r33
	.loc	2 65 77 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:65:77
	snop 1
	ldg_b128 r188, r34, -0x7c0
	sor_b64 xmsk, xmsk, s46
	.loc	2 64 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:64:13
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB3_13
LBB3_45:                                ; %if.then222.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	add_co_u32 r34, r26, s24
	mov_b32 r33, s25
	addc_co_u32 r35, r27, r33
	.loc	2 65 77 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:65:77
	snop 1
	ldg_b128 r192, r34, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 64 13                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:64:13
	and_xmsk s46, s8
	snop 0
	bra_xmsks LBB3_14
	bra LBB3_15
LBB3_46:                                ; %if.then665
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:13
	add_co_u32 r33, r29, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r30, r34
	add_co_u32 r158, 0x8000, r33
	addc_co_u32 r159, r34, 0
	.loc	2 120 50 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:120:50
	snop 1
	ldg_b128 r158, r158, 0x0
	sor_b64 xmsk, xmsk, s48
	.loc	2 119 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:119:15
	and_xmsk s48, s8
	snop 0
	bra_xmskz LBB3_22
LBB3_47:                                ; %if.then665.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	add_co_u32 r33, r29, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r30, r34
	add_co_u32 r162, 0x8800, r33
	addc_co_u32 r163, r34, 0
	.loc	2 120 50 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:120:50
	snop 1
	ldg_b128 r162, r162, 0x0
	sor_b64 xmsk, xmsk, s48
	.loc	2 119 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:119:15
	and_xmsk s48, s10
	snop 0
	bra_xmskz LBB3_23
LBB3_48:                                ; %if.then665.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	add_co_u32 r33, r29, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r30, r34
	add_co_u32 r166, 0x8040, r33
	addc_co_u32 r167, r34, 0
	.loc	2 120 50 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:120:50
	snop 1
	ldg_b128 r166, r166, 0x0
	sor_b64 xmsk, xmsk, s48
	.loc	2 119 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:119:15
	and_xmsk s48, s8
	snop 0
	bra_xmsks LBB3_24
	bra LBB3_25
LBB3_49:                                ; %if.then787
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	add_co_u32 r35, r26, s24
	mov_b32 r158, s25
	addc_co_u32 r158, r27, r158
	add_co_u32 r160, 0x3800, r35
	addc_co_u32 r161, r158, 0
	.loc	2 134 79 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:134:79
	snop 1
	ldg_b128 r158, r160, 0x0
	sor_b64 xmsk, xmsk, s48
	.loc	2 133 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:133:15
	and_xmsk s48, s10
	snop 0
	bra_xmskz LBB3_31
LBB3_50:                                ; %if.then787.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	add_co_u32 r35, r26, s24
	mov_b32 r166, s25
	addc_co_u32 r166, r27, r166
	add_co_u32 r168, 0x3840, r35
	addc_co_u32 r169, r166, 0
	.loc	2 134 79 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:134:79
	snop 1
	ldg_b128 r166, r168, 0x0
	sor_b64 xmsk, xmsk, s48
	.loc	2 133 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:133:15
	and_xmsk s48, s8
	snop 0
	bra_xmskz LBB3_32
LBB3_51:                                ; %if.then787.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 15 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	add_co_u32 r35, r26, s24
	mov_b32 r162, s25
	addc_co_u32 r162, r27, r162
	add_co_u32 r164, 0x4000, r35
	addc_co_u32 r165, r162, 0
	.loc	2 134 79 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:134:79
	snop 1
	ldg_b128 r162, r164, 0x0
	sor_b64 xmsk, xmsk, s48
	.loc	2 133 15                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:133:15
	and_xmsk s48, s8
	snop 0
	bra_xmsks LBB3_33
	bra LBB3_34
LBB3_52:                                ; %for.cond1215.preheader
	.loc	2 0 15 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:15
	smul_i32 s0, 0x44000, s12
	sshl_b32 s1, 7, s4
	sadd_co_i32 s0, s1, s0
	mov_b32 r2, s0
	smov_b32 s1, 0x11000
	mad_u24 r2, r28, s1, r2
	smov_b32 s0, 0x880
	mad_u24 r0, r0, s0, r2
	and_or_b32 r0, r1, 12, r0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_69
; %bb.53:                               ; %if.end1393
	.loc	2 0 9 is_stmt 0                 ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_70
LBB3_54:                                ; %if.end1393.1
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_71
LBB3_55:                                ; %if.end1393.2
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_72
LBB3_56:                                ; %if.end1393.3
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_73
LBB3_57:                                ; %if.end1393.4
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_74
LBB3_58:                                ; %if.end1393.5
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_75
LBB3_59:                                ; %if.end1393.6
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_76
LBB3_60:                                ; %if.end1393.7
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_77
LBB3_61:                                ; %if.end1393.8
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_78
LBB3_62:                                ; %if.end1393.9
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_79
LBB3_63:                                ; %if.end1393.10
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_80
LBB3_64:                                ; %if.end1393.11
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_81
LBB3_65:                                ; %if.end1393.12
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_82
LBB3_66:                                ; %if.end1393.13
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_83
LBB3_67:                                ; %if.end1393.14
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_84
LBB3_68:                                ; %if.end1393.15
	.loc	2 244 1 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:244:1
	snop 1
	endk
LBB3_69:                                ; %if.then1332
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r177
.Ltmp15:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r177, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp16:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r176
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp18:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r177, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r181
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r176, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp20:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r175
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp22:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r176, r5
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r175, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp24:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r174
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp26:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r175, r6
.Ltmp27:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r174, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp28:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r174, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r178
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r179
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r180
.Ltmp29:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp30:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp31:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp32:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp33:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r8, s6, r8
	mov_b32 r1, s7
	addc_co_u32 r9, r1, r9
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r1, 16, r3
	add_u16 r2_hi, 0, 0
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_54
LBB3_70:                                ; %if.then1332.1
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r151
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r151, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp35:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r150
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp37:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r151, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r155
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r150, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp39:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r149
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp41:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r150, r5
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r149, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp43:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r148
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp45:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r149, r6
.Ltmp46:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r148, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp47:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r148, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r152
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r153
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r154
.Ltmp48:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp49:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp50:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp51:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp52:
	.loc	2 241 216 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:216
	snop 0
	or_b32 r3, r0, 16
	.loc	2 241 27 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	mad_i32 r6, r3, 2, s6
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_55
LBB3_71:                                ; %if.then1332.2
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r143
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r143, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp54:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r142
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp56:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r143, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r147
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r142, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp58:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r141
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp60:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r142, r5
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r141, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp62:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r140
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp64:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r141, r6
.Ltmp65:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r140, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp66:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r140, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r144
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r145
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r146
.Ltmp67:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp68:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp69:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp70:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp71:
	.loc	2 241 216 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:216
	snop 0
	or_b32 r3, r0, 32
	.loc	2 241 27 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	mad_i32 r6, r3, 2, s6
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_56
LBB3_72:                                ; %if.then1332.3
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r135
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r135, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp73:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r134
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp75:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r135, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r139
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r134, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp77:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r133
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp79:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r134, r5
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r133, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp81:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r132
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp83:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r133, r6
.Ltmp84:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r132, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp85:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r132, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r136
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r137
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r138
.Ltmp86:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp87:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp88:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp89:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp90:
	.loc	2 241 216 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:216
	snop 0
	or_b32 r3, r0, 48
	.loc	2 241 27 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	mad_i32 r6, r3, 2, s6
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_57
LBB3_73:                                ; %if.then1332.4
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r127
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r127, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp92:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r126
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp94:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r127, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r131
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r126, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp96:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r125
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp98:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r126, r5
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r125, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp100:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r124
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp102:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r125, r6
.Ltmp103:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r124, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp104:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r124, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r128
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r129
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r130
.Ltmp105:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp106:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp107:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp108:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp109:
	.loc	2 241 216 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:216
	snop 0
	or_b32 r3, r0, 64
	.loc	2 241 27 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	mad_i32 r6, r3, 2, s6
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_58
LBB3_74:                                ; %if.then1332.5
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r119
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r119, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp111:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r118
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp113:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r119, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r123
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r118, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp115:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r117
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp117:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r118, r5
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r117, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp119:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r116
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp121:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r117, r6
.Ltmp122:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r116, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp123:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r116, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r120
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r121
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r122
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp125:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp126:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp127:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp128:
	.loc	2 241 216 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:216
	snop 0
	or_b32 r3, 0x50, r0
	.loc	2 241 27 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	mad_i32 r6, r3, 2, s6
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_59
LBB3_75:                                ; %if.then1332.6
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r111
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r111, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp130:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r110
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp132:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r111, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r115
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r110, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp134:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r109
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp136:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r110, r5
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r109, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp138:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r108
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp140:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r109, r6
.Ltmp141:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r108, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp142:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r108, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r112
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r113
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r114
.Ltmp143:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp144:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp145:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp146:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp147:
	.loc	2 241 216 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:216
	snop 0
	or_b32 r3, 0x60, r0
	.loc	2 241 27 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	mad_i32 r6, r3, 2, s6
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_60
LBB3_76:                                ; %if.then1332.7
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r103
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r103, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp149:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r102
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp151:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r103, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r107
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r102, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp153:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r101
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp155:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r102, r5
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r101, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp157:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r100
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp159:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r101, r6
.Ltmp160:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r100, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp161:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r100, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r104
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r105
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r106
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r1_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp163:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp164:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp165:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp166:
	.loc	2 241 216 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:216
	snop 0
	or_b32 r3, 0x70, r0
	.loc	2 241 27 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	mad_i32 r6, r3, 2, s6
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_61
LBB3_77:                                ; %if.then1332.8
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r95
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r95, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp168:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r94
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp170:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r95, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r99
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r94, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp172:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r93
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp174:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r94, r5
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r93, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp176:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r92
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp178:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r93, r6
.Ltmp179:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r92, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp180:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r92, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r96
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r97
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r98
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp182:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp183:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp184:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp185:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x11000, r1
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 241 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	addc_co_u32 r9, r3, 0
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_62
LBB3_78:                                ; %if.then1332.9
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r87
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r87, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp187:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r86
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp189:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r87, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r91
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r86, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp191:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r85
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp193:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r86, r5
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r85, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp195:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r84
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp197:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r85, r6
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r84, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp199:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r84, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r88
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r89
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r90
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp201:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp202:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp203:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp204:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x11020, r1
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 241 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	addc_co_u32 r9, r3, 0
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_63
LBB3_79:                                ; %if.then1332.10
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r79
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r79, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp206:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r78
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp208:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r79, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r83
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r78, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp210:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r77
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp212:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r78, r5
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r77, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp214:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r76
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp216:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r77, r6
.Ltmp217:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r76, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp218:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r76, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r80
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r81
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r82
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp220:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp221:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp222:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp223:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x11040, r1
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 241 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	addc_co_u32 r9, r3, 0
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_64
LBB3_80:                                ; %if.then1332.11
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r71
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r71, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp225:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r70
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp227:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r71, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r75
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r70, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp229:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r69
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp231:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r70, r5
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r69, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp233:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r68
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp235:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r69, r6
.Ltmp236:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r68, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp237:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r68, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r72
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r73
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r74
.Ltmp238:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp239:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp240:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp241:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp242:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x11060, r1
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 241 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	addc_co_u32 r9, r3, 0
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_65
LBB3_81:                                ; %if.then1332.12
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r63
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r63, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp244:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r62
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp246:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r63, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r67
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r62, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp248:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r61
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp250:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r62, r5
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r61, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp252:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r60
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp254:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r61, r6
.Ltmp255:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r60, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp256:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r60, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r64
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r65
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r66
.Ltmp257:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp258:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp259:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp260:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp261:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x11080, r1
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 241 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	addc_co_u32 r9, r3, 0
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_66
LBB3_82:                                ; %if.then1332.13
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r55
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r55, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp263:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r54
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp265:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r55, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r59
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r54, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp267:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r53
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp269:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r54, r5
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r53, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp271:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r52
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp273:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r53, r6
.Ltmp274:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r52, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp275:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r52, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r56
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r57
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r58
.Ltmp276:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp277:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp278:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp279:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp280:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x110a0, r1
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 241 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	addc_co_u32 r9, r3, 0
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_67
LBB3_83:                                ; %if.then1332.14
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r47
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s4, 0x3f800000
	csel_b32 r5, r4, 0, s2
	fmka_f32 r5, r47, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s2
	exp_f32 r5, r5
.Ltmp282:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
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
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r46
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp284:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r47, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r51
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r46, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp286:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
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
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r45
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp288:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r46, r5
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r45, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp290:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
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
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r44
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp292:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r45, r6
.Ltmp293:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r44, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp294:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
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
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r44, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r48
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r49
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r50
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp296:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp297:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp298:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp299:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x110c0, r1
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 241 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	addc_co_u32 r9, r3, 0
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 230 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:230:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_68
LBB3_84:                                ; %if.then1332.15
	.loc	2 212 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:212:27
	mul_f32 r1, 0xbfb8aa3b, r39
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r1
	mov_b32 r4, 0x42800000
	mov_b32 r1, 0x1f800000
	mov_b32 r2, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r5, r4, 0, s0
	fmka_f32 r5, r39, 0xbfb8aa3b, r5
	csel_b32 r3, r1, r2, s0
	exp_f32 r5, r5
.Ltmp301:
	.loc	2 220 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:220:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_scale_f32 r5, r3, r3, s2
	rcp_f32 r6, r5
	snop 0
	fma_f32 r7, neg(r5), r6, r2
	fmac_f32 r6, r7, r6
	div_scale_f32 r7, s2, r3, s2
	mul_f32 r8, r7, r6
	fma_f32 r9, neg(r5), r8, r7
	fmac_f32 r8, r9, r6
	fmac_f32 r7, neg(r5), r8
	.loc	2 211 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:211:27
	mul_f32 r5, 0xbfb8aa3b, r38
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp303:
	.loc	2 224 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:224:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 228 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:228:20
	mul_f32 r3, r39, r3
	.loc	2 238 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:238:24
	mul_f32 r3, r3, r43
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r38, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp305:
	.loc	2 219 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:219:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_scale_f32 r6, r5, r5, s2
	rcp_f32 r7, r6
	snop 0
	fma_f32 r8, neg(r6), r7, r2
	fmac_f32 r7, r8, r7
	div_scale_f32 r8, s2, r5, s2
	mul_f32 r9, r8, r7
	fma_f32 r10, neg(r6), r9, r8
	fmac_f32 r9, r10, r7
	fmac_f32 r8, neg(r6), r9
	.loc	2 210 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:210:27
	mul_f32 r6, 0xbfb8aa3b, r37
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp307:
	.loc	2 223 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:223:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 227 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:227:20
	mul_f32 r5, r38, r5
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r37, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp309:
	.loc	2 218 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:218:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_scale_f32 r7, r6, r6, s2
	rcp_f32 r8, r7
	snop 0
	fma_f32 r9, neg(r7), r8, r2
	fmac_f32 r8, r9, r8
	div_scale_f32 r9, s2, r6, s2
	mul_f32 r10, r9, r8
	fma_f32 r11, neg(r7), r10, r9
	fmac_f32 r10, r11, r8
	fmac_f32 r9, neg(r7), r10
	.loc	2 209 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:209:27
	mul_f32 r7, 0xbfb8aa3b, r36
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp311:
	.loc	2 222 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:222:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 226 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:226:20
	mul_f32 r6, r37, r6
.Ltmp312:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r36, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp313:
	.loc	2 217 26                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:217:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 221 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:221:24
	div_scale_f32 r4, r1, r1, s2
	rcp_f32 r7, r4
	snop 0
	fmac_f32 r2, neg(r4), r7
	fmac_f32 r7, r2, r7
	div_scale_f32 r2, s2, r1, s2
	mul_f32 r8, r2, r7
	fma_f32 r9, neg(r4), r8, r2
	fmac_f32 r8, r9, r7
	fmac_f32 r2, neg(r4), r8
	div_fmas_f32 r2, r2, r7, r8
	div_fixup_f32 r1, r2, r1, s2
	.loc	2 225 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:225:20
	mul_f32 r1, r36, r1
	.loc	2 235 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:235:24
	mul_f32 r1, r1, r40
	.loc	2 236 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:236:24
	mul_f32 r2, r6, r41
	.loc	2 237 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:237:24
	mul_f32 r4, r5, r42
.Ltmp314:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp315:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp316:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r2_lo, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp317:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp318:
	.loc	2 241 27 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r0, s6, r8
	mov_b32 r1, s7
	addc_co_u32 r1, r1, r9
	add_co_u32 r8, 0x110e0, r0
	.loc	2 241 259 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	shl_b32 r0, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 241 27                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:27
	addc_co_u32 r9, r1, 0
	.loc	2 241 259                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:241:259
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r6
	and_b32 r1, 0xffff, r5
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	.loc	2 244 1 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:244:1
	snop 2
	endk
.Ltmp319:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 29
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 26000
; NumMTRegsForWarps/PEU: 226
; NumSTRegsForWarps/PEU: 54
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_2         ; -- Begin function kernel_kernel_2
	.globl	kernel_kernel_2
	.p2align	8
	.type	kernel_kernel_2,@function
kernel_kernel_2:                        ; @kernel_kernel_2
.Lfunc_begin4:
	.loc	2 246 0                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:246:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s24, s5
.Ltmp320:
	.loc	2 256 19 prologue_end           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:256:19
	smov_b32 s25, 0
	sshl_b64 s2, 2, s24
	ldu_b256 s16, s0, 0x20
	and_b32 r8, 0x3ff, r0
	smul_i32 s5, 0x44000, s5
	arrive slcnt(0)
	sadd_co_u32 s2, s42, s2
	saddc_co_u32 s3, s43, s3
	ldu_b32 s26, s2, 0x0
	shr_b32 r4, 1, r8
	mov_b32 r3, s5
	shr_b32 r1, 6, r8
	smov_b32 s7, 0x11000
	and_b32 r0, r8, 15
	and_b32 r2, 0x1e0, r4
	arrive slcnt(0)
	sashr_i32 s27, 31, s26
	.loc	2 257 20                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:257:20
	sshl_b64 s0, 2, s26
	sadd_co_u32 s2, s16, s0
	saddc_co_u32 s3, s17, s1
	ldu_b32 s6, s2, 0x0
	.loc	2 258 19                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:258:19
	sadd_co_u32 s2, s44, s0
	saddc_co_u32 s3, s45, s1
	.loc	2 259 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:259:22
	sadd_co_u32 s0, s46, s0
	saddc_co_u32 s1, s47, s1
	ldu_b32 s0, s0, 0x0
	sshl_b32 s1, 7, s24
	arrive slcnt(0)
	ssub_co_i32 s6, s6, s1
	mad_u24 r3, r1, s7, r3
	smov_b32 s5, 0x880
	mad_u24 r28, r0, s5, r3
	.loc	2 272 64                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:272:64
	or_b32 r3, r2, r0
	sadd_co_i32 s6, s6, s0
	.loc	2 272 93 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:272:93
	cmp_ge_i32 s10, r3, s6
	cmp_lt_i32 s14, r3, s6
	shl_b64 r154, 0, 0
	and_b32 r29, r4, 24
	or_b32 r6, r28, r29
	shl_b64 r152, 0, r154
	.loc	2 272 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:272:9
	and_xmsk s8, s14
	snop 0
	bra_xmskz LBB4_2
; %bb.1:                                ; %if.then
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	mov_b32 r7, 0
	shl_b64 r10, 1, r6
	add_co_u32 r10, s22, r10
	mov_b32 r5, s23
	addc_co_u32 r11, r5, r11
	.loc	2 273 47 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:273:47
	snop 1
	ldg_b128 r152, r10, 0x0
LBB4_2:                                 ; %for.inc72
	.loc	2 0 47 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s8
	.loc	2 272 64 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:272:64
	or_b32 r3, r3, 16
	.loc	2 272 93 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:272:93
	cmp_ge_i32 s8, r3, s6
	cmp_lt_i32 s12, r3, s6
	shl_b64 r162, 0, 0
	shl_b64 r160, 0, r162
	.loc	2 272 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:272:9
	snop 1
	and_xmsk s16, s12
	snop 0
	bra_xmskz LBB4_4
; %bb.3:                                ; %if.then.1
	.loc	2 0 9                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	mov_b32 r7, 0
	shl_b64 r10, 1, r6
	add_co_u32 r3, s22, r10
	mov_b32 r5, s23
	addc_co_u32 r5, r5, r11
	add_co_u32 r10, 0x11000, r3
	addc_co_u32 r11, r5, 0
	.loc	2 273 47 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:273:47
	snop 1
	ldg_b128 r160, r10, 0x0
LBB4_4:                                 ; %for.inc72.1
	.loc	2 0 47 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s16
	shl_b64 r166, 0, 0
	shl_b64 r164, 0, r166
	.loc	2 272 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:272:9
	and_xmsk s16, s14
	snop 0
	bra_xmskz LBB4_6
; %bb.5:                                ; %if.then.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	or_b32 r10, r6, 32
	mov_b32 r11, 0
	shl_b64 r10, 1, r10
	add_co_u32 r10, s22, r10
	mov_b32 r3, s23
	addc_co_u32 r11, r3, r11
	.loc	2 273 47 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:273:47
	snop 1
	ldg_b128 r164, r10, 0x0
LBB4_6:                                 ; %for.inc72.2
	.loc	2 0 47 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s16
	shl_b64 r174, 0, 0
	shl_b64 r172, 0, r174
	.loc	2 272 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:272:9
	and_xmsk s16, s12
	snop 0
	bra_xmskz LBB4_8
; %bb.7:                                ; %if.then.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	mov_b32 r7, 0
	shl_b64 r6, 1, r6
	add_co_u32 r3, s22, r6
	mov_b32 r5, s23
	addc_co_u32 r5, r5, r7
	add_co_u32 r6, 0x11040, r3
	addc_co_u32 r7, r5, 0
	.loc	2 273 47 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:273:47
	snop 1
	ldg_b128 r172, r6, 0x0
LBB4_8:                                 ; %for.inc72.3
	.loc	2 0 47 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s16
	shl_b32 r3, 8, r8
	and_b32 r30, 0x3f800, r3
	shl_b32 r3, 3, r8
	and_b32 r20, r3, 32
	and_b32 r31, r3, 56
	and_b32 r5, 0x1fc0, r3
	and_b32 r3, r3, 16
	add_u32 r6, r20, r8
	add_u32 r3, r3, r8
	mul_u24 r7, r8, 9
	sshl_b32 s42, 19, s4
	and_b32 r6, r6, 32
	and_b32 r3, r3, 16
	and_or_b32 r5, r7, 8, r5
	or3_b32 r5, r5, r6, r3
	shr_b32 r6, 5, r8
	ldu_b32 s2, s2, 0x0
	sadd_co_u32 s3, 0x80, s22
	add_shl_u32 r4, r6, r4, 4
	saddc_co_u32 s5, s23, 0
	and_b32 r12, r4, 16
	shr_b32 r4, 4, r8
	smul_i32 s28, 0xe00000, s26
	sadd_co_u32 s26, 0x80, s40
	add_shl_u32 r13, r4, r8, 3
	shl_b32 r3, 6, r8
	saddc_co_u32 s27, s41, 0
	cmp_lt_u32 s38, 0x7f, r8
	and_b32 r19, 0x3c0, r3
	and_or_b32 r27, r13, 8, r12
	.loc	2 276 3 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:276:3
	add_u32 r180, r28, r29
	cmp_lt_i32 s16, r2, s6
	sadd_co_u32 s6, 0x100, s22
	cmp_gt_u32 s30, 0x80, r8
	cmp_gt_u32 s34, 0x100, r8
	saddc_co_u32 s7, s23, 0
	or_b32 r21, r27, r19
	or_b32 r22, 0x400, r19
	or_b32 r23, r27, r20
	or_b32 r24, 0x800, r19
	or_b32 r25, 0xc00, r19
	or_b32 r26, 0x1000, r19
	or_b32 r32, 0x1400, r19
	or_b32 r33, 0x1800, r19
	or_b32 r34, 0x1c00, r19
	xor_b32 r35, r20, 32
	mad_u32 r182, r180, 2, s22
	sadd_co_i32 s22, s28, s42
	.loc	2 0 0 is_stmt 0                 ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:0
	shl_b64 r96, 0, 0
	shl_add_u32 r4, 1, r5, 0
	shl_b64 r188, 0, 0
	or_b32 r12, r21, r20
	or_b32 r20, r21, r35
	or_b32 r13, r23, r22
	or_b32 r14, r23, r24
	or_b32 r15, r23, r25
	or_b32 r16, r23, r26
	or_b32 r17, r23, r32
	or_b32 r18, r23, r33
	or_b32 r19, r23, r34
	or3_b32 r23, r27, r25, r35
	or3_b32 r21, r27, r22, r35
	or3_b32 r22, r27, r24, r35
	or3_b32 r24, r27, r26, r35
	or3_b32 r25, r27, r32, r35
	or3_b32 r26, r27, r33, r35
	or3_b32 r27, r27, r34, r35
	.loc	2 276 3                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:276:3
	or3_b32 r184, s22, r30, r31
	smov_b64 s22, 0
	.loc	2 0 0                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:0
	shl_b64 r98, 0, 0
	shl_b64 r104, 0, r96
	shl_b64 r108, 0, r96
	shl_b64 r112, 0, r96
	shl_b64 r116, 0, r96
	shl_b64 r120, 0, r96
	shl_b64 r124, 0, r96
	shl_b64 r128, 0, r96
	shl_b64 r132, 0, r96
	shl_b64 r136, 0, r96
	shl_b64 r140, 0, r96
	shl_b64 r144, 0, r96
	shl_b64 r148, 0, r96
	shl_b64 r156, 0, r96
	shl_b64 r168, 0, r96
	shl_b64 r176, 0, r96
	shl_b64 r36, 0, r96
	shl_b64 r40, 0, r96
	shl_b64 r44, 0, r96
	shl_b64 r48, 0, r96
	shl_b64 r52, 0, r96
	shl_b64 r56, 0, r96
	shl_b64 r60, 0, r96
	shl_b64 r64, 0, r96
	shl_b64 r68, 0, r96
	shl_b64 r72, 0, r96
	shl_b64 r76, 0, r96
	shl_b64 r80, 0, r96
	shl_b64 r84, 0, r96
	shl_b64 r88, 0, r96
	shl_b64 r92, 0, r96
	shl_b64 r100, 0, r96
	sand_b64 s36, s38, s14
	shr_b32 r3, 2, r8
	add_u32 r5, 0x1000, r4
	add_u32 r6, 0x2000, r4
	add_u32 r7, 0x3000, r4
	sand_b64 s38, s38, s12
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
	.loc	2 276 3                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:276:3
	mov_b32 r181, 0
	smov_b64 s42, s22
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
	shl_b64 r186, 0, r188
	shl_b64 r192, 0, r188
	shl_b64 r190, 0, r188
	shl_b64 r200, 0, r188
	shl_b64 r198, 0, r188
	shl_b64 r196, 0, r188
	shl_b64 r194, 0, r188
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
	bra LBB4_10
	.p2align	5
LBB4_9:                                 ; %for.inc778
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 276 31                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:276:31
	sadd_co_u32 s42, 0x80, s42
	saddc_co_u32 s43, s43, 0
	sadd_co_u32 s22, 0x100, s22
	saddc_co_u32 s23, s23, 0
	scmp_eq_u64 0x1000, s22
	.loc	2 276 3                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:276:3
	snop 0
	bra_smsks LBB4_60
LBB4_10:                                ; %for.cond80.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3                           ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:3
	add_co_u32 r28, r184, s42
	mov_b32 r29, s43
	.loc	2 279 11 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:279:11
	add_co_u32 r202, r180, s42
	addc_co_u32 r203, r181, r29
	and_xmsk s44, s30
	snop 0
	bra_xmskz LBB4_17
; %bb.11:                               ; %for.cond89.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s14
	snop 0
	bra_xmsks LBB4_48
; %bb.12:                               ; %for.inc161
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s14
	snop 0
	bra_xmsks LBB4_49
LBB4_13:                                ; %for.inc161.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s12
	snop 0
	bra_xmsks LBB4_50
LBB4_14:                                ; %for.inc161.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s12
	snop 0
	bra_xmskz LBB4_16
LBB4_15:                                ; %if.then124.3
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	shl_b64 r30, 1, r202
	or_b32 r29, r30, 64
	add_co_u32 r29, s3, r29
	mov_b32 r30, s5
	addc_co_u32 r30, r30, r31
	add_co_u32 r32, 0x11000, r29
	addc_co_u32 r33, r30, 0
	.loc	2 284 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:284:85
	snop 1
	ldg_b128 r186, r32, 0x0
LBB4_16:                                ; %Flow332
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 85 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:85
	sor_b64 xmsk, xmsk, s46
LBB4_17:                                ; %Flow333
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 379 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:291:379
	add_u32 r33, 0x10000, r28
	mad_i32 r30, r28, 2, s40
	mad_i32 r34, r33, 2, s40
	.loc	2 291 362 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:291:362
	snop 0
	ldg_b128 r204, r30, 0x0
	ldg_b128 r208, r34, 0x0
	.loc	2 291 379                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:291:379
	add_u32 r34, 0x20000, r28
	add_u32 r35, 0x30000, r28
	mad_i32 r30, r34, 2, s40
	mad_i32 r212, r35, 2, s40
	.loc	2 291 362                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:291:362
	snop 0
	ldg_b128 r214, r30, 0x0
	ldg_b128 r218, r212, 0x0
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r204
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r208
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r214
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r218
	.loc	2 279 11 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:279:11
	and_xmsk s44, s34
	snop 0
	bra_xmskz LBB4_24
; %bb.18:                               ; %for.cond89.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s36
	snop 0
	bra_xmsks LBB4_51
; %bb.19:                               ; %for.inc161.11379
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s36
	snop 0
	bra_xmsks LBB4_52
LBB4_20:                                ; %for.inc161.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s38
	snop 0
	bra_xmsks LBB4_53
LBB4_21:                                ; %for.inc161.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s38
	snop 0
	bra_xmskz LBB4_23
LBB4_22:                                ; %if.then124.3.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	shl_b64 r30, 1, r202
	or_b32 r29, r30, 64
	add_co_u32 r29, s3, r29
	mov_b32 r30, s5
	addc_co_u32 r30, r30, r31
	add_co_u32 r186, 0x11000, r29
	addc_co_u32 r187, r30, 0
	.loc	2 284 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:284:85
	snop 1
	ldg_b128 r186, r186, 0x0
LBB4_23:                                ; %Flow330
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 85 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:85
	sor_b64 xmsk, xmsk, s46
LBB4_24:                                ; %Flow331
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 379 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:291:379
	add_u32 r29, 0x40000, r28
	add_u32 r30, 0x50000, r28
	add_u32 r31, 0x60000, r28
	add_u32 r32, 0x70000, r28
	mad_i32 r204, r29, 2, s40
	mad_i32 r206, r30, 2, s40
	mad_i32 r212, r31, 2, s40
	mad_i32 r214, r32, 2, s40
	.loc	2 291 362 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:291:362
	ldg_b128 r208, r204, 0x0
	ldg_b128 r204, r206, 0x0
	ldg_b128 r216, r212, 0x0
	ldg_b128 r212, r214, 0x0
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r208
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r204
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r216
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r212
.Ltmp321:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp322:
	.loc	2 295 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:295:9
	and_xmsk s44, s16
	snop 0
	bra_xmskz LBB4_26
; %bb.25:                               ; %for.cond246.preheader.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r204, r12, 0x0
	lds_b128 r208, r13, 0x0
	lds_b128 r212, r14, 0x0
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	add_i32 r185, 0x4000, r12
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r204, r152, r176
	mma_16x16x16f16 r128, r204, r160, r128
	mma_16x16x16f16 r176, r206, r154, r176
	mma_16x16x16f16 r128, r206, r162, r128
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r204, r15, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r208, r152, r168
	mma_16x16x16f16 r124, r208, r160, r124
	mma_16x16x16f16 r168, r210, r154, r168
	mma_16x16x16f16 r124, r210, r162, r124
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r208, r16, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r212, r152, r156
	mma_16x16x16f16 r120, r212, r160, r120
	mma_16x16x16f16 r156, r214, r154, r156
	mma_16x16x16f16 r120, r214, r162, r120
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r212, r17, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r204, r152, r148
	mma_16x16x16f16 r116, r204, r160, r116
	mma_16x16x16f16 r148, r206, r154, r148
	mma_16x16x16f16 r116, r206, r162, r116
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r204, r18, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r208, r152, r144
	mma_16x16x16f16 r112, r208, r160, r112
	mma_16x16x16f16 r144, r210, r154, r144
	mma_16x16x16f16 r112, r210, r162, r112
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r208, r19, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r212, r152, r140
	mma_16x16x16f16 r108, r212, r160, r108
	mma_16x16x16f16 r140, r214, r154, r140
	mma_16x16x16f16 r108, r214, r162, r108
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r212, r185, 0x0
	add_i32 r185, 0x4000, r13
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r204, r152, r136
	mma_16x16x16f16 r104, r204, r160, r104
	mma_16x16x16f16 r136, r206, r154, r136
	mma_16x16x16f16 r104, r206, r162, r104
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r204, r185, 0x0
	add_i32 r185, 0x4000, r14
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r208, r152, r132
	mma_16x16x16f16 r96, r208, r160, r96
	mma_16x16x16f16 r132, r210, r154, r132
	mma_16x16x16f16 r96, r210, r162, r96
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r208, r185, 0x0
	add_i32 r185, 0x4000, r15
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r212, r152, r100
	mma_16x16x16f16 r64, r212, r160, r64
	mma_16x16x16f16 r100, r214, r154, r100
	mma_16x16x16f16 r64, r214, r162, r64
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r212, r185, 0x0
	add_i32 r185, 0x4000, r16
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r204, r152, r92
	mma_16x16x16f16 r60, r204, r160, r60
	mma_16x16x16f16 r92, r206, r154, r92
	mma_16x16x16f16 r60, r206, r162, r60
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r204, r185, 0x0
	add_i32 r185, 0x4000, r17
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r208, r152, r88
	mma_16x16x16f16 r56, r208, r160, r56
	mma_16x16x16f16 r88, r210, r154, r88
	mma_16x16x16f16 r56, r210, r162, r56
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r208, r185, 0x0
	add_i32 r185, 0x4000, r18
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r212, r152, r84
	mma_16x16x16f16 r52, r212, r160, r52
	mma_16x16x16f16 r84, r214, r154, r84
	mma_16x16x16f16 r52, r214, r162, r52
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r212, r185, 0x0
	add_i32 r185, 0x4000, r19
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r204, r152, r80
	mma_16x16x16f16 r48, r204, r160, r48
	mma_16x16x16f16 r80, r206, r154, r80
	mma_16x16x16f16 r48, r206, r162, r48
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r204, r185, 0x0
	add_i32 r185, 0x4000, r20
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r208, r152, r76
	mma_16x16x16f16 r44, r208, r160, r44
	mma_16x16x16f16 r76, r210, r154, r76
	mma_16x16x16f16 r44, r210, r162, r44
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r208, r20, 0x0
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r212, r152, r72
	mma_16x16x16f16 r40, r212, r160, r40
	mma_16x16x16f16 r72, r214, r154, r72
	mma_16x16x16f16 r40, r214, r162, r40
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r212, r21, 0x0
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r204, r152, r68
	mma_16x16x16f16 r36, r204, r160, r36
	mma_16x16x16f16 r68, r206, r154, r68
	mma_16x16x16f16 r36, r206, r162, r36
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r204, r22, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r208, r164, r176
	mma_16x16x16f16 r128, r208, r172, r128
	mma_16x16x16f16 r176, r210, r166, r176
	mma_16x16x16f16 r128, r210, r174, r128
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r208, r23, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r212, r164, r168
	mma_16x16x16f16 r124, r212, r172, r124
	mma_16x16x16f16 r168, r214, r166, r168
	mma_16x16x16f16 r124, r214, r174, r124
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r212, r24, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r204, r164, r156
	mma_16x16x16f16 r120, r204, r172, r120
	mma_16x16x16f16 r156, r206, r166, r156
	mma_16x16x16f16 r120, r206, r174, r120
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r204, r25, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r208, r164, r148
	mma_16x16x16f16 r116, r208, r172, r116
	mma_16x16x16f16 r148, r210, r166, r148
	mma_16x16x16f16 r116, r210, r174, r116
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r208, r26, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r212, r164, r144
	mma_16x16x16f16 r112, r212, r172, r112
	mma_16x16x16f16 r144, r214, r166, r144
	mma_16x16x16f16 r112, r214, r174, r112
	.loc	2 298 43                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:298:43
	lds_b128 r212, r27, 0x0
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r164, r140
	mma_16x16x16f16 r108, r204, r172, r108
	mma_16x16x16f16 r140, r206, r166, r140
	mma_16x16x16f16 r108, r206, r174, r108
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r204, r185, 0x0
	add_i32 r185, 0x4000, r21
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r208, r164, r136
	mma_16x16x16f16 r104, r208, r172, r104
	mma_16x16x16f16 r136, r210, r166, r136
	mma_16x16x16f16 r104, r210, r174, r104
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r208, r185, 0x0
	add_i32 r185, 0x4000, r22
	.loc	2 304 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:304:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r212, r164, r132
	mma_16x16x16f16 r96, r212, r172, r96
	mma_16x16x16f16 r132, r214, r166, r132
	mma_16x16x16f16 r96, r214, r174, r96
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r212, r185, 0x0
	add_i32 r185, 0x4000, r23
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r204, r164, r100
	mma_16x16x16f16 r64, r204, r172, r64
	mma_16x16x16f16 r100, r206, r166, r100
	mma_16x16x16f16 r64, r206, r174, r64
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r204, r185, 0x0
	add_i32 r185, 0x4000, r24
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r208, r164, r92
	mma_16x16x16f16 r60, r208, r172, r60
	mma_16x16x16f16 r92, r210, r166, r92
	mma_16x16x16f16 r60, r210, r174, r60
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r208, r185, 0x0
	add_i32 r185, 0x4000, r25
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r212, r164, r88
	mma_16x16x16f16 r56, r212, r172, r56
	mma_16x16x16f16 r88, r214, r166, r88
	mma_16x16x16f16 r56, r214, r174, r56
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r212, r185, 0x0
	add_i32 r185, 0x4000, r26
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r204, r164, r84
	mma_16x16x16f16 r52, r204, r172, r52
	mma_16x16x16f16 r84, r206, r166, r84
	mma_16x16x16f16 r52, r206, r174, r52
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r204, r185, 0x0
	add_i32 r185, 0x4000, r27
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r208, r164, r80
	mma_16x16x16f16 r48, r208, r172, r48
	mma_16x16x16f16 r80, r210, r166, r80
	mma_16x16x16f16 r48, r210, r174, r48
	.loc	2 312 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:312:45
	lds_b128 r208, r185, 0x0
	.loc	2 318 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:318:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r212, r164, r76
	mma_16x16x16f16 r44, r212, r172, r44
	mma_16x16x16f16 r76, r214, r166, r76
	mma_16x16x16f16 r44, r214, r174, r44
	arrive bsmcnt(1)
	mma_16x16x16f16 r72, r204, r164, r72
	mma_16x16x16f16 r40, r204, r172, r40
	mma_16x16x16f16 r72, r206, r166, r72
	mma_16x16x16f16 r40, r206, r174, r40
	arrive bsmcnt(0)
	mma_16x16x16f16 r68, r208, r164, r68
	mma_16x16x16f16 r36, r208, r172, r36
	mma_16x16x16f16 r68, r210, r166, r68
	mma_16x16x16f16 r36, r210, r174, r36
LBB4_26:                                ; %if.end424
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 58 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:58
	sor_b64 xmsk, xmsk, s44
.Ltmp323:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	mov_b32 r204, 0xf00
	mov_b32 r205, 0
	cmp_lg_u64 s44, s22, r204
.Ltmp324:
	.loc	2 330 11                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:330:11
	snop 3
	sand_b64 cmsk, xmsk, s44
	snop 0
	bra_cmskz LBB4_35
; %bb.27:                               ; %if.then430
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 331 13                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:331:13
	and_xmsk s46, s30
	snop 0
	bra_xmskz LBB4_34
; %bb.28:                               ; %for.cond436.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s14
	snop 0
	bra_xmsks LBB4_54
; %bb.29:                               ; %for.inc509
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s14
	snop 0
	bra_xmsks LBB4_55
LBB4_30:                                ; %for.inc509.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s12
	snop 0
	bra_xmsks LBB4_56
LBB4_31:                                ; %for.inc509.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s12
	snop 0
	bra_xmskz LBB4_33
LBB4_32:                                ; %if.then472.3
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	shl_b64 r174, 1, r202
	or_b32 r172, r174, 64
	add_co_u32 r172, s6, r172
	mov_b32 r173, s7
	addc_co_u32 r173, r173, r175
	add_co_u32 r172, 0x11000, r172
	addc_co_u32 r173, r173, 0
	.loc	2 336 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:336:85
	snop 1
	ldg_b128 r172, r172, 0x0
LBB4_33:                                ; %Flow328
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 85 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:85
	sor_b64 xmsk, xmsk, s48
LBB4_34:                                ; %Flow329
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s46
LBB4_35:                                ; %if.end513
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 344 381 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:344:381
	mad_i32 r204, r28, 2, s26
	mad_i32 r212, r34, 2, s26
	mad_i32 r206, r33, 2, s26
	mad_i32 r34, r35, 2, s26
	.loc	2 344 364 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:344:364
	ldg_b128 r208, r204, 0x0
	ldg_b128 r204, r206, 0x0
	ldg_b128 r212, r212, 0x0
	ldg_b128 r216, r34, 0x0
	.loc	2 330 11 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:330:11
	sandn_b64 cmsk, xmsk, s44
	.loc	2 344 364                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:344:364
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r208
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r204
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r212
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r216
	.loc	2 330 11                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:330:11
	bra_cmsks LBB4_44
; %bb.36:                               ; %if.then430.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 331 13                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:331:13
	and_xmsk s46, s34
	snop 0
	bra_xmskz LBB4_43
; %bb.37:                               ; %for.cond436.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s36
	snop 0
	bra_xmsks LBB4_57
; %bb.38:                               ; %for.inc509.11463
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s36
	snop 0
	bra_xmsks LBB4_58
LBB4_39:                                ; %for.inc509.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s38
	snop 0
	bra_xmsks LBB4_59
LBB4_40:                                ; %for.inc509.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s38
	snop 0
	bra_xmskz LBB4_42
LBB4_41:                                ; %if.then472.3.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	shl_b64 r34, 1, r202
	or_b32 r28, r34, 64
	add_co_u32 r28, s6, r28
	mov_b32 r33, s7
	addc_co_u32 r33, r33, r35
	add_co_u32 r34, 0x11000, r28
	addc_co_u32 r35, r33, 0
	.loc	2 336 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:336:85
	snop 1
	ldg_b128 r172, r34, 0x0
LBB4_42:                                ; %Flow326
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 85 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:85
	sor_b64 xmsk, xmsk, s48
LBB4_43:                                ; %Flow327
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s46
LBB4_44:                                ; %if.end513.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 344 381 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:344:381
	mad_i32 r28, r29, 2, s26
	mad_i32 r34, r30, 2, s26
	.loc	2 344 364 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:344:364
	snop 0
	ldg_b128 r202, r28, 0x0
	.loc	2 344 381                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:344:381
	mad_i32 r28, r31, 2, s26
	mad_i32 r30, r32, 2, s26
	.loc	2 344 364                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:344:364
	ldg_b128 r206, r34, 0x0
	ldg_b128 r32, r28, 0x0
	ldg_b128 r28, r30, 0x0
	arrive gvmcnt(3)
	sts_b128 r8, 0x0, r202
	arrive gvmcnt(2)
	sts_b128 r9, 0x0, r206
	arrive gvmcnt(1)
	sts_b128 r10, 0x0, r32
	arrive gvmcnt(0)
	sts_b128 r11, 0x0, r28
.Ltmp325:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp326:
	.loc	2 348 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:348:9
	and_xmsk s46, s16
	snop 0
	bra_xmskz LBB4_46
; %bb.45:                               ; %for.cond596.preheader.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r28, r12, 0x0
	lds_b128 r32, r13, 0x0
	lds_b128 r202, r14, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r28, r194, r176
	mma_16x16x16f16 r128, r28, r198, r128
	mma_16x16x16f16 r176, r30, r196, r176
	mma_16x16x16f16 r128, r30, r200, r128
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r28, r15, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r32, r194, r168
	mma_16x16x16f16 r124, r32, r198, r124
	mma_16x16x16f16 r168, r34, r196, r168
	mma_16x16x16f16 r124, r34, r200, r124
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r32, r16, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r202, r194, r156
	mma_16x16x16f16 r120, r202, r198, r120
	mma_16x16x16f16 r156, r204, r196, r156
	mma_16x16x16f16 r120, r204, r200, r120
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r202, r17, 0x0
	lds_b128 r206, r18, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r148, r28, r194, r148
	mma_16x16x16f16 r116, r28, r198, r116
	mma_16x16x16f16 r148, r30, r196, r148
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	add_i32 r28, 0x4000, r12
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	mma_16x16x16f16 r116, r30, r200, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r32, r194, r144
	mma_16x16x16f16 r112, r32, r198, r112
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r30, r19, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	mma_16x16x16f16 r144, r34, r196, r144
	mma_16x16x16f16 r112, r34, r200, r112
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r194, r140
	mma_16x16x16f16 r108, r202, r198, r108
	mma_16x16x16f16 r140, r204, r196, r140
	mma_16x16x16f16 r108, r204, r200, r108
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r13
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r206, r194, r136
	mma_16x16x16f16 r104, r206, r198, r104
	mma_16x16x16f16 r136, r208, r196, r136
	mma_16x16x16f16 r104, r208, r200, r104
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r206, r28, 0x0
	add_i32 r28, 0x4000, r14
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r30, r194, r132
	mma_16x16x16f16 r96, r30, r198, r96
	mma_16x16x16f16 r132, r32, r196, r132
	mma_16x16x16f16 r96, r32, r200, r96
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r15
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r202, r194, r100
	mma_16x16x16f16 r64, r202, r198, r64
	mma_16x16x16f16 r100, r204, r196, r100
	mma_16x16x16f16 r64, r204, r200, r64
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r16
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r206, r194, r92
	mma_16x16x16f16 r60, r206, r198, r60
	mma_16x16x16f16 r92, r208, r196, r92
	mma_16x16x16f16 r60, r208, r200, r60
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r206, r28, 0x0
	add_i32 r28, 0x4000, r17
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r30, r194, r88
	mma_16x16x16f16 r56, r30, r198, r56
	mma_16x16x16f16 r88, r32, r196, r88
	mma_16x16x16f16 r56, r32, r200, r56
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r18
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r202, r194, r84
	mma_16x16x16f16 r52, r202, r198, r52
	mma_16x16x16f16 r84, r204, r196, r84
	mma_16x16x16f16 r52, r204, r200, r52
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r19
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r206, r194, r80
	mma_16x16x16f16 r48, r206, r198, r48
	mma_16x16x16f16 r80, r208, r196, r80
	mma_16x16x16f16 r48, r208, r200, r48
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r206, r28, 0x0
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r30, r194, r76
	mma_16x16x16f16 r44, r30, r198, r44
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r28, r20, 0x0
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	mma_16x16x16f16 r76, r32, r196, r76
	mma_16x16x16f16 r44, r32, r200, r44
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r32, r21, 0x0
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r72, r202, r194, r72
	mma_16x16x16f16 r40, r202, r198, r40
	mma_16x16x16f16 r72, r204, r196, r72
	mma_16x16x16f16 r40, r204, r200, r40
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r202, r22, 0x0
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r68, r206, r194, r68
	mma_16x16x16f16 r36, r206, r198, r36
	mma_16x16x16f16 r68, r208, r196, r68
	mma_16x16x16f16 r36, r208, r200, r36
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r28, r190, r176
	mma_16x16x16f16 r128, r28, r186, r128
	mma_16x16x16f16 r176, r30, r192, r176
	mma_16x16x16f16 r128, r30, r188, r128
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r28, r23, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r32, r190, r168
	mma_16x16x16f16 r124, r32, r186, r124
	mma_16x16x16f16 r168, r34, r192, r168
	mma_16x16x16f16 r124, r34, r188, r124
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r32, r24, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r156, r202, r190, r156
	mma_16x16x16f16 r120, r202, r186, r120
	mma_16x16x16f16 r156, r204, r192, r156
	mma_16x16x16f16 r120, r204, r188, r120
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r202, r25, 0x0
	lds_b128 r206, r26, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(3)
	mma_16x16x16f16 r148, r28, r190, r148
	mma_16x16x16f16 r116, r28, r186, r116
	mma_16x16x16f16 r148, r30, r192, r148
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	add_i32 r28, 0x4000, r20
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	mma_16x16x16f16 r116, r30, r188, r116
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r32, r190, r144
	mma_16x16x16f16 r112, r32, r186, r112
	.loc	2 351 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:351:45
	lds_b128 r30, r27, 0x0
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	mma_16x16x16f16 r144, r34, r192, r144
	mma_16x16x16f16 r112, r34, r188, r112
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r202, r190, r140
	mma_16x16x16f16 r108, r202, r186, r108
	mma_16x16x16f16 r140, r204, r192, r140
	mma_16x16x16f16 r108, r204, r188, r108
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r21
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r206, r190, r136
	mma_16x16x16f16 r104, r206, r186, r104
	mma_16x16x16f16 r136, r208, r192, r136
	mma_16x16x16f16 r104, r208, r188, r104
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r206, r28, 0x0
	add_i32 r28, 0x4000, r22
	.loc	2 357 58                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:357:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r30, r190, r132
	mma_16x16x16f16 r96, r30, r186, r96
	mma_16x16x16f16 r132, r32, r192, r132
	mma_16x16x16f16 r96, r32, r188, r96
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r23
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r202, r190, r100
	mma_16x16x16f16 r64, r202, r186, r64
	mma_16x16x16f16 r100, r204, r192, r100
	mma_16x16x16f16 r64, r204, r188, r64
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r24
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r206, r190, r92
	mma_16x16x16f16 r60, r206, r186, r60
	mma_16x16x16f16 r92, r208, r192, r92
	mma_16x16x16f16 r60, r208, r188, r60
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r206, r28, 0x0
	add_i32 r28, 0x4000, r25
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r30, r190, r88
	mma_16x16x16f16 r56, r30, r186, r56
	mma_16x16x16f16 r88, r32, r192, r88
	mma_16x16x16f16 r56, r32, r188, r56
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r30, r28, 0x0
	add_i32 r28, 0x4000, r26
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r202, r190, r84
	mma_16x16x16f16 r52, r202, r186, r52
	mma_16x16x16f16 r84, r204, r192, r84
	mma_16x16x16f16 r52, r204, r188, r52
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r202, r28, 0x0
	add_i32 r28, 0x4000, r27
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r206, r190, r80
	mma_16x16x16f16 r48, r206, r186, r48
	mma_16x16x16f16 r80, r208, r192, r80
	mma_16x16x16f16 r48, r208, r188, r48
	.loc	2 365 45                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:365:45
	lds_b128 r206, r28, 0x0
	.loc	2 371 59                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:371:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r30, r190, r76
	mma_16x16x16f16 r44, r30, r186, r44
	mma_16x16x16f16 r76, r32, r192, r76
	mma_16x16x16f16 r44, r32, r188, r44
	arrive bsmcnt(1)
	mma_16x16x16f16 r72, r202, r190, r72
	mma_16x16x16f16 r40, r202, r186, r40
	mma_16x16x16f16 r72, r204, r192, r72
	mma_16x16x16f16 r40, r204, r188, r40
	arrive bsmcnt(0)
	mma_16x16x16f16 r68, r206, r190, r68
	mma_16x16x16f16 r36, r206, r186, r36
	mma_16x16x16f16 r68, r208, r192, r68
	mma_16x16x16f16 r36, r208, r188, r36
LBB4_46:                                ; %if.end774
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 59 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:59
	sor_b64 xmsk, xmsk, s46
	.loc	2 380 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:380:9
	sandn_b64 cmsk, xmsk, s44
	snop 0
	bra_cmsks LBB4_9
; %bb.47:                               ; %if.then776
                                        ;   in Loop: Header=BB4_10 Depth=1
.Ltmp327:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB4_9
.Ltmp328:
	.p2align	5
LBB4_48:                                ; %if.then124
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	add_co_u32 r30, r182, s22
	mov_b32 r29, s23
	addc_co_u32 r31, r183, r29
	.loc	2 284 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:284:85
	snop 1
	ldg_b128 r194, r30, 0x80
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s14
	snop 0
	bra_xmskz LBB4_13
LBB4_49:                                ; %if.then124.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	add_co_u32 r30, r182, s22
	mov_b32 r29, s23
	addc_co_u32 r31, r183, r29
	.loc	2 284 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:284:85
	snop 1
	ldg_b128 r190, r30, 0xc0
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s12
	snop 0
	bra_xmskz LBB4_14
LBB4_50:                                ; %if.then124.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	add_co_u32 r29, r182, s22
	mov_b32 r30, s23
	addc_co_u32 r30, r183, r30
	.loc	2 284 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:284:85
	add_co_u32 r32, 0x11080, r29
	addc_co_u32 r33, r30, 0
	snop 1
	ldg_b128 r198, r32, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s12
	snop 0
	bra_xmsks LBB4_15
	bra LBB4_16
	.p2align	5
LBB4_51:                                ; %if.then124.11378
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	add_co_u32 r30, r182, s22
	mov_b32 r29, s23
	addc_co_u32 r31, r183, r29
	.loc	2 284 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:284:85
	snop 1
	ldg_b128 r194, r30, 0x80
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s36
	snop 0
	bra_xmskz LBB4_20
LBB4_52:                                ; %if.then124.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	add_co_u32 r30, r182, s22
	mov_b32 r29, s23
	addc_co_u32 r31, r183, r29
	.loc	2 284 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:284:85
	snop 1
	ldg_b128 r190, r30, 0xc0
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s38
	snop 0
	bra_xmskz LBB4_21
LBB4_53:                                ; %if.then124.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	add_co_u32 r29, r182, s22
	mov_b32 r30, s23
	addc_co_u32 r30, r183, r30
	.loc	2 284 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:284:85
	add_co_u32 r198, 0x11080, r29
	addc_co_u32 r199, r30, 0
	snop 1
	ldg_b128 r198, r198, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 282 133                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:282:133
	and_xmsk s46, s38
	snop 0
	bra_xmsks LBB4_22
	bra LBB4_23
LBB4_54:                                ; %if.then472
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:133
	add_co_u32 r154, r182, s22
	mov_b32 r152, s23
	addc_co_u32 r155, r183, r152
	.loc	2 336 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:336:85
	snop 1
	ldg_b128 r152, r154, 0x100
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s14
	snop 0
	bra_xmskz LBB4_30
LBB4_55:                                ; %if.then472.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	add_co_u32 r166, r182, s22
	mov_b32 r164, s23
	addc_co_u32 r167, r183, r164
	.loc	2 336 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:336:85
	snop 1
	ldg_b128 r164, r166, 0x140
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s12
	snop 0
	bra_xmskz LBB4_31
LBB4_56:                                ; %if.then472.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	add_co_u32 r160, r182, s22
	mov_b32 r161, s23
	addc_co_u32 r161, r183, r161
	.loc	2 336 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:336:85
	add_co_u32 r160, 0x11100, r160
	addc_co_u32 r161, r161, 0
	snop 1
	ldg_b128 r160, r160, 0x0
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s12
	snop 0
	bra_xmsks LBB4_32
	bra LBB4_33
LBB4_57:                                ; %if.then472.11462
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	add_co_u32 r34, r182, s22
	mov_b32 r28, s23
	addc_co_u32 r35, r183, r28
	.loc	2 336 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:336:85
	snop 1
	ldg_b128 r152, r34, 0x100
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s36
	snop 0
	bra_xmskz LBB4_39
LBB4_58:                                ; %if.then472.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	add_co_u32 r34, r182, s22
	mov_b32 r28, s23
	addc_co_u32 r35, r183, r28
	.loc	2 336 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:336:85
	snop 1
	ldg_b128 r164, r34, 0x140
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s38
	snop 0
	bra_xmskz LBB4_40
LBB4_59:                                ; %if.then472.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	add_co_u32 r28, r182, s22
	mov_b32 r33, s23
	addc_co_u32 r33, r183, r33
	.loc	2 336 85 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:336:85
	add_co_u32 r34, 0x11100, r28
	addc_co_u32 r35, r33, 0
	snop 1
	ldg_b128 r160, r34, 0x0
	sor_b64 xmsk, xmsk, s48
	.loc	2 334 137                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:334:137
	and_xmsk s48, s38
	snop 0
	bra_xmsks LBB4_41
	bra LBB4_42
LBB4_60:                                ; %for.cond781.preheader
	.loc	2 0 137 is_stmt 0               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:137
	sshl_b64 s6, 7, s24
	or_b32 r4, r0, s1
	or_b32 r8, s6, r0
	add_u32 r4, r4, r2
	mov_b32 r9, s7
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
	.loc	2 386 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:386:9
	and_xmsk s2, s14
	snop 0
	bra_xmskz LBB4_64
; %bb.61:                               ; %if.then800
	.loc	2 0 9 is_stmt 0                 ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sub_u32 r2, r5, s0
	.loc	2 388 15 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:388:15
	cmp_ge_i32 s6, r5, s0
	cmp_gt_i32 s16, 0x2380, r2
	mov_b32 r4, 0
	.loc	2 388 163 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:388:163
	snop 2
	sand_b64 s16, s6, s16
	and_xmsk s6, s16
	snop 0
	bra_xmskz LBB4_63
; %bb.62:                               ; %if.then830
	.loc	2 0 163                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:163
	shl_b64 r8, 2, r6
	add_co_u32 r8, s20, r8
	mov_b32 r2, s21
	addc_co_u32 r9, r2, r9
	.loc	2 389 19 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:389:19
	snop 1
	ldg_b32 r4, r8, 0x0
LBB4_63:                                ; %Flow325
	.loc	2 0 19 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
LBB4_64:                                ; %for.inc854
	sor_b64 xmsk, xmsk, s2
	mov_b32 r2, 0
	.loc	2 386 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:386:9
	and_xmsk s2, s12
	snop 0
	bra_xmskz LBB4_68
; %bb.65:                               ; %if.then800.1
	.loc	2 388 117                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:388:117
	add_u32 r2, r5, 16
	.loc	2 388 15 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:388:15
	cmp_ge_i32 s6, r2, s0
	sub_u32 r2, r2, s0
	cmp_gt_i32 s0, 0x2380, r2
	mov_b32 r2, 0
	.loc	2 388 163                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:388:163
	snop 2
	sand_b64 s6, s6, s0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB4_67
; %bb.66:                               ; %if.then830.1
	.loc	2 0 163                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:163
	shl_b64 r6, 2, r6
	add_co_u32 r6, s20, r6
	mov_b32 r2, s21
	addc_co_u32 r7, r2, r7
	.loc	2 389 19 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:389:19
	snop 1
	ldg_b32 r2, r6, 0x40
LBB4_67:                                ; %Flow324
	.loc	2 0 19 is_stmt 0                ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
LBB4_68:                                ; %for.inc854.1
	sor_b64 xmsk, xmsk, s2
	smul_i32 s0, 0xe0000, s24
	sshl_b32 s1, 8, s4
	sadd_co_i32 s0, s1, s0
	mov_b32 r5, s0
	smov_b32 s1, 0x38000
	mad_u24 r1, r1, s1, r5
	smov_b32 s0, 0x1c00
	mad_u24 r0, r0, s0, r1
	and_or_b32 r0, r3, 12, r0
	shl_b64 r8, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_70
; %bb.69:                               ; %if.then875
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(0)
	mul_f32 r1, r176, r4
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r177, r4
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r178, r4
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r6, r179, r4
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp330:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp331:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp333:
LBB4_70:                                ; %if.end930
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 22 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mov_b32 r1, 0
	shl_b64 r6, 1, r0
	add_co_u32 r6, s18, r6
	mov_b32 r1, s19
	addc_co_u32 r7, r1, r7
	.loc	2 414 256 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r6, 0x0, r8 devc
	shl_b64 r8, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_72
; %bb.71:                               ; %if.then875.1
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(1)
	mul_f32 r1, r168, r4
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r169, r4
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r170, r4
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r10, r171, r4
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp335:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp336:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp338:
LBB4_72:                                ; %if.end930.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, r0, 16
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r22, r1, 2, s18
	shl_b64 r10, 0, 0
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 0
	stg_b64 r22, 0x0, r8 devc
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_74
; %bb.73:                               ; %if.then875.2
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(2)
	mul_f32 r1, r156, r4
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r157, r4
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r158, r4
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r8, r159, r4
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp340:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp341:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp342:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp343:
LBB4_74:                                ; %if.end930.2
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, r0, 32
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r8, r1, 2, s18
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r8, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_76
; %bb.75:                               ; %if.then875.3
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(3)
	mul_f32 r1, r148, r4
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r149, r4
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r150, r4
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r12, r151, r4
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp345:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp346:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp347:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp348:
LBB4_76:                                ; %if.end930.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, r0, 48
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r26, r1, 2, s18
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r26, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_78
; %bb.77:                               ; %if.then875.4
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(4)
	mul_f32 r1, r144, r4
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r145, r4
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r146, r4
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r12, r147, r4
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp350:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp351:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp353:
LBB4_78:                                ; %if.end930.4
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, r0, 64
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r14, r1, 2, s18
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r14, 0x0, r10 devc
	shl_b64 r10, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_80
; %bb.79:                               ; %if.then875.5
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(5)
	mul_f32 r1, r140, r4
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r141, r4
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r142, r4
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r12, r143, r4
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp355:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r10_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp356:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp357:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r11_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp358:
LBB4_80:                                ; %if.end930.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, 0x50, r0
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r28, r1, 2, s18
	shl_b64 r12, 0, 0
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 0
	stg_b64 r28, 0x0, r10 devc
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_82
; %bb.81:                               ; %if.then875.6
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(6)
	mul_f32 r1, r136, r4
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r137, r4
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r138, r4
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r10, r139, r4
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp360:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r10
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp363:
LBB4_82:                                ; %if.end930.6
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, 0x60, r0
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r10, r1, 2, s18
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r10, 0x0, r12 devc
	shl_b64 r12, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_84
; %bb.83:                               ; %if.then875.7
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(7)
	mul_f32 r1, r132, r4
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r133, r4
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r134, r4
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r16, r135, r4
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp365:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r12_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r13_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp368:
LBB4_84:                                ; %if.end930.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, 0x70, r0
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r24, r1, 2, s18
	shl_b64 r16, 0, 0
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 0
	stg_b64 r24, 0x0, r12 devc
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB4_86
; %bb.85:                               ; %if.then875.8
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(8)
	mul_f32 r1, r128, r2
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r129, r2
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r130, r2
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r12, r131, r2
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp370:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r12
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp373:
LBB4_86:                                ; %if.end930.8
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 22 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	add_co_u32 r12, 0x38000, r6
	addc_co_u32 r13, r7, 0
	.loc	2 414 192 is_stmt 0             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:192
	add_u32 r0, 0x1c000, r0
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 0
	stg_b64 r12, 0x0, r16 devc
	shl_b64 r16, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB4_88
; %bb.87:                               ; %if.then875.9
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(9)
	mul_f32 r1, r124, r2
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r125, r2
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r126, r2
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r18, r127, r2
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp375:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r16_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r17_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp378:
LBB4_88:                                ; %if.end930.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, r0, 16
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r30, r1, 2, s18
	shl_b64 r18, 0, 0
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 0
	stg_b64 r30, 0x0, r16 devc
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB4_90
; %bb.89:                               ; %if.then875.10
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(10)
	mul_f32 r1, r120, r2
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r121, r2
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r122, r2
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r16, r123, r2
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp380:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r16
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp383:
LBB4_90:                                ; %if.end930.10
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, r0, 32
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r16, r1, 2, s18
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r16, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB4_92
; %bb.91:                               ; %if.then875.11
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(11)
	mul_f32 r1, r116, r2
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r117, r2
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r118, r2
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r20, r119, r2
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp385:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp388:
LBB4_92:                                ; %if.end930.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, r0, 48
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r32, r1, 2, s18
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r32, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB4_94
; %bb.93:                               ; %if.then875.12
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(12)
	mul_f32 r1, r112, r2
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r113, r2
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r114, r2
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r20, r115, r2
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp390:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r20
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp393:
LBB4_94:                                ; %if.end930.12
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, r0, 64
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r20, r1, 2, s18
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r20, 0x0, r18 devc
	shl_b64 r18, 0, 0
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB4_96
; %bb.95:                               ; %if.then875.13
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(13)
	mul_f32 r1, r108, r2
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r109, r2
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r110, r2
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r34, r111, r2
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp395:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r18_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r19_hi, r34
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp398:
LBB4_96:                                ; %if.end930.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, 0x50, r0
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r34, r1, 2, s18
	shl_b64 r108, 0, 0
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 0
	stg_b64 r34, 0x0, r18 devc
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB4_98
; %bb.97:                               ; %if.then875.14
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(14)
	mul_f32 r1, r104, r2
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r105, r2
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r106, r2
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r18, r107, r2
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r108_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp400:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r108_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r109_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r109_hi, r18
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp403:
LBB4_98:                                ; %if.end930.14
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r1, 0x60, r0
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r18, r1, 2, s18
	shl_b64 r104, 0, 0
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 0
	stg_b64 r18, 0x0, r108 devc
	.loc	2 398 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:398:9
	and_xmsk s0, s12
	snop 0
	bra_xmskz LBB4_100
; %bb.99:                               ; %if.then875.15
	.loc	2 403 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:403:22
	arrive gvmcnt(15)
	mul_f32 r1, r96, r2
	.loc	2 404 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:404:22
	mul_f32 r3, r97, r2
	.loc	2 405 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:405:22
	mul_f32 r5, r98, r2
	.loc	2 406 22                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:406:22
	mul_f32 r96, r99, r2
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r104_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp405:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r104_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r105_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r105_hi, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp408:
LBB4_100:                               ; %if.end930.15
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 414 213 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:213
	or_b32 r0, 0x70, r0
	.loc	2 414 22 is_stmt 0              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:22
	mad_i32 r0, r0, 2, s18
	.loc	2 414 256                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:414:256
	snop 1
	stg_b64 r0, 0x0, r104 devc
	.loc	2 418 9 is_stmt 1               ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	and_xmsk s0, s10
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_102
; %bb.101:                              ; %if.end1041.1.critedge
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	shl_b64 r96, 0, 0
	snop 1
	stg_b64 r6, 0x100, r96 devc
                                        ; implicit-def: $mtreg_64bits_6
LBB4_102:                               ; %Flow323
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	or_xmsk s0, s0
	shl_b64 r96, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_104
; %bb.103:                              ; %if.then980
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	arrive gvmcnt(16)
	mul_f32 r96, r102, r4
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r97, r103, r4
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r100, r4
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r5, r101, r4
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp410:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r98_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_lo, r96
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r99_hi, r97
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp413:
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r6, 0x100, r98 devc
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r92, r4
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r5, r93, r4
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r6, r94, r4
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r7, r95, r4
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp415:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r96_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r97_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp418:
LBB4_104:                               ; %if.end1041.1
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r22, 0x100, r96 devc
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	and_xmsk s0, s10
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_106
; %bb.105:                              ; %if.end1041.3.critedge
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r8, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_8
LBB4_106:                               ; %Flow322
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_108
; %bb.107:                              ; %if.then980.2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	arrive gvmcnt(17)
	mul_f32 r6, r90, r4
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r7, r91, r4
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r88, r4
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r5, r89, r4
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp420:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r22_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r23_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp423:
	.loc	2 425 24 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	snop 0
	mul_f32 r7, r86, r4
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	stg_b64 r8, 0x100, r22 devc
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r84, r4
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r5, r85, r4
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r8, r87, r4
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp425:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp428:
LBB4_108:                               ; %if.end1041.3
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r26, 0x100, r6 devc
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	and_xmsk s0, s10
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_110
; %bb.109:                              ; %if.end1041.5.critedge
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	shl_b64 r6, 0, 0
	snop 1
	stg_b64 r14, 0x100, r6 devc
                                        ; implicit-def: $mtreg_64bits_14
LBB4_110:                               ; %Flow321
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_112
; %bb.111:                              ; %if.then980.4
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	arrive gvmcnt(18)
	mul_f32 r6, r82, r4
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r7, r83, r4
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r80, r4
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r5, r81, r4
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp430:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp433:
	.loc	2 425 24 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	snop 0
	mul_f32 r7, r78, r4
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	stg_b64 r14, 0x100, r8 devc
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r76, r4
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r5, r77, r4
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r8, r79, r4
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp435:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp438:
LBB4_112:                               ; %if.end1041.5
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r28, 0x100, r6 devc
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	and_xmsk s0, s10
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_114
; %bb.113:                              ; %if.end1041.7.critedge
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	arrive gvmcnt(19)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r10, 0x100, r4 devc
                                        ; implicit-def: $mtreg_32bit_4
                                        ; implicit-def: $mtreg_64bits_10
LBB4_114:                               ; %Flow320
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	or_xmsk s0, s0
	shl_b64 r6, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_116
; %bb.115:                              ; %if.then980.6
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	arrive gvmcnt(19)
	mul_f32 r6, r74, r4
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r7, r75, r4
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r72, r4
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r5, r73, r4
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp440:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp443:
	.loc	2 425 24 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	snop 0
	mul_f32 r7, r70, r4
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	stg_b64 r10, 0x100, r8 devc
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r68, r4
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r5, r69, r4
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r4, r71, r4
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp445:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp448:
LBB4_116:                               ; %if.end1041.7
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r24, 0x100, r6 devc
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_118
; %bb.117:                              ; %if.end1041.9.critedge
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r12, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_12
LBB4_118:                               ; %Flow319
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	or_xmsk s0, s0
	arrive gvmcnt(20)
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_120
; %bb.119:                              ; %if.then980.8
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r4, r65, r2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r5, r66, r2
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r64, r2
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r6, r67, r2
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp450:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp453:
	.loc	2 424 24 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	snop 0
	mul_f32 r5, r61, r2
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	stg_b64 r12, 0x100, r8 devc
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r60, r2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r6, r62, r2
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r7, r63, r2
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp455:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp458:
LBB4_120:                               ; %if.end1041.9
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r30, 0x100, r4 devc
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_122
; %bb.121:                              ; %if.end1041.11.critedge
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r16, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_16
LBB4_122:                               ; %Flow318
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_124
; %bb.123:                              ; %if.then980.10
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r4, r57, r2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r5, r58, r2
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r56, r2
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r6, r59, r2
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp460:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp463:
	.loc	2 424 24 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	snop 0
	mul_f32 r5, r53, r2
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	stg_b64 r16, 0x100, r8 devc
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r52, r2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r6, r54, r2
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r7, r55, r2
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp465:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp467:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp468:
LBB4_124:                               ; %if.end1041.11
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r32, 0x100, r4 devc
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmskz LBB4_126
; %bb.125:                              ; %if.end1041.13.critedge
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	shl_b64 r4, 0, 0
	snop 1
	stg_b64 r20, 0x100, r4 devc
                                        ; implicit-def: $mtreg_64bits_20
LBB4_126:                               ; %Flow317
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_128
; %bb.127:                              ; %if.then980.12
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r4, r49, r2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r5, r50, r2
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r48, r2
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r6, r51, r2
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp470:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp473:
	.loc	2 424 24 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	snop 0
	mul_f32 r5, r45, r2
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	stg_b64 r20, 0x100, r8 devc
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r44, r2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r6, r46, r2
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r7, r47, r2
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp475:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp478:
LBB4_128:                               ; %if.end1041.13
	.loc	5 0 10                          ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:0:10
	snop 0
	sor_b64 xmsk, xmsk, s0
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r34, 0x100, r4 devc
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	and_xmsk s0, s8
	sxor_b64 s0, xmsk, s0
	bra_xmsks LBB4_131
; %bb.129:                              ; %Flow
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmsks LBB4_132
LBB4_130:                               ; %if.end1041.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 436 1                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:436:1
	snop 0
	endk
LBB4_131:                               ; %if.end1041.15.critedge
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	shl_b64 r2, 0, 0
	snop 1
	stg_b64 r18, 0x100, r2 devc
                                        ; implicit-def: $mtreg_32bit_2
                                        ; implicit-def: $mtreg_64bits_18
	.loc	2 418 9                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:418:9
	or_xmsk s0, s0
	shl_b64 r4, 0, 0
	sxor_b64 xmsk, xmsk, s0
	snop 0
	bra_xmskz LBB4_130
LBB4_132:                               ; %if.then980.14
	.loc	2 424 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	mul_f32 r4, r41, r2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r5, r42, r2
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r40, r2
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r6, r43, r2
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp480:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp483:
	.loc	2 424 24 is_stmt 1              ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:424:24
	snop 0
	mul_f32 r5, r37, r2
	.loc	2 434 264                       ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	stg_b64 r18, 0x100, r8 devc
	.loc	2 423 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:423:24
	mul_f32 r3, r36, r2
	.loc	2 425 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:425:24
	mul_f32 r6, r38, r2
	.loc	2 426 24                        ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:426:24
	mul_f32 r2, r39, r2
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp485:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp487:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
	snop 0
	sor_b64 xmsk, xmsk, s0
.Ltmp488:
	.loc	2 434 264 is_stmt 1             ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:434:264
	snop 0
	stg_b64 r0, 0x100, r4 devc
	.loc	2 436 1                         ; /tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp:436:1
	snop 0
	endk
.Ltmp489:
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
; codeLenInByte = 18456
; NumMTRegsForWarps/PEU: 222
; NumSTRegsForWarps/PEU: 54
; MaxWarpsPerPEU: 2
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
	.byte	1                               ; Abbrev [1] 0xb:0x326 DW_TAG_compile_unit
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
	.byte	2                               ; Abbrev [2] 0x36:0x6 DW_TAG_subprogram
	.long	.Linfo_string5                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x3c:0x6 DW_TAG_subprogram
	.long	.Linfo_string6                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x42:0x6 DW_TAG_subprogram
	.long	.Linfo_string7                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x48:0x6 DW_TAG_subprogram
	.long	.Linfo_string8                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x4e:0x150 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string9                  ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x5f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	81                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x73:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x88:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	114                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x9c:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb1:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	151                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xc5:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xda:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp13                         ; DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	185                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xee:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp13                         ; DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x103:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	216                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10f:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	215                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	214                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x127:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	213                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x133:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	239                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x13f:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x14c:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x159:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x168:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	240                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x174:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x181:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x18e:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	3                               ; Abbrev [3] 0x19e:0x192 DW_TAG_subprogram
	.quad	.Lfunc_begin4                   ; DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4       ; DW_AT_high_pc
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	10                              ; Abbrev [10] 0x1af:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	294                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1c4:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1d9:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	327                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1ee:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp323                        ; DW_AT_low_pc
	.long	.Ltmp324-.Ltmp323               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x203:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp325                        ; DW_AT_low_pc
	.long	.Ltmp326-.Ltmp325               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	347                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x218:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp325                        ; DW_AT_low_pc
	.long	.Ltmp326-.Ltmp325               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x22d:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp327                        ; DW_AT_low_pc
	.long	.Ltmp328-.Ltmp327               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	381                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x242:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp327                        ; DW_AT_low_pc
	.long	.Ltmp328-.Ltmp327               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x257:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	407                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x264:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x271:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x27e:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x28d:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	408                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x29a:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2a7:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2b4:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2c3:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	427                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2d0:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2dd:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2ea:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x2f9:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	428                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x306:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x313:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x320:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
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
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
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
.Ldebug_ranges9:
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
.Ldebug_ranges10:
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
.Ldebug_ranges11:
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
.Ldebug_ranges12:
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges16:
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
.Ldebug_ranges17:
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
.Ldebug_ranges18:
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
.Ldebug_ranges19:
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
.Ldebug_ranges20:
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
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
	.quad	0
	.quad	0
.Ldebug_ranges23:
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
	.quad	0
	.quad	0
.Ldebug_ranges24:
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
.Ldebug_ranges25:
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
.Ldebug_ranges26:
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
.Ldebug_ranges27:
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
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/tmp/v094_evidence/codegen/case3/v094_case3_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=103
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=124
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=134
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=148
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=154
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=170
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=188
.Linfo_string9:
	.asciz	"kernel_kernel_1"               ; string offset=206
.Linfo_string10:
	.asciz	"kernel_kernel_2"               ; string offset=222
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
    .mtreg_count:    84
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
    .streg_count:    54
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
    .mtreg_count:    222
    .name:           kernel_kernel_2
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    54
macahca.version:
  - 1
  - 0
...

	.end_metaxgpu_metadata
	.section	.debug_line
.Lline_table_start0:
