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
	.file	2 "/tmp/v085_input_tilemajor_codegen_case1" "v085_input_tilemajor_case1_case1_generated_device.cpp"
	.loc	2 12 0                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:12:0
; %bb.0:                                ; %entry
	and_b32 r0, 0x3ff, r0
	ldu_b128 s0, s0, 0x0
	shl_b32 r1, 6, r0
	sshl_b32 s6, 8, s4
	sshl_b32 s5, 18, s5
	sadd_co_i32 s5, s6, s5
	and_b32 r1, 0xf800, r1
	smul_i32 s4, 0x7f00, s4
	sadd_co_i32 s4, s5, s4
	add_u32 r1, s5, r1
	shl_b32 r2, 3, r0
	smov_b32 s6, 0xf8
	and_or_b32 r1, r2, s6, r1
	shl_b32 r3, 10, r0
	shl_b32 r0, 1, r0
	smov_b32 s5, 0x6000
	mov_b32 r4, s4
.Ltmp4:
	.loc	2 15 244 prologue_end           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	shl_b32 r6, 1, r1
	and_or_b32 r3, r3, s5, r4
	and_b32 r0, 0x7c0, r0
	and_b32 r2, r2, 56
	or3_b32 r4, r3, r0, r2
	.loc	2 14 3                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:14:3
	mov_b32 r5, 0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	mov_b32 r3, 0
	arrive slcnt(0)
	add_co_u32 r0, s2, r6
	mov_b32 r1, s3
	addc_co_u32 r1, r1, r3
	.loc	2 15 21 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	shl_b64 r2, 1, r4
	add_co_u32 r8, s0, r2
	mov_b32 r2, s1
	addc_co_u32 r9, r2, r3
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r2, 0x8000, r0
	addc_co_u32 r3, r1, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r10, s2, r6, 0x0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r6, 0x10000, r0
	addc_co_u32 r7, r1, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r14, r2, 0x0
	.loc	2 15 182                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:182
	or_b32 r2, 0x800, r4
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r18, r6, 0x0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r6, 0x18000, r0
	addc_co_u32 r7, r1, 0
	add_co_u32 r22, 0x20000, r0
	addc_co_u32 r23, r1, 0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	mad_u32 r24, r2, 2, s0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r2, 0x28000, r0
	addc_co_u32 r3, r1, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r26, r6, 0x0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r6, 0x1400, r8
	addc_co_u32 r7, r9, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r30, r22, 0x0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r22, 0x30000, r0
	addc_co_u32 r23, r1, 0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r34, 0x1800, r8
	addc_co_u32 r35, r9, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r36, r2, 0x0
	ldg_b128 r40, r22, 0x0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r22, 0x38000, r0
	addc_co_u32 r23, r1, 0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r44, 0x1c00, r8
	addc_co_u32 r45, r9, 0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r46, 0x40000, r0
	.loc	2 15 182                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:182
	or_b32 r2, 0x1000, r4
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	addc_co_u32 r47, r1, 0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	mad_u32 r48, r2, 2, s0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r2, 0x48000, r0
	addc_co_u32 r3, r1, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r50, r22, 0x0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r22, 0x2400, r8
	addc_co_u32 r23, r9, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r54, r46, 0x0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r46, 0x50000, r0
	addc_co_u32 r47, r1, 0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r58, 0x2800, r8
	addc_co_u32 r59, r9, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r60, r2, 0x0
	ldg_b128 r64, r46, 0x0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r46, 0x58000, r0
	addc_co_u32 r47, r1, 0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r68, 0x2c00, r8
	addc_co_u32 r69, r9, 0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r70, 0x60000, r0
	.loc	2 15 182                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:182
	or_b32 r2, 0x1800, r4
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	addc_co_u32 r71, r1, 0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	mad_u32 r2, r2, 2, s0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r4, 0x68000, r0
	addc_co_u32 r5, r1, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r72, r46, 0x0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r46, 0x3400, r8
	addc_co_u32 r47, r9, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r76, r70, 0x0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r70, 0x70000, r0
	addc_co_u32 r71, r1, 0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r80, 0x3800, r8
	addc_co_u32 r81, r9, 0
	.loc	2 15 244                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:244
	add_co_u32 r0, 0x78000, r0
	addc_co_u32 r1, r1, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	ldg_b128 r82, r4, 0x0
	ldg_b128 r86, r70, 0x0
	ldg_b128 r90, r0, 0x0
	.loc	2 15 21                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:21
	add_co_u32 r0, 0x3c00, r8
	addc_co_u32 r1, r9, 0
	.loc	2 15 217                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:15:217
	arrive gvmcnt(15)
	stg_b128 r8, 0x0, r10 devc
	arrive gvmcnt(15)
	stg_b128 r8, 0x400, r14 devc
	arrive gvmcnt(15)
	stg_b128 r8, 0x800, r18 devc
	arrive gvmcnt(15)
	stg_b128 r8, 0xc00, r26 devc
	arrive gvmcnt(15)
	stg_b128 r24, 0x0, r30 devc
	arrive gvmcnt(15)
	stg_b128 r6, 0x0, r36 devc
	arrive gvmcnt(15)
	stg_b128 r34, 0x0, r40 devc
	arrive gvmcnt(15)
	stg_b128 r44, 0x0, r50 devc
	arrive gvmcnt(15)
	stg_b128 r48, 0x0, r54 devc
	arrive gvmcnt(15)
	stg_b128 r22, 0x0, r60 devc
	arrive gvmcnt(15)
	stg_b128 r58, 0x0, r64 devc
	arrive gvmcnt(15)
	stg_b128 r68, 0x0, r72 devc
	arrive gvmcnt(15)
	stg_b128 r2, 0x0, r76 devc
	arrive gvmcnt(15)
	stg_b128 r46, 0x0, r82 devc
	arrive gvmcnt(15)
	stg_b128 r80, 0x0, r86 devc
	arrive gvmcnt(15)
	stg_b128 r0, 0x0, r90 devc
	.loc	2 17 1 is_stmt 1                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:17:1
	endk
.Ltmp5:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 12
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
; codeLenInByte = 1080
; NumMTRegsForWarps/PEU: 94
; NumSTRegsForWarps/PEU: 11
; MaxWarpsPerPEU: 5
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 19 0                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:19:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s12, s5
.Ltmp6:
	.loc	2 26 19 prologue_end            ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:26:19
	smov_b32 s13, 0
	sshl_b64 s2, 2, s12
	ldu_b64 s6, s0, 0x30
	ldu_b128 s24, s0, 0x20
	and_b32 r26, 0x3ff, r0
	arrive slcnt(0)
	sadd_co_u32 s2, s18, s2
	saddc_co_u32 s3, s19, s3
	ldu_b32 s8, s2, 0x0
	shl_b32 r27, 6, r26
	and_b32 r17, 0x3c0, r27
	shl_b32 r0, 5, r26
	shr_b32 r4, 1, r26
	and_b32 r0, 0x7800, r0
	.loc	2 43 3                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:43:3
	and_or_b32 r28, r4, 24, r17
	.loc	2 26 19                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:26:19
	arrive slcnt(0)
	sashr_i32 s9, 31, s8
	.loc	2 27 20                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:27:20
	sshl_b64 s0, 2, s8
	sadd_co_u32 s2, s22, s0
	saddc_co_u32 s3, s23, s1
	.loc	2 28 22                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:28:22
	sadd_co_u32 s10, s20, s0
	saddc_co_u32 s11, s21, s1
	sshl_b32 s0, 18, s5
	.loc	2 41 212                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:41:212
	or3_b32 r156, r0, s0, r28
	.loc	2 41 59 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:41:59
	shl_b32 r0, 1, r156
	or_b32 r1, 0x800, r0
	.loc	2 27 20 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:27:20
	ldu_b32 s2, s2, 0x0
	.loc	2 41 41                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:41:41
	ldg_b128 r158, s24, r0, 0x0
	ldg_b128 r162, s24, r1, 0x0
	.loc	2 41 59 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:41:59
	or_b32 r1, r0, 64
	or_b32 r0, 0x840, r0
	.loc	2 28 22 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:28:22
	ldu_b32 s3, s10, 0x0
	.loc	2 41 41                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:41:41
	ldg_b128 r166, s24, r1, 0x0
	ldg_b128 r170, s24, r0, 0x0
	sshl_b32 s5, 24, s8
	sshl_b32 s28, 18, s4
	sadd_co_u32 s0, 0x4000, s24
	saddc_co_u32 s1, s25, 0
	sshl_b32 s8, 7, s12
	arrive slcnt(0)
	ssub_co_i32 s2, s2, s8
	sadd_co_i32 s8, s2, s3
	sadd_co_u32 s18, 0x40000, s16
	shl_b32 r0, 8, r26
	saddc_co_u32 s19, s17, 0
	and_b32 r29, 0x3f800, r0
	shl_b32 r0, 3, r26
	and_b32 r18, r0, 32
	sadd_co_u32 s22, 0x40000, s26
	and_b32 r30, r0, 56
	and_b32 r3, 0x1fc0, r0
	and_b32 r0, r0, 16
	saddc_co_u32 s23, s27, 0
	add_u32 r0, r0, r26
	shr_b32 r2, 5, r26
	sadd_co_u32 s34, 0x40080, s16
	add_u32 r1, r18, r26
	and_b32 r6, r0, 16
	mul_u24 r0, r26, 9
	add_shl_u32 r2, r2, r4, 4
	saddc_co_u32 s35, s17, 0
	and_b32 r5, r1, 32
	and_b32 r7, r0, 8
	and_b32 r10, r2, 16
	shr_b32 r2, 4, r26
	sadd_co_u32 s36, 0x40080, s26
	add_shl_u32 r11, r2, r26, 3
	or_b32 r2, r5, r7
	saddc_co_u32 s37, s27, 0
	or3_b32 r2, r2, r3, r6
	or_b32 r3, r3, r5
	and_b32 r0, r26, 15
	sadd_co_u32 s2, 0x8000, s24
	and_b32 r8, 0x1e0, r4
	and_or_b32 r4, r4, 32, r0
	or3_b32 r3, r3, r6, r7
	mov_b32 r5, 0x1000
	saddc_co_u32 s3, s25, 0
	shl_b32 r9, 1, r2
	shl_add_u32 r12, 1, r3, r5
	cmp_lt_i32 s30, r8, s8
	cmp_lt_i32 s38, r4, s8
	or_b32 r4, r4, 16
	or_b32 r8, r8, r0
	sadd_co_i32 s9, 0x2000, 0
	cmp_lt_i32 s10, r8, s8
	cmp_lt_i32 s40, r4, s8
	add_u32 r4, s9, r9
	add_u32 r5, s9, r12
	sadd_co_i32 s9, 0x4000, 0
	or_b32 r8, r8, 16
	sadd_co_i32 s42, 0x6000, 0
	add_u32 r2, 0, r9
	add_u32 r6, s9, r9
	add_u32 r7, s9, r12
	cmp_lt_i32 s8, r8, s8
	add_u32 r8, s42, r9
	add_u32 r9, s42, r12
	.loc	2 43 3                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:43:3
	sshl_b64 s42, 19, s12
	and_b32 r27, 0x1000, r27
	shl_b32 r28, 1, r28
	and_or_b32 r25, r11, 8, r10
	or3_b32 r28, s42, r27, r28
	sadd_co_i32 s5, s5, s28
	or3_b32 r182, s5, r29, r30
	add_co_u32 r27, s24, r28
	cmp_gt_u32 s14, 0x80, r26
	cmp_lt_u32 s20, 0x7f, r26
	or_b32 r20, 0x400, r17
	or_b32 r21, r25, r18
	or_b32 r22, 0x800, r17
	or_b32 r23, 0xc00, r17
	or_b32 r24, 0x1000, r17
	or_b32 r31, 0x1400, r17
	or_b32 r32, 0x1800, r17
	or_b32 r33, 0x1c00, r17
	xor_b32 r34, r18, 32
	mov_b32 r29, s43
	mov_b32 r28, s25
	or_b32 r11, r21, r20
	or_b32 r13, r21, r23
	or_b32 r14, r21, r24
	or_b32 r15, r21, r31
	or_b32 r16, r21, r32
	or_b32 r19, r25, r17
	or_b32 r17, r21, r33
	add_u32 r3, 0, r12
	or_b32 r12, r21, r22
	or3_b32 r21, r25, r23, r34
	or3_b32 r23, r25, r31, r34
	addc_co_u32 r28, r28, r29
	mad_u32 r30, r156, 2, s24
	.loc	2 0 0 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:0
	shl_b64 r36, 0, 0
	shl_b64 r186, 0, 0
	or_b32 r10, r19, r18
	or_b32 r18, r19, r34
	or3_b32 r19, r25, r20, r34
	or3_b32 r20, r25, r22, r34
	or3_b32 r22, r25, r24, r34
	or3_b32 r24, r25, r32, r34
	.loc	2 43 3                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:43:3
	add_co_u32 r29, 0x4800, r30
	or3_b32 r25, r25, r33, r34
	smov_b64 s24, 0
	.loc	2 0 0                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:0
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
	.loc	2 41 59 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:41:59
	mov_b32 r157, 0
	shr_b32 r1, 2, r26
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
	.loc	2 43 3                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:43:3
	shr_b32 r26, 6, r26
	addc_co_u32 r30, r31, 0
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
LBB3_1:                                 ; %for.inc1177
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 43 31 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:43:31
	sadd_co_u32 s42, 0x80, s42
	saddc_co_u32 s43, s43, 0
	sadd_co_u32 s24, 0x8000, s24
	saddc_co_u32 s25, s25, 0
	add_co_u32 r156, 0x4000, r156
	scmp_eq_u64 0x800, s42
	addc_co_u32 r157, r157, 0
	.loc	2 43 3                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:43:3
	bra_smsks LBB3_76
LBB3_2:                                 ; %for.cond64.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 46 362 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:46:362
	add_co_u32 r31, r182, s42
	add_u32 r32, 0x10000, r31
	mad_i32 r34, r31, 2, s16
	mad_i32 r200, r32, 2, s16
	.loc	2 46 345 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:46:345
	snop 0
	ldg_b128 r202, r34, 0x0
	ldg_b128 r206, r200, 0x0
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r202
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r206
	.loc	2 50 38 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:38
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB3_6
; %bb.3:                                ; %for.inc174
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 38 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s44
	.loc	2 50 38                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:38
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB3_9
LBB3_4:                                 ; %for.inc174.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 38                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s44
	.loc	2 50 38                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:38
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB3_12
LBB3_5:                                 ; %for.inc174.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 38                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:38
	sor_b64 xmsk, xmsk, s44
	.loc	2 50 38                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:38
	and_xmsk s44, s14
	snop 0
	bra_xmsks LBB3_15
	bra LBB3_18
	.p2align	5
LBB3_6:                                 ; %land.lhs.true
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 50 11                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:11
	and_xmsk s46, s38
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	add_co_u32 r33, r27, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r28, r34
	add_co_u32 r196, 0x4000, r33
	addc_co_u32 r197, r34, 0
	.loc	2 51 47 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:51:47
	snop 1
	ldg_b128 r196, r196, 0x0
LBB3_8:                                 ; %Flow340
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 50 38 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:38
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB3_4
LBB3_9:                                 ; %land.lhs.true.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 50 11 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:11
	and_xmsk s46, s40
	snop 0
	bra_xmskz LBB3_11
; %bb.10:                               ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	add_co_u32 r33, r27, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r28, r34
	add_co_u32 r192, 0x4800, r33
	addc_co_u32 r193, r34, 0
	.loc	2 51 47 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:51:47
	snop 1
	ldg_b128 r192, r192, 0x0
LBB3_11:                                ; %Flow339
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 50 38 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:38
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB3_5
LBB3_12:                                ; %land.lhs.true.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 50 11 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:11
	and_xmsk s46, s38
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	add_co_u32 r33, r27, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r28, r34
	add_co_u32 r188, 0x4040, r33
	addc_co_u32 r189, r34, 0
	.loc	2 51 47 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:51:47
	snop 1
	ldg_b128 r188, r188, 0x0
LBB3_14:                                ; %Flow338
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 50 38 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:38
	and_xmsk s44, s14
	snop 0
	bra_xmskz LBB3_18
LBB3_15:                                ; %land.lhs.true.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 50 11 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:50:11
	and_xmsk s46, s40
	snop 0
	bra_xmskz LBB3_17
; %bb.16:                               ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	add_co_u32 r33, r27, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r28, r34
	add_co_u32 r184, 0x4840, r33
	addc_co_u32 r185, r34, 0
	.loc	2 51 47 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:51:47
	snop 1
	ldg_b128 r184, r184, 0x0
LBB3_17:                                ; %Flow337
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s46
LBB3_18:                                ; %for.inc174.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s44
	.loc	2 56 371 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:56:371
	mad_i32 r34, r31, 2, s18
	mad_i32 r200, r32, 2, s18
	.loc	2 56 354 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:56:354
	snop 0
	ldg_b128 r202, r34, 0x0
	.loc	2 60 369 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:60:369
	mad_i32 r34, r31, 2, s26
	.loc	2 56 354                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:56:354
	ldg_b128 r206, r200, 0x0
	.loc	2 60 369                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:60:369
	mad_i32 r200, r32, 2, s26
	.loc	2 60 354 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:60:354
	ldg_b128 r210, r34, 0x0
	snop 0
	ldg_b128 r214, r200, 0x0
	.loc	2 56 354 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:56:354
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r202
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r206
	.loc	2 60 354                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:60:354
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r210
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r214
	.loc	2 64 39                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:39
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB3_22
; %bb.19:                               ; %for.inc355
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 39 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s44
	.loc	2 64 39                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:39
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB3_25
LBB3_20:                                ; %for.inc355.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 39                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s44
	.loc	2 64 39                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:39
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB3_28
LBB3_21:                                ; %for.inc355.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 39                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:39
	sor_b64 xmsk, xmsk, s44
	.loc	2 64 39                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:39
	and_xmsk s44, s20
	snop 0
	bra_xmsks LBB3_31
	bra LBB3_34
	.p2align	5
LBB3_22:                                ; %land.lhs.true308
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 64 11                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:11
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB3_24
; %bb.23:                               ; %if.then323
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	add_co_u32 r34, r29, s24
	mov_b32 r33, s25
	addc_co_u32 r35, r30, r33
	.loc	2 65 47 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:65:47
	snop 1
	ldg_b128 r196, r34, -0x800
LBB3_24:                                ; %Flow336
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 64 39 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:39
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB3_20
LBB3_25:                                ; %land.lhs.true308.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 64 11 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:11
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB3_27
; %bb.26:                               ; %if.then323.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	add_co_u32 r34, r29, s24
	mov_b32 r33, s25
	addc_co_u32 r35, r30, r33
	.loc	2 65 47 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:65:47
	snop 1
	ldg_b128 r192, r34, 0x0
LBB3_27:                                ; %Flow335
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 64 39 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:39
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB3_21
LBB3_28:                                ; %land.lhs.true308.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 64 11 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:11
	and_xmsk s46, s10
	snop 0
	bra_xmskz LBB3_30
; %bb.29:                               ; %if.then323.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	add_co_u32 r34, r29, s24
	mov_b32 r33, s25
	addc_co_u32 r35, r30, r33
	.loc	2 65 47 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:65:47
	snop 1
	ldg_b128 r188, r34, -0x7c0
LBB3_30:                                ; %Flow334
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s46
	sor_b64 xmsk, xmsk, s44
	.loc	2 64 39 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:39
	and_xmsk s44, s20
	snop 0
	bra_xmskz LBB3_34
LBB3_31:                                ; %land.lhs.true308.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 64 11 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:64:11
	and_xmsk s46, s8
	snop 0
	bra_xmskz LBB3_33
; %bb.32:                               ; %if.then323.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 11                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	shl_b64 r34, 1, r156
	or_b32 r34, 0x840, r34
	add_co_u32 r34, s0, r34
	mov_b32 r33, s1
	addc_co_u32 r35, r33, r35
	.loc	2 65 47 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:65:47
	snop 1
	ldg_b128 r184, r34, 0x0
LBB3_33:                                ; %Flow333
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 47 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:47
	sor_b64 xmsk, xmsk, s46
LBB3_34:                                ; %for.inc355.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s44
	.loc	2 70 370 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:70:370
	mad_i32 r34, r31, 2, s22
	mad_i32 r200, r32, 2, s22
	.loc	2 70 355 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:70:355
	snop 0
	ldg_b128 r202, r34, 0x0
	ldg_b128 r206, r200, 0x0
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r202
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r206
.Ltmp7:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 73 9                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:73:9
	and_xmsk s44, s30
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %for.cond434.preheader.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r200, r10, 0x0
	lds_b128 r204, r11, 0x0
	lds_b128 r208, r12, 0x0
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	add_i32 r33, 0x4000, r10
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r200, r158, r174
	mma_16x16x16f16 r92, r200, r162, r92
	mma_16x16x16f16 r174, r202, r160, r174
	mma_16x16x16f16 r92, r202, r164, r92
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r200, r13, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r204, r158, r148
	mma_16x16x16f16 r84, r204, r162, r84
	mma_16x16x16f16 r148, r206, r160, r148
	mma_16x16x16f16 r84, r206, r164, r84
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r204, r14, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r208, r158, r140
	mma_16x16x16f16 r76, r208, r162, r76
	mma_16x16x16f16 r140, r210, r160, r140
	mma_16x16x16f16 r76, r210, r164, r76
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r208, r15, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r200, r158, r132
	mma_16x16x16f16 r68, r200, r162, r68
	mma_16x16x16f16 r132, r202, r160, r132
	mma_16x16x16f16 r68, r202, r164, r68
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r200, r16, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r204, r158, r124
	mma_16x16x16f16 r60, r204, r162, r60
	mma_16x16x16f16 r124, r206, r160, r124
	mma_16x16x16f16 r60, r206, r164, r60
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r204, r17, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r208, r158, r116
	mma_16x16x16f16 r52, r208, r162, r52
	mma_16x16x16f16 r116, r210, r160, r116
	mma_16x16x16f16 r52, r210, r164, r52
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r11
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r200, r158, r108
	mma_16x16x16f16 r44, r200, r162, r44
	mma_16x16x16f16 r108, r202, r160, r108
	mma_16x16x16f16 r44, r202, r164, r44
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r12
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r204, r158, r100
	mma_16x16x16f16 r36, r204, r162, r36
	mma_16x16x16f16 r100, r206, r160, r100
	mma_16x16x16f16 r36, r206, r164, r36
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r13
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r208, r158, r178
	mma_16x16x16f16 r96, r208, r162, r96
	mma_16x16x16f16 r178, r210, r160, r178
	mma_16x16x16f16 r96, r210, r164, r96
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r14
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r200, r158, r152
	mma_16x16x16f16 r88, r200, r162, r88
	mma_16x16x16f16 r152, r202, r160, r152
	mma_16x16x16f16 r88, r202, r164, r88
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r15
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r158, r144
	mma_16x16x16f16 r80, r204, r162, r80
	mma_16x16x16f16 r144, r206, r160, r144
	mma_16x16x16f16 r80, r206, r164, r80
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r16
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r208, r158, r136
	mma_16x16x16f16 r72, r208, r162, r72
	mma_16x16x16f16 r136, r210, r160, r136
	mma_16x16x16f16 r72, r210, r164, r72
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r17
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r200, r158, r128
	mma_16x16x16f16 r64, r200, r162, r64
	mma_16x16x16f16 r128, r202, r160, r128
	mma_16x16x16f16 r64, r202, r164, r64
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r18
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r204, r158, r120
	mma_16x16x16f16 r56, r204, r162, r56
	mma_16x16x16f16 r120, r206, r160, r120
	mma_16x16x16f16 r56, r206, r164, r56
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r204, r18, 0x0
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r208, r158, r112
	mma_16x16x16f16 r48, r208, r162, r48
	mma_16x16x16f16 r112, r210, r160, r112
	mma_16x16x16f16 r48, r210, r164, r48
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r208, r19, 0x0
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r200, r158, r104
	mma_16x16x16f16 r40, r200, r162, r40
	mma_16x16x16f16 r104, r202, r160, r104
	mma_16x16x16f16 r40, r202, r164, r40
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r200, r20, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r204, r166, r174
	mma_16x16x16f16 r92, r204, r170, r92
	mma_16x16x16f16 r174, r206, r168, r174
	mma_16x16x16f16 r92, r206, r172, r92
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r204, r21, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r208, r166, r148
	mma_16x16x16f16 r84, r208, r170, r84
	mma_16x16x16f16 r148, r210, r168, r148
	mma_16x16x16f16 r84, r210, r172, r84
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r208, r22, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r200, r166, r140
	mma_16x16x16f16 r76, r200, r170, r76
	mma_16x16x16f16 r140, r202, r168, r140
	mma_16x16x16f16 r76, r202, r172, r76
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r200, r23, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r204, r166, r132
	mma_16x16x16f16 r68, r204, r170, r68
	mma_16x16x16f16 r132, r206, r168, r132
	mma_16x16x16f16 r68, r206, r172, r68
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r204, r24, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r208, r166, r124
	mma_16x16x16f16 r60, r208, r170, r60
	mma_16x16x16f16 r124, r210, r168, r124
	mma_16x16x16f16 r60, r210, r172, r60
	.loc	2 76 45                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:76:45
	lds_b128 r208, r25, 0x0
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r200, r166, r116
	mma_16x16x16f16 r52, r200, r170, r52
	mma_16x16x16f16 r116, r202, r168, r116
	mma_16x16x16f16 r52, r202, r172, r52
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r19
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r204, r166, r108
	mma_16x16x16f16 r44, r204, r170, r44
	mma_16x16x16f16 r108, r206, r168, r108
	mma_16x16x16f16 r44, r206, r172, r44
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r20
	.loc	2 82 57                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:82:57
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r208, r166, r100
	mma_16x16x16f16 r36, r208, r170, r36
	mma_16x16x16f16 r100, r210, r168, r100
	mma_16x16x16f16 r36, r210, r172, r36
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r21
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r200, r166, r178
	mma_16x16x16f16 r96, r200, r170, r96
	mma_16x16x16f16 r178, r202, r168, r178
	mma_16x16x16f16 r96, r202, r172, r96
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r22
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r204, r166, r152
	mma_16x16x16f16 r88, r204, r170, r88
	mma_16x16x16f16 r152, r206, r168, r152
	mma_16x16x16f16 r88, r206, r172, r88
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r23
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r208, r166, r144
	mma_16x16x16f16 r80, r208, r170, r80
	mma_16x16x16f16 r144, r210, r168, r144
	mma_16x16x16f16 r80, r210, r172, r80
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r208, r33, 0x0
	add_i32 r33, 0x4000, r24
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r200, r166, r136
	mma_16x16x16f16 r72, r200, r170, r72
	mma_16x16x16f16 r136, r202, r168, r136
	mma_16x16x16f16 r72, r202, r172, r72
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r25
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r204, r166, r128
	mma_16x16x16f16 r64, r204, r170, r64
	mma_16x16x16f16 r128, r206, r168, r128
	mma_16x16x16f16 r64, r206, r172, r64
	.loc	2 90 47                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:90:47
	lds_b128 r204, r33, 0x0
	.loc	2 96 56                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:96:56
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
LBB3_36:                                ; %if.end612
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s44
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 108 363                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:108:363
	add_u32 r33, r31, 64
	add_u32 r34, 0x10040, r31
	mad_i32 r200, r33, 2, s16
	mad_i32 r202, r34, 2, s16
	.loc	2 110 16                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:110:16
	mov_b32 r208, 0x780
	.loc	2 108 346                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:108:346
	ldg_b128 r204, r200, 0x0
	ldg_b128 r200, r202, 0x0
	.loc	2 110 16                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:110:16
	mov_b32 r209, 0
	cmp_lg_u64 s44, s42, r208
	scmp_eq_u64 0x780, s42
	.loc	2 108 346                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:108:346
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r204
	arrive gvmcnt(0)
	sts_b128 r3, 0x0, r200
	.loc	2 110 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:110:9
	bra_smsks LBB3_54
; %bb.37:                               ; %for.cond677.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 113 40                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:40
	and_xmsk s46, s14
	snop 0
	bra_xmsks LBB3_41
; %bb.38:                               ; %for.inc730
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 40 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s46
	.loc	2 113 40                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:40
	and_xmsk s46, s14
	snop 0
	bra_xmsks LBB3_44
LBB3_39:                                ; %for.inc730.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 40                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s46
	.loc	2 113 40                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:40
	and_xmsk s46, s14
	snop 0
	bra_xmsks LBB3_47
LBB3_40:                                ; %for.inc730.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 40                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:40
	sor_b64 xmsk, xmsk, s46
	.loc	2 113 40                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:40
	and_xmsk s46, s14
	snop 0
	bra_xmsks LBB3_50
	bra LBB3_53
	.p2align	5
LBB3_41:                                ; %land.lhs.true683
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 113 13                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:13
	and_xmsk s48, s10
	snop 0
	bra_xmskz LBB3_43
; %bb.42:                               ; %if.then698
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	add_co_u32 r35, r27, s24
	mov_b32 r158, s25
	addc_co_u32 r158, r28, r158
	add_co_u32 r160, 0x8000, r35
	addc_co_u32 r161, r158, 0
	.loc	2 114 48 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:114:48
	snop 1
	ldg_b128 r158, r160, 0x0
LBB3_43:                                ; %Flow331
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s48
	sor_b64 xmsk, xmsk, s46
	.loc	2 113 40 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:40
	and_xmsk s46, s14
	snop 0
	bra_xmskz LBB3_39
LBB3_44:                                ; %land.lhs.true683.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 113 13 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:13
	and_xmsk s48, s8
	snop 0
	bra_xmskz LBB3_46
; %bb.45:                               ; %if.then698.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	add_co_u32 r35, r27, s24
	mov_b32 r162, s25
	addc_co_u32 r162, r28, r162
	add_co_u32 r164, 0x8800, r35
	addc_co_u32 r165, r162, 0
	.loc	2 114 48 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:114:48
	snop 1
	ldg_b128 r162, r164, 0x0
LBB3_46:                                ; %Flow330
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s48
	sor_b64 xmsk, xmsk, s46
	.loc	2 113 40 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:40
	and_xmsk s46, s14
	snop 0
	bra_xmskz LBB3_40
LBB3_47:                                ; %land.lhs.true683.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 113 13 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:13
	and_xmsk s48, s10
	snop 0
	bra_xmskz LBB3_49
; %bb.48:                               ; %if.then698.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	add_co_u32 r35, r27, s24
	mov_b32 r166, s25
	addc_co_u32 r166, r28, r166
	add_co_u32 r168, 0x8040, r35
	addc_co_u32 r169, r166, 0
	.loc	2 114 48 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:114:48
	snop 1
	ldg_b128 r166, r168, 0x0
LBB3_49:                                ; %Flow329
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s48
	sor_b64 xmsk, xmsk, s46
	.loc	2 113 40 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:40
	and_xmsk s46, s14
	snop 0
	bra_xmskz LBB3_53
LBB3_50:                                ; %land.lhs.true683.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 113 13 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:113:13
	and_xmsk s48, s8
	snop 0
	bra_xmskz LBB3_52
; %bb.51:                               ; %if.then698.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	add_co_u32 r35, r27, s24
	mov_b32 r170, s25
	addc_co_u32 r170, r28, r170
	add_co_u32 r172, 0x8840, r35
	addc_co_u32 r173, r170, 0
	.loc	2 114 48 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:114:48
	snop 1
	ldg_b128 r170, r172, 0x0
LBB3_52:                                ; %Flow327
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s48
LBB3_53:                                ; %Flow328
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s46
LBB3_54:                                ; %if.end733
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 120 372 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:120:372
	mad_i32 r200, r31, 2, s34
	mad_i32 r202, r32, 2, s34
	.loc	2 124 370                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:124:370
	mad_i32 r208, r33, 2, s26
	mad_i32 r34, r34, 2, s26
	.loc	2 120 355                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:120:355
	ldg_b128 r204, r200, 0x0
	ldg_b128 r200, r202, 0x0
	.loc	2 124 355                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:124:355
	ldg_b128 r208, r208, 0x0
	ldg_b128 r212, r34, 0x0
	.loc	2 126 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:126:9
	sandn_b64 cmsk, xmsk, s44
	.loc	2 120 355                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:120:355
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r204
	arrive gvmcnt(2)
	sts_b128 r5, 0x0, r200
	.loc	2 124 355                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:124:355
	arrive gvmcnt(1)
	sts_b128 r6, 0x0, r208
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r212
	.loc	2 126 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:126:9
	bra_cmsks LBB3_72
; %bb.55:                               ; %for.cond862.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 129 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:41
	and_xmsk s46, s20
	snop 0
	bra_xmsks LBB3_59
; %bb.56:                               ; %for.inc915
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 41 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s46
	.loc	2 129 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:41
	and_xmsk s46, s20
	snop 0
	bra_xmsks LBB3_62
LBB3_57:                                ; %for.inc915.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 41                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s46
	.loc	2 129 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:41
	and_xmsk s46, s20
	snop 0
	bra_xmsks LBB3_65
LBB3_58:                                ; %for.inc915.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 41                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s46
	.loc	2 129 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:41
	and_xmsk s46, s20
	snop 0
	bra_xmsks LBB3_68
	bra LBB3_71
	.p2align	5
LBB3_59:                                ; %land.lhs.true868
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 129 13                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:13
	and_xmsk s48, s10
	snop 0
	bra_xmskz LBB3_61
; %bb.60:                               ; %if.then883
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	add_co_u32 r33, r29, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r30, r34
	add_co_u32 r158, 0x3800, r33
	addc_co_u32 r159, r34, 0
	.loc	2 130 48 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:130:48
	snop 1
	ldg_b128 r158, r158, 0x0
LBB3_61:                                ; %Flow325
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s48
	sor_b64 xmsk, xmsk, s46
	.loc	2 129 41 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:41
	and_xmsk s46, s20
	snop 0
	bra_xmskz LBB3_57
LBB3_62:                                ; %land.lhs.true868.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 129 13 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:13
	and_xmsk s48, s8
	snop 0
	bra_xmskz LBB3_64
; %bb.63:                               ; %if.then883.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	add_co_u32 r33, r29, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r30, r34
	add_co_u32 r162, 0x4000, r33
	addc_co_u32 r163, r34, 0
	.loc	2 130 48 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:130:48
	snop 1
	ldg_b128 r162, r162, 0x0
LBB3_64:                                ; %Flow324
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s48
	sor_b64 xmsk, xmsk, s46
	.loc	2 129 41 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:41
	and_xmsk s46, s20
	snop 0
	bra_xmskz LBB3_58
LBB3_65:                                ; %land.lhs.true868.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 129 13 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:13
	and_xmsk s48, s10
	snop 0
	bra_xmskz LBB3_67
; %bb.66:                               ; %if.then883.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	add_co_u32 r33, r29, s24
	mov_b32 r34, s25
	addc_co_u32 r34, r30, r34
	add_co_u32 r166, 0x3840, r33
	addc_co_u32 r167, r34, 0
	.loc	2 130 48 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:130:48
	snop 1
	ldg_b128 r166, r166, 0x0
LBB3_67:                                ; %Flow323
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s48
	sor_b64 xmsk, xmsk, s46
	.loc	2 129 41 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:41
	and_xmsk s46, s20
	snop 0
	bra_xmskz LBB3_71
LBB3_68:                                ; %land.lhs.true868.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 129 13 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:129:13
	and_xmsk s48, s8
	snop 0
	bra_xmskz LBB3_70
; %bb.69:                               ; %if.then883.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 13                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	shl_b64 r34, 1, r156
	or_b32 r34, 0x840, r34
	add_co_u32 r34, s2, r34
	mov_b32 r33, s3
	addc_co_u32 r35, r33, r35
	.loc	2 130 48 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:130:48
	snop 1
	ldg_b128 r170, r34, 0x0
LBB3_70:                                ; %Flow
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 48 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:48
	sor_b64 xmsk, xmsk, s48
LBB3_71:                                ; %Flow322
                                        ;   in Loop: Header=BB3_2 Depth=1
	sor_b64 xmsk, xmsk, s46
LBB3_72:                                ; %if.end918
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 136 371 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:136:371
	mad_i32 r34, r31, 2, s36
	mad_i32 r32, r32, 2, s36
	.loc	2 136 356 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:136:356
	snop 0
	ldg_b128 r200, r34, 0x0
	ldg_b128 r32, r32, 0x0
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r200
	arrive gvmcnt(0)
	sts_b128 r9, 0x0, r32
.Ltmp11:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp12:
	.loc	2 139 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:139:9
	and_xmsk s46, s30
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %for.cond995.preheader.preheader
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r32, r10, 0x0
	lds_b128 r200, r11, 0x0
	lds_b128 r204, r12, 0x0
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	add_i32 r31, 0x4000, r10
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r32, r196, r174
	mma_16x16x16f16 r92, r32, r192, r92
	mma_16x16x16f16 r174, r34, r198, r174
	mma_16x16x16f16 r92, r34, r194, r92
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r32, r13, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r200, r196, r148
	mma_16x16x16f16 r84, r200, r192, r84
	mma_16x16x16f16 r148, r202, r198, r148
	mma_16x16x16f16 r84, r202, r194, r84
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r200, r14, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r204, r196, r140
	mma_16x16x16f16 r76, r204, r192, r76
	mma_16x16x16f16 r140, r206, r198, r140
	mma_16x16x16f16 r76, r206, r194, r76
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r204, r15, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r32, r196, r132
	mma_16x16x16f16 r68, r32, r192, r68
	mma_16x16x16f16 r132, r34, r198, r132
	mma_16x16x16f16 r68, r34, r194, r68
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r32, r16, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r200, r196, r124
	mma_16x16x16f16 r60, r200, r192, r60
	mma_16x16x16f16 r124, r202, r198, r124
	mma_16x16x16f16 r60, r202, r194, r60
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r200, r17, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r204, r196, r116
	mma_16x16x16f16 r52, r204, r192, r52
	mma_16x16x16f16 r116, r206, r198, r116
	mma_16x16x16f16 r52, r206, r194, r52
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r11
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r32, r196, r108
	mma_16x16x16f16 r44, r32, r192, r44
	mma_16x16x16f16 r108, r34, r198, r108
	mma_16x16x16f16 r44, r34, r194, r44
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r12
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r200, r196, r100
	mma_16x16x16f16 r36, r200, r192, r36
	mma_16x16x16f16 r100, r202, r198, r100
	mma_16x16x16f16 r36, r202, r194, r36
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r200, r31, 0x0
	add_i32 r31, 0x4000, r13
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r204, r196, r178
	mma_16x16x16f16 r96, r204, r192, r96
	mma_16x16x16f16 r178, r206, r198, r178
	mma_16x16x16f16 r96, r206, r194, r96
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r14
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r32, r196, r152
	mma_16x16x16f16 r88, r32, r192, r88
	mma_16x16x16f16 r152, r34, r198, r152
	mma_16x16x16f16 r88, r34, r194, r88
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r15
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r200, r196, r144
	mma_16x16x16f16 r80, r200, r192, r80
	mma_16x16x16f16 r144, r202, r198, r144
	mma_16x16x16f16 r80, r202, r194, r80
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r200, r31, 0x0
	add_i32 r31, 0x4000, r16
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r204, r196, r136
	mma_16x16x16f16 r72, r204, r192, r72
	mma_16x16x16f16 r136, r206, r198, r136
	mma_16x16x16f16 r72, r206, r194, r72
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r17
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r32, r196, r128
	mma_16x16x16f16 r64, r32, r192, r64
	mma_16x16x16f16 r128, r34, r198, r128
	mma_16x16x16f16 r64, r34, r194, r64
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r18
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r200, r196, r120
	mma_16x16x16f16 r56, r200, r192, r56
	mma_16x16x16f16 r120, r202, r198, r120
	mma_16x16x16f16 r56, r202, r194, r56
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r200, r18, 0x0
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r204, r196, r112
	mma_16x16x16f16 r48, r204, r192, r48
	mma_16x16x16f16 r112, r206, r198, r112
	mma_16x16x16f16 r48, r206, r194, r48
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r204, r19, 0x0
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r32, r196, r104
	mma_16x16x16f16 r40, r32, r192, r40
	mma_16x16x16f16 r104, r34, r198, r104
	mma_16x16x16f16 r40, r34, r194, r40
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r32, r20, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r200, r188, r174
	mma_16x16x16f16 r92, r200, r184, r92
	mma_16x16x16f16 r174, r202, r190, r174
	mma_16x16x16f16 r92, r202, r186, r92
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r200, r21, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r204, r188, r148
	mma_16x16x16f16 r84, r204, r184, r84
	mma_16x16x16f16 r148, r206, r190, r148
	mma_16x16x16f16 r84, r206, r186, r84
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r204, r22, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r32, r188, r140
	mma_16x16x16f16 r76, r32, r184, r76
	mma_16x16x16f16 r140, r34, r190, r140
	mma_16x16x16f16 r76, r34, r186, r76
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r32, r23, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r200, r188, r132
	mma_16x16x16f16 r68, r200, r184, r68
	mma_16x16x16f16 r132, r202, r190, r132
	mma_16x16x16f16 r68, r202, r186, r68
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r200, r24, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r204, r188, r124
	mma_16x16x16f16 r60, r204, r184, r60
	mma_16x16x16f16 r124, r206, r190, r124
	mma_16x16x16f16 r60, r206, r186, r60
	.loc	2 142 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:142:47
	lds_b128 r204, r25, 0x0
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r32, r188, r116
	mma_16x16x16f16 r52, r32, r184, r52
	mma_16x16x16f16 r116, r34, r190, r116
	mma_16x16x16f16 r52, r34, r186, r52
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r19
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r200, r188, r108
	mma_16x16x16f16 r44, r200, r184, r44
	mma_16x16x16f16 r108, r202, r190, r108
	mma_16x16x16f16 r44, r202, r186, r44
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r200, r31, 0x0
	add_i32 r31, 0x4000, r20
	.loc	2 148 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:148:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r204, r188, r100
	mma_16x16x16f16 r36, r204, r184, r36
	mma_16x16x16f16 r100, r206, r190, r100
	mma_16x16x16f16 r36, r206, r186, r36
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r21
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r178, r32, r188, r178
	mma_16x16x16f16 r96, r32, r184, r96
	mma_16x16x16f16 r178, r34, r190, r178
	mma_16x16x16f16 r96, r34, r186, r96
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r22
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r152, r200, r188, r152
	mma_16x16x16f16 r88, r200, r184, r88
	mma_16x16x16f16 r152, r202, r190, r152
	mma_16x16x16f16 r88, r202, r186, r88
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r200, r31, 0x0
	add_i32 r31, 0x4000, r23
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r204, r188, r144
	mma_16x16x16f16 r80, r204, r184, r80
	mma_16x16x16f16 r144, r206, r190, r144
	mma_16x16x16f16 r80, r206, r186, r80
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r204, r31, 0x0
	add_i32 r31, 0x4000, r24
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r32, r188, r136
	mma_16x16x16f16 r72, r32, r184, r72
	mma_16x16x16f16 r136, r34, r190, r136
	mma_16x16x16f16 r72, r34, r186, r72
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r32, r31, 0x0
	add_i32 r31, 0x4000, r25
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r200, r188, r128
	mma_16x16x16f16 r64, r200, r184, r64
	mma_16x16x16f16 r128, r202, r190, r128
	mma_16x16x16f16 r64, r202, r186, r64
	.loc	2 156 47                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:156:47
	lds_b128 r200, r31, 0x0
	.loc	2 162 56                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:162:56
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
LBB3_74:                                ; %if.end1173
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 56 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:56
	sor_b64 xmsk, xmsk, s46
	.loc	2 171 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:171:9
	sandn_b64 cmsk, xmsk, s44
	snop 0
	bra_cmsks LBB3_1
; %bb.75:                               ; %if.then1175
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
LBB3_76:                                ; %for.cond1180.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	smul_i32 s0, 0x104000, s12
	sshl_b32 s1, 7, s4
	sadd_co_i32 s0, s1, s0
	mov_b32 r2, s0
	smov_b32 s1, 0x41000
	mad_u24 r2, r26, s1, r2
	smov_b32 s0, 0x2080
	mad_u24 r0, r0, s0, r2
	and_or_b32 r0, r1, 12, r0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_93
; %bb.77:                               ; %if.end1357
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_94
LBB3_78:                                ; %if.end1357.1
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_95
LBB3_79:                                ; %if.end1357.2
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_96
LBB3_80:                                ; %if.end1357.3
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_97
LBB3_81:                                ; %if.end1357.4
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_98
LBB3_82:                                ; %if.end1357.5
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_99
LBB3_83:                                ; %if.end1357.6
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmsks LBB3_100
LBB3_84:                                ; %if.end1357.7
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_101
LBB3_85:                                ; %if.end1357.8
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_102
LBB3_86:                                ; %if.end1357.9
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_103
LBB3_87:                                ; %if.end1357.10
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_104
LBB3_88:                                ; %if.end1357.11
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_105
LBB3_89:                                ; %if.end1357.12
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_106
LBB3_90:                                ; %if.end1357.13
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_107
LBB3_91:                                ; %if.end1357.14
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmsks LBB3_108
LBB3_92:                                ; %if.end1357.15
	.loc	2 231 1 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:231:1
	snop 1
	endk
LBB3_93:                                ; %if.then1297
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r176
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp18:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r177, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r181
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r176, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp20:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r175
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp22:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r176, r5
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r175, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp24:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r174
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp26:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r175, r6
.Ltmp27:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r174, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp28:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r174, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r178
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r179
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r8, s6, r8
	mov_b32 r1, s7
	addc_co_u32 r9, r1, r9
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r1, 16, r3
	add_u16 r2_hi, 0, 0
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_78
LBB3_94:                                ; %if.then1297.1
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r150
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp37:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r151, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r155
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r150, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp39:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r149
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp41:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r150, r5
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r149, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp43:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r148
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp45:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r149, r6
.Ltmp46:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r148, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp47:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r148, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r152
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r153
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 219 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:219
	snop 0
	or_b32 r3, r0, 16
	.loc	2 228 27 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	mad_i32 r6, r3, 2, s6
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_79
LBB3_95:                                ; %if.then1297.2
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r142
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp56:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r143, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r147
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r142, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp58:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r141
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp60:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r142, r5
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r141, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp62:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r140
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp64:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r141, r6
.Ltmp65:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r140, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp66:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r140, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r144
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r145
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 219 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:219
	snop 0
	or_b32 r3, r0, 32
	.loc	2 228 27 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	mad_i32 r6, r3, 2, s6
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_80
LBB3_96:                                ; %if.then1297.3
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r134
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp75:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r135, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r139
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r134, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp77:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r133
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp79:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r134, r5
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r133, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp81:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r132
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp83:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r133, r6
.Ltmp84:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r132, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp85:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r132, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r136
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r137
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 219 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:219
	snop 0
	or_b32 r3, r0, 48
	.loc	2 228 27 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	mad_i32 r6, r3, 2, s6
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_81
LBB3_97:                                ; %if.then1297.4
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r126
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp94:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r127, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r131
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r126, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp96:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r125
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp98:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r126, r5
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r125, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp100:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r124
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp102:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r125, r6
.Ltmp103:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r124, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp104:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r124, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r128
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r129
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 219 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:219
	snop 0
	or_b32 r3, r0, 64
	.loc	2 228 27 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	mad_i32 r6, r3, 2, s6
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_82
LBB3_98:                                ; %if.then1297.5
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r118
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp113:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r119, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r123
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r118, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp115:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r117
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp117:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r118, r5
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r117, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp119:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r116
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp121:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r117, r6
.Ltmp122:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r116, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp123:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r116, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r120
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r121
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 219 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:219
	snop 0
	or_b32 r3, 0x50, r0
	.loc	2 228 27 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	mad_i32 r6, r3, 2, s6
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_83
LBB3_99:                                ; %if.then1297.6
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r110
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp132:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r111, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r115
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r110, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp134:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r109
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp136:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r110, r5
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r109, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp138:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r108
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp140:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r109, r6
.Ltmp141:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r108, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp142:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r108, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r112
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r113
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 219 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:219
	snop 0
	or_b32 r3, 0x60, r0
	.loc	2 228 27 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	mad_i32 r6, r3, 2, s6
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s10
	snop 0
	bra_xmskz LBB3_84
LBB3_100:                               ; %if.then1297.7
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r102
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp151:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r103, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r107
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r102, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp153:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r101
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp155:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r102, r5
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r101, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp157:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r100
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp159:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r101, r6
.Ltmp160:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r100, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp161:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r100, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r104
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r105
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 219 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:219
	snop 0
	or_b32 r3, 0x70, r0
	.loc	2 228 27 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	mad_i32 r6, r3, 2, s6
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r3, 16, r4
	add_u16 r2_hi, 0, 0
	or_b32 r3, r3, r2
	shl_b32 r2, 16, r5
	and_b32 r1, 0xffff, r1
	or_b32 r2, r2, r1
	snop 1
	stg_b64 r6, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_85
LBB3_101:                               ; %if.then1297.8
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r94
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp170:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r95, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r99
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r94, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp172:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r93
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp174:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r94, r5
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r93, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp176:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r92
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp178:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r93, r6
.Ltmp179:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r92, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp180:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r92, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r96
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r97
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41000, r1
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 228 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	addc_co_u32 r9, r3, 0
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_86
LBB3_102:                               ; %if.then1297.9
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r86
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp189:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r87, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r91
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r86, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp191:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r85
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp193:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r86, r5
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r85, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp195:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r84
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp197:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r85, r6
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r84, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp199:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r84, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r88
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r89
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41020, r1
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 228 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	addc_co_u32 r9, r3, 0
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_87
LBB3_103:                               ; %if.then1297.10
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r78
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp208:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r79, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r83
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r78, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp210:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r77
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp212:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r78, r5
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r77, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp214:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r76
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp216:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r77, r6
.Ltmp217:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r76, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp218:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r76, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r80
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r81
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41040, r1
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 228 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	addc_co_u32 r9, r3, 0
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_88
LBB3_104:                               ; %if.then1297.11
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r70
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp227:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r71, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r75
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r70, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp229:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r69
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp231:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r70, r5
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r69, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp233:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r68
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp235:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r69, r6
.Ltmp236:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r68, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp237:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r68, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r72
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r73
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41060, r1
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 228 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	addc_co_u32 r9, r3, 0
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_89
LBB3_105:                               ; %if.then1297.12
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r62
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp246:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r63, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r67
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r62, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp248:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r61
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp250:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r62, r5
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r61, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp252:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r60
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp254:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r61, r6
.Ltmp255:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r60, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp256:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r60, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r64
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r65
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x41080, r1
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 228 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	addc_co_u32 r9, r3, 0
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_90
LBB3_106:                               ; %if.then1297.13
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r54
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp265:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r55, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r59
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r54, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp267:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r53
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp269:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r54, r5
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r53, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp271:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r52
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp273:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r53, r6
.Ltmp274:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r52, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp275:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r52, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r56
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r57
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x410a0, r1
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 228 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	addc_co_u32 r9, r3, 0
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_91
LBB3_107:                               ; %if.then1297.14
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r46
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r5
.Ltmp284:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s4
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r47, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r51
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s2
	fmka_f32 r6, r46, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s2
	exp_f32 r6, r6
.Ltmp286:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r45
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r6
.Ltmp288:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s4
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r46, r5
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s2
	fmka_f32 r7, r45, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s2
	exp_f32 r7, r7
.Ltmp290:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r44
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r7
.Ltmp292:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s4
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r45, r6
.Ltmp293:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s2
	fmka_f32 r4, r44, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s2
	exp_f32 r4, r4
.Ltmp294:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r44, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r48
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r49
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r1, s6, r8
	mov_b32 r3, s7
	addc_co_u32 r3, r3, r9
	add_co_u32 r8, 0x410c0, r1
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r1, 16, r4
	add_u16 r2_hi, 0, 0
	.loc	2 228 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	addc_co_u32 r9, r3, 0
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	or_b32 r3, r1, r2
	shl_b32 r1, 16, r6
	and_b32 r2, 0xffff, r5
	or_b32 r2, r1, r2
	snop 1
	stg_b64 r8, 0x0, r2 devc
	sor_b64 xmsk, xmsk, s0
	.loc	2 217 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:217:9
	and_xmsk s0, s8
	snop 0
	bra_xmskz LBB3_92
LBB3_108:                               ; %if.then1297.15
	.loc	2 199 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:199:27
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
	.loc	2 207 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:207:26
	snop 0
	fmak_f32 r3, r3, r5, 0x3f800000
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
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
	.loc	2 198 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:198:27
	mul_f32 r5, 0xbfb8aa3b, r38
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r5
.Ltmp303:
	.loc	2 211 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:211:24
	div_fmas_f32 r5, r7, r6, r8
	div_fixup_f32 r3, r5, r3, s2
	.loc	2 215 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:215:20
	mul_f32 r3, r39, r3
	.loc	2 225 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:225:24
	mul_f32 r3, r3, r43
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r6, r4, 0, s0
	fmka_f32 r6, r38, 0xbfb8aa3b, r6
	csel_b32 r5, r1, r2, s0
	exp_f32 r6, r6
.Ltmp305:
	.loc	2 206 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:206:26
	snop 0
	fmak_f32 r5, r5, r6, 0x3f800000
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
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
	.loc	2 197 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:197:27
	mul_f32 r6, 0xbfb8aa3b, r37
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r6
.Ltmp307:
	.loc	2 210 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:210:24
	div_fmas_f32 r6, r8, r7, r9
	div_fixup_f32 r5, r6, r5, s2
	.loc	2 214 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:214:20
	mul_f32 r5, r38, r5
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r4, 0, s0
	fmka_f32 r7, r37, 0xbfb8aa3b, r7
	csel_b32 r6, r1, r2, s0
	exp_f32 r7, r7
.Ltmp309:
	.loc	2 205 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:205:26
	snop 0
	fmak_f32 r6, r6, r7, 0x3f800000
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
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
	.loc	2 196 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:196:27
	mul_f32 r7, 0xbfb8aa3b, r36
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r7
.Ltmp311:
	.loc	2 209 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:209:24
	div_fmas_f32 r7, r9, r8, r10
	div_fixup_f32 r6, r7, r6, s2
	.loc	2 213 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:213:20
	mul_f32 r6, r37, r6
.Ltmp312:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r4, r4, 0, s0
	fmka_f32 r4, r36, 0xbfb8aa3b, r4
	csel_b32 r1, r1, r2, s0
	exp_f32 r4, r4
.Ltmp313:
	.loc	2 204 26                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:204:26
	snop 0
	fmak_f32 r1, r1, r4, 0x3f800000
	.loc	2 208 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:208:24
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
	.loc	2 212 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:212:20
	mul_f32 r1, r36, r1
	.loc	2 222 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:222:24
	mul_f32 r1, r1, r40
	.loc	2 223 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:223:24
	mul_f32 r2, r6, r41
	.loc	2 224 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:224:24
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
	.loc	2 228 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	snop 0
	mov_b32 r1, 0
	shl_b64 r8, 1, r0
	add_co_u32 r0, s6, r8
	mov_b32 r1, s7
	addc_co_u32 r1, r1, r9
	add_co_u32 r8, 0x410e0, r0
	.loc	2 228 262 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	shl_b32 r0, 16, r3
	add_u16 r2_hi, 0, 0
	.loc	2 228 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:27
	addc_co_u32 r9, r1, 0
	.loc	2 228 262                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:228:262
	or_b32 r3, r0, r2
	shl_b32 r0, 16, r6
	and_b32 r1, 0xffff, r5
	or_b32 r2, r0, r1
	snop 1
	stg_b64 r8, 0x0, r2 devc
	.loc	2 231 1 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:231:1
	snop 2
	endk
.Ltmp319:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 26224
; NumMTRegsForWarps/PEU: 218
; NumSTRegsForWarps/PEU: 54
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_2         ; -- Begin function kernel_kernel_2
	.globl	kernel_kernel_2
	.p2align	8
	.type	kernel_kernel_2,@function
kernel_kernel_2:                        ; @kernel_kernel_2
.Lfunc_begin4:
	.loc	2 233 0                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:233:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x20
	ldu_b256 s48, s0, 0x0
.Ltmp320:
	.loc	2 245 25 prologue_end           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:245:25
	scmp_gt_u32 s5, 7
	.loc	2 245 7 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:245:7
	snop 0
	bra_smskz LBB4_2
; %bb.1:                                ; %if.else
	.loc	2 249 46 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:249:46
	sand_b32 s0, 0x7ffffffe, s5
	.loc	2 249 72 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:249:72
	sand_b32 s1, s4, 1
	.loc	2 249 51                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:249:51
	sor_b32 s16, s0, s1
	.loc	2 250 45 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:250:45
	sshl_b32 s0, 2, s5
	sand_b32 s0, s0, 4
	.loc	2 250 71 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:250:71
	sshr_b32 s1, 1, s4
	.loc	2 250 50                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:250:50
	sadd_co_i32 s18, s0, s1
	.loc	2 245 7 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:245:7
	bra_xmskz LBB4_3
	bra LBB4_4
LBB4_2:
                                        ; implicit-def: $streg_32bit_16
                                        ; implicit-def: $streg_32bit_18
LBB4_3:                                 ; %if.then
	.loc	2 0 7 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:7
	smov_b32 s18, s4
	smov_b32 s16, s5
LBB4_4:                                 ; %if.end
	cmp_gt_u32 s22, s16, 23
	cmp_lt_u32 s20, s16, 24
	smov_b64 s30, 0
	.loc	2 255 18 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:255:18
	snop 1
	sand_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB4_6
; %bb.5:                                ; %if.then26
	.loc	2 0 18 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:18
	smov_b32 s17, 0
	sshl_b64 s0, 2, s16
	arrive slcnt(0)
	sadd_co_u32 s0, s50, s0
	saddc_co_u32 s1, s51, s1
	.loc	2 256 15 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:256:15
	ldu_b32 s30, s0, 0x0
	arrive slcnt(0)
	sashr_i32 s31, 31, s30
LBB4_6:                                 ; %if.end29
	.loc	2 261 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:261:20
	sshl_b64 s0, 2, s30
	arrive slcnt(0)
	sadd_co_u32 s2, s8, s0
	saddc_co_u32 s3, s9, s1
	.loc	2 262 19                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:262:19
	sadd_co_u32 s4, s52, s0
	saddc_co_u32 s5, s53, s1
	.loc	2 263 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:263:22
	sadd_co_u32 s0, s54, s0
	saddc_co_u32 s1, s55, s1
	.loc	2 261 20                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:261:20
	ldu_b32 s3, s2, 0x0
	.loc	2 263 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:263:22
	ldu_b32 s0, s0, 0x0
	smul_i32 s1, 0x104000, s16
	bfe_u32 r2, r0, 6, 4
	smov_b32 s2, 0x41000
	mov_b32 r3, s1
	.loc	2 283 45                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:283:45
	shl_b64 r166, 0, 0
	mad_u24 r23, r2, s2, r3
	and_b32 r2, r0, 15
	bfe_u32 r3, r0, 1, 9
	and_b32 r1, 0x3ff, r0
	mov_b32 r5, 0
	mul_u24 r4, 0x2080, r2
	and_b32 r0, r3, 24
	smov_b32 s19, 0
	sandn_b64 cmsk, xmsk, s20
	shl_b64 r164, 0, r166
	shl_b64 r162, 0, r166
	shl_b64 r160, 0, r166
	shl_b64 r158, 0, r166
	shl_b64 r156, 0, r166
	shl_b64 r154, 0, r166
	shl_b64 r152, 0, r166
	bra_cmsks LBB4_8
; %bb.7:                                ; %for.body56.us.preheader
	.loc	2 0 45 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:45
	or_b32 r0, r0, r4
	add_u32 r4, r0, r23
	.loc	2 279 39 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:279:39
	shl_b64 r6, 1, r4
	add_co_u32 r6, s14, r6
	mov_b32 r0, s15
	addc_co_u32 r7, r0, r7
	add_co_u32 r8, 0x41000, r6
	smov_b64 s6, 0x41000
	.loc	2 279 320 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:279:320
	or_b32 r5, r4, 32
	.loc	2 279 39                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:279:39
	addc_co_u32 r9, r7, 0
	.loc	2 279 17                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:279:17
	ldg_b128 r152, r6, 0x0
	.loc	2 279 39                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:279:39
	mad_u32 r6, r5, 2, s14
	.loc	2 279 320                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:279:320
	mad_u32 r4, r4, 2, s6
	.loc	2 279 39                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:279:39
	add_co_u32 r4, s14, r4
	addc_co_u32 r5, r0, r5
	.loc	2 279 17                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:279:17
	ldg_b128 r156, r8, 0x0
	ldg_b128 r160, r6, 0x0
	ldg_b128 r164, r4, 0x40
LBB4_8:                                 ; %for.cond117.preheader
	.loc	2 0 17                          ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:17
	shl_b32 r4, 3, r1
	and_b32 r13, r4, 32
	and_b32 r6, r4, 16
	add_u32 r5, r13, r1
	add_u32 r6, r6, r1
	and_b32 r0, 0x1fc0, r4
	mul_u24 r7, r1, 9
	smov_b32 s2, 0x1e0
	and_b32 r5, r5, 32
	and_b32 r6, r6, 16
	and_or_b32 r0, r7, 8, r0
	and_or_b32 r146, r3, s2, r2
	or3_b32 r5, r0, r5, r6
	shl_b32 r0, 10, r1
	sshl_b32 s2, 7, s16
	or_b32 r21, r0, r4
	arrive slcnt(0)
	ssub_co_i32 s3, s3, s2
	shr_b32 r4, 5, r1
	sadd_co_i32 s24, s3, s0
	add_shl_u32 r3, r4, r3, 4
	or_b32 r4, r146, 16
	ldu_b32 s1, s4, 0x0
	cmp_gt_u32 s26, 0x80, r1
	cmp_lt_i32 s6, r146, s24
	cmp_lt_i32 s4, r4, s24
	cmp_ge_i32 s34, r146, s24
	cmp_ge_i32 s36, r4, s24
	cmp_lt_u32 s40, 0x7f, r1
	and_b32 r6, r3, 16
	shr_b32 r3, 4, r1
	sshl_b64 s42, 25, s30
	sor_b64 s34, s26, s34
	sand_b64 s38, s40, s6
	sor_b64 s36, s26, s36
	sand_b64 s40, s40, s4
	.loc	2 285 3 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:285:3
	sshl_b64 s44, 22, s18
	add_shl_u32 r7, r3, r1, 3
	sadd_co_u32 s3, s42, s44
	shl_b32 r2, 6, r1
	and_b32 r12, 0x3c0, r2
	saddc_co_u32 s17, s43, s45
	and_or_b32 r20, r7, 8, r6
	sadd_co_u32 s3, s48, s3
	or_b32 r15, 0x400, r12
	or_b32 r16, r20, r13
	or_b32 r17, 0x800, r12
	or_b32 r18, 0xc00, r12
	or_b32 r19, 0x1000, r12
	or_b32 r22, 0x1400, r12
	or_b32 r24, 0x1800, r12
	or_b32 r25, 0x1c00, r12
	xor_b32 r26, r13, 32
	and_b32 r21, 0xfe038, r21
	or_b32 r6, r16, r15
	or_b32 r7, r16, r17
	or_b32 r8, r16, r18
	or_b32 r9, r16, r19
	or_b32 r10, r16, r22
	or_b32 r11, r16, r24
	or_b32 r14, r20, r12
	or_b32 r12, r16, r25
	or3_b32 r16, r20, r18, r26
	or3_b32 r18, r20, r22, r26
	shl_b32 r22, 1, r21
	saddc_co_u32 s17, s49, s17
	shl_add_u32 r3, 1, r5, 0
	or_b32 r5, r14, r13
	or_b32 r13, r14, r26
	or3_b32 r14, r20, r15, r26
	or3_b32 r15, r20, r17, r26
	or3_b32 r17, r20, r19, r26
	or3_b32 r19, r20, r24, r26
	or3_b32 r20, r20, r25, r26
	mov_b32 r25, 0
	add_co_u32 r21, s3, r22
	mov_b32 r22, s17
	and_b32 r24, r1, 15
	addc_co_u32 r22, r22, r25
	mul_hi_u24 r25, 0x4100, r24
	mul_u24 r24, 0x4100, r24
	and_or_b32 r24, r1, 48, r24
	cmp_lt_i32 s8, s18, 8
	cmp_gt_u32 s30, 0x100, r1
	mad_u32 r24, r23, 2, r24
	.loc	2 0 0 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:0
	shl_b64 r90, 0, 0
	.loc	2 285 3                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:285:3
	add_co_u32 r23, s14, r24
	mov_b32 r24, s15
	.loc	2 0 0                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:0
	shl_b64 r92, 0, 0
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
	shl_b64 r148, 0, r90
	shl_b64 r168, 0, r90
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
	shr_b32 r2, 2, r1
	add_u32 r4, 0x4000, r3
	shl_add_u32 r5, 1, r5, 0
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
	.loc	2 285 3                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:285:3
	addc_co_u32 r24, r24, r25
	smov_b64 s14, 0
	shl_b64 r96, 0, r92
	shl_b64 r100, 0, r92
	shl_b64 r104, 0, r92
	shl_b64 r108, 0, r92
	shl_b64 r112, 0, r92
	shl_b64 r116, 0, r92
	shl_b64 r120, 0, r92
	shl_b64 r124, 0, r92
	shl_b64 r128, 0, r92
	shl_b64 r132, 0, r92
	shl_b64 r136, 0, r92
	shl_b64 r140, 0, r92
	shl_b64 r144, 0, r92
	shl_b64 r150, 0, r92
	shl_b64 r170, 0, r92
	shl_b64 r28, 0, r92
	shl_b64 r32, 0, r92
	shl_b64 r36, 0, r92
	shl_b64 r40, 0, r92
	shl_b64 r44, 0, r92
	shl_b64 r48, 0, r92
	shl_b64 r52, 0, r92
	shl_b64 r56, 0, r92
	shl_b64 r60, 0, r92
	shl_b64 r64, 0, r92
	shl_b64 r68, 0, r92
	shl_b64 r72, 0, r92
	shl_b64 r76, 0, r92
	shl_b64 r80, 0, r92
	shl_b64 r84, 0, r92
	shl_b64 r88, 0, r92
                                        ; implicit-def: $mtreg_64bits_174
                                        ; implicit-def: $mtreg_64bits_178
                                        ; implicit-def: $mtreg_64bits_182
                                        ; implicit-def: $mtreg_64bits_186
	bra LBB4_10
	.p2align	5
LBB4_9:                                 ; %for.inc930
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 285 31                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:285:31
	sadd_co_u32 s14, 0x100, s14
	saddc_co_u32 s15, s15, 0
	scmp_eq_u64 0x4000, s14
	.loc	2 285 3                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:285:3
	snop 0
	bra_smsks LBB4_80
LBB4_10:                                ; %for.cond122.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 288 11 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:288:11
	and_xmsk s42, s26
	snop 0
	bra_xmskz LBB4_21
; %bb.11:                               ; %for.cond131.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB4_13
; %bb.12:                               ; %for.body134.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 291 133 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	csel_b32 r189, 0, r187, s6
	csel_b32 r188, 0, r186, s6
	csel_b32 r191, 0, r185, s6
	csel_b32 r190, 0, r184, s6
	csel_b32 r193, 0, r179, s6
	csel_b32 r192, 0, r178, s6
	csel_b32 r195, 0, r177, s6
	csel_b32 r194, 0, r176, s6
	csel_b32 r197, 0, r183, s4
	csel_b32 r196, 0, r182, s4
	csel_b32 r199, 0, r181, s4
	csel_b32 r198, 0, r180, s4
	csel_b32 r201, 0, r175, s4
	csel_b32 r200, 0, r174, s4
	csel_b32 r203, 0, r173, s4
	csel_b32 r202, 0, r172, s4
	bra_xmskz LBB4_14
	bra LBB4_20
	.p2align	5
LBB4_13:                                ;   in Loop: Header=BB4_10 Depth=1
                                        ; implicit-def: $mtreg_64bits_190
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_198
                                        ; implicit-def: $mtreg_64bits_196
                                        ; implicit-def: $mtreg_64bits_194
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_202
                                        ; implicit-def: $mtreg_64bits_200
LBB4_14:                                ; %for.body134.us.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	and_xmsk s44, s6
	snop 0
	bra_xmsks LBB4_40
; %bb.15:                               ; %for.inc235.us
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s6
	snop 0
	bra_xmsks LBB4_41
LBB4_16:                                ; %for.inc235.us.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s4
	snop 0
	bra_xmsks LBB4_42
LBB4_17:                                ; %for.inc235.us.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s4
	snop 0
	bra_xmskz LBB4_19
LBB4_18:                                ; %if.then165.us.3
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 296 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:296:27
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r172, 0x410c0, r25
	addc_co_u32 r173, r147, 0
	snop 1
	ldg_b128 r172, r172, 0x0
LBB4_19:                                ; %Flow998
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 27 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:27
	sor_b64 xmsk, xmsk, s44
	arrive gvmcnt(0)
	shl_b64 r190, 0, r184
	shl_b64 r188, 0, r186
	shl_b64 r198, 0, r180
	shl_b64 r196, 0, r182
	shl_b64 r194, 0, r176
	shl_b64 r192, 0, r178
	shl_b64 r202, 0, r172
	shl_b64 r200, 0, r174
LBB4_20:                                ; %Flow1000
                                        ;   in Loop: Header=BB4_10 Depth=1
	shl_b64 r174, 0, r200
	shl_b64 r172, 0, r202
	shl_b64 r178, 0, r192
	shl_b64 r176, 0, r194
	shl_b64 r182, 0, r196
	shl_b64 r180, 0, r198
	shl_b64 r186, 0, r188
	shl_b64 r184, 0, r190
LBB4_21:                                ; %if.end238
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s42
	shl_b64 r188, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	bra_cmsks LBB4_23
; %bb.22:                               ; %for.body242.us.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 310 21 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:310:21
	add_co_u32 r196, r21, s14
	mov_b32 r25, s15
	addc_co_u32 r197, r22, r25
	add_co_u32 r192, 0x80000, r196
	addc_co_u32 r193, r197, 0
	add_co_u32 r198, 0x100000, r196
	addc_co_u32 r199, r197, 0
	add_co_u32 r200, 0x180000, r196
	addc_co_u32 r201, r197, 0
	ldg_b128 r188, r196, 0x0
	ldg_b128 r192, r192, 0x0
	ldg_b128 r196, r198, 0x0
	ldg_b128 r200, r200, 0x0
LBB4_23:                                ; %for.cond.cleanup241
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 314 362                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:314:362
	add_i32 r25, 0x1000, r3
	arrive gvmcnt(3)
	sts_b128 r3, 0x0, r188
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r192
	add_i32 r25, 0x2000, r3
	arrive gvmcnt(1)
	snop 0
	sts_b128 r25, 0x0, r196
	add_i32 r25, 0x3000, r3
	arrive gvmcnt(0)
	snop 0
	sts_b128 r25, 0x0, r200
	.loc	2 288 11                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:288:11
	and_xmsk s42, s30
	snop 0
	bra_xmskz LBB4_34
; %bb.24:                               ; %for.cond131.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:11
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB4_26
; %bb.25:                               ; %for.body134.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 291 133 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	csel_b32 r189, r187, 0, s34
	csel_b32 r188, r186, 0, s34
	csel_b32 r191, r185, 0, s34
	csel_b32 r190, r184, 0, s34
	csel_b32 r193, r179, 0, s34
	csel_b32 r192, r178, 0, s34
	csel_b32 r195, r177, 0, s34
	csel_b32 r194, r176, 0, s34
	csel_b32 r197, r183, 0, s36
	csel_b32 r196, r182, 0, s36
	csel_b32 r199, r181, 0, s36
	csel_b32 r198, r180, 0, s36
	csel_b32 r201, r175, 0, s36
	csel_b32 r200, r174, 0, s36
	csel_b32 r203, r173, 0, s36
	csel_b32 r202, r172, 0, s36
	bra_xmskz LBB4_27
	bra LBB4_33
	.p2align	5
LBB4_26:                                ;   in Loop: Header=BB4_10 Depth=1
                                        ; implicit-def: $mtreg_64bits_190
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_198
                                        ; implicit-def: $mtreg_64bits_196
                                        ; implicit-def: $mtreg_64bits_194
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_202
                                        ; implicit-def: $mtreg_64bits_200
LBB4_27:                                ; %for.body134.us.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	and_xmsk s44, s38
	snop 0
	bra_xmsks LBB4_43
; %bb.28:                               ; %for.inc235.us.11760
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s38
	snop 0
	bra_xmsks LBB4_44
LBB4_29:                                ; %for.inc235.us.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s40
	snop 0
	bra_xmsks LBB4_45
LBB4_30:                                ; %for.inc235.us.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 133                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:133
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB4_32
LBB4_31:                                ; %if.then165.us.3.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 296 27 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:296:27
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r172, 0x410c0, r25
	addc_co_u32 r173, r147, 0
	snop 1
	ldg_b128 r172, r172, 0x0
LBB4_32:                                ; %Flow995
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 27 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:27
	sor_b64 xmsk, xmsk, s44
	arrive gvmcnt(0)
	shl_b64 r190, 0, r184
	shl_b64 r188, 0, r186
	shl_b64 r198, 0, r180
	shl_b64 r196, 0, r182
	shl_b64 r194, 0, r176
	shl_b64 r192, 0, r178
	shl_b64 r202, 0, r172
	shl_b64 r200, 0, r174
LBB4_33:                                ; %Flow997
                                        ;   in Loop: Header=BB4_10 Depth=1
	shl_b64 r174, 0, r200
	shl_b64 r172, 0, r202
	shl_b64 r178, 0, r192
	shl_b64 r176, 0, r194
	shl_b64 r182, 0, r196
	shl_b64 r180, 0, r198
	shl_b64 r186, 0, r188
	shl_b64 r184, 0, r190
LBB4_34:                                ; %if.end238.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s42
	shl_b64 r188, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	bra_cmsks LBB4_36
; %bb.35:                               ; %for.body242.us.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 310 21 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:310:21
	add_co_u32 r25, r21, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r22, r147
	add_co_u32 r188, 0x200000, r25
	addc_co_u32 r189, r147, 0
	add_co_u32 r192, 0x280000, r25
	addc_co_u32 r193, r147, 0
	add_co_u32 r196, 0x300000, r25
	addc_co_u32 r197, r147, 0
	add_co_u32 r200, 0x380000, r25
	addc_co_u32 r201, r147, 0
	ldg_b128 r188, r188, 0x0
	ldg_b128 r192, r192, 0x0
	ldg_b128 r196, r196, 0x0
	ldg_b128 r200, r200, 0x0
LBB4_36:                                ; %for.cond.cleanup241.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 314 362                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:314:362
	add_i32 r25, 0x1000, r4
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r188
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r192
	add_i32 r25, 0x2000, r4
	arrive gvmcnt(1)
	snop 0
	sts_b128 r25, 0x0, r196
	add_i32 r25, 0x3000, r4
	arrive gvmcnt(0)
	snop 0
	sts_b128 r25, 0x0, r200
.Ltmp321:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0) & slcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp322:
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r188, r5, 0x0
	lds_b128 r192, r6, 0x0
	lds_b128 r196, r7, 0x0
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	add_i32 r25, 0x4000, r5
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r188, r152, r168
	mma_16x16x16f16 r118, r188, r156, r118
	mma_16x16x16f16 r168, r190, r154, r168
	mma_16x16x16f16 r118, r190, r158, r118
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r188, r8, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r192, r152, r148
	mma_16x16x16f16 r114, r192, r156, r114
	mma_16x16x16f16 r148, r194, r154, r148
	mma_16x16x16f16 r114, r194, r158, r114
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r192, r9, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r196, r152, r142
	mma_16x16x16f16 r110, r196, r156, r110
	mma_16x16x16f16 r142, r198, r154, r142
	mma_16x16x16f16 r110, r198, r158, r110
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r196, r10, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r188, r152, r138
	mma_16x16x16f16 r106, r188, r156, r106
	mma_16x16x16f16 r138, r190, r154, r138
	mma_16x16x16f16 r106, r190, r158, r106
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r188, r11, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r152, r134
	mma_16x16x16f16 r102, r192, r156, r102
	mma_16x16x16f16 r134, r194, r154, r134
	mma_16x16x16f16 r102, r194, r158, r102
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r192, r12, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r196, r152, r130
	mma_16x16x16f16 r98, r196, r156, r98
	mma_16x16x16f16 r130, r198, r154, r130
	mma_16x16x16f16 r98, r198, r158, r98
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r6
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r188, r152, r126
	mma_16x16x16f16 r94, r188, r156, r94
	mma_16x16x16f16 r126, r190, r154, r126
	mma_16x16x16f16 r94, r190, r158, r94
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r7
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r192, r152, r122
	mma_16x16x16f16 r90, r192, r156, r90
	mma_16x16x16f16 r122, r194, r154, r122
	mma_16x16x16f16 r90, r194, r158, r90
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r8
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r196, r152, r86
	mma_16x16x16f16 r54, r196, r156, r54
	mma_16x16x16f16 r86, r198, r154, r86
	mma_16x16x16f16 r54, r198, r158, r54
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r9
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r188, r152, r82
	mma_16x16x16f16 r50, r188, r156, r50
	mma_16x16x16f16 r82, r190, r154, r82
	mma_16x16x16f16 r50, r190, r158, r50
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r10
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r192, r152, r78
	mma_16x16x16f16 r46, r192, r156, r46
	mma_16x16x16f16 r78, r194, r154, r78
	mma_16x16x16f16 r46, r194, r158, r46
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r11
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r196, r152, r74
	mma_16x16x16f16 r42, r196, r156, r42
	mma_16x16x16f16 r74, r198, r154, r74
	mma_16x16x16f16 r42, r198, r158, r42
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r12
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r188, r152, r70
	mma_16x16x16f16 r38, r188, r156, r38
	mma_16x16x16f16 r70, r190, r154, r70
	mma_16x16x16f16 r38, r190, r158, r38
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r13
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r192, r152, r66
	mma_16x16x16f16 r34, r192, r156, r34
	mma_16x16x16f16 r66, r194, r154, r66
	mma_16x16x16f16 r34, r194, r158, r34
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r192, r13, 0x0
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r196, r152, r62
	mma_16x16x16f16 r30, r196, r156, r30
	mma_16x16x16f16 r62, r198, r154, r62
	mma_16x16x16f16 r30, r198, r158, r30
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r196, r14, 0x0
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r188, r152, r58
	mma_16x16x16f16 r26, r188, r156, r26
	mma_16x16x16f16 r58, r190, r154, r58
	mma_16x16x16f16 r26, r190, r158, r26
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r188, r15, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r192, r160, r168
	mma_16x16x16f16 r118, r192, r164, r118
	mma_16x16x16f16 r168, r194, r162, r168
	mma_16x16x16f16 r118, r194, r166, r118
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r192, r16, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r196, r160, r148
	mma_16x16x16f16 r114, r196, r164, r114
	mma_16x16x16f16 r148, r198, r162, r148
	mma_16x16x16f16 r114, r198, r166, r114
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r196, r17, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r188, r160, r142
	mma_16x16x16f16 r110, r188, r164, r110
	mma_16x16x16f16 r142, r190, r162, r142
	mma_16x16x16f16 r110, r190, r166, r110
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r188, r18, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r192, r160, r138
	mma_16x16x16f16 r106, r192, r164, r106
	mma_16x16x16f16 r138, r194, r162, r138
	mma_16x16x16f16 r106, r194, r166, r106
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r192, r19, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r196, r160, r134
	mma_16x16x16f16 r102, r196, r164, r102
	mma_16x16x16f16 r134, r198, r162, r134
	mma_16x16x16f16 r102, r198, r166, r102
	.loc	2 320 41                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:320:41
	lds_b128 r196, r20, 0x0
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r188, r160, r130
	mma_16x16x16f16 r98, r188, r164, r98
	mma_16x16x16f16 r130, r190, r162, r130
	mma_16x16x16f16 r98, r190, r166, r98
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r14
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r160, r126
	mma_16x16x16f16 r94, r192, r164, r94
	mma_16x16x16f16 r126, r194, r162, r126
	mma_16x16x16f16 r94, r194, r166, r94
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r15
	.loc	2 326 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:326:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r196, r160, r122
	mma_16x16x16f16 r90, r196, r164, r90
	mma_16x16x16f16 r122, r198, r162, r122
	mma_16x16x16f16 r90, r198, r166, r90
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r16
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r188, r160, r86
	mma_16x16x16f16 r54, r188, r164, r54
	mma_16x16x16f16 r86, r190, r162, r86
	mma_16x16x16f16 r54, r190, r166, r54
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r17
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r192, r160, r82
	mma_16x16x16f16 r50, r192, r164, r50
	mma_16x16x16f16 r82, r194, r162, r82
	mma_16x16x16f16 r50, r194, r166, r50
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r18
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r196, r160, r78
	mma_16x16x16f16 r46, r196, r164, r46
	mma_16x16x16f16 r78, r198, r162, r78
	mma_16x16x16f16 r46, r198, r166, r46
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r19
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r188, r160, r74
	mma_16x16x16f16 r42, r188, r164, r42
	mma_16x16x16f16 r74, r190, r162, r74
	mma_16x16x16f16 r42, r190, r166, r42
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r20
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r192, r160, r70
	mma_16x16x16f16 r38, r192, r164, r38
	mma_16x16x16f16 r70, r194, r162, r70
	mma_16x16x16f16 r38, r194, r166, r38
	.loc	2 334 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:334:43
	lds_b128 r192, r25, 0x0
	.loc	2 340 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:340:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r196, r160, r66
	mma_16x16x16f16 r34, r196, r164, r34
	mma_16x16x16f16 r66, r198, r162, r66
	mma_16x16x16f16 r34, r198, r166, r34
	arrive bsmcnt(1)
	mma_16x16x16f16 r62, r188, r160, r62
	mma_16x16x16f16 r30, r188, r164, r30
	mma_16x16x16f16 r62, r190, r162, r62
	mma_16x16x16f16 r30, r190, r166, r30
	arrive bsmcnt(0)
	mma_16x16x16f16 r58, r192, r160, r58
	mma_16x16x16f16 r26, r192, r164, r26
	mma_16x16x16f16 r58, r194, r162, r58
	mma_16x16x16f16 r26, r194, r166, r26
.Ltmp323:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	mov_b32 r188, 0x3f00
	mov_b32 r189, 0
	cmp_lg_u64 s42, s14, r188
	scmp_eq_u64 0x3f00, s14
.Ltmp324:
	.loc	2 351 11                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:351:11
	snop 0
	bra_smsks LBB4_55
; %bb.37:                               ; %if.then527
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 352 13                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:352:13
	and_xmsk s44, s26
	snop 0
	bra_xmskz LBB4_54
; %bb.38:                               ; %for.cond533.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB4_46
; %bb.39:                               ; %for.body536.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 355 137 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	csel_b32 r189, 0, r155, s6
	csel_b32 r188, 0, r154, s6
	csel_b32 r191, 0, r153, s6
	csel_b32 r190, 0, r152, s6
	csel_b32 r193, 0, r163, s6
	csel_b32 r192, 0, r162, s6
	csel_b32 r195, 0, r161, s6
	csel_b32 r194, 0, r160, s6
	csel_b32 r197, 0, r159, s4
	csel_b32 r196, 0, r158, s4
	csel_b32 r199, 0, r157, s4
	csel_b32 r198, 0, r156, s4
	csel_b32 r201, 0, r167, s4
	csel_b32 r200, 0, r166, s4
	csel_b32 r203, 0, r165, s4
	csel_b32 r202, 0, r164, s4
	bra_xmskz LBB4_47
	bra LBB4_53
LBB4_40:                                ; %if.then165.us
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 296 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:296:27
	add_co_u32 r184, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r185, r24, r25
	snop 1
	ldg_b128 r184, r184, 0x80
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s6
	snop 0
	bra_xmskz LBB4_16
LBB4_41:                                ; %if.then165.us.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 296 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:296:27
	add_co_u32 r176, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r177, r24, r25
	snop 1
	ldg_b128 r176, r176, 0xc0
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s4
	snop 0
	bra_xmskz LBB4_17
LBB4_42:                                ; %if.then165.us.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 296 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:296:27
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r180, 0x41080, r25
	addc_co_u32 r181, r147, 0
	snop 1
	ldg_b128 r180, r180, 0x0
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s4
	snop 0
	bra_xmsks LBB4_18
	bra LBB4_19
LBB4_43:                                ; %if.then165.us.11759
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 296 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:296:27
	add_co_u32 r184, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r185, r24, r25
	snop 1
	ldg_b128 r184, r184, 0x80
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s38
	snop 0
	bra_xmskz LBB4_29
LBB4_44:                                ; %if.then165.us.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 296 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:296:27
	add_co_u32 r176, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r177, r24, r25
	snop 1
	ldg_b128 r176, r176, 0xc0
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s40
	snop 0
	bra_xmskz LBB4_30
LBB4_45:                                ; %if.then165.us.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 296 27                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:296:27
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r180, 0x41080, r25
	addc_co_u32 r181, r147, 0
	snop 1
	ldg_b128 r180, r180, 0x0
	sor_b64 xmsk, xmsk, s44
	.loc	2 291 133                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:291:133
	and_xmsk s44, s40
	snop 0
	bra_xmsks LBB4_31
	bra LBB4_32
LBB4_46:                                ;   in Loop: Header=BB4_10 Depth=1
                                        ; implicit-def: $mtreg_64bits_190
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_198
                                        ; implicit-def: $mtreg_64bits_196
                                        ; implicit-def: $mtreg_64bits_194
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_202
                                        ; implicit-def: $mtreg_64bits_200
LBB4_47:                                ; %for.body536.us.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s6
	snop 0
	bra_xmsks LBB4_74
; %bb.48:                               ; %for.inc638.us
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s6
	snop 0
	bra_xmsks LBB4_75
LBB4_49:                                ; %for.inc638.us.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s4
	snop 0
	bra_xmsks LBB4_76
LBB4_50:                                ; %for.inc638.us.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s4
	snop 0
	bra_xmskz LBB4_52
LBB4_51:                                ; %if.then568.us.3
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 360 29 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:360:29
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r164, 0x41140, r25
	addc_co_u32 r165, r147, 0
	snop 1
	ldg_b128 r164, r164, 0x0
LBB4_52:                                ; %Flow991
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 29 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:29
	sor_b64 xmsk, xmsk, s46
	arrive gvmcnt(0)
	shl_b64 r190, 0, r152
	shl_b64 r188, 0, r154
	shl_b64 r198, 0, r156
	shl_b64 r196, 0, r158
	shl_b64 r194, 0, r160
	shl_b64 r192, 0, r162
	shl_b64 r202, 0, r164
	shl_b64 r200, 0, r166
LBB4_53:                                ; %Flow993
                                        ;   in Loop: Header=BB4_10 Depth=1
	shl_b64 r152, 0, r190
	shl_b64 r154, 0, r188
	shl_b64 r156, 0, r198
	shl_b64 r158, 0, r196
	shl_b64 r160, 0, r194
	shl_b64 r162, 0, r192
	shl_b64 r164, 0, r202
	shl_b64 r166, 0, r200
LBB4_54:                                ; %Flow994
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB4_55:                                ; %if.end642
                                        ;   in Loop: Header=BB4_10 Depth=1
	shl_b64 r188, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	bra_cmsks LBB4_57
; %bb.56:                               ; %for.body646.us.preheader
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 375 21 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:375:21
	add_co_u32 r196, r21, s14
	mov_b32 r25, s15
	addc_co_u32 r197, r22, r25
	add_co_u32 r192, 0x80080, r196
	addc_co_u32 r193, r197, 0
	add_co_u32 r198, 0x100080, r196
	addc_co_u32 r199, r197, 0
	add_co_u32 r200, 0x180080, r196
	addc_co_u32 r201, r197, 0
	ldg_b128 r188, r196, 0x80
	ldg_b128 r192, r192, 0x0
	ldg_b128 r196, r198, 0x0
	ldg_b128 r200, r200, 0x0
LBB4_57:                                ; %for.cond.cleanup645
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 379 364                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:379:364
	add_i32 r25, 0x1000, r3
	.loc	2 351 11                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:351:11
	sandn_b64 cmsk, xmsk, s42
	.loc	2 379 364                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:379:364
	arrive gvmcnt(3)
	sts_b128 r3, 0x0, r188
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r192
	add_i32 r25, 0x2000, r3
	arrive gvmcnt(1)
	snop 0
	sts_b128 r25, 0x0, r196
	add_i32 r25, 0x3000, r3
	arrive gvmcnt(0)
	snop 0
	sts_b128 r25, 0x0, r200
	.loc	2 351 11                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:351:11
	bra_cmsks LBB4_70
; %bb.58:                               ; %if.then527.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 352 13                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:352:13
	and_xmsk s44, s30
	snop 0
	bra_xmskz LBB4_69
; %bb.59:                               ; %for.cond533.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 13 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:13
	sandn_b64 cmsk, xmsk, s22
	snop 0
	bra_cmsks LBB4_61
; %bb.60:                               ; %for.body536.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 355 137 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	csel_b32 r189, r155, 0, s34
	csel_b32 r188, r154, 0, s34
	csel_b32 r191, r153, 0, s34
	csel_b32 r190, r152, 0, s34
	csel_b32 r193, r163, 0, s34
	csel_b32 r192, r162, 0, s34
	csel_b32 r195, r161, 0, s34
	csel_b32 r194, r160, 0, s34
	csel_b32 r197, r159, 0, s36
	csel_b32 r196, r158, 0, s36
	csel_b32 r199, r157, 0, s36
	csel_b32 r198, r156, 0, s36
	csel_b32 r201, r167, 0, s36
	csel_b32 r200, r166, 0, s36
	csel_b32 r203, r165, 0, s36
	csel_b32 r202, r164, 0, s36
	bra_xmskz LBB4_62
	bra LBB4_68
LBB4_61:                                ;   in Loop: Header=BB4_10 Depth=1
                                        ; implicit-def: $mtreg_64bits_190
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_198
                                        ; implicit-def: $mtreg_64bits_196
                                        ; implicit-def: $mtreg_64bits_194
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_202
                                        ; implicit-def: $mtreg_64bits_200
LBB4_62:                                ; %for.body536.us.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	and_xmsk s46, s38
	snop 0
	bra_xmsks LBB4_77
; %bb.63:                               ; %for.inc638.us.11872
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s38
	snop 0
	bra_xmsks LBB4_78
LBB4_64:                                ; %for.inc638.us.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s40
	snop 0
	bra_xmsks LBB4_79
LBB4_65:                                ; %for.inc638.us.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 137                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:137
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s40
	snop 0
	bra_xmskz LBB4_67
LBB4_66:                                ; %if.then568.us.3.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 360 29 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:360:29
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r164, 0x41140, r25
	addc_co_u32 r165, r147, 0
	snop 1
	ldg_b128 r164, r164, 0x0
LBB4_67:                                ; %Flow987
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 0 29 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:29
	sor_b64 xmsk, xmsk, s46
	arrive gvmcnt(0)
	shl_b64 r190, 0, r152
	shl_b64 r188, 0, r154
	shl_b64 r198, 0, r156
	shl_b64 r196, 0, r158
	shl_b64 r194, 0, r160
	shl_b64 r192, 0, r162
	shl_b64 r202, 0, r164
	shl_b64 r200, 0, r166
LBB4_68:                                ; %Flow989
                                        ;   in Loop: Header=BB4_10 Depth=1
	shl_b64 r152, 0, r190
	shl_b64 r154, 0, r188
	shl_b64 r156, 0, r198
	shl_b64 r158, 0, r196
	shl_b64 r160, 0, r194
	shl_b64 r162, 0, r192
	shl_b64 r164, 0, r202
	shl_b64 r166, 0, r200
LBB4_69:                                ; %Flow990
                                        ;   in Loop: Header=BB4_10 Depth=1
	sor_b64 xmsk, xmsk, s44
LBB4_70:                                ; %if.end642.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	shl_b64 r188, 0, 0
	sandn_b64 cmsk, xmsk, s8
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	shl_b64 r194, 0, 0
	shl_b64 r196, 0, 0
	shl_b64 r198, 0, 0
	shl_b64 r200, 0, 0
	shl_b64 r202, 0, 0
	bra_cmsks LBB4_72
; %bb.71:                               ; %for.body646.us.preheader.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 375 21 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:375:21
	add_co_u32 r25, r21, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r22, r147
	add_co_u32 r188, 0x200080, r25
	addc_co_u32 r189, r147, 0
	add_co_u32 r192, 0x280080, r25
	addc_co_u32 r193, r147, 0
	add_co_u32 r196, 0x300080, r25
	addc_co_u32 r197, r147, 0
	add_co_u32 r200, 0x380080, r25
	addc_co_u32 r201, r147, 0
	ldg_b128 r188, r188, 0x0
	ldg_b128 r192, r192, 0x0
	ldg_b128 r196, r196, 0x0
	ldg_b128 r200, r200, 0x0
LBB4_72:                                ; %for.cond.cleanup645.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 379 364                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:379:364
	add_i32 r25, 0x1000, r4
	arrive gvmcnt(3)
	sts_b128 r4, 0x0, r188
	arrive gvmcnt(2)
	sts_b128 r25, 0x0, r192
	add_i32 r25, 0x2000, r4
	arrive gvmcnt(1)
	snop 0
	sts_b128 r25, 0x0, r196
	add_i32 r25, 0x3000, r4
	arrive gvmcnt(0)
	snop 0
	sts_b128 r25, 0x0, r200
.Ltmp325:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp326:
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r188, r5, 0x0
	lds_b128 r192, r6, 0x0
	lds_b128 r196, r7, 0x0
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	add_i32 r25, 0x4000, r5
	.loc	2 413 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:413:9
	sandn_b64 cmsk, xmsk, s42
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r188, r184, r168
	mma_16x16x16f16 r118, r188, r180, r118
	mma_16x16x16f16 r168, r190, r186, r168
	mma_16x16x16f16 r118, r190, r182, r118
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r188, r8, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r192, r184, r148
	mma_16x16x16f16 r114, r192, r180, r114
	mma_16x16x16f16 r148, r194, r186, r148
	mma_16x16x16f16 r114, r194, r182, r114
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r192, r9, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r196, r184, r142
	mma_16x16x16f16 r110, r196, r180, r110
	mma_16x16x16f16 r142, r198, r186, r142
	mma_16x16x16f16 r110, r198, r182, r110
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r196, r10, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r188, r184, r138
	mma_16x16x16f16 r106, r188, r180, r106
	mma_16x16x16f16 r138, r190, r186, r138
	mma_16x16x16f16 r106, r190, r182, r106
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r188, r11, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r192, r184, r134
	mma_16x16x16f16 r102, r192, r180, r102
	mma_16x16x16f16 r134, r194, r186, r134
	mma_16x16x16f16 r102, r194, r182, r102
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r192, r12, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r196, r184, r130
	mma_16x16x16f16 r98, r196, r180, r98
	mma_16x16x16f16 r130, r198, r186, r130
	mma_16x16x16f16 r98, r198, r182, r98
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r6
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r188, r184, r126
	mma_16x16x16f16 r94, r188, r180, r94
	mma_16x16x16f16 r126, r190, r186, r126
	mma_16x16x16f16 r94, r190, r182, r94
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r7
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r192, r184, r122
	mma_16x16x16f16 r90, r192, r180, r90
	mma_16x16x16f16 r122, r194, r186, r122
	mma_16x16x16f16 r90, r194, r182, r90
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r8
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r196, r184, r86
	mma_16x16x16f16 r54, r196, r180, r54
	mma_16x16x16f16 r86, r198, r186, r86
	mma_16x16x16f16 r54, r198, r182, r54
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r9
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r188, r184, r82
	mma_16x16x16f16 r50, r188, r180, r50
	mma_16x16x16f16 r82, r190, r186, r82
	mma_16x16x16f16 r50, r190, r182, r50
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r10
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r192, r184, r78
	mma_16x16x16f16 r46, r192, r180, r46
	mma_16x16x16f16 r78, r194, r186, r78
	mma_16x16x16f16 r46, r194, r182, r46
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r11
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r196, r184, r74
	mma_16x16x16f16 r42, r196, r180, r42
	mma_16x16x16f16 r74, r198, r186, r74
	mma_16x16x16f16 r42, r198, r182, r42
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r12
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r188, r184, r70
	mma_16x16x16f16 r38, r188, r180, r38
	mma_16x16x16f16 r70, r190, r186, r70
	mma_16x16x16f16 r38, r190, r182, r38
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r13
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r192, r184, r66
	mma_16x16x16f16 r34, r192, r180, r34
	mma_16x16x16f16 r66, r194, r186, r66
	mma_16x16x16f16 r34, r194, r182, r34
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r192, r13, 0x0
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r62, r196, r184, r62
	mma_16x16x16f16 r30, r196, r180, r30
	mma_16x16x16f16 r62, r198, r186, r62
	mma_16x16x16f16 r30, r198, r182, r30
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r196, r14, 0x0
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r58, r188, r184, r58
	mma_16x16x16f16 r26, r188, r180, r26
	mma_16x16x16f16 r58, r190, r186, r58
	mma_16x16x16f16 r26, r190, r182, r26
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r188, r15, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r192, r176, r168
	mma_16x16x16f16 r118, r192, r172, r118
	mma_16x16x16f16 r168, r194, r178, r168
	mma_16x16x16f16 r118, r194, r174, r118
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r192, r16, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r196, r176, r148
	mma_16x16x16f16 r114, r196, r172, r114
	mma_16x16x16f16 r148, r198, r178, r148
	mma_16x16x16f16 r114, r198, r174, r114
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r196, r17, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r188, r176, r142
	mma_16x16x16f16 r110, r188, r172, r110
	mma_16x16x16f16 r142, r190, r178, r142
	mma_16x16x16f16 r110, r190, r174, r110
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r188, r18, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r192, r176, r138
	mma_16x16x16f16 r106, r192, r172, r106
	mma_16x16x16f16 r138, r194, r178, r138
	mma_16x16x16f16 r106, r194, r174, r106
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r192, r19, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r196, r176, r134
	mma_16x16x16f16 r102, r196, r172, r102
	mma_16x16x16f16 r134, r198, r178, r134
	mma_16x16x16f16 r102, r198, r174, r102
	.loc	2 385 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:385:43
	lds_b128 r196, r20, 0x0
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r188, r176, r130
	mma_16x16x16f16 r98, r188, r172, r98
	mma_16x16x16f16 r130, r190, r178, r130
	mma_16x16x16f16 r98, r190, r174, r98
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r14
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r192, r176, r126
	mma_16x16x16f16 r94, r192, r172, r94
	mma_16x16x16f16 r126, r194, r178, r126
	mma_16x16x16f16 r94, r194, r174, r94
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r15
	.loc	2 391 58                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:391:58
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r196, r176, r122
	mma_16x16x16f16 r90, r196, r172, r90
	mma_16x16x16f16 r122, r198, r178, r122
	mma_16x16x16f16 r90, r198, r174, r90
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r16
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r188, r176, r86
	mma_16x16x16f16 r54, r188, r172, r54
	mma_16x16x16f16 r86, r190, r178, r86
	mma_16x16x16f16 r54, r190, r174, r54
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r17
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r192, r176, r82
	mma_16x16x16f16 r50, r192, r172, r50
	mma_16x16x16f16 r82, r194, r178, r82
	mma_16x16x16f16 r50, r194, r174, r50
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r192, r25, 0x0
	add_i32 r25, 0x4000, r18
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r196, r176, r78
	mma_16x16x16f16 r46, r196, r172, r46
	mma_16x16x16f16 r78, r198, r178, r78
	mma_16x16x16f16 r46, r198, r174, r46
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r196, r25, 0x0
	add_i32 r25, 0x4000, r19
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r188, r176, r74
	mma_16x16x16f16 r42, r188, r172, r42
	mma_16x16x16f16 r74, r190, r178, r74
	mma_16x16x16f16 r42, r190, r174, r42
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r188, r25, 0x0
	add_i32 r25, 0x4000, r20
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r192, r176, r70
	mma_16x16x16f16 r38, r192, r172, r38
	mma_16x16x16f16 r70, r194, r178, r70
	mma_16x16x16f16 r38, r194, r174, r38
	.loc	2 399 43                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:399:43
	lds_b128 r192, r25, 0x0
	.loc	2 405 59                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:405:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r196, r176, r66
	mma_16x16x16f16 r34, r196, r172, r34
	mma_16x16x16f16 r66, r198, r178, r66
	mma_16x16x16f16 r34, r198, r174, r34
	arrive bsmcnt(1)
	mma_16x16x16f16 r62, r188, r176, r62
	mma_16x16x16f16 r30, r188, r172, r30
	mma_16x16x16f16 r62, r190, r178, r62
	mma_16x16x16f16 r30, r190, r174, r30
	arrive bsmcnt(0)
	mma_16x16x16f16 r58, r192, r176, r58
	mma_16x16x16f16 r26, r192, r172, r26
	mma_16x16x16f16 r58, r194, r178, r58
	mma_16x16x16f16 r26, r194, r174, r26
	.loc	2 413 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:413:9
	bra_cmsks LBB4_9
; %bb.73:                               ; %if.then928
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
LBB4_74:                                ; %if.then568.us
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 360 29                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:360:29
	add_co_u32 r152, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r153, r24, r25
	snop 1
	ldg_b128 r152, r152, 0x100
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s6
	snop 0
	bra_xmskz LBB4_49
LBB4_75:                                ; %if.then568.us.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 360 29                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:360:29
	add_co_u32 r160, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r161, r24, r25
	snop 1
	ldg_b128 r160, r160, 0x140
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s4
	snop 0
	bra_xmskz LBB4_50
LBB4_76:                                ; %if.then568.us.2
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 360 29                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:360:29
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r156, 0x41100, r25
	addc_co_u32 r157, r147, 0
	snop 1
	ldg_b128 r156, r156, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s4
	snop 0
	bra_xmsks LBB4_51
	bra LBB4_52
LBB4_77:                                ; %if.then568.us.11871
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 360 29                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:360:29
	add_co_u32 r152, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r153, r24, r25
	snop 1
	ldg_b128 r152, r152, 0x100
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s38
	snop 0
	bra_xmskz LBB4_64
LBB4_78:                                ; %if.then568.us.1.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 360 29                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:360:29
	add_co_u32 r160, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r161, r24, r25
	snop 1
	ldg_b128 r160, r160, 0x140
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s40
	snop 0
	bra_xmskz LBB4_65
LBB4_79:                                ; %if.then568.us.2.1
                                        ;   in Loop: Header=BB4_10 Depth=1
	.loc	2 360 29                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:360:29
	add_co_u32 r25, r23, s14
	mov_b32 r147, s15
	addc_co_u32 r147, r24, r147
	add_co_u32 r156, 0x41100, r25
	addc_co_u32 r157, r147, 0
	snop 1
	ldg_b128 r156, r156, 0x0
	sor_b64 xmsk, xmsk, s46
	.loc	2 355 137                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:355:137
	and_xmsk s46, s40
	snop 0
	bra_xmsks LBB4_66
	bra LBB4_67
LBB4_80:                                ; %for.cond933.preheader
	.loc	2 0 137 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:137
	sadd_co_i32 s2, s1, s2
	add_u32 r5, s2, r146
	sashr_i32 s2, 31, s1
	mov_b32 r8, s1
	mov_b32 r9, s2
	mov_b32 r6, 0x80
	mad_u32 r6, s16, r6, r8
	add_co_u32 r6, r6, r146
	sashr_i32 s1, 31, s0
	mov_b32 r3, s0
	addc_co_u32 r7, r7, 0
	mov_b32 r4, s1
	sub_co_u32 r6, r6, r3
	subb_co_u32 r7, r7, r4
	mov_b32 r147, 0
	.loc	2 419 92 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:419:92
	sashr_i32 s25, 31, s24
	mov_b32 r4, 0
	.loc	2 419 9 is_stmt 0               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:419:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_84
; %bb.81:                               ; %if.then951
	.loc	2 0 9                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sub_u32 r3, r5, s0
	.loc	2 421 15 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:421:15
	cmp_ge_i32 s14, r5, s0
	cmp_gt_i32 s22, 0x8e0, r3
	mov_b32 r4, 0
	.loc	2 421 148 is_stmt 0             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:421:148
	snop 2
	sand_b64 s22, s14, s22
	and_xmsk s14, s22
	snop 0
	bra_xmskz LBB4_83
; %bb.82:                               ; %if.then979
	.loc	2 0 148                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:148
	shl_b64 r8, 2, r6
	add_co_u32 r8, s12, r8
	mov_b32 r3, s13
	addc_co_u32 r9, r3, r9
	.loc	2 422 21 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:422:21
	snop 1
	ldg_b32 r4, r8, 0x0
LBB4_83:                                ; %Flow986
	.loc	2 0 21 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s14
LBB4_84:                                ; %for.inc1004
	sor_b64 xmsk, xmsk, s2
	.loc	2 419 63 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:419:63
	or_b32 r146, r146, 16
	.loc	2 419 92 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:419:92
	cmp_lt_i64 s14, r146, s24
	.loc	2 0 0                           ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:0
	mov_b32 r3, 0
	.loc	2 419 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:419:9
	snop 2
	and_xmsk s2, s14
	snop 0
	bra_xmskz LBB4_88
; %bb.85:                               ; %if.then951.1
	.loc	2 421 102 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:421:102
	add_u32 r3, r5, 16
	.loc	2 421 15 is_stmt 0              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:421:15
	cmp_ge_i32 s14, r3, s0
	sub_u32 r3, r3, s0
	cmp_gt_i32 s0, 0x8e0, r3
	mov_b32 r3, 0
	.loc	2 421 148                       ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:421:148
	snop 2
	sand_b64 s14, s14, s0
	and_xmsk s0, s14
	snop 0
	bra_xmskz LBB4_87
; %bb.86:                               ; %if.then979.1
	.loc	2 0 148                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:148
	shl_b64 r6, 2, r6
	add_co_u32 r6, s12, r6
	mov_b32 r3, s13
	addc_co_u32 r7, r3, r7
	.loc	2 422 21 is_stmt 1              ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:422:21
	snop 1
	ldg_b32 r3, r6, 0x40
LBB4_87:                                ; %Flow
	.loc	2 0 21 is_stmt 0                ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s0
LBB4_88:                                ; %for.inc1004.1
	sor_b64 xmsk, xmsk, s2
	shl_b32 r1, 11, r1
	sshl_b32 s2, 18, s16
	and_b32 r0, 0xf0000, r0
	and_b32 r1, 0x7800, r1
	sshl_b32 s3, 8, s18
	and_b32 r2, r2, 12
	or3_b32 r0, r1, r0, r2
	sadd_co_i32 s2, s2, s3
	sand_b64 s0, s8, s20
	add_u32 r0, s2, r0
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_153
; %bb.89:                               ; %if.end1081
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_154
LBB4_90:                                ; %for.inc1120
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_155
LBB4_91:                                ; %if.end1081.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_156
LBB4_92:                                ; %for.inc1120.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_157
LBB4_93:                                ; %if.end1081.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_158
LBB4_94:                                ; %for.inc1120.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_159
LBB4_95:                                ; %if.end1081.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_160
LBB4_96:                                ; %for.inc1120.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_161
LBB4_97:                                ; %if.end1081.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_162
LBB4_98:                                ; %for.inc1120.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_163
LBB4_99:                                ; %if.end1081.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_164
LBB4_100:                               ; %for.inc1120.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_165
LBB4_101:                               ; %if.end1081.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_166
LBB4_102:                               ; %for.inc1120.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_167
LBB4_103:                               ; %if.end1081.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_168
LBB4_104:                               ; %for.inc1120.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_169
LBB4_105:                               ; %if.end1081.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_170
LBB4_106:                               ; %for.inc1120.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_171
LBB4_107:                               ; %if.end1081.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_172
LBB4_108:                               ; %for.inc1120.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_173
LBB4_109:                               ; %if.end1081.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_174
LBB4_110:                               ; %for.inc1120.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_175
LBB4_111:                               ; %if.end1081.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_176
LBB4_112:                               ; %for.inc1120.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_177
LBB4_113:                               ; %if.end1081.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_178
LBB4_114:                               ; %for.inc1120.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_179
LBB4_115:                               ; %if.end1081.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_180
LBB4_116:                               ; %for.inc1120.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_181
LBB4_117:                               ; %if.end1081.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_182
LBB4_118:                               ; %for.inc1120.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 431 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_183
LBB4_119:                               ; %if.end1081.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_184
LBB4_120:                               ; %for.inc1120.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_185
LBB4_121:                               ; %if.end1201
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_186
LBB4_122:                               ; %for.inc1241
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_187
LBB4_123:                               ; %if.end1201.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_188
LBB4_124:                               ; %for.inc1241.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_189
LBB4_125:                               ; %if.end1201.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_190
LBB4_126:                               ; %for.inc1241.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_191
LBB4_127:                               ; %if.end1201.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_192
LBB4_128:                               ; %for.inc1241.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_193
LBB4_129:                               ; %if.end1201.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_194
LBB4_130:                               ; %for.inc1241.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_195
LBB4_131:                               ; %if.end1201.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_196
LBB4_132:                               ; %for.inc1241.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_197
LBB4_133:                               ; %if.end1201.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_198
LBB4_134:                               ; %for.inc1241.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r6, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmsks LBB4_199
LBB4_135:                               ; %if.end1201.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_200
LBB4_136:                               ; %for.inc1241.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r4, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_201
LBB4_137:                               ; %if.end1201.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_202
LBB4_138:                               ; %for.inc1241.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_203
LBB4_139:                               ; %if.end1201.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_204
LBB4_140:                               ; %for.inc1241.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_205
LBB4_141:                               ; %if.end1201.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_206
LBB4_142:                               ; %for.inc1241.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_207
LBB4_143:                               ; %if.end1201.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_208
LBB4_144:                               ; %for.inc1241.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_209
LBB4_145:                               ; %if.end1201.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_210
LBB4_146:                               ; %for.inc1241.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_211
LBB4_147:                               ; %if.end1201.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_212
LBB4_148:                               ; %for.inc1241.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_213
LBB4_149:                               ; %if.end1201.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_214
LBB4_150:                               ; %for.inc1241.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	shl_b64 r4, 0, 0
	.loc	2 459 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmsks LBB4_215
LBB4_151:                               ; %if.end1201.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmskz LBB4_216
LBB4_152:                               ; %for.inc1241.15
	.loc	2 485 1                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:485:1
	snop 1
	endk
LBB4_153:                               ; %if.then1024
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r168, r4
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r169, r4
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r170, r4
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r171, r4
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp330:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp331:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp333:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_90
LBB4_154:                               ; %if.then1089
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	mad_i32 r8, r0, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_91
LBB4_155:                               ; %if.then1024.1
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r148, r4
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r149, r4
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r150, r4
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r151, r4
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp335:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp336:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp338:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_92
LBB4_156:                               ; %if.then1089.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 16
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_93
LBB4_157:                               ; %if.then1024.2
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r142, r4
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r143, r4
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r144, r4
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r145, r4
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp340:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp341:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp342:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp343:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_94
LBB4_158:                               ; %if.then1089.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 32
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_95
LBB4_159:                               ; %if.then1024.3
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r138, r4
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r139, r4
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r140, r4
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r141, r4
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp345:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp346:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp347:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp348:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_96
LBB4_160:                               ; %if.then1089.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 48
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_97
LBB4_161:                               ; %if.then1024.4
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r134, r4
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r135, r4
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r136, r4
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r137, r4
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp350:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp351:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp353:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_98
LBB4_162:                               ; %if.then1089.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 64
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_99
LBB4_163:                               ; %if.then1024.5
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r130, r4
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r131, r4
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r132, r4
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r133, r4
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp355:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp356:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp357:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp358:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_100
LBB4_164:                               ; %if.then1089.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x50, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_101
LBB4_165:                               ; %if.then1024.6
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r126, r4
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r127, r4
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r128, r4
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r129, r4
.Ltmp359:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp360:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp363:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_102
LBB4_166:                               ; %if.then1089.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x60, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_103
LBB4_167:                               ; %if.then1024.7
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r122, r4
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r123, r4
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r124, r4
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r125, r4
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp365:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp368:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_104
LBB4_168:                               ; %if.then1089.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x70, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_105
LBB4_169:                               ; %if.then1024.8
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r118, r3
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r119, r3
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r120, r3
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r121, r3
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp370:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp373:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_106
LBB4_170:                               ; %if.then1089.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8000, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_107
LBB4_171:                               ; %if.then1024.9
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r114, r3
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r115, r3
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r116, r3
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r117, r3
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp375:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp377:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp378:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_108
LBB4_172:                               ; %if.then1089.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8010, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_109
LBB4_173:                               ; %if.then1024.10
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r110, r3
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r111, r3
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r112, r3
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r113, r3
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp380:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp382:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp383:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_110
LBB4_174:                               ; %if.then1089.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8020, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_111
LBB4_175:                               ; %if.then1024.11
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r106, r3
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r107, r3
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r108, r3
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r109, r3
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp385:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp388:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_112
LBB4_176:                               ; %if.then1089.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8030, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_113
LBB4_177:                               ; %if.then1024.12
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r102, r3
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r103, r3
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r104, r3
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r105, r3
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp390:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp393:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_114
LBB4_178:                               ; %if.then1089.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8040, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_115
LBB4_179:                               ; %if.then1024.13
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r98, r3
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r99, r3
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r100, r3
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r101, r3
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp395:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp396:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp398:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_116
LBB4_180:                               ; %if.then1089.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8050, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_117
LBB4_181:                               ; %if.then1024.14
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r94, r3
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r95, r3
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r96, r3
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r97, r3
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp400:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp403:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_118
LBB4_182:                               ; %if.then1089.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8060, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 431 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:431:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_119
LBB4_183:                               ; %if.then1024.15
	.loc	2 436 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:436:22
	arrive gvmcnt(0)
	mul_f32 r1, r90, r3
	.loc	2 437 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:437:22
	mul_f32 r2, r91, r3
	.loc	2 438 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:438:22
	mul_f32 r5, r92, r3
	.loc	2 439 22                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:439:22
	mul_f32 r8, r93, r3
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp405:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp408:
	.loc	2 447 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:447:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_120
LBB4_184:                               ; %if.then1089.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8070, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 451 232 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:451:232
	snop 1
	stg_b64 r8, 0x0, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_121
LBB4_185:                               ; %if.then1140
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	arrive gvmcnt(0)
	mul_f32 r1, r86, r4
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r87, r4
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r88, r4
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r8, r89, r4
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp410:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp413:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_122
LBB4_186:                               ; %if.then1209
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	mad_i32 r8, r0, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_123
LBB4_187:                               ; %if.then1140.1
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	arrive gvmcnt(0)
	mul_f32 r1, r82, r4
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r83, r4
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r84, r4
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r8, r85, r4
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp415:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp418:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_124
LBB4_188:                               ; %if.then1209.1
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 16
	mad_i32 r8, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_125
LBB4_189:                               ; %if.then1140.2
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	arrive gvmcnt(0)
	mul_f32 r1, r78, r4
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r79, r4
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r80, r4
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r8, r81, r4
.Ltmp419:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp420:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp423:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_126
LBB4_190:                               ; %if.then1209.2
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 32
	mad_i32 r8, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_127
LBB4_191:                               ; %if.then1140.3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	arrive gvmcnt(0)
	mul_f32 r1, r74, r4
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r75, r4
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r76, r4
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r8, r77, r4
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp425:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp428:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_128
LBB4_192:                               ; %if.then1209.3
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 48
	mad_i32 r8, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_129
LBB4_193:                               ; %if.then1140.4
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	arrive gvmcnt(0)
	mul_f32 r1, r70, r4
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r71, r4
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r72, r4
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r8, r73, r4
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp430:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp433:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_130
LBB4_194:                               ; %if.then1209.4
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, r0, 64
	mad_i32 r8, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_131
LBB4_195:                               ; %if.then1140.5
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	arrive gvmcnt(0)
	mul_f32 r1, r66, r4
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r67, r4
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r68, r4
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r8, r69, r4
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp435:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp438:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_132
LBB4_196:                               ; %if.then1209.5
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x50, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_133
LBB4_197:                               ; %if.then1140.6
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	arrive gvmcnt(0)
	mul_f32 r1, r62, r4
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r63, r4
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r64, r4
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r8, r65, r4
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp440:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s8, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s8
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp443:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_134
LBB4_198:                               ; %if.then1209.6
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x60, r0
	mad_i32 r8, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r8, 0x100, r6 devc
	shl_b64 r6, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB4_135
LBB4_199:                               ; %if.then1140.7
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	arrive gvmcnt(0)
	mul_f32 r1, r58, r4
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r59, r4
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r60, r4
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r4, r61, r4
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp445:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp447:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_hi, r4
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp448:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_136
LBB4_200:                               ; %if.then1209.7
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	or_b32 r1, 0x70, r0
	arrive gvmcnt(0)
	mad_i32 r4, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r4, 0x100, r6 devc
	shl_b64 r4, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_137
LBB4_201:                               ; %if.then1140.8
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r56, r3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	mul_f32 r1, r54, r3
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r55, r3
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r6, r57, r3
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp450:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp452:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp453:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_138
LBB4_202:                               ; %if.then1209.8
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8000, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_139
LBB4_203:                               ; %if.then1140.9
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r52, r3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	mul_f32 r1, r50, r3
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r51, r3
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r6, r53, r3
.Ltmp454:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp455:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp458:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_140
LBB4_204:                               ; %if.then1209.9
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8010, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_141
LBB4_205:                               ; %if.then1140.10
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r48, r3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	mul_f32 r1, r46, r3
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r47, r3
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r6, r49, r3
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp460:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp461:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp463:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_142
LBB4_206:                               ; %if.then1209.10
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8020, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_143
LBB4_207:                               ; %if.then1140.11
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r44, r3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	mul_f32 r1, r42, r3
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r43, r3
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r6, r45, r3
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp465:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp466:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp467:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp468:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_144
LBB4_208:                               ; %if.then1209.11
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8030, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_145
LBB4_209:                               ; %if.then1140.12
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r40, r3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	mul_f32 r1, r38, r3
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r39, r3
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r6, r41, r3
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp470:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp473:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_146
LBB4_210:                               ; %if.then1209.12
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8040, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_147
LBB4_211:                               ; %if.then1140.13
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r36, r3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	mul_f32 r1, r34, r3
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r35, r3
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r6, r37, r3
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp475:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp476:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp478:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_148
LBB4_212:                               ; %if.then1209.13
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8050, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_149
LBB4_213:                               ; %if.then1140.14
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r32, r3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	mul_f32 r1, r30, r3
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r31, r3
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r6, r33, r3
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp480:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp481:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp482:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp483:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_150
LBB4_214:                               ; %if.then1209.14
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r1, 0x8060, r0
	mad_i32 r6, r1, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r6, 0x100, r4 devc
	shl_b64 r4, 0, 0
	.loc	2 459 9                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:459:9
	and_xmsk s2, s4
	snop 0
	bra_xmskz LBB4_151
LBB4_215:                               ; %if.then1140.15
	.loc	2 466 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:466:24
	mul_f32 r5, r28, r3
	.loc	2 464 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:464:24
	mul_f32 r1, r26, r3
	.loc	2 465 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:465:24
	mul_f32 r2, r27, r3
	.loc	2 467 24                        ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:467:24
	mul_f32 r3, r29, r3
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_lo, r1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp485:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r4_hi, r2
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_lo, r5
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp487:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r5_hi, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
	snop 0
	sor_b64 xmsk, xmsk, s2
.Ltmp488:
	.loc	2 475 9 is_stmt 1               ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:475:9
	sandn_b64 cmsk, xmsk, s0
	snop 0
	bra_cmsks LBB4_152
LBB4_216:                               ; %if.then1209.15
	.loc	2 0 9 is_stmt 0                 ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:0:9
	add_u32 r0, 0x8070, r0
	mad_i32 r0, r0, 2, s10
	.loc	2 479 240 is_stmt 1             ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:479:240
	snop 1
	stg_b64 r0, 0x100, r4 devc
	.loc	2 485 1                         ; /tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp:485:1
	snop 2
	endk
.Ltmp489:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_2
		.macahca_mtreg_size 26
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
; codeLenInByte = 22856
; NumMTRegsForWarps/PEU: 204
; NumSTRegsForWarps/PEU: 60
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
	.byte	72                              ; DW_AT_call_line
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
	.byte	105                             ; DW_AT_call_line
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
	.byte	138                             ; DW_AT_call_line
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
	.byte	172                             ; DW_AT_call_line
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
	.byte	203                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10f:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	202                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11b:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	201                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x127:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	200                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x133:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	226                             ; DW_AT_call_line
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
	.byte	227                             ; DW_AT_call_line
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
	.short	317                             ; DW_AT_call_line
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
	.short	348                             ; DW_AT_call_line
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
	.short	382                             ; DW_AT_call_line
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
	.short	414                             ; DW_AT_call_line
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
	.short	440                             ; DW_AT_call_line
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
	.short	441                             ; DW_AT_call_line
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
	.short	468                             ; DW_AT_call_line
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
	.short	469                             ; DW_AT_call_line
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
	.asciz	"/tmp/v085_input_tilemajor_codegen_case1/v085_input_tilemajor_case1_case1_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=126
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=147
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=157
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=171
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=177
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=193
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=211
.Linfo_string9:
	.asciz	"kernel_kernel_1"               ; string offset=229
.Linfo_string10:
	.asciz	"kernel_kernel_2"               ; string offset=245
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
    .mtreg_count:    94
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
    .mtreg_count:    218
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
    .mtreg_count:    204
    .name:           kernel_kernel_2
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    60
macahca.version:
  - 1
  - 0
...

	.end_metaxgpu_metadata
	.section	.debug_line
.Lline_table_start0:
