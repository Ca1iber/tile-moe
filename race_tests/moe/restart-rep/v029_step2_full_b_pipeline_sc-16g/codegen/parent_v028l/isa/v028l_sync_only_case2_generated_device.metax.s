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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 18 23 prologue_end            ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:18:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s8, s0, 0x20
	and_b32 r1, 0x3ff, r0
	smov_b32 s3, 0x1e0
	arrive slcnt(0)
	sadd_co_u32 s6, s40, s6
	saddc_co_u32 s7, s41, s7
	ldu_b32 s18, s6, 0x0
	shr_b32 r3, 1, r1
	and_b32 r4, r1, 15
	and_or_b32 r0, r3, s3, r4
	shr_b32 r5, 6, r1
	mul_u24 r5, 0x38000, r5
	smov_b32 s3, 0x1c00
	arrive slcnt(0)
	sashr_i32 s19, 31, s18
	.loc	2 19 24                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:19:24
	sshl_b64 s6, 2, s18
	sadd_co_u32 s20, s46, s6
	saddc_co_u32 s21, s47, s7
	.loc	2 20 38                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:20:38
	sshl_b32 s2, 7, s5
	.loc	2 20 47 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:20:47
	sadd_co_u32 s0, s42, s6
	saddc_co_u32 s1, s43, s7
	.loc	2 20 79                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:20:79
	sadd_co_u32 s6, s44, s6
	.loc	2 20 47                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:20:47
	ldu_b32 s0, s0, 0x0
	.loc	2 20 79                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:20:79
	saddc_co_u32 s7, s45, s7
	ldu_b32 s1, s6, 0x0
	mad_u24 r27, r4, s3, r5
	and_or_b32 r6, r3, 24, r27
	mov_b32 r7, 0
	mov_b32 r5, 0x1c00
	.loc	2 20 45                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:20:45
	arrive slcnt(0)
	sadd_co_i32 s0, s0, s2
	shl_b64 r154, 0, 0
	.loc	2 20 77                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:20:77
	ssub_co_i32 s0, s0, s1
	add_u32 r2, s0, r0
	.loc	2 36 115 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:36:115
	cmp_gt_u32 s16, 0x11c0, r2
	mad_i32 r6, s0, r5, r6
	shl_b64 r156, 0, 0
	snop 1
	and_xmsk s6, s16
	snop 0
	bra_xmskz LBB2_2
; %bb.1:                                ; %if.then
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:115
	shl_b64 r8, 1, r6
	add_co_u32 r8, s8, r8
	mov_b32 r5, s9
	addc_co_u32 r9, r5, r9
	.loc	2 37 15 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:37:15
	snop 1
	ldg_b128 r154, r8, 0x0
LBB2_2:                                 ; %if.end
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s6
	.loc	2 36 78 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:36:78
	add_u32 r2, r2, 16
	.loc	2 36 115 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:36:115
	cmp_gt_u32 s6, 0x11c0, r2
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	snop 1
	and_xmsk s22, s6
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then.1
	.loc	2 0 115                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:115
	shl_b64 r8, 1, r6
	add_co_u32 r2, s8, r8
	mov_b32 r5, s9
	addc_co_u32 r5, r5, r9
	add_co_u32 r8, 0x38000, r2
	addc_co_u32 r9, r5, 0
	.loc	2 37 15 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:37:15
	snop 1
	ldg_b128 r162, r8, 0x0
LBB2_4:                                 ; %if.end.1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s22
	ldu_b32 s3, s20, 0x0
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 36 115 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:36:115
	and_xmsk s20, s16
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:115
	shl_b64 r8, 1, r6
	add_co_u32 r8, s8, r8
	mov_b32 r2, s9
	addc_co_u32 r9, r2, r9
	.loc	2 37 15 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:37:15
	snop 1
	ldg_b128 r170, r8, 0x40
LBB2_6:                                 ; %if.end.2
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s20
	arrive slcnt(0)
	ssub_co_i32 s2, s3, s2
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 36 115 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:36:115
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:115
	shl_b64 r6, 1, r6
	add_co_u32 r2, s8, r6
	mov_b32 r5, s9
	addc_co_u32 r5, r5, r7
	add_co_u32 r6, 0x38040, r2
	addc_co_u32 r7, r5, 0
	.loc	2 37 15 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:37:15
	snop 1
	ldg_b128 r174, r6, 0x0
LBB2_8:                                 ; %if.end.3
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s20
	shl_b32 r30, 3, r1
	and_b32 r19, r30, 32
	sadd_co_i32 s1, s2, s1
	add_u32 r2, r19, r1
	smul_i32 s5, 0xe00000, s18
	sadd_co_u32 s18, 0xe0000, s10
	saddc_co_u32 s19, s11, 0
	and_b32 r6, r2, 32
	and_b32 r2, r30, 16
	sadd_co_u32 s22, 0xe0000, s12
	shr_b32 r9, 5, r1
	add_u32 r2, r2, r1
	saddc_co_u32 s23, s13, 0
	add_shl_u32 r9, r9, r3, 4
	and_b32 r7, r2, 16
	mul_u24 r2, r1, 9
	sadd_co_u32 s24, 0xe0080, s10
	and_b32 r8, r2, 8
	and_b32 r11, r9, 16
	shr_b32 r9, 4, r1
	and_b32 r5, 0x1fc0, r30
	and_or_b32 r3, r3, 32, r4
	saddc_co_u32 s25, s11, 0
	or_b32 r4, r5, r6
	add_shl_u32 r12, r9, r1, 3
	add_u32 r9, s0, r3
	or_b32 r3, r6, r8
	sadd_co_u32 s26, 0xe0080, s12
	or3_b32 r3, r3, r5, r7
	or3_b32 r4, r4, r7, r8
	mov_b32 r5, 0x1000
	shl_add_u32 r13, 1, r4, r5
	shl_b32 r10, 1, r3
	shl_b32 r2, 6, r1
	saddc_co_u32 s27, s13, 0
	add_u32 r5, r9, 16
	sadd_co_i32 s36, 0x2000, 0
	and_b32 r18, 0x3c0, r2
	and_or_b32 r26, r12, 8, r11
	cmp_gt_u32 s34, 0x11c0, r5
	add_u32 r5, s36, r10
	add_u32 r6, s36, r13
	sadd_co_i32 s36, 0x4000, 0
	or_b32 r20, r26, r18
	add_u32 r7, s36, r10
	add_u32 r8, s36, r13
	sadd_co_i32 s36, 0x6000, 0
	or_b32 r21, 0x400, r18
	or_b32 r22, r26, r19
	or_b32 r23, 0x800, r18
	or_b32 r25, 0x1000, r18
	or_b32 r31, 0x1800, r18
	xor_b32 r33, r19, 32
	.loc	2 43 3 is_stmt 1                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:43:3
	smul_i32 s37, 0x3800, s0
	or_b32 r11, r20, r19
	or_b32 r19, r20, r33
	or_b32 r12, r22, r21
	or_b32 r15, r22, r25
	or_b32 r17, r22, r31
	or3_b32 r20, r26, r21, r33
	or3_b32 r21, r26, r23, r33
	add_u32 r3, 0, r10
	add_u32 r4, 0, r13
	cmp_gt_u32 s30, 0x11c0, r9
	add_u32 r9, s36, r10
	add_u32 r10, s36, r13
	or_b32 r13, r22, r23
	or3_b32 r23, r26, r25, r33
	or3_b32 r25, r26, r31, r33
	mov_b32 r31, s37
	or_b32 r24, 0xc00, r18
	or_b32 r28, 0x1400, r18
	or_b32 r32, 0x1c00, r18
	or_b32 r14, r22, r24
	or_b32 r16, r22, r28
	or_b32 r18, r22, r32
	or3_b32 r22, r26, r24, r33
	or3_b32 r24, r26, r28, r33
	or3_b32 r26, r26, r32, r33
	mov_b32 r28, 0x3800
	and_or_b32 r31, r1, 48, r31
	shl_b32 r32, 1, r27
	add_co_u32 r27, r31, r32
	mov_b32 r35, 0
	mul_hi_i32 r28, s0, r28
	addc_co_u32 r28, r28, r35
	smul_i32 s28, 0xe0000, s4
	add_co_u32 r27, s8, r27
	mov_b32 r31, s9
	sadd_co_i32 s5, s5, s28
	shr_b32 r29, 3, r1
	cmp_gt_u32 s2, 0x80, r1
	cmp_lt_u32 s20, 0x7f, r1
	smov_b32 s36, 0x1c00
	addc_co_u32 r28, r31, r28
	mov_b32 r31, s5
	mad_u24 r29, r29, s36, r31
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:0
	shl_b64 r34, 0, 0
	.loc	2 43 3                          ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:43:3
	and_or_b32 r29, r30, 56, r29
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:0
	shl_b64 r36, 0, 0
	shl_b64 r42, 0, r34
	shl_b64 r50, 0, r34
	shl_b64 r58, 0, r34
	shl_b64 r66, 0, r34
	shl_b64 r74, 0, r34
	shl_b64 r82, 0, r34
	shl_b64 r90, 0, r34
	shl_b64 r98, 0, r34
	shl_b64 r106, 0, r34
	shl_b64 r114, 0, r34
	shl_b64 r122, 0, r34
	shl_b64 r130, 0, r34
	shl_b64 r138, 0, r34
	shl_b64 r146, 0, r34
	shl_b64 r158, 0, r34
	shl_b64 r38, 0, r34
	shl_b64 r46, 0, r34
	shl_b64 r54, 0, r34
	shl_b64 r62, 0, r34
	shl_b64 r70, 0, r34
	shl_b64 r78, 0, r34
	shl_b64 r86, 0, r34
	shl_b64 r94, 0, r34
	shl_b64 r102, 0, r34
	shl_b64 r110, 0, r34
	shl_b64 r118, 0, r34
	shl_b64 r126, 0, r34
	shl_b64 r134, 0, r34
	shl_b64 r142, 0, r34
	shl_b64 r150, 0, r34
	shl_b64 r166, 0, r34
	shr_b32 r2, 2, r1
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
	.loc	2 43 3                          ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:43:3
	add_u32 r29, 0x38040, r29
	smov_b64 s8, 0
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
	shl_b64 r160, 0, r36
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
	shl_b64 r168, 0, r36
                                        ; implicit-def: $mtreg_64bits_192
                                        ; implicit-def: $mtreg_64bits_184
                                        ; implicit-def: $mtreg_64bits_188
                                        ; implicit-def: $mtreg_64bits_180
	bra LBB2_10
	.p2align	5
LBB2_9:                                 ; %for.inc1380
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 43 31                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:43:31
	sadd_co_u32 s8, 0x100, s8
	saddc_co_u32 s9, s9, 0
	scmp_eq_u64 0x3800, s8
	add_u32 r29, 0x80, r29
	.loc	2 43 3                          ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:43:3
	bra_smsks LBB2_56
LBB2_10:                                ; %for.cond123.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 46 376 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:46:376
	add_u32 r30, 0xfffc7fc0, r29
	add_u32 r31, 0xffffffc0, r29
	mad_i32 r32, r30, 2, s10
	mad_i32 r194, r31, 2, s10
	.loc	2 46 345 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:46:345
	snop 0
	ldg_b128 r196, r32, 0x0
	ldg_b128 r200, r194, 0x0
	arrive gvmcnt(1)
	sts_b128 r3, 0x0, r196
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r200
	.loc	2 48 9 is_stmt 1                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:48:9
	and_xmsk s36, s2
	snop 0
	bra_xmskz LBB2_20
; %bb.11:                               ; %for.cond187.preheader
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 53 119 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:53:119
	and_xmsk s38, s30
	snop 0
	bra_xmskz LBB2_13
; %bb.12:                               ; %if.then214
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:119
	add_co_u32 r178, r27, s8
	mov_b32 r32, s9
	addc_co_u32 r179, r28, r32
	.loc	2 54 21 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:54:21
	snop 1
	ldg_b128 r178, r178, 0x80
LBB2_13:                                ; %if.end269
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s38
	shl_b64 r186, 0, 0
	shl_b64 r188, 0, 0
	.loc	2 53 119 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:53:119
	and_xmsk s38, s34
	snop 0
	bra_xmskz LBB2_15
; %bb.14:                               ; %if.then214.1
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:119
	add_co_u32 r32, r27, s8
	mov_b32 r33, s9
	addc_co_u32 r33, r28, r33
	.loc	2 54 21 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:54:21
	add_co_u32 r32, 0x38080, r32
	addc_co_u32 r33, r33, 0
	snop 1
	ldg_b128 r186, r32, 0x0
LBB2_15:                                ; %if.end269.1
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s38
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 53 119 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:53:119
	and_xmsk s38, s30
	snop 0
	bra_xmskz LBB2_17
; %bb.16:                               ; %if.then214.2
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:119
	add_co_u32 r182, r27, s8
	mov_b32 r32, s9
	addc_co_u32 r183, r28, r32
	.loc	2 54 21 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:54:21
	snop 1
	ldg_b128 r182, r182, 0xc0
LBB2_17:                                ; %if.end269.2
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s38
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	.loc	2 53 119 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:53:119
	and_xmsk s38, s34
	snop 0
	bra_xmskz LBB2_19
; %bb.18:                               ; %if.then214.3
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:119
	add_co_u32 r32, r27, s8
	mov_b32 r33, s9
	addc_co_u32 r33, r28, r33
	.loc	2 54 21 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:54:21
	add_co_u32 r32, 0x380c0, r32
	addc_co_u32 r33, r33, 0
	snop 1
	ldg_b128 r190, r32, 0x0
LBB2_19:                                ; %if.end269.3
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s38
LBB2_20:                                ; %Flow652
                                        ;   in Loop: Header=BB2_10 Depth=1
	sor_b64 xmsk, xmsk, s36
	.loc	2 63 385 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:63:385
	mad_i32 r32, r30, 2, s18
	mad_i32 r194, r31, 2, s18
	.loc	2 63 354 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:63:354
	snop 0
	ldg_b128 r196, r32, 0x0
	.loc	2 67 383 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:67:383
	mad_i32 r32, r30, 2, s12
	.loc	2 63 354                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:63:354
	ldg_b128 r200, r194, 0x0
	.loc	2 67 383                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:67:383
	mad_i32 r194, r31, 2, s12
	.loc	2 67 354 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:67:354
	ldg_b128 r204, r32, 0x0
	snop 0
	ldg_b128 r208, r194, 0x0
	.loc	2 63 354 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:63:354
	arrive gvmcnt(3)
	sts_b128 r5, 0x0, r196
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r200
	.loc	2 67 354                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:67:354
	arrive gvmcnt(1)
	sts_b128 r7, 0x0, r204
	arrive gvmcnt(0)
	sts_b128 r8, 0x0, r208
	.loc	2 69 9                          ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:69:9
	and_xmsk s36, s20
	snop 0
	bra_xmskz LBB2_30
; %bb.21:                               ; %for.cond406.preheader
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 74 120 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:74:120
	and_xmsk s38, s16
	snop 0
	bra_xmskz LBB2_23
; %bb.22:                               ; %if.then433
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 120 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:120
	add_co_u32 r178, r27, s8
	mov_b32 r32, s9
	addc_co_u32 r179, r28, r32
	.loc	2 75 21 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:75:21
	snop 1
	ldg_b128 r178, r178, 0x80
LBB2_23:                                ; %if.end488
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s38
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 74 120 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:74:120
	and_xmsk s38, s16
	snop 0
	bra_xmskz LBB2_25
; %bb.24:                               ; %if.then433.1
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 120 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:120
	add_co_u32 r182, r27, s8
	mov_b32 r32, s9
	addc_co_u32 r183, r28, r32
	.loc	2 75 21 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:75:21
	snop 1
	ldg_b128 r182, r182, 0xc0
LBB2_25:                                ; %if.end488.1
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s38
	shl_b64 r186, 0, 0
	shl_b64 r188, 0, 0
	.loc	2 74 120 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:74:120
	and_xmsk s38, s6
	snop 0
	bra_xmskz LBB2_27
; %bb.26:                               ; %if.then433.2
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 120 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:120
	add_co_u32 r32, r27, s8
	mov_b32 r33, s9
	addc_co_u32 r33, r28, r33
	.loc	2 75 21 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:75:21
	add_co_u32 r32, 0x38080, r32
	addc_co_u32 r33, r33, 0
	snop 1
	ldg_b128 r186, r32, 0x0
LBB2_27:                                ; %if.end488.2
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s38
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	.loc	2 74 120 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:74:120
	and_xmsk s38, s6
	snop 0
	bra_xmskz LBB2_29
; %bb.28:                               ; %if.then433.3
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 120 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:120
	add_co_u32 r32, r27, s8
	mov_b32 r33, s9
	addc_co_u32 r33, r28, r33
	.loc	2 75 21 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:75:21
	add_co_u32 r32, 0x380c0, r32
	addc_co_u32 r33, r33, 0
	snop 1
	ldg_b128 r190, r32, 0x0
LBB2_29:                                ; %if.end488.3
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s38
LBB2_30:                                ; %Flow651
                                        ;   in Loop: Header=BB2_10 Depth=1
	sor_b64 xmsk, xmsk, s36
	.loc	2 84 384 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:84:384
	mad_i32 r32, r30, 2, s22
	mad_i32 r194, r31, 2, s22
	.loc	2 84 355 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:84:355
	snop 0
	ldg_b128 r196, r32, 0x0
	ldg_b128 r200, r194, 0x0
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r196
	arrive gvmcnt(0)
	sts_b128 r10, 0x0, r200
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r194, r11, 0x0
	lds_b128 r198, r12, 0x0
	lds_b128 r202, r13, 0x0
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	add_i32 r32, 0x4000, r11
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r194, r154, r158
	mma_16x16x16f16 r90, r194, r162, r90
	mma_16x16x16f16 r158, r196, r156, r158
	mma_16x16x16f16 r90, r196, r164, r90
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r194, r14, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r198, r154, r146
	mma_16x16x16f16 r82, r198, r162, r82
	mma_16x16x16f16 r146, r200, r156, r146
	mma_16x16x16f16 r82, r200, r164, r82
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r198, r15, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r202, r154, r138
	mma_16x16x16f16 r74, r202, r162, r74
	mma_16x16x16f16 r138, r204, r156, r138
	mma_16x16x16f16 r74, r204, r164, r74
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r202, r16, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r194, r154, r130
	mma_16x16x16f16 r66, r194, r162, r66
	mma_16x16x16f16 r130, r196, r156, r130
	mma_16x16x16f16 r66, r196, r164, r66
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r194, r17, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r198, r154, r122
	mma_16x16x16f16 r58, r198, r162, r58
	mma_16x16x16f16 r122, r200, r156, r122
	mma_16x16x16f16 r58, r200, r164, r58
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r198, r18, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r202, r154, r114
	mma_16x16x16f16 r50, r202, r162, r50
	mma_16x16x16f16 r114, r204, r156, r114
	mma_16x16x16f16 r50, r204, r164, r50
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r202, r32, 0x0
	add_i32 r32, 0x4000, r12
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r194, r154, r106
	mma_16x16x16f16 r42, r194, r162, r42
	mma_16x16x16f16 r106, r196, r156, r106
	mma_16x16x16f16 r42, r196, r164, r42
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r194, r32, 0x0
	add_i32 r32, 0x4000, r13
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r198, r154, r98
	mma_16x16x16f16 r34, r198, r162, r34
	mma_16x16x16f16 r98, r200, r156, r98
	mma_16x16x16f16 r34, r200, r164, r34
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r198, r32, 0x0
	add_i32 r32, 0x4000, r14
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r202, r154, r166
	mma_16x16x16f16 r94, r202, r162, r94
	mma_16x16x16f16 r166, r204, r156, r166
	mma_16x16x16f16 r94, r204, r164, r94
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r202, r32, 0x0
	add_i32 r32, 0x4000, r15
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r194, r154, r150
	mma_16x16x16f16 r86, r194, r162, r86
	mma_16x16x16f16 r150, r196, r156, r150
	mma_16x16x16f16 r86, r196, r164, r86
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r194, r32, 0x0
	add_i32 r32, 0x4000, r16
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r198, r154, r142
	mma_16x16x16f16 r78, r198, r162, r78
	mma_16x16x16f16 r142, r200, r156, r142
	mma_16x16x16f16 r78, r200, r164, r78
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r198, r32, 0x0
	add_i32 r32, 0x4000, r17
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r202, r154, r134
	mma_16x16x16f16 r70, r202, r162, r70
	mma_16x16x16f16 r134, r204, r156, r134
	mma_16x16x16f16 r70, r204, r164, r70
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r202, r32, 0x0
	add_i32 r32, 0x4000, r18
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r194, r154, r126
	mma_16x16x16f16 r62, r194, r162, r62
	mma_16x16x16f16 r126, r196, r156, r126
	mma_16x16x16f16 r62, r196, r164, r62
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r194, r32, 0x0
	add_i32 r32, 0x4000, r19
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r198, r154, r118
	mma_16x16x16f16 r54, r198, r162, r54
	mma_16x16x16f16 r118, r200, r156, r118
	mma_16x16x16f16 r54, r200, r164, r54
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r198, r19, 0x0
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r202, r154, r110
	mma_16x16x16f16 r46, r202, r162, r46
	mma_16x16x16f16 r110, r204, r156, r110
	mma_16x16x16f16 r46, r204, r164, r46
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r202, r20, 0x0
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r194, r154, r102
	mma_16x16x16f16 r38, r194, r162, r38
	mma_16x16x16f16 r102, r196, r156, r102
	mma_16x16x16f16 r38, r196, r164, r38
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r194, r21, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r198, r170, r158
	mma_16x16x16f16 r90, r198, r174, r90
	mma_16x16x16f16 r158, r200, r172, r158
	mma_16x16x16f16 r90, r200, r176, r90
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r198, r22, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r202, r170, r146
	mma_16x16x16f16 r82, r202, r174, r82
	mma_16x16x16f16 r146, r204, r172, r146
	mma_16x16x16f16 r82, r204, r176, r82
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r202, r23, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r194, r170, r138
	mma_16x16x16f16 r74, r194, r174, r74
	mma_16x16x16f16 r138, r196, r172, r138
	mma_16x16x16f16 r74, r196, r176, r74
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r194, r24, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r198, r170, r130
	mma_16x16x16f16 r66, r198, r174, r66
	mma_16x16x16f16 r130, r200, r172, r130
	mma_16x16x16f16 r66, r200, r176, r66
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r198, r25, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r202, r170, r122
	mma_16x16x16f16 r58, r202, r174, r58
	mma_16x16x16f16 r122, r204, r172, r122
	mma_16x16x16f16 r58, r204, r176, r58
	.loc	2 89 50                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:89:50
	lds_b128 r202, r26, 0x0
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r194, r170, r114
	mma_16x16x16f16 r50, r194, r174, r50
	mma_16x16x16f16 r114, r196, r172, r114
	mma_16x16x16f16 r50, r196, r176, r50
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r194, r32, 0x0
	add_i32 r32, 0x4000, r20
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r198, r170, r106
	mma_16x16x16f16 r42, r198, r174, r42
	mma_16x16x16f16 r106, r200, r172, r106
	mma_16x16x16f16 r42, r200, r176, r42
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r198, r32, 0x0
	add_i32 r32, 0x4000, r21
	.loc	2 95 64                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:95:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r202, r170, r98
	mma_16x16x16f16 r34, r202, r174, r34
	mma_16x16x16f16 r98, r204, r172, r98
	mma_16x16x16f16 r34, r204, r176, r34
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r202, r32, 0x0
	add_i32 r32, 0x4000, r22
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r194, r170, r166
	mma_16x16x16f16 r94, r194, r174, r94
	mma_16x16x16f16 r166, r196, r172, r166
	mma_16x16x16f16 r94, r196, r176, r94
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r194, r32, 0x0
	add_i32 r32, 0x4000, r23
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r198, r170, r150
	mma_16x16x16f16 r86, r198, r174, r86
	mma_16x16x16f16 r150, r200, r172, r150
	mma_16x16x16f16 r86, r200, r176, r86
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r198, r32, 0x0
	add_i32 r32, 0x4000, r24
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r202, r170, r142
	mma_16x16x16f16 r78, r202, r174, r78
	mma_16x16x16f16 r142, r204, r172, r142
	mma_16x16x16f16 r78, r204, r176, r78
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r202, r32, 0x0
	add_i32 r32, 0x4000, r25
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r194, r170, r134
	mma_16x16x16f16 r70, r194, r174, r70
	mma_16x16x16f16 r134, r196, r172, r134
	mma_16x16x16f16 r70, r196, r176, r70
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r194, r32, 0x0
	add_i32 r32, 0x4000, r26
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r198, r170, r126
	mma_16x16x16f16 r62, r198, r174, r62
	mma_16x16x16f16 r126, r200, r172, r126
	mma_16x16x16f16 r62, r200, r176, r62
	.loc	2 103 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:103:52
	lds_b128 r198, r32, 0x0
	.loc	2 109 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:109:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r202, r170, r118
	mma_16x16x16f16 r54, r202, r174, r54
	mma_16x16x16f16 r118, r204, r172, r118
	mma_16x16x16f16 r54, r204, r176, r54
	arrive bsmcnt(1)
	mma_16x16x16f16 r110, r194, r170, r110
	mma_16x16x16f16 r46, r194, r174, r46
	mma_16x16x16f16 r110, r196, r172, r110
	mma_16x16x16f16 r46, r196, r176, r46
	arrive bsmcnt(0)
	mma_16x16x16f16 r102, r198, r170, r102
	mma_16x16x16f16 r38, r198, r174, r38
	mma_16x16x16f16 r102, r200, r172, r102
	mma_16x16x16f16 r38, r200, r176, r38
.Ltmp7:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 120 377                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:120:377
	add_u32 r32, 0xfffc8000, r29
	mad_i32 r194, r32, 2, s10
	mad_i32 r196, r29, 2, s10
	.loc	2 122 16                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:122:16
	mov_b32 r202, 0x3700
	.loc	2 120 346                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:120:346
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	.loc	2 122 16                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:122:16
	mov_b32 r203, 0
	cmp_lg_u64 s36, s8, r202
	scmp_eq_u64 0x3700, s8
	.loc	2 120 346                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:120:346
	arrive gvmcnt(1)
	sts_b128 r3, 0x0, r198
	arrive gvmcnt(0)
	sts_b128 r4, 0x0, r194
	.loc	2 122 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:122:9
	bra_smsks LBB2_42
; %bb.31:                               ; %if.then809
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 123 11                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:123:11
	and_xmsk s38, s2
	snop 0
	bra_xmskz LBB2_41
; %bb.32:                               ; %for.cond813.preheader
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:11
	shl_b64 r154, 0, 0
	shl_b64 r156, 0, 0
	.loc	2 128 122 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:128:122
	and_xmsk s40, s30
	snop 0
	bra_xmskz LBB2_34
; %bb.33:                               ; %if.then840
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 122 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:122
	add_co_u32 r154, r27, s8
	mov_b32 r33, s9
	addc_co_u32 r155, r28, r33
	.loc	2 129 23 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:129:23
	snop 1
	ldg_b128 r154, r154, 0x100
LBB2_34:                                ; %if.end895
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s40
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 128 122 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:128:122
	and_xmsk s40, s34
	snop 0
	bra_xmskz LBB2_36
; %bb.35:                               ; %if.then840.1
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 122 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:122
	add_co_u32 r33, r27, s8
	mov_b32 r162, s9
	addc_co_u32 r162, r28, r162
	.loc	2 129 23 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:129:23
	add_co_u32 r164, 0x38100, r33
	addc_co_u32 r165, r162, 0
	snop 1
	ldg_b128 r162, r164, 0x0
LBB2_36:                                ; %if.end895.1
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s40
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 128 122 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:128:122
	and_xmsk s40, s30
	snop 0
	bra_xmskz LBB2_38
; %bb.37:                               ; %if.then840.2
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 122 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:122
	add_co_u32 r170, r27, s8
	mov_b32 r33, s9
	addc_co_u32 r171, r28, r33
	.loc	2 129 23 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:129:23
	snop 1
	ldg_b128 r170, r170, 0x140
LBB2_38:                                ; %if.end895.2
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s40
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 128 122 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:128:122
	and_xmsk s40, s34
	snop 0
	bra_xmskz LBB2_40
; %bb.39:                               ; %if.then840.3
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 122 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:122
	add_co_u32 r33, r27, s8
	mov_b32 r174, s9
	addc_co_u32 r174, r28, r174
	.loc	2 129 23 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:129:23
	add_co_u32 r176, 0x38140, r33
	addc_co_u32 r177, r174, 0
	snop 1
	ldg_b128 r174, r176, 0x0
LBB2_40:                                ; %if.end895.3
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s40
LBB2_41:                                ; %Flow650
                                        ;   in Loop: Header=BB2_10 Depth=1
	sor_b64 xmsk, xmsk, s38
LBB2_42:                                ; %if.end904
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 139 386 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:139:386
	mad_i32 r194, r30, 2, s24
	mad_i32 r196, r31, 2, s24
	.loc	2 143 384                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:143:384
	mad_i32 r32, r32, 2, s12
	mad_i32 r202, r29, 2, s12
	.loc	2 139 355                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:139:355
	ldg_b128 r198, r194, 0x0
	ldg_b128 r194, r196, 0x0
	.loc	2 143 355                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:143:355
	ldg_b128 r204, r32, 0x0
	ldg_b128 r208, r202, 0x0
	.loc	2 145 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:145:9
	sandn_b64 cmsk, xmsk, s36
	.loc	2 139 355                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:139:355
	arrive gvmcnt(3)
	sts_b128 r5, 0x0, r198
	arrive gvmcnt(2)
	sts_b128 r6, 0x0, r194
	.loc	2 143 355                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:143:355
	arrive gvmcnt(1)
	sts_b128 r7, 0x0, r204
	arrive gvmcnt(0)
	sts_b128 r8, 0x0, r208
	.loc	2 145 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:145:9
	bra_cmsks LBB2_54
; %bb.43:                               ; %if.then1032
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 146 11                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:146:11
	and_xmsk s38, s20
	snop 0
	bra_xmskz LBB2_53
; %bb.44:                               ; %for.cond1036.preheader
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 11 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:11
	shl_b64 r154, 0, 0
	shl_b64 r156, 0, 0
	.loc	2 151 123 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:151:123
	and_xmsk s40, s16
	snop 0
	bra_xmskz LBB2_46
; %bb.45:                               ; %if.then1063
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 123 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:123
	add_co_u32 r154, r27, s8
	mov_b32 r32, s9
	addc_co_u32 r155, r28, r32
	.loc	2 152 23 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:152:23
	snop 1
	ldg_b128 r154, r154, 0x100
LBB2_46:                                ; %if.end1118
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s40
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 151 123 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:151:123
	and_xmsk s40, s16
	snop 0
	bra_xmskz LBB2_48
; %bb.47:                               ; %if.then1063.1
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 123 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:123
	add_co_u32 r162, r27, s8
	mov_b32 r32, s9
	addc_co_u32 r163, r28, r32
	.loc	2 152 23 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:152:23
	snop 1
	ldg_b128 r170, r162, 0x140
LBB2_48:                                ; %if.end1118.1
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s40
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 151 123 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:151:123
	and_xmsk s40, s6
	snop 0
	bra_xmskz LBB2_50
; %bb.49:                               ; %if.then1063.2
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 123 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:123
	add_co_u32 r32, r27, s8
	mov_b32 r33, s9
	addc_co_u32 r33, r28, r33
	.loc	2 152 23 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:152:23
	add_co_u32 r32, 0x38100, r32
	addc_co_u32 r33, r33, 0
	snop 1
	ldg_b128 r162, r32, 0x0
LBB2_50:                                ; %if.end1118.2
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s40
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 151 123 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:151:123
	and_xmsk s40, s6
	snop 0
	bra_xmskz LBB2_52
; %bb.51:                               ; %if.then1063.3
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 123 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:123
	add_co_u32 r32, r27, s8
	mov_b32 r33, s9
	addc_co_u32 r33, r28, r33
	.loc	2 152 23 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:152:23
	add_co_u32 r32, 0x38140, r32
	addc_co_u32 r33, r33, 0
	snop 1
	ldg_b128 r174, r32, 0x0
LBB2_52:                                ; %if.end1118.3
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 0 23 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:23
	sor_b64 xmsk, xmsk, s40
LBB2_53:                                ; %Flow
                                        ;   in Loop: Header=BB2_10 Depth=1
	sor_b64 xmsk, xmsk, s38
LBB2_54:                                ; %if.end1131
                                        ;   in Loop: Header=BB2_10 Depth=1
	.loc	2 162 385 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:162:385
	mad_i32 r32, r30, 2, s26
	mad_i32 r30, r31, 2, s26
	.loc	2 162 356 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:162:356
	snop 0
	ldg_b128 r194, r32, 0x0
	ldg_b128 r30, r30, 0x0
	arrive gvmcnt(1)
	sts_b128 r9, 0x0, r194
	arrive gvmcnt(0)
	sts_b128 r10, 0x0, r30
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r30, r11, 0x0
	lds_b128 r194, r12, 0x0
	lds_b128 r198, r13, 0x0
	.loc	2 195 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:195:9
	sandn_b64 cmsk, xmsk, s36
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r30, r178, r158
	mma_16x16x16f16 r90, r30, r186, r90
	mma_16x16x16f16 r158, r32, r180, r158
	mma_16x16x16f16 r90, r32, r188, r90
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r30, r14, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r194, r178, r146
	mma_16x16x16f16 r82, r194, r186, r82
	mma_16x16x16f16 r146, r196, r180, r146
	mma_16x16x16f16 r82, r196, r188, r82
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r194, r15, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r198, r178, r138
	mma_16x16x16f16 r74, r198, r186, r74
	mma_16x16x16f16 r138, r200, r180, r138
	mma_16x16x16f16 r74, r200, r188, r74
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r198, r16, 0x0
	lds_b128 r202, r17, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(3)
	mma_16x16x16f16 r130, r30, r178, r130
	mma_16x16x16f16 r66, r30, r186, r66
	mma_16x16x16f16 r130, r32, r180, r130
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	add_i32 r30, 0x4000, r11
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	mma_16x16x16f16 r66, r32, r188, r66
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r194, r178, r122
	mma_16x16x16f16 r58, r194, r186, r58
	mma_16x16x16f16 r122, r196, r180, r122
	mma_16x16x16f16 r58, r196, r188, r58
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r194, r18, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r198, r178, r114
	mma_16x16x16f16 r50, r198, r186, r50
	mma_16x16x16f16 r114, r200, r180, r114
	mma_16x16x16f16 r50, r200, r188, r50
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r12
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r106, r202, r178, r106
	mma_16x16x16f16 r42, r202, r186, r42
	mma_16x16x16f16 r106, r204, r180, r106
	mma_16x16x16f16 r42, r204, r188, r42
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r13
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r194, r178, r98
	mma_16x16x16f16 r34, r194, r186, r34
	mma_16x16x16f16 r98, r196, r180, r98
	mma_16x16x16f16 r34, r196, r188, r34
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r194, r30, 0x0
	add_i32 r30, 0x4000, r14
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r198, r178, r166
	mma_16x16x16f16 r94, r198, r186, r94
	mma_16x16x16f16 r166, r200, r180, r166
	mma_16x16x16f16 r94, r200, r188, r94
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r15
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r202, r178, r150
	mma_16x16x16f16 r86, r202, r186, r86
	mma_16x16x16f16 r150, r204, r180, r150
	mma_16x16x16f16 r86, r204, r188, r86
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r16
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r194, r178, r142
	mma_16x16x16f16 r78, r194, r186, r78
	mma_16x16x16f16 r142, r196, r180, r142
	mma_16x16x16f16 r78, r196, r188, r78
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r194, r30, 0x0
	add_i32 r30, 0x4000, r17
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r198, r178, r134
	mma_16x16x16f16 r70, r198, r186, r70
	mma_16x16x16f16 r134, r200, r180, r134
	mma_16x16x16f16 r70, r200, r188, r70
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r18
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r202, r178, r126
	mma_16x16x16f16 r62, r202, r186, r62
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r30, r30, 0x0
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	mma_16x16x16f16 r126, r204, r180, r126
	mma_16x16x16f16 r62, r204, r188, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r194, r178, r118
	mma_16x16x16f16 r54, r194, r186, r54
	mma_16x16x16f16 r118, r196, r180, r118
	mma_16x16x16f16 r54, r196, r188, r54
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r194, r19, 0x0
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r110, r198, r178, r110
	mma_16x16x16f16 r46, r198, r186, r46
	mma_16x16x16f16 r110, r200, r180, r110
	mma_16x16x16f16 r46, r200, r188, r46
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r198, r20, 0x0
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r102, r30, r178, r102
	mma_16x16x16f16 r38, r30, r186, r38
	mma_16x16x16f16 r102, r32, r180, r102
	mma_16x16x16f16 r38, r32, r188, r38
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r30, r21, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r194, r182, r158
	mma_16x16x16f16 r90, r194, r190, r90
	mma_16x16x16f16 r158, r196, r184, r158
	mma_16x16x16f16 r90, r196, r192, r90
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r194, r22, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r198, r182, r146
	mma_16x16x16f16 r82, r198, r190, r82
	mma_16x16x16f16 r146, r200, r184, r146
	mma_16x16x16f16 r82, r200, r192, r82
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r198, r23, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r30, r182, r138
	mma_16x16x16f16 r74, r30, r190, r74
	mma_16x16x16f16 r138, r32, r184, r138
	mma_16x16x16f16 r74, r32, r192, r74
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r30, r24, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r194, r182, r130
	mma_16x16x16f16 r66, r194, r190, r66
	mma_16x16x16f16 r130, r196, r184, r130
	mma_16x16x16f16 r66, r196, r192, r66
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r194, r25, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r122, r198, r182, r122
	mma_16x16x16f16 r58, r198, r190, r58
	mma_16x16x16f16 r122, r200, r184, r122
	mma_16x16x16f16 r58, r200, r192, r58
	.loc	2 167 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:167:52
	lds_b128 r198, r26, 0x0
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r114, r30, r182, r114
	mma_16x16x16f16 r50, r30, r190, r50
	mma_16x16x16f16 r114, r32, r184, r114
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	add_i32 r30, 0x4000, r19
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	mma_16x16x16f16 r50, r32, r192, r50
	arrive bsmcnt(1)
	mma_16x16x16f16 r106, r194, r182, r106
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r20
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	mma_16x16x16f16 r42, r194, r190, r42
	mma_16x16x16f16 r106, r196, r184, r106
	mma_16x16x16f16 r42, r196, r192, r42
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r194, r30, 0x0
	add_i32 r30, 0x4000, r21
	.loc	2 173 65                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:173:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r98, r198, r182, r98
	mma_16x16x16f16 r34, r198, r190, r34
	mma_16x16x16f16 r98, r200, r184, r98
	mma_16x16x16f16 r34, r200, r192, r34
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r22
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r202, r182, r166
	mma_16x16x16f16 r94, r202, r190, r94
	mma_16x16x16f16 r166, r204, r184, r166
	mma_16x16x16f16 r94, r204, r192, r94
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r23
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r194, r182, r150
	mma_16x16x16f16 r86, r194, r190, r86
	mma_16x16x16f16 r150, r196, r184, r150
	mma_16x16x16f16 r86, r196, r192, r86
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r194, r30, 0x0
	add_i32 r30, 0x4000, r24
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r198, r182, r142
	mma_16x16x16f16 r78, r198, r190, r78
	mma_16x16x16f16 r142, r200, r184, r142
	mma_16x16x16f16 r78, r200, r192, r78
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r198, r30, 0x0
	add_i32 r30, 0x4000, r25
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r202, r182, r134
	mma_16x16x16f16 r70, r202, r190, r70
	mma_16x16x16f16 r134, r204, r184, r134
	mma_16x16x16f16 r70, r204, r192, r70
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r26
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r126, r194, r182, r126
	mma_16x16x16f16 r62, r194, r190, r62
	.loc	2 181 52                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:181:52
	lds_b128 r30, r30, 0x0
	.loc	2 187 63                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:187:63
	mma_16x16x16f16 r126, r196, r184, r126
	mma_16x16x16f16 r62, r196, r192, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r118, r198, r182, r118
	mma_16x16x16f16 r54, r198, r190, r54
	mma_16x16x16f16 r118, r200, r184, r118
	mma_16x16x16f16 r54, r200, r192, r54
	arrive bsmcnt(1)
	mma_16x16x16f16 r110, r202, r182, r110
	mma_16x16x16f16 r46, r202, r190, r46
	mma_16x16x16f16 r110, r204, r184, r110
	mma_16x16x16f16 r46, r204, r192, r46
	arrive bsmcnt(0)
	mma_16x16x16f16 r102, r30, r182, r102
	mma_16x16x16f16 r38, r30, r190, r38
	mma_16x16x16f16 r102, r32, r184, r102
	mma_16x16x16f16 r38, r32, r192, r38
	.loc	2 195 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:195:9
	bra_cmsks LBB2_9
; %bb.55:                               ; %if.then1378
                                        ;   in Loop: Header=BB2_10 Depth=1
.Ltmp11:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB2_9
.Ltmp12:
LBB2_56:                                ; %for.cond1383.preheader
	.loc	3 0 3 is_stmt 0                 ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:0:3
	shl_b32 r3, 10, r1
	shl_b32 r1, 11, r1
	and_b32 r4, 0xf0000, r3
	mov_b32 r5, 0
	mov_b32 r3, 0x80
	and_b32 r1, 0x7800, r1
	mad_u32 r4, s4, r3, r4
	add_co_u32 r4, r4, r1
.Ltmp13:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 708 10 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s1, 0x80, s1
.Ltmp14:
	.loc	2 241 95                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:95
	cmp_gt_i32 s2, s1, r0
	addc_co_u32 r5, r5, 0
	mov_b32 r1, 0x800
	mad_i32 r4, s0, r1, r4
	and_b32 r1, r2, 12
	.loc	2 200 3                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:200:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s14, r1
	mov_b32 r2, s15
	addc_co_u32 r2, r2, 0
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	sand_b64 s2, s2, s16
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_74
; %bb.57:                               ; %if.end1588
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_75
LBB2_58:                                ; %if.end1588.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_76
LBB2_59:                                ; %if.end1588.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_77
LBB2_60:                                ; %if.end1588.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_78
LBB2_61:                                ; %if.end1588.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_79
LBB2_62:                                ; %if.end1588.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_80
LBB2_63:                                ; %if.end1588.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_65
LBB2_64:                                ; %if.then1520.7
	.loc	2 223 27 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r3, 0xbfb8aa3b, r101
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r9, r8, 0, s2
	fmka_f32 r9, r101, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s2
	exp_f32 r9, r9
.Ltmp16:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r9, r7, r7, s0
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s0, r7, s0
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r9, 0xbfb8aa3b, r100
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r9
.Ltmp18:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s0
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r7, r101, r7
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r7, r7, r105
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s2
	fmka_f32 r10, r100, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s2
	exp_f32 r10, r10
.Ltmp20:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r10, r9, r9, s0
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s0, r9, s0
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r10, 0xbfb8aa3b, r99
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r10
.Ltmp22:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s0
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r9, r100, r9
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s2
	fmka_f32 r11, r99, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s2
	exp_f32 r11, r11
.Ltmp24:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r11, r10, r10, s0
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s0, r10, s0
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r11, 0xbfb8aa3b, r98
.Ltmp25:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r11
.Ltmp26:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s0
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r10, r99, r10
.Ltmp27:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s2
	fmka_f32 r8, r98, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s2
	exp_f32 r8, r8
.Ltmp28:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r8, r3, r3, s0
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s0, r3, s0
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s0
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r3, r98, r3
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r3, r3, r102
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r6, r10, r103
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r8, r9, r104
.Ltmp29:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp30:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp31:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp32:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp33:
	.loc	2 254 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	add_co_u32 r10, r1, r10
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r2, r11
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xe0, r6 devc
LBB2_65:                                ; %if.end1588.7
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 66 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:66
	or_b32 r0, r0, 16
	.loc	2 241 95 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:95
	cmp_gt_i32 s0, s1, r0
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	snop 3
	sand_b64 s0, s0, s6
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_81
; %bb.66:                               ; %if.end1588.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_82
LBB2_67:                                ; %if.end1588.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_83
LBB2_68:                                ; %if.end1588.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_84
LBB2_69:                                ; %if.end1588.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_85
LBB2_70:                                ; %if.end1588.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_86
LBB2_71:                                ; %if.end1588.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_87
LBB2_72:                                ; %if.end1588.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_88
LBB2_73:                                ; %if.end1588.15
	.loc	2 259 1 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:259:1
	snop 1
	endk
LBB2_74:                                ; %if.then1520
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r3, 0xbfb8aa3b, r161
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r161, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp35:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r9, r7, r7, s0
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s0, r7, s0
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r9, 0xbfb8aa3b, r160
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp37:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s0
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r7, r161, r7
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r7, r7, r169
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r160, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp39:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r10, r9, r9, s0
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s0, r9, s0
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r10, 0xbfb8aa3b, r159
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp41:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s0
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r9, r160, r9
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r159, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp43:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r11, r10, r10, s0
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s0, r10, s0
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r11, 0xbfb8aa3b, r158
.Ltmp44:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp45:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s0
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r10, r159, r10
.Ltmp46:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r158, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp47:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r8, r3, r3, s0
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s0, r3, s0
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s0
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r3, r158, r3
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r3, r3, r166
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r6, r10, r167
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r8, r9, r168
.Ltmp48:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp49:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp50:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp51:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp52:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	add_co_u32 r10, r1, r10
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r2, r11
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_58
LBB2_75:                                ; %if.then1520.1
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r3, 0xbfb8aa3b, r149
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r149, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp54:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r9, r7, r7, s0
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s0, r7, s0
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r9, 0xbfb8aa3b, r148
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp56:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s0
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r7, r149, r7
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r7, r7, r153
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r148, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp58:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r10, r9, r9, s0
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s0, r9, s0
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r10, 0xbfb8aa3b, r147
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp60:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s0
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r9, r148, r9
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r147, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp62:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r11, r10, r10, s0
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s0, r10, s0
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r11, 0xbfb8aa3b, r146
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp64:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s0
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r10, r147, r10
.Ltmp65:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r146, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp66:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r8, r3, r3, s0
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s0, r3, s0
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s0
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r3, r146, r3
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r3, r3, r150
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r6, r10, r151
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r8, r9, r152
.Ltmp67:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp68:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp69:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp70:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp71:
	.loc	2 254 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	add_co_u32 r10, r1, r10
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r2, r11
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x20, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_59
LBB2_76:                                ; %if.then1520.2
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r3, 0xbfb8aa3b, r141
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r141, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp73:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r9, r7, r7, s0
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s0, r7, s0
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r9, 0xbfb8aa3b, r140
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp75:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s0
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r7, r141, r7
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r7, r7, r145
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r140, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp77:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r10, r9, r9, s0
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s0, r9, s0
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r10, 0xbfb8aa3b, r139
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp79:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s0
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r9, r140, r9
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r139, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp81:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r11, r10, r10, s0
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s0, r10, s0
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r11, 0xbfb8aa3b, r138
.Ltmp82:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp83:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s0
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r10, r139, r10
.Ltmp84:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r138, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp85:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r8, r3, r3, s0
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s0, r3, s0
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s0
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r3, r138, r3
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r3, r3, r142
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r6, r10, r143
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r8, r9, r144
.Ltmp86:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp87:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp88:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp89:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp90:
	.loc	2 254 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	add_co_u32 r10, r1, r10
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r2, r11
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x40, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_60
LBB2_77:                                ; %if.then1520.3
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r3, 0xbfb8aa3b, r133
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r133, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp92:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r9, r7, r7, s0
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s0, r7, s0
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r9, 0xbfb8aa3b, r132
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp94:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s0
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r7, r133, r7
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r7, r7, r137
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r132, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp96:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r10, r9, r9, s0
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s0, r9, s0
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r10, 0xbfb8aa3b, r131
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp98:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s0
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r9, r132, r9
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r131, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp100:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r11, r10, r10, s0
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s0, r10, s0
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r11, 0xbfb8aa3b, r130
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp102:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s0
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r10, r131, r10
.Ltmp103:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r130, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp104:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r8, r3, r3, s0
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s0, r3, s0
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s0
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r3, r130, r3
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r3, r3, r134
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r6, r10, r135
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r8, r9, r136
.Ltmp105:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp106:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp107:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp108:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp109:
	.loc	2 254 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	add_co_u32 r10, r1, r10
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r2, r11
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x60, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_61
LBB2_78:                                ; %if.then1520.4
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r3, 0xbfb8aa3b, r125
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r125, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp111:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r9, r7, r7, s0
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s0, r7, s0
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r9, 0xbfb8aa3b, r124
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp113:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s0
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r7, r125, r7
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r7, r7, r129
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r124, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp115:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r10, r9, r9, s0
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s0, r9, s0
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r10, 0xbfb8aa3b, r123
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp117:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s0
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r9, r124, r9
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r123, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp119:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r11, r10, r10, s0
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s0, r10, s0
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r11, 0xbfb8aa3b, r122
.Ltmp120:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp121:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s0
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r10, r123, r10
.Ltmp122:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r122, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp123:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r8, r3, r3, s0
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s0, r3, s0
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s0
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r3, r122, r3
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r3, r3, r126
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r6, r10, r127
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r8, r9, r128
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp125:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp126:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp127:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp128:
	.loc	2 254 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	add_co_u32 r10, r1, r10
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r2, r11
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x80, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_62
LBB2_79:                                ; %if.then1520.5
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r3, 0xbfb8aa3b, r117
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r117, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp130:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r9, r7, r7, s0
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s0, r7, s0
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r9, 0xbfb8aa3b, r116
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp132:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s0
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r7, r117, r7
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r7, r7, r121
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r116, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp134:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r10, r9, r9, s0
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s0, r9, s0
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r10, 0xbfb8aa3b, r115
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp136:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s0
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r9, r116, r9
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r115, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp138:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r11, r10, r10, s0
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s0, r10, s0
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r11, 0xbfb8aa3b, r114
.Ltmp139:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp140:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s0
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r10, r115, r10
.Ltmp141:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r114, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp142:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r8, r3, r3, s0
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s0, r3, s0
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s0
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r3, r114, r3
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r3, r3, r118
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r6, r10, r119
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r8, r9, r120
.Ltmp143:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp144:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp145:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp146:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp147:
	.loc	2 254 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	add_co_u32 r10, r1, r10
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r2, r11
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xa0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_63
LBB2_80:                                ; %if.then1520.6
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r3, 0xbfb8aa3b, r109
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s0, 0x3f800000
	csel_b32 r9, r8, 0, s8
	fmka_f32 r9, r109, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s8
	exp_f32 r9, r9
.Ltmp149:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r9, r7, r7, s0
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s0, r7, s0
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r9, 0xbfb8aa3b, r108
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r9
.Ltmp151:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s0
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r7, r109, r7
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r7, r7, r113
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s8
	fmka_f32 r10, r108, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s8
	exp_f32 r10, r10
.Ltmp153:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r10, r9, r9, s0
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s0, r9, s0
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r10, 0xbfb8aa3b, r107
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r10
.Ltmp155:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s0
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r9, r108, r9
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s8
	fmka_f32 r11, r107, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s8
	exp_f32 r11, r11
.Ltmp157:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r11, r10, r10, s0
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s0, r10, s0
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r11, 0xbfb8aa3b, r106
.Ltmp158:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s8, 0xc2fc0000, r11
.Ltmp159:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s0
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r10, r107, r10
.Ltmp160:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s8
	fmka_f32 r8, r106, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s8
	exp_f32 r8, r8
.Ltmp161:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r8, r3, r3, s0
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s0, r3, s0
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s0
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r3, r106, r3
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r3, r3, r110
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r6, r10, r111
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r8, r9, r112
.Ltmp162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp163:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp164:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp165:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp166:
	.loc	2 254 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	add_co_u32 r10, r1, r10
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r2, r11
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xc0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_64
	bra LBB2_65
LBB2_81:                                ; %if.then1520.8
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r0, 0xbfb8aa3b, r93
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r93, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp168:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r8, r6, r6, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r6, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r8, 0xbfb8aa3b, r92
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp170:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r6, r93, r6
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r6, r6, r97
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r92, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp172:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r9, r8, r8, s6
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r3
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s6, r8, s6
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r9, 0xbfb8aa3b, r91
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp174:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r8, r92, r8
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r91, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp176:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r10, r9, r9, s6
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r3
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s6, r9, s6
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r10, 0xbfb8aa3b, r90
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp178:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r9, r91, r9
.Ltmp179:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r90, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp180:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r7, r0, r0, s6
	rcp_f32 r10, r7
	snop 0
	fmac_f32 r3, neg(r7), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r7), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r7), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r0, r90, r0
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r0, r0, r94
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r3, r9, r95
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r7, r8, r96
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp182:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp183:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp184:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp185:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10000, r6
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r7, 0
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_67
LBB2_82:                                ; %if.then1520.9
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r0, 0xbfb8aa3b, r85
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r85, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp187:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r8, r6, r6, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r6, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r8, 0xbfb8aa3b, r84
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp189:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r6, r85, r6
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r6, r6, r89
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r84, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp191:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r9, r8, r8, s6
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r3
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s6, r8, s6
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r9, 0xbfb8aa3b, r83
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp193:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r8, r84, r8
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r83, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp195:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r10, r9, r9, s6
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r3
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s6, r9, s6
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r10, 0xbfb8aa3b, r82
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp197:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r9, r83, r9
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r82, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp199:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r7, r0, r0, s6
	rcp_f32 r10, r7
	snop 0
	fmac_f32 r3, neg(r7), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r7), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r7), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r0, r82, r0
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r0, r0, r86
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r3, r9, r87
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r7, r8, r88
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp201:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp202:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp203:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp204:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10020, r6
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r7, 0
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_68
LBB2_83:                                ; %if.then1520.10
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r0, 0xbfb8aa3b, r77
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r77, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp206:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r8, r6, r6, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r6, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r8, 0xbfb8aa3b, r76
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp208:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r6, r77, r6
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r6, r6, r81
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r76, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp210:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r9, r8, r8, s6
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r3
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s6, r8, s6
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r9, 0xbfb8aa3b, r75
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp212:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r8, r76, r8
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r75, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp214:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r10, r9, r9, s6
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r3
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s6, r9, s6
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r10, 0xbfb8aa3b, r74
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp216:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r9, r75, r9
.Ltmp217:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r74, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp218:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r7, r0, r0, s6
	rcp_f32 r10, r7
	snop 0
	fmac_f32 r3, neg(r7), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r7), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r7), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r0, r74, r0
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r0, r0, r78
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r3, r9, r79
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r7, r8, r80
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp220:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp221:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp222:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp223:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10040, r6
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r7, 0
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_69
LBB2_84:                                ; %if.then1520.11
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r0, 0xbfb8aa3b, r69
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r69, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp225:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r8, r6, r6, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r6, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r8, 0xbfb8aa3b, r68
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp227:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r6, r69, r6
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r6, r6, r73
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r68, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp229:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r9, r8, r8, s6
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r3
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s6, r8, s6
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r9, 0xbfb8aa3b, r67
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp231:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r8, r68, r8
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r67, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp233:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r10, r9, r9, s6
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r3
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s6, r9, s6
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r10, 0xbfb8aa3b, r66
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp235:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r9, r67, r9
.Ltmp236:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r66, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp237:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r7, r0, r0, s6
	rcp_f32 r10, r7
	snop 0
	fmac_f32 r3, neg(r7), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r7), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r7), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r0, r66, r0
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r0, r0, r70
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r3, r9, r71
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r7, r8, r72
.Ltmp238:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp239:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp240:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp241:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp242:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10060, r6
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r7, 0
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_70
LBB2_85:                                ; %if.then1520.12
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r0, 0xbfb8aa3b, r61
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r61, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp244:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r8, r6, r6, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r6, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r8, 0xbfb8aa3b, r60
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp246:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r6, r61, r6
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r6, r6, r65
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r60, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp248:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r9, r8, r8, s6
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r3
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s6, r8, s6
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r9, 0xbfb8aa3b, r59
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp250:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r8, r60, r8
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r59, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp252:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r10, r9, r9, s6
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r3
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s6, r9, s6
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r10, 0xbfb8aa3b, r58
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp254:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r9, r59, r9
.Ltmp255:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r58, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp256:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r7, r0, r0, s6
	rcp_f32 r10, r7
	snop 0
	fmac_f32 r3, neg(r7), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r7), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r7), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r0, r58, r0
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r0, r0, r62
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r3, r9, r63
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r7, r8, r64
.Ltmp257:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp258:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp259:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp260:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp261:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10080, r6
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r7, 0
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_71
LBB2_86:                                ; %if.then1520.13
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r0, 0xbfb8aa3b, r53
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r53, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp263:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r8, r6, r6, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r6, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r8, 0xbfb8aa3b, r52
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp265:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r6, r53, r6
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r6, r6, r57
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r52, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp267:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r9, r8, r8, s6
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r3
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s6, r8, s6
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r9, 0xbfb8aa3b, r51
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp269:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r8, r52, r8
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r51, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp271:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r10, r9, r9, s6
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r3
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s6, r9, s6
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r10, 0xbfb8aa3b, r50
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp273:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r9, r51, r9
.Ltmp274:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r50, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp275:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r7, r0, r0, s6
	rcp_f32 r10, r7
	snop 0
	fmac_f32 r3, neg(r7), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r7), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r7), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r0, r50, r0
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r0, r0, r54
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r3, r9, r55
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r7, r8, r56
.Ltmp276:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp277:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp278:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp279:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp280:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100a0, r6
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r7, 0
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_72
LBB2_87:                                ; %if.then1520.14
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r0, 0xbfb8aa3b, r45
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r45, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp282:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r8, r6, r6, s6
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s6, r6, s6
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r8, 0xbfb8aa3b, r44
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp284:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r6, r45, r6
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r6, r6, r49
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r44, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp286:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r9, r8, r8, s6
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r3
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s6, r8, s6
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r9, 0xbfb8aa3b, r43
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp288:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r8, r44, r8
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r43, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp290:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r10, r9, r9, s6
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r3
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s6, r9, s6
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r10, 0xbfb8aa3b, r42
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp292:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r9, r43, r9
.Ltmp293:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r42, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp294:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r7, r0, r0, s6
	rcp_f32 r10, r7
	snop 0
	fmac_f32 r3, neg(r7), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s6, r0, s6
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r7), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r7), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s6
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r0, r42, r0
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r0, r0, r46
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r3, r9, r47
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r7, r8, r48
.Ltmp295:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp296:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp297:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp298:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp299:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100c0, r6
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r11, r7, 0
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 241 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:241:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_73
LBB2_88:                                ; %if.then1520.15
	.loc	2 223 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:223:27
	mul_f32 r0, 0xbfb8aa3b, r37
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r8, r7, 0, s0
	fmka_f32 r8, r37, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s0
	exp_f32 r8, r8
.Ltmp301:
	.loc	2 231 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:231:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_scale_f32 r8, r6, r6, s2
	rcp_f32 r9, r8
	snop 0
	fma_f32 r10, neg(r8), r9, r3
	fmac_f32 r9, r10, r9
	div_scale_f32 r10, s2, r6, s2
	mul_f32 r11, r10, r9
	fma_f32 r12, neg(r8), r11, r10
	fmac_f32 r11, r12, r9
	fmac_f32 r10, neg(r8), r11
	.loc	2 222 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:222:27
	mul_f32 r8, 0xbfb8aa3b, r36
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r8
.Ltmp303:
	.loc	2 235 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:235:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s2
	.loc	2 239 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:239:20
	mul_f32 r6, r37, r6
	.loc	2 251 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:251:28
	mul_f32 r6, r6, r41
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s0
	fmka_f32 r9, r36, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s0
	exp_f32 r9, r9
.Ltmp305:
	.loc	2 230 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:230:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_scale_f32 r9, r8, r8, s2
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r3
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s2, r8, s2
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 221 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:221:27
	mul_f32 r9, 0xbfb8aa3b, r35
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r9
.Ltmp307:
	.loc	2 234 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:234:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s2
	.loc	2 238 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:238:20
	mul_f32 r8, r36, r8
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s0
	fmka_f32 r10, r35, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s0
	exp_f32 r10, r10
.Ltmp309:
	.loc	2 229 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:229:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_scale_f32 r10, r9, r9, s2
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r3
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s2, r9, s2
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 220 27                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:220:27
	mul_f32 r10, 0xbfb8aa3b, r34
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r10
.Ltmp311:
	.loc	2 233 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:233:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s2
	.loc	2 237 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:237:20
	mul_f32 r9, r35, r9
.Ltmp312:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s0
	fmka_f32 r7, r34, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s0
	exp_f32 r7, r7
.Ltmp313:
	.loc	2 228 26                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:228:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 232 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:232:24
	div_scale_f32 r7, r0, r0, s2
	rcp_f32 r10, r7
	snop 0
	fmac_f32 r3, neg(r7), r10
	fmac_f32 r10, r3, r10
	div_scale_f32 r3, s2, r0, s2
	mul_f32 r11, r3, r10
	fma_f32 r12, neg(r7), r11, r3
	fmac_f32 r11, r12, r10
	fmac_f32 r3, neg(r7), r11
	div_fmas_f32 r3, r3, r10, r11
	div_fixup_f32 r0, r3, r0, s2
	.loc	2 236 20                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:236:20
	mul_f32 r0, r34, r0
	.loc	2 248 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:248:28
	mul_f32 r0, r0, r38
	.loc	2 249 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:249:28
	mul_f32 r3, r9, r39
	.loc	2 250 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:250:28
	mul_f32 r7, r8, r40
.Ltmp314:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp315:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp316:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp317:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp318:
	.loc	2 254 31 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	snop 0
	shl_b64 r4, 1, r4
	add_co_u32 r1, r1, r4
	addc_co_u32 r2, r2, r5
	add_co_u32 r4, 0x100e0, r1
	.loc	2 254 445 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	shl_b32 r1, 16, r6
	add_u16 r3_hi, 0, 0
	or_b32 r3, r1, r3
	shl_b32 r1, 16, r8
	and_b32 r0, 0xffff, r0
	.loc	2 254 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:31
	addc_co_u32 r5, r2, 0
	.loc	2 254 445                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:254:445
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r4, 0x0, r2 devc
	.loc	2 259 1 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:259:1
	snop 2
	endk
.Ltmp319:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 27
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
.Lfunc_end2:
	.size	kernel_kernel, .Lfunc_end2-kernel_kernel
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 25840
; NumMTRegsForWarps/PEU: 212
; NumSTRegsForWarps/PEU: 52
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 261 0                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:261:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s2, s5
.Ltmp320:
	.loc	2 272 23 prologue_end           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:272:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s16, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shr_b32 r5, 1, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s40, s6
	saddc_co_u32 s7, s41, s7
	ldu_b32 s12, s6, 0x0
	and_b32 r2, r1, 15
	and_b32 r3, 0x1e0, r5
	or_b32 r0, r3, r2
	shl_b32 r6, 10, r1
	and_b32 r26, 0xf0000, r6
	shl_b32 r6, 11, r1
	arrive slcnt(0)
	sashr_i32 s13, 31, s12
	.loc	2 273 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:273:24
	sshl_b64 s6, 2, s12
	sadd_co_u32 s14, s46, s6
	saddc_co_u32 s15, s47, s7
	.loc	2 274 38                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:274:38
	sshl_b32 s1, 7, s5
	.loc	2 274 47 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:274:47
	sadd_co_u32 s2, s42, s6
	saddc_co_u32 s3, s43, s7
	.loc	2 274 79                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:274:79
	sadd_co_u32 s6, s44, s6
	saddc_co_u32 s7, s45, s7
	.loc	2 274 47                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:274:47
	ldu_b32 s2, s2, 0x0
	.loc	2 274 79                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:274:79
	ldu_b32 s0, s6, 0x0
	and_b32 r27, 0x7800, r6
	and_b32 r6, r5, 24
	or3_b32 r8, r27, r26, r6
	mov_b32 r9, 0
	mov_b32 r6, 0x800
	.loc	2 274 45                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:274:45
	arrive slcnt(0)
	sadd_co_i32 s2, s2, s1
	.loc	2 274 77                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:274:77
	ssub_co_i32 s10, s2, s0
	add_u32 r4, s10, r0
	.loc	2 290 115 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:290:115
	cmp_gt_u32 s8, 0x11c0, r4
	mad_i32 r6, s10, r6, r8
	shl_b64 r146, 0, 0
	shl_b64 r148, 0, 0
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_2
; %bb.1:                                ; %if.then
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:115
	shl_b64 r8, 1, r6
	add_co_u32 r10, s22, r8
	mov_b32 r8, s23
	addc_co_u32 r11, r8, r9
	.loc	2 291 15 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:291:15
	snop 1
	ldg_b128 r146, r10, 0x0
LBB3_2:                                 ; %if.end
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s2
	.loc	2 290 78 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:290:78
	add_u32 r4, r4, 16
	.loc	2 290 115 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:290:115
	cmp_gt_u32 s6, 0x11c0, r4
	shl_b64 r154, 0, 0
	shl_b64 r156, 0, 0
	snop 1
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then.1
	.loc	2 0 115                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:115
	shl_b64 r8, 1, r6
	add_co_u32 r4, s22, r8
	mov_b32 r8, s23
	addc_co_u32 r8, r8, r9
	add_co_u32 r10, 0x10000, r4
	addc_co_u32 r11, r8, 0
	.loc	2 291 15 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:291:15
	snop 1
	ldg_b128 r154, r10, 0x0
LBB3_4:                                 ; %if.end.1
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s2
	ldu_b32 s2, s14, 0x0
	sashr_i32 s11, 31, s10
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 290 115 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:290:115
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:115
	shl_b64 r8, 1, r6
	add_co_u32 r8, s22, r8
	mov_b32 r4, s23
	addc_co_u32 r9, r4, r9
	.loc	2 291 15 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:291:15
	snop 1
	ldg_b128 r162, r8, 0x40
LBB3_6:                                 ; %if.end.2
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s14
	arrive slcnt(0)
	ssub_co_i32 s1, s2, s1
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 290 115 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:290:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:115
	shl_b64 r6, 1, r6
	add_co_u32 r4, s22, r6
	mov_b32 r6, s23
	addc_co_u32 r6, r6, r7
	add_co_u32 r8, 0x10040, r4
	addc_co_u32 r9, r6, 0
	.loc	2 291 15 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:291:15
	snop 1
	ldg_b128 r170, r8, 0x0
LBB3_8:                                 ; %if.end.3
	.loc	2 0 15 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:15
	sor_b64 xmsk, xmsk, s2
	shl_b32 r4, 8, r1
	and_b32 r28, 0x3f800, r4
	shl_b32 r4, 3, r1
	sshl_b32 s24, 19, s4
	and_b32 r6, r4, 56
	smul_i32 s5, 0xe00000, s12
	or3_b32 r6, r28, s24, r6
	add_u32 r6, r6, s5
	.loc	2 299 375 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:375
	mad_i32 r6, r6, 2, s18
	add_co_u32 r8, 0x20000, r6
	addc_co_u32 r9, r7, 0
	.loc	2 299 344 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:344
	ldg_b128 r16, r6, 0x0
	and_b32 r15, r4, 32
	ldg_b128 r30, r8, 0x0
	.loc	2 299 375                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:375
	add_co_u32 r8, 0x40000, r6
	addc_co_u32 r9, r7, 0
	add_co_u32 r6, 0x60000, r6
	addc_co_u32 r7, r7, 0
	.loc	2 299 344                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:344
	ldg_b128 r34, r8, 0x0
	and_b32 r8, r4, 16
	ldg_b128 r38, r6, 0x0
	mul_u24 r6, r1, 9
	add_u32 r9, r15, r1
	add_u32 r8, r8, r1
	and_b32 r7, 0x1fc0, r4
	and_b32 r6, r6, 8
	and_b32 r9, r9, 32
	and_b32 r8, r8, 16
	.loc	2 299 60                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:60
	add_u32 r23, 0x800, r7
	add_u32 r24, 0x1000, r7
	add_u32 r25, 0x1800, r7
	.loc	2 299 96                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:96
	or_b32 r10, r9, r6
	.loc	2 299 41                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:41
	or_b32 r6, r8, r6
	or3_b32 r6, r6, r25, r9
	.loc	2 299 266                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:266
	or3_b32 r11, r10, r7, r8
	.loc	2 299 41                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:41
	or3_b32 r12, r10, r23, r8
	or3_b32 r8, r10, r24, r8
	shl_add_u32 r10, 1, r11, 0
	sadd_co_i32 s0, s1, s0
	shl_add_u32 r11, 1, r12, 0
	shl_add_u32 r8, 1, r8, 0
	shl_add_u32 r6, 1, r6, 0
	.loc	2 299 344                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:299:344
	arrive gvmcnt(3)
	sts_b128 r10, 0x0, r16
	arrive gvmcnt(2)
	sts_b128 r11, 0x0, r30
	arrive gvmcnt(1)
	sts_b128 r8, 0x0, r34
	arrive gvmcnt(0)
	sts_b128 r6, 0x0, r38
.Ltmp321:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	xor_b32 r6, r4, r1
	and_b32 r8, r6, 32
	add_u32 r8, r8, r1
	and_b32 r29, r8, 32
	and_b32 r8, r6, 16
	sadd_co_u32 s2, 0x80000, s18
	add_u32 r8, r8, r1
	saddc_co_u32 s3, s19, 0
	and_b32 r30, r8, 16
	and_b32 r8, r1, 8
	sadd_co_u32 s12, 0x80080, s18
	xadd_u32 r4, r8, r4, r1
	and_b32 r31, r4, 8
	saddc_co_u32 s13, s19, 0
	or_b32 r32, r29, r31
	sadd_co_u32 s14, 0x100, s18
	and_b32 r33, r6, 56
	shr_b32 r6, 5, r1
	saddc_co_u32 s15, s19, 0
	or3_b32 r23, r32, r23, r30
	or3_b32 r24, r32, r24, r30
	add_shl_u32 r5, r6, r5, 4
	or3_b32 r7, r32, r7, r30
	or_b32 r30, r30, r31
.Ltmp322:
	.loc	2 302 3                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:302:3
	sshl_b64 s26, 12, s10
	or3_b32 r25, r30, r25, r29
	mov_b32 r29, s26
	and_b32 r8, r5, 16
	shr_b32 r5, 4, r1
	add_shl_u32 r9, r5, r1, 3
	shl_b32 r4, 6, r1
	add_shl_u32 r26, r26, r27, 1
	and_or_b32 r29, r1, 48, r29
	and_b32 r14, 0x3c0, r4
	and_or_b32 r22, r9, 8, r8
	add_co_u32 r26, r29, r26
	mov_b32 r30, s27
	mov_b32 r27, 0
	addc_co_u32 r27, r30, r27
	sadd_co_i32 s1, s5, s24
	or_b32 r16, r22, r14
	or_b32 r17, 0x400, r14
	or_b32 r18, r22, r15
	or_b32 r19, 0x800, r14
	or_b32 r20, 0xc00, r14
	or_b32 r21, 0x1000, r14
	or_b32 r34, 0x1400, r14
	or_b32 r35, 0x1800, r14
	or_b32 r36, 0x1c00, r14
	xor_b32 r37, r15, 32
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:0
	shl_b64 r98, 0, 0
	or_b32 r8, r18, r17
	or_b32 r9, r18, r19
	or_b32 r10, r18, r20
	or_b32 r11, r18, r21
	or_b32 r12, r18, r34
	or_b32 r13, r18, r35
	or_b32 r14, r18, r36
	or3_b32 r18, r22, r20, r37
	or3_b32 r20, r22, r34, r37
	.loc	2 302 3                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:302:3
	or3_b32 r28, s1, r28, r33
	shl_add_u32 r5, 1, r7, 0
	or_b32 r7, r16, r15
	or_b32 r15, r16, r37
	or3_b32 r16, r22, r17, r37
	or3_b32 r17, r22, r19, r37
	or3_b32 r19, r22, r21, r37
	or3_b32 r21, r22, r35, r37
	or3_b32 r22, r22, r36, r37
	add_co_u32 r26, s22, r26
	mov_b32 r29, s23
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:0
	shl_b64 r100, 0, 0
	shl_b64 r102, 0, r98
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
	shl_b64 r150, 0, r98
	shl_b64 r158, 0, r98
	shl_b64 r166, 0, r98
	shl_b64 r174, 0, r98
	shl_b64 r34, 0, r98
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
	shr_b32 r4, 2, r1
	add_u32 r6, 0x4000, r5
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
	shl_add_u32 r22, 1, r22, 0
	shl_add_u32 r23, 1, r23, 0
	shl_add_u32 r24, 1, r24, 0
	shl_add_u32 r25, 1, r25, 0
	.loc	2 302 3                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:302:3
	addc_co_u32 r27, r29, r27
	add_u32 r28, 0x30040, r28
	smov_b64 s22, 0
	shl_b64 r104, 0, r100
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
	shl_b64 r152, 0, r100
	shl_b64 r160, 0, r100
	shl_b64 r168, 0, r100
	shl_b64 r176, 0, r100
	shl_b64 r36, 0, r100
	shl_b64 r40, 0, r100
	shl_b64 r44, 0, r100
	shl_b64 r48, 0, r100
	shl_b64 r52, 0, r100
	shl_b64 r56, 0, r100
	shl_b64 r60, 0, r100
	shl_b64 r64, 0, r100
	shl_b64 r68, 0, r100
	shl_b64 r72, 0, r100
	shl_b64 r76, 0, r100
	shl_b64 r80, 0, r100
	shl_b64 r84, 0, r100
	shl_b64 r88, 0, r100
	shl_b64 r92, 0, r100
	shl_b64 r96, 0, r100
	bra LBB3_10
	.p2align	5
LBB3_9:                                 ; %for.inc1079
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 302 31                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:302:31
	sadd_co_u32 s22, 0x100, s22
	saddc_co_u32 s23, s23, 0
	scmp_eq_u64 0x1000, s22
	add_u32 r28, 0x80, r28
	.loc	2 302 3                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:302:3
	bra_smsks LBB3_32
LBB3_10:                                ; %for.cond183.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 304 569 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:304:569
	add_u32 r29, 0xfffcffc0, r28
	mad_i32 r30, r29, 2, s2
.Ltmp323:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s5, r6
	smov_b32 s1, md
	shl_b64 r186, 0, 0
	shl_b64 r188, 0, 0
	snop 0
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r30, 0x0 bsm
.Ltmp324:
	.loc	2 304 569                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:304:569
	add_u32 r30, 0xfffdffc0, r28
	mad_i32 r32, r30, 2, s2
	add_u32 r31, 0xfffeffc0, r28
.Ltmp325:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r32, 0x0 bsm
.Ltmp326:
	.loc	2 304 569                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:304:569
	mad_i32 r32, r31, 2, s2
.Ltmp327:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r32, 0x0 bsm
.Ltmp328:
	.loc	2 304 569                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:304:569
	add_u32 r32, 0xffffffc0, r28
	mad_i32 r178, r32, 2, s2
.Ltmp329:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r178, 0x0 bsm
	smov_b32 md, s1
.Ltmp330:
	.loc	2 310 117                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:310:117
	and_xmsk s24, s8
	snop 0
	bra_xmskz LBB3_12
; %bb.11:                               ; %if.then292
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:117
	add_co_u32 r178, r26, s22
	mov_b32 r33, s23
	addc_co_u32 r179, r27, r33
	.loc	2 311 19 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:311:19
	snop 1
	ldg_b128 r186, r178, 0x80
LBB3_12:                                ; %if.end347
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r190, 0, 0
	shl_b64 r192, 0, 0
	.loc	2 310 117 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:310:117
	and_xmsk s24, s6
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then292.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:117
	add_co_u32 r33, r26, s22
	mov_b32 r178, s23
	addc_co_u32 r178, r27, r178
	.loc	2 311 19 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:311:19
	add_co_u32 r180, 0x10080, r33
	addc_co_u32 r181, r178, 0
	snop 1
	ldg_b128 r190, r180, 0x0
LBB3_14:                                ; %if.end347.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 310 117 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:310:117
	and_xmsk s24, s8
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then292.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:117
	add_co_u32 r178, r26, s22
	mov_b32 r33, s23
	addc_co_u32 r179, r27, r33
	.loc	2 311 19 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:311:19
	snop 1
	ldg_b128 r178, r178, 0xc0
LBB3_16:                                ; %if.end347.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 310 117 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:310:117
	and_xmsk s24, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then292.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:117
	add_co_u32 r33, r26, s22
	mov_b32 r182, s23
	addc_co_u32 r182, r27, r182
	.loc	2 311 19 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:311:19
	add_co_u32 r184, 0x100c0, r33
	addc_co_u32 r185, r182, 0
	snop 1
	ldg_b128 r182, r184, 0x0
LBB3_18:                                ; %if.end347.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s24
	.loc	2 319 48 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r194, r7, 0x0
	lds_b128 r198, r8, 0x0
	lds_b128 r202, r9, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r194, r146, r174
	mma_16x16x16f16 r126, r194, r154, r126
	mma_16x16x16f16 r174, r196, r148, r174
	mma_16x16x16f16 r126, r196, r156, r126
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r194, r10, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r198, r146, r166
	mma_16x16x16f16 r122, r198, r154, r122
	mma_16x16x16f16 r166, r200, r148, r166
	mma_16x16x16f16 r122, r200, r156, r122
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r198, r11, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r202, r146, r158
	mma_16x16x16f16 r118, r202, r154, r118
	mma_16x16x16f16 r158, r204, r148, r158
	mma_16x16x16f16 r118, r204, r156, r118
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r202, r12, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r194, r146, r150
	mma_16x16x16f16 r114, r194, r154, r114
	mma_16x16x16f16 r150, r196, r148, r150
	mma_16x16x16f16 r114, r196, r156, r114
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r194, r13, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r198, r146, r142
	mma_16x16x16f16 r110, r198, r154, r110
	mma_16x16x16f16 r142, r200, r148, r142
	mma_16x16x16f16 r110, r200, r156, r110
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r198, r14, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r202, r146, r138
	mma_16x16x16f16 r106, r202, r154, r106
	mma_16x16x16f16 r138, r204, r148, r138
	mma_16x16x16f16 r106, r204, r156, r106
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r202, r15, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r194, r146, r134
	mma_16x16x16f16 r102, r194, r154, r102
	mma_16x16x16f16 r134, r196, r148, r134
	mma_16x16x16f16 r102, r196, r156, r102
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r194, r16, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r198, r146, r130
	mma_16x16x16f16 r98, r198, r154, r98
	mma_16x16x16f16 r130, r200, r148, r130
	mma_16x16x16f16 r98, r200, r156, r98
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r198, r17, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r202, r162, r174
	mma_16x16x16f16 r126, r202, r170, r126
	mma_16x16x16f16 r174, r204, r164, r174
	mma_16x16x16f16 r126, r204, r172, r126
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r202, r18, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r194, r162, r166
	mma_16x16x16f16 r122, r194, r170, r122
	mma_16x16x16f16 r166, r196, r164, r166
	mma_16x16x16f16 r122, r196, r172, r122
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r194, r19, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r198, r162, r158
	mma_16x16x16f16 r118, r198, r170, r118
	mma_16x16x16f16 r158, r200, r164, r158
	mma_16x16x16f16 r118, r200, r172, r118
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r198, r20, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r202, r162, r150
	mma_16x16x16f16 r114, r202, r170, r114
	mma_16x16x16f16 r150, r204, r164, r150
	mma_16x16x16f16 r114, r204, r172, r114
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r202, r21, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r194, r162, r142
	mma_16x16x16f16 r110, r194, r170, r110
	mma_16x16x16f16 r142, r196, r164, r142
	mma_16x16x16f16 r110, r196, r172, r110
	.loc	2 319 48                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:319:48
	lds_b128 r194, r22, 0x0
	.loc	2 325 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:325:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r198, r162, r138
	mma_16x16x16f16 r106, r198, r170, r106
	mma_16x16x16f16 r138, r200, r164, r138
	mma_16x16x16f16 r106, r200, r172, r106
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r202, r162, r134
	mma_16x16x16f16 r102, r202, r170, r102
	mma_16x16x16f16 r134, r204, r164, r134
	mma_16x16x16f16 r102, r204, r172, r102
	arrive bsmcnt(0)
	mma_16x16x16f16 r130, r194, r162, r130
	mma_16x16x16f16 r98, r194, r170, r98
	mma_16x16x16f16 r130, r196, r164, r130
	mma_16x16x16f16 r98, r196, r172, r98
.Ltmp331:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp332:
	.loc	2 335 560                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:335:560
	add_u32 r33, 0xfffd0000, r28
	mad_i32 r194, r33, 2, s18
.Ltmp333:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s5, r5
.Ltmp334:
	.loc	2 335 560                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:335:560
	add_u32 r33, 0xfffe0000, r28
.Ltmp335:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 s1, md
	snop 1
	smov_b32 md, s5
	rfl_b32 s5, r23
	ldg_b128 r0, r194, 0x0 bsm
.Ltmp336:
	.loc	2 335 560                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:335:560
	mad_i32 r194, r33, 2, s18
	add_u32 r33, 0xffff0000, r28
.Ltmp337:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s5
	rfl_b32 s5, r24
	ldg_b128 r0, r194, 0x0 bsm
.Ltmp338:
	.loc	2 335 560                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:335:560
	mad_i32 r194, r33, 2, s18
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	add_i32 r33, 0x4000, r7
.Ltmp339:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 0
	smov_b32 md, s5
	rfl_b32 s5, r25
	ldg_b128 r0, r194, 0x0 bsm
.Ltmp340:
	.loc	2 335 560                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:335:560
	mad_i32 r194, r28, 2, s18
.Ltmp341:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	snop 1
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r194, 0x0 bsm
.Ltmp342:
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r196, r33, 0x0
	add_i32 r194, 0x4000, r8
	add_i32 r33, 0x4000, r9
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(0)
	mma_16x16x16f16 r94, r196, r146, r94
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r200, r194, 0x0
	lds_b128 r204, r33, 0x0
	add_i32 r194, 0x4000, r10
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	mma_16x16x16f16 r62, r196, r154, r62
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	add_i32 r33, 0x4000, r11
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	mma_16x16x16f16 r94, r198, r148, r94
	mma_16x16x16f16 r62, r198, r156, r62
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r196, r194, 0x0
	add_i32 r194, 0x4000, r12
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r200, r146, r90
	mma_16x16x16f16 r58, r200, r154, r58
	mma_16x16x16f16 r90, r202, r148, r90
	mma_16x16x16f16 r58, r202, r156, r58
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r13
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r204, r146, r86
	mma_16x16x16f16 r54, r204, r154, r54
	mma_16x16x16f16 r86, r206, r148, r86
	mma_16x16x16f16 r54, r206, r156, r54
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r204, r194, 0x0
	add_i32 r194, 0x4000, r14
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r196, r146, r82
	mma_16x16x16f16 r50, r196, r154, r50
	mma_16x16x16f16 r82, r198, r148, r82
	mma_16x16x16f16 r50, r198, r156, r50
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r196, r33, 0x0
	add_i32 r33, 0x4000, r15
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r200, r146, r78
	mma_16x16x16f16 r46, r200, r154, r46
	mma_16x16x16f16 r78, r202, r148, r78
	mma_16x16x16f16 r46, r202, r156, r46
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r200, r194, 0x0
	add_i32 r194, 0x4000, r18
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r204, r146, r74
	mma_16x16x16f16 r42, r204, r154, r42
	mma_16x16x16f16 r74, r206, r148, r74
	mma_16x16x16f16 r42, r206, r156, r42
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r204, r33, 0x0
	add_i32 r33, 0x4000, r16
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r196, r146, r70
	mma_16x16x16f16 r38, r196, r154, r38
	mma_16x16x16f16 r70, r198, r148, r70
	mma_16x16x16f16 r38, r198, r156, r38
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r196, r33, 0x0
	add_i32 r33, 0x4000, r17
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r200, r146, r66
	mma_16x16x16f16 r34, r200, r154, r34
	mma_16x16x16f16 r66, r202, r148, r66
	mma_16x16x16f16 r34, r202, r156, r34
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r200, r33, 0x0
	add_i32 r33, 0x4000, r19
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r204, r162, r94
	mma_16x16x16f16 r62, r204, r170, r62
	mma_16x16x16f16 r94, r206, r164, r94
	mma_16x16x16f16 r62, r206, r172, r62
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r204, r194, 0x0
	add_i32 r194, 0x4000, r20
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r196, r162, r90
	mma_16x16x16f16 r58, r196, r170, r58
	mma_16x16x16f16 r90, r198, r164, r90
	mma_16x16x16f16 r58, r198, r172, r58
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r196, r33, 0x0
	add_i32 r33, 0x4000, r21
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r200, r162, r86
	mma_16x16x16f16 r54, r200, r170, r54
	mma_16x16x16f16 r86, r202, r164, r86
	mma_16x16x16f16 r54, r202, r172, r54
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r200, r194, 0x0
	add_i32 r194, 0x4000, r22
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r204, r162, r82
	mma_16x16x16f16 r50, r204, r170, r50
	mma_16x16x16f16 r82, r206, r164, r82
	mma_16x16x16f16 r50, r206, r172, r50
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r204, r33, 0x0
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r196, r162, r78
	mma_16x16x16f16 r46, r196, r170, r46
	.loc	2 339 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:339:50
	lds_b128 r194, r194, 0x0
	.loc	2 345 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:345:61
	mma_16x16x16f16 r78, r198, r164, r78
	mma_16x16x16f16 r46, r198, r172, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r200, r162, r74
	mma_16x16x16f16 r42, r200, r170, r42
	mma_16x16x16f16 r74, r202, r164, r74
	mma_16x16x16f16 r42, r202, r172, r42
	arrive bsmcnt(1)
	mma_16x16x16f16 r70, r204, r162, r70
	mma_16x16x16f16 r38, r204, r170, r38
	mma_16x16x16f16 r70, r206, r164, r70
	mma_16x16x16f16 r38, r206, r172, r38
	arrive bsmcnt(0)
	mma_16x16x16f16 r66, r194, r162, r66
	mma_16x16x16f16 r34, r194, r170, r34
	mma_16x16x16f16 r66, r196, r164, r66
	mma_16x16x16f16 r34, r196, r172, r34
.Ltmp343:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp344:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s5, r6
.Ltmp345:
	.loc	2 355 569                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:355:569
	mad_i32 r194, r29, 2, s12
	.loc	2 357 16                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:357:16
	mov_b32 r196, 0xf00
	mov_b32 r197, 0
	cmp_lg_u64 s24, s22, r196
.Ltmp346:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r194, 0x0 bsm
.Ltmp347:
	.loc	2 355 569                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:355:569
	mad_i32 r194, r30, 2, s12
.Ltmp348:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r194, 0x0 bsm
.Ltmp349:
	.loc	2 355 569                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:355:569
	mad_i32 r194, r31, 2, s12
.Ltmp350:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
	snop 0
	ldg_b128 r0, r194, 0x0 bsm
.Ltmp351:
	.loc	2 355 569                       ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:355:569
	mad_i32 r194, r32, 2, s12
.Ltmp352:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	sadd_co_u32 md, 0x1000, md
.Ltmp353:
	.loc	2 357 16                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:357:16
	scmp_eq_u64 0xf00, s22
.Ltmp354:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	ldg_b128 r0, r194, 0x0 bsm
.Ltmp355:
	.loc	3 3771 10 is_stmt 0             ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	smov_b32 md, s1
.Ltmp356:
	.loc	2 357 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:357:9
	bra_smsks LBB3_28
; %bb.19:                               ; %for.cond711.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	shl_b64 r146, 0, 0
	shl_b64 r148, 0, 0
	.loc	2 362 119 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:362:119
	and_xmsk s26, s8
	snop 0
	bra_xmskz LBB3_21
; %bb.20:                               ; %if.then738
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:119
	add_co_u32 r146, r26, s22
	mov_b32 r33, s23
	addc_co_u32 r147, r27, r33
	.loc	2 363 21 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:363:21
	snop 1
	ldg_b128 r146, r146, 0x100
LBB3_21:                                ; %if.end793
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s26
	shl_b64 r154, 0, 0
	shl_b64 r156, 0, 0
	.loc	2 362 119 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:362:119
	and_xmsk s26, s6
	snop 0
	bra_xmskz LBB3_23
; %bb.22:                               ; %if.then738.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:119
	add_co_u32 r33, r26, s22
	mov_b32 r154, s23
	addc_co_u32 r154, r27, r154
	.loc	2 363 21 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:363:21
	add_co_u32 r156, 0x10100, r33
	addc_co_u32 r157, r154, 0
	snop 1
	ldg_b128 r154, r156, 0x0
LBB3_23:                                ; %if.end793.1
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s26
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 362 119 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:362:119
	and_xmsk s26, s8
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then738.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:119
	add_co_u32 r162, r26, s22
	mov_b32 r33, s23
	addc_co_u32 r163, r27, r33
	.loc	2 363 21 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:363:21
	snop 1
	ldg_b128 r162, r162, 0x140
LBB3_25:                                ; %if.end793.2
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s26
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 362 119 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:362:119
	and_xmsk s26, s6
	snop 0
	bra_xmskz LBB3_27
; %bb.26:                               ; %if.then738.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 119 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:119
	add_co_u32 r33, r26, s22
	mov_b32 r170, s23
	addc_co_u32 r170, r27, r170
	.loc	2 363 21 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:363:21
	add_co_u32 r172, 0x10140, r33
	addc_co_u32 r173, r170, 0
	snop 1
	ldg_b128 r170, r172, 0x0
LBB3_27:                                ; %if.end793.3
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 0 21 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:21
	sor_b64 xmsk, xmsk, s26
LBB3_28:                                ; %if.end801
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 372 50 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r194, r7, 0x0
	lds_b128 r198, r8, 0x0
	lds_b128 r202, r9, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r194, r186, r174
	mma_16x16x16f16 r126, r194, r190, r126
	mma_16x16x16f16 r174, r196, r188, r174
	mma_16x16x16f16 r126, r196, r192, r126
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r194, r10, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r198, r186, r166
	mma_16x16x16f16 r122, r198, r190, r122
	mma_16x16x16f16 r166, r200, r188, r166
	mma_16x16x16f16 r122, r200, r192, r122
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r198, r11, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r202, r186, r158
	mma_16x16x16f16 r118, r202, r190, r118
	mma_16x16x16f16 r158, r204, r188, r158
	mma_16x16x16f16 r118, r204, r192, r118
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r202, r12, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r194, r186, r150
	mma_16x16x16f16 r114, r194, r190, r114
	mma_16x16x16f16 r150, r196, r188, r150
	mma_16x16x16f16 r114, r196, r192, r114
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r194, r13, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r198, r186, r142
	mma_16x16x16f16 r110, r198, r190, r110
	mma_16x16x16f16 r142, r200, r188, r142
	mma_16x16x16f16 r110, r200, r192, r110
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r198, r14, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r202, r186, r138
	mma_16x16x16f16 r106, r202, r190, r106
	mma_16x16x16f16 r138, r204, r188, r138
	mma_16x16x16f16 r106, r204, r192, r106
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r202, r15, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r194, r186, r134
	mma_16x16x16f16 r102, r194, r190, r102
	mma_16x16x16f16 r134, r196, r188, r134
	mma_16x16x16f16 r102, r196, r192, r102
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r194, r16, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r198, r186, r130
	mma_16x16x16f16 r98, r198, r190, r98
	mma_16x16x16f16 r130, r200, r188, r130
	mma_16x16x16f16 r98, r200, r192, r98
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r198, r17, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r174, r202, r178, r174
	mma_16x16x16f16 r126, r202, r182, r126
	mma_16x16x16f16 r174, r204, r180, r174
	mma_16x16x16f16 r126, r204, r184, r126
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r202, r18, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r194, r178, r166
	mma_16x16x16f16 r122, r194, r182, r122
	mma_16x16x16f16 r166, r196, r180, r166
	mma_16x16x16f16 r122, r196, r184, r122
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r194, r19, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r198, r178, r158
	mma_16x16x16f16 r118, r198, r182, r118
	mma_16x16x16f16 r158, r200, r180, r158
	mma_16x16x16f16 r118, r200, r184, r118
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r198, r20, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r202, r178, r150
	mma_16x16x16f16 r114, r202, r182, r114
	mma_16x16x16f16 r150, r204, r180, r150
	mma_16x16x16f16 r114, r204, r184, r114
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r202, r21, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r194, r178, r142
	mma_16x16x16f16 r110, r194, r182, r110
	mma_16x16x16f16 r142, r196, r180, r142
	mma_16x16x16f16 r110, r196, r184, r110
	.loc	2 372 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:372:50
	lds_b128 r194, r22, 0x0
	.loc	2 378 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:378:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r198, r178, r138
	mma_16x16x16f16 r106, r198, r182, r106
	mma_16x16x16f16 r138, r200, r180, r138
	mma_16x16x16f16 r106, r200, r184, r106
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r202, r178, r134
	mma_16x16x16f16 r102, r202, r182, r102
	mma_16x16x16f16 r134, r204, r180, r134
	mma_16x16x16f16 r102, r204, r184, r102
	arrive bsmcnt(0)
	mma_16x16x16f16 r130, r194, r178, r130
	mma_16x16x16f16 r98, r194, r182, r98
	mma_16x16x16f16 r130, r196, r180, r130
	mma_16x16x16f16 r98, r196, r184, r98
.Ltmp357:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp358:
	.loc	2 387 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:387:9
	sandn_b64 cmsk, xmsk, s24
	snop 0
	bra_cmsks LBB3_30
; %bb.29:                               ; %for.cond898.preheader
                                        ;   in Loop: Header=BB3_10 Depth=1
.Ltmp359:
	.loc	3 3771 10                       ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:3771:10
	rfl_b32 s5, r5
	mad_i32 r196, r29, 2, s14
	smov_b32 s1, md
	mad_i32 r194, r31, 2, s14
	mad_i32 r30, r30, 2, s14
	smov_b32 md, s5
	rfl_b32 s5, r23
	ldg_b128 r0, r196, 0x0 bsm
	mad_i32 r32, r32, 2, s14
	snop 1
	smov_b32 md, s5
	rfl_b32 s5, r24
	ldg_b128 r0, r30, 0x0 bsm
	snop 2
	smov_b32 md, s5
	rfl_b32 s5, r25
	ldg_b128 r0, r194, 0x0 bsm
	snop 2
	smov_b32 md, s5
	snop 0
	ldg_b128 r0, r32, 0x0 bsm
	smov_b32 md, s1
.Ltmp360:
LBB3_30:                                ; %if.end980
                                        ;   in Loop: Header=BB3_10 Depth=1
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	add_i32 r29, 0x4000, r7
	add_i32 r30, 0x4000, r8
	.loc	2 408 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:408:9
	sandn_b64 cmsk, xmsk, s24
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r194, r29, 0x0
	lds_b128 r198, r30, 0x0
	add_i32 r29, 0x4000, r9
	add_i32 r30, 0x4000, r10
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(1)
	mma_16x16x16f16 r94, r194, r186, r94
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r202, r29, 0x0
	add_i32 r29, 0x4000, r11
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	mma_16x16x16f16 r62, r194, r190, r62
	mma_16x16x16f16 r94, r196, r188, r94
	mma_16x16x16f16 r62, r196, r192, r62
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r194, r30, 0x0
	add_i32 r30, 0x4000, r12
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r198, r186, r90
	mma_16x16x16f16 r58, r198, r190, r58
	mma_16x16x16f16 r90, r200, r188, r90
	mma_16x16x16f16 r58, r200, r192, r58
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r13
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r202, r186, r86
	mma_16x16x16f16 r54, r202, r190, r54
	mma_16x16x16f16 r86, r204, r188, r86
	mma_16x16x16f16 r54, r204, r192, r54
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r202, r30, 0x0
	add_i32 r30, 0x4000, r14
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r194, r186, r82
	mma_16x16x16f16 r50, r194, r190, r50
	mma_16x16x16f16 r82, r196, r188, r82
	mma_16x16x16f16 r50, r196, r192, r50
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r194, r29, 0x0
	lds_b128 r30, r30, 0x0
	add_i32 r29, 0x4000, r15
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r78, r198, r186, r78
	mma_16x16x16f16 r46, r198, r190, r46
	mma_16x16x16f16 r78, r200, r188, r78
	mma_16x16x16f16 r46, r200, r192, r46
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r198, r29, 0x0
	add_i32 r29, 0x4000, r16
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r74, r202, r186, r74
	mma_16x16x16f16 r42, r202, r190, r42
	mma_16x16x16f16 r74, r204, r188, r74
	mma_16x16x16f16 r42, r204, r192, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r194, r186, r70
	mma_16x16x16f16 r38, r194, r190, r38
	mma_16x16x16f16 r70, r196, r188, r70
	mma_16x16x16f16 r38, r196, r192, r38
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r17
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r30, r186, r66
	mma_16x16x16f16 r34, r30, r190, r34
	mma_16x16x16f16 r66, r32, r188, r66
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r186, r29, 0x0
	add_i32 r30, 0x4000, r18
	add_i32 r29, 0x4000, r19
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	mma_16x16x16f16 r34, r32, r192, r34
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r190, r30, 0x0
	add_i32 r30, 0x4000, r20
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r94, r198, r178, r94
	mma_16x16x16f16 r62, r198, r182, r62
	mma_16x16x16f16 r94, r200, r180, r94
	mma_16x16x16f16 r62, r200, r184, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r194, r178, r90
	mma_16x16x16f16 r58, r194, r182, r58
	mma_16x16x16f16 r90, r196, r180, r90
	mma_16x16x16f16 r58, r196, r184, r58
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r194, r29, 0x0
	add_i32 r29, 0x4000, r21
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r186, r178, r86
	mma_16x16x16f16 r54, r186, r182, r54
	mma_16x16x16f16 r86, r188, r180, r86
	mma_16x16x16f16 r54, r188, r184, r54
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r186, r30, 0x0
	add_i32 r30, 0x4000, r22
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r190, r178, r82
	mma_16x16x16f16 r50, r190, r182, r50
	mma_16x16x16f16 r82, r192, r180, r82
	mma_16x16x16f16 r50, r192, r184, r50
	.loc	2 394 50                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:394:50
	lds_b128 r190, r29, 0x0
	lds_b128 r30, r30, 0x0
	.loc	2 400 61                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:400:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r78, r194, r178, r78
	mma_16x16x16f16 r46, r194, r182, r46
	mma_16x16x16f16 r78, r196, r180, r78
	mma_16x16x16f16 r46, r196, r184, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r186, r178, r74
	mma_16x16x16f16 r42, r186, r182, r42
	mma_16x16x16f16 r74, r188, r180, r74
	mma_16x16x16f16 r42, r188, r184, r42
	arrive bsmcnt(1)
	mma_16x16x16f16 r70, r190, r178, r70
	mma_16x16x16f16 r38, r190, r182, r38
	mma_16x16x16f16 r70, r192, r180, r70
	mma_16x16x16f16 r38, r192, r184, r38
	arrive bsmcnt(0)
	mma_16x16x16f16 r66, r30, r178, r66
	mma_16x16x16f16 r34, r30, r182, r34
	mma_16x16x16f16 r66, r32, r180, r66
	mma_16x16x16f16 r34, r32, r184, r34
	.loc	2 408 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:408:9
	bra_cmsks LBB3_9
; %bb.31:                               ; %if.then1077
                                        ;   in Loop: Header=BB3_10 Depth=1
.Ltmp361:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
	bra LBB3_9
.Ltmp362:
LBB3_32:                                ; %for.cond1082.preheader
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp363:
	.loc	2 412 3                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:412:3
	shl_b64 r6, 0, s20
	.loc	2 414 92                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:414:92
	cmp_gt_i32 s2, s0, r0
	.loc	2 412 3                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:412:3
	mad_i32 r6, s10, 2, r6
	shl_b32 r5, 1, r2
	add_co_u32 r6, r6, r5
	addc_co_u32 r7, r7, 0
	add_u16 r5_lo, 0, 0
	.loc	2 414 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:414:9
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB3_36
; %bb.33:                               ; %if.then1098
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	add_u16 r5_lo, 0, 0
	.loc	2 416 114 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:416:114
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_35
; %bb.34:                               ; %if.then1120
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:114
	shl_b32 r5, 1, r3
	add_co_u32 r8, r6, r5
	addc_co_u32 r9, r7, 0
	.loc	2 417 19 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:417:19
	snop 1
	ldg_u16 r5, r8, 0x0
LBB3_35:                                ; %Flow604
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_36:                                ; %for.inc1141
	sor_b64 xmsk, xmsk, s12
	.loc	2 414 63 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:414:63
	or_b32 r8, r3, 16
	.loc	2 414 92 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:414:92
	or_b32 r3, r2, r8
	cmp_gt_i32 s14, s0, r3
	add_u16 r3_lo, 0, 0
	.loc	2 414 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:414:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_40
; %bb.37:                               ; %if.then1098.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	add_u16 r3_lo, 0, 0
	.loc	2 416 114 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:416:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_39
; %bb.38:                               ; %if.then1120.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:114
	shl_b32 r3, 1, r8
	add_co_u32 r6, r6, r3
	addc_co_u32 r7, r7, 0
	.loc	2 417 19 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:417:19
	snop 1
	ldg_u16 r3, r6, 0x0
LBB3_39:                                ; %Flow603
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_40:                                ; %for.inc1141.1
	sor_b64 xmsk, xmsk, s12
	shr_b32 r1, 6, r1
	mul_u24 r6, 0x38000, r1
	mul_u24 r1, 0x1c00, r2
	mov_b32 r7, 0
	mov_b32 r2, 0x100
	mad_u32 r6, s4, r2, r6
	add_co_u32 r6, r6, r1
	addc_co_u32 r7, r7, 0
	mov_b32 r1, 0x1c00
	mad_i32 r6, s10, r1, r6
	and_b32 r1, r4, 12
	.loc	2 425 3 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:425:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s16, r1
	mov_b32 r2, s17
	addc_co_u32 r2, r2, 0
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_48
; %bb.41:                               ; %for.inc1264
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_51
LBB3_42:                                ; %for.inc1264.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_54
LBB3_43:                                ; %for.inc1264.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_57
LBB3_44:                                ; %for.inc1264.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_60
LBB3_45:                                ; %for.inc1264.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_63
LBB3_46:                                ; %for.inc1264.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_66
LBB3_47:                                ; %for.inc1264.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_69
	bra LBB3_72
LBB3_48:                                ; %if.then1158
.Ltmp364:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp365:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp368:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then1227
.Ltmp369:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp370:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r8, r177, r4
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp372:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r9, r176, r4
.Ltmp373:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp374:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r8, 16, r8
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r8, r175, r4
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r4, r174, r4
.Ltmp375:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp376:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp377:
	.loc	2 440 28 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	addc_co_u32 r11, r2, r11
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_50:                                ; %Flow602
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_42
LBB3_51:                                ; %if.then1158.1
.Ltmp378:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp379:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp380:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp382:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_53
; %bb.52:                               ; %if.then1227.1
.Ltmp383:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp384:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r8, r169, r4
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp386:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r9, r168, r4
.Ltmp387:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp388:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r8, 16, r8
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r8, r167, r4
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r4, r166, r4
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp390:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp391:
	.loc	2 440 313 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:313
	shl_b64 r10, 1, r6
	.loc	2 440 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r10, r1, r10
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	addc_co_u32 r11, r2, r11
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_53:                                ; %Flow601
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_43
LBB3_54:                                ; %if.then1158.2
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp393:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp395:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp396:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then1227.2
.Ltmp397:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp398:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r8, r161, r4
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp400:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r9, r160, r4
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp402:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r8, 16, r8
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r8, r159, r4
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r4, r158, r4
.Ltmp403:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp404:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp405:
	.loc	2 440 313 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:313
	shl_b64 r10, 1, r6
	.loc	2 440 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r10, r1, r10
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	addc_co_u32 r11, r2, r11
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_56:                                ; %Flow600
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_44
LBB3_57:                                ; %if.then1158.3
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp407:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp409:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp410:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_59
; %bb.58:                               ; %if.then1227.3
.Ltmp411:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp412:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r8, r153, r4
.Ltmp413:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp414:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r9, r152, r4
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp416:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r8, 16, r8
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r8, r151, r4
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r4, r150, r4
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp418:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp419:
	.loc	2 440 313 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:313
	shl_b64 r10, 1, r6
	.loc	2 440 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r10, r1, r10
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	addc_co_u32 r11, r2, r11
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_59:                                ; %Flow599
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_45
LBB3_60:                                ; %if.then1158.4
.Ltmp420:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp421:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp422:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp424:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.then1227.4
.Ltmp425:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp426:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r8, r145, r4
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp428:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r9, r144, r4
.Ltmp429:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp430:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r8, 16, r8
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r8, r143, r4
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r4, r142, r4
.Ltmp431:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp432:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp433:
	.loc	2 440 313 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:313
	shl_b64 r10, 1, r6
	.loc	2 440 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r10, r1, r10
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	addc_co_u32 r11, r2, r11
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_62:                                ; %Flow598
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_46
LBB3_63:                                ; %if.then1158.5
.Ltmp434:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp435:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp436:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp437:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp438:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_65
; %bb.64:                               ; %if.then1227.5
.Ltmp439:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp440:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r8, r141, r4
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp442:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r9, r140, r4
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp444:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r8, 16, r8
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r8, r139, r4
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r4, r138, r4
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp446:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp447:
	.loc	2 440 313 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:313
	shl_b64 r10, 1, r6
	.loc	2 440 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r10, r1, r10
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	addc_co_u32 r11, r2, r11
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_65:                                ; %Flow597
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_47
LBB3_66:                                ; %if.then1158.6
.Ltmp448:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp449:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp451:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp452:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then1227.6
.Ltmp453:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp454:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r8, r137, r4
.Ltmp455:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp456:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r9, r136, r4
.Ltmp457:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp458:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r8, 16, r8
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r8, r135, r4
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r4, r134, r4
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp460:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp461:
	.loc	2 440 313 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:313
	shl_b64 r10, 1, r6
	.loc	2 440 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r10, r1, r10
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	addc_co_u32 r11, r2, r11
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_68:                                ; %Flow596
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_72
LBB3_69:                                ; %if.then1158.7
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp463:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp464:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp466:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_71
; %bb.70:                               ; %if.then1227.7
.Ltmp467:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r5_lo
.Ltmp468:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r8, r133, r4
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp470:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r9, r132, r4
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp472:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r8, 16, r8
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r8, r131, r4
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r4, r130, r4
.Ltmp473:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp474:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp475:
	.loc	2 440 313 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:313
	shl_b64 r10, 1, r6
	.loc	2 440 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r10, r1, r10
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r8, 16, r8
	and_b32 r4, 0xffff, r4
	or_b32 r8, r8, r4
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	addc_co_u32 r11, r2, r11
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0xe0, r8 devc
LBB3_71:                                ; %Flow595
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
LBB3_72:                                ; %for.inc1264.7
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 66 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:66
	or_b32 r0, r0, 16
	.loc	2 426 95 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_80
; %bb.73:                               ; %for.inc1264.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_83
LBB3_74:                                ; %for.inc1264.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_86
LBB3_75:                                ; %for.inc1264.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_89
LBB3_76:                                ; %for.inc1264.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_92
LBB3_77:                                ; %for.inc1264.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_95
LBB3_78:                                ; %for.inc1264.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_98
LBB3_79:                                ; %for.inc1264.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_101
	bra LBB3_104
LBB3_80:                                ; %if.then1158.8
.Ltmp476:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp477:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp478:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp480:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_82
; %bb.81:                               ; %if.then1227.8
.Ltmp481:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp482:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r4, r129, r0
.Ltmp483:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp484:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r8, r128, r0
.Ltmp485:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp486:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r4, 16, r4
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r4, r127, r0
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r0, r126, r0
.Ltmp487:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp488:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp489:
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	or_b32 r8, r4, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r4, r2, r11
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r4, 0
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_82:                                ; %Flow594
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_74
LBB3_83:                                ; %if.then1158.9
.Ltmp490:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp491:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp492:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp493:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp494:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_85
; %bb.84:                               ; %if.then1227.9
.Ltmp495:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp496:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r4, r125, r0
.Ltmp497:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp498:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r8, r124, r0
.Ltmp499:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp500:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r4, 16, r4
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r4, r123, r0
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r0, r122, r0
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp502:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp503:
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	or_b32 r8, r4, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r4, r2, r11
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r4, 0
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_85:                                ; %Flow593
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_75
LBB3_86:                                ; %if.then1158.10
.Ltmp504:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp505:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp506:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp507:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp508:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_88
; %bb.87:                               ; %if.then1227.10
.Ltmp509:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp510:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r4, r121, r0
.Ltmp511:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp512:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r8, r120, r0
.Ltmp513:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp514:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r4, 16, r4
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r4, r119, r0
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r0, r118, r0
.Ltmp515:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp516:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp517:
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	or_b32 r8, r4, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r4, r2, r11
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r4, 0
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_88:                                ; %Flow592
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_76
LBB3_89:                                ; %if.then1158.11
.Ltmp518:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp519:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp520:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp521:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp522:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_91
; %bb.90:                               ; %if.then1227.11
.Ltmp523:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp524:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r4, r117, r0
.Ltmp525:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp526:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r8, r116, r0
.Ltmp527:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp528:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r4, 16, r4
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r4, r115, r0
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r0, r114, r0
.Ltmp529:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp530:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp531:
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	or_b32 r8, r4, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r4, r2, r11
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r4, 0
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_91:                                ; %Flow591
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_77
LBB3_92:                                ; %if.then1158.12
.Ltmp532:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp533:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp534:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp535:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp536:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_94
; %bb.93:                               ; %if.then1227.12
.Ltmp537:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp538:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r4, r113, r0
.Ltmp539:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp540:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r8, r112, r0
.Ltmp541:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp542:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r4, 16, r4
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r4, r111, r0
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r0, r110, r0
.Ltmp543:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp544:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp545:
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	or_b32 r8, r4, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r4, r2, r11
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r4, 0
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_94:                                ; %Flow590
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_78
LBB3_95:                                ; %if.then1158.13
.Ltmp546:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp547:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp548:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp549:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp550:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_97
; %bb.96:                               ; %if.then1227.13
.Ltmp551:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp552:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r4, r109, r0
.Ltmp553:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp554:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r8, r108, r0
.Ltmp555:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp556:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r4, 16, r4
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r4, r107, r0
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r0, r106, r0
.Ltmp557:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp558:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp559:
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	or_b32 r8, r4, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r4, r2, r11
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_97:                                ; %Flow589
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_79
LBB3_98:                                ; %if.then1158.14
.Ltmp560:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp561:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp562:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp563:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp564:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_100
; %bb.99:                               ; %if.then1227.14
.Ltmp565:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp566:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r4, r105, r0
.Ltmp567:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp568:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r8, r104, r0
.Ltmp569:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp570:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r4, 16, r4
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r4, r103, r0
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r0, r102, r0
.Ltmp571:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp572:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp573:
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	or_b32 r8, r4, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r4, r2, r11
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_100:                               ; %Flow588
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 426 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:426:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_101:                               ; %if.then1158.15
.Ltmp574:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp575:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp576:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp577:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp578:
	.loc	2 438 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:438:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_103
; %bb.102:                              ; %if.then1227.15
.Ltmp579:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r3_lo
.Ltmp580:
	.loc	2 434 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:434:22
	mul_f32 r4, r101, r0
.Ltmp581:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp582:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	mul_f32 r8, r100, r0
.Ltmp583:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp584:
	.loc	2 433 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:433:22
	shl_b32 r4, 16, r4
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 432 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:432:22
	mul_f32 r4, r99, r0
	.loc	2 431 22                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:431:22
	mul_f32 r0, r98, r0
.Ltmp585:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp586:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp587:
	.loc	2 437 40 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	shl_b32 r4, 16, r4
	and_b32 r0, 0xffff, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	shl_b64 r10, 1, r6
	.loc	2 437 40                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:437:40
	or_b32 r8, r4, r0
	.loc	2 440 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r4, r2, r11
	add_co_u32 r10, 0x380e0, r0
	addc_co_u32 r11, r4, 0
	.loc	2 440 444 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:440:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_103:                               ; %Flow587
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
LBB3_104:                               ; %for.inc1264.15
	sor_b64 xmsk, xmsk, s4
	.loc	2 446 3 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:446:3
	add_co_u32 r0, 0x100, r1
	addc_co_u32 r1, r2, 0
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_121
; %bb.105:                              ; %for.inc1392
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_124
LBB3_106:                               ; %for.inc1392.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_127
LBB3_107:                               ; %for.inc1392.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_130
LBB3_108:                               ; %for.inc1392.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_133
LBB3_109:                               ; %for.inc1392.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_136
LBB3_110:                               ; %for.inc1392.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_139
LBB3_111:                               ; %for.inc1392.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_142
LBB3_112:                               ; %for.inc1392.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_145
LBB3_113:                               ; %for.inc1392.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_148
LBB3_114:                               ; %for.inc1392.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_151
LBB3_115:                               ; %for.inc1392.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_154
LBB3_116:                               ; %for.inc1392.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_157
LBB3_117:                               ; %for.inc1392.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_160
LBB3_118:                               ; %for.inc1392.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_163
LBB3_119:                               ; %for.inc1392.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_166
LBB3_120:                               ; %for.inc1392.15
	.loc	2 466 1 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:466:1
	snop 0
	endk
LBB3_121:                               ; %if.then1281
.Ltmp588:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp589:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp590:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp591:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp592:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_123
; %bb.122:                              ; %if.then1354
.Ltmp593:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp594:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r97, r2
.Ltmp595:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp596:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r8, r96, r2
.Ltmp597:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp598:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r95, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r94, r2
.Ltmp599:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp600:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp601:
	.loc	2 461 28 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r0, r10
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	addc_co_u32 r11, r1, r11
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_123:                               ; %Flow586
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_106
LBB3_124:                               ; %if.then1281.1
.Ltmp602:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp603:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp604:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp605:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp606:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_126
; %bb.125:                              ; %if.then1354.1
.Ltmp607:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp608:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r93, r2
.Ltmp609:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp610:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r8, r92, r2
.Ltmp611:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp612:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r91, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r90, r2
.Ltmp613:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp614:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp615:
	.loc	2 461 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:314
	shl_b64 r10, 1, r6
	.loc	2 461 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	add_co_u32 r10, r0, r10
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	addc_co_u32 r11, r1, r11
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_126:                               ; %Flow585
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_107
LBB3_127:                               ; %if.then1281.2
.Ltmp616:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp617:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp618:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp619:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp620:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_129
; %bb.128:                              ; %if.then1354.2
.Ltmp621:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp622:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r89, r2
.Ltmp623:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp624:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r8, r88, r2
.Ltmp625:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp626:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r87, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r86, r2
.Ltmp627:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp628:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp629:
	.loc	2 461 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:314
	shl_b64 r10, 1, r6
	.loc	2 461 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	add_co_u32 r10, r0, r10
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	addc_co_u32 r11, r1, r11
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_129:                               ; %Flow584
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_108
LBB3_130:                               ; %if.then1281.3
.Ltmp630:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp631:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp632:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp633:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp634:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_132
; %bb.131:                              ; %if.then1354.3
.Ltmp635:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp636:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r85, r2
.Ltmp637:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp638:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r8, r84, r2
.Ltmp639:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp640:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r83, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r82, r2
.Ltmp641:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp642:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp643:
	.loc	2 461 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:314
	shl_b64 r10, 1, r6
	.loc	2 461 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	add_co_u32 r10, r0, r10
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	addc_co_u32 r11, r1, r11
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_132:                               ; %Flow583
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_109
LBB3_133:                               ; %if.then1281.4
.Ltmp644:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp645:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp646:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp647:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp648:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_135
; %bb.134:                              ; %if.then1354.4
.Ltmp649:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp650:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r81, r2
.Ltmp651:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp652:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r8, r80, r2
.Ltmp653:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp654:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r79, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r78, r2
.Ltmp655:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp656:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp657:
	.loc	2 461 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:314
	shl_b64 r10, 1, r6
	.loc	2 461 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	add_co_u32 r10, r0, r10
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	addc_co_u32 r11, r1, r11
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_135:                               ; %Flow582
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_110
LBB3_136:                               ; %if.then1281.5
.Ltmp658:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp659:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp660:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp661:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp662:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_138
; %bb.137:                              ; %if.then1354.5
.Ltmp663:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp664:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r77, r2
.Ltmp665:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp666:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r8, r76, r2
.Ltmp667:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp668:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r75, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r74, r2
.Ltmp669:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp670:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp671:
	.loc	2 461 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:314
	shl_b64 r10, 1, r6
	.loc	2 461 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	add_co_u32 r10, r0, r10
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	addc_co_u32 r11, r1, r11
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_138:                               ; %Flow581
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_111
LBB3_139:                               ; %if.then1281.6
.Ltmp672:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp673:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp674:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp675:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp676:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_141
; %bb.140:                              ; %if.then1354.6
.Ltmp677:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp678:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r73, r2
.Ltmp679:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp680:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r8, r72, r2
.Ltmp681:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp682:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r4, r8
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r71, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r70, r2
.Ltmp683:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp684:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp685:
	.loc	2 461 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:314
	shl_b64 r10, 1, r6
	.loc	2 461 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	add_co_u32 r10, r0, r10
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	addc_co_u32 r11, r1, r11
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_141:                               ; %Flow580
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_112
LBB3_142:                               ; %if.then1281.7
.Ltmp686:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp687:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp688:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp689:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp690:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_144
; %bb.143:                              ; %if.then1354.7
.Ltmp691:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp692:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r69, r2
.Ltmp693:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp694:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r5, r68, r2
.Ltmp695:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp696:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r5_hi, 0, 0
	or_b32 r5, r4, r5
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r67, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r66, r2
.Ltmp697:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp698:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp699:
	.loc	2 461 314 is_stmt 1             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:314
	shl_b64 r8, 1, r6
	.loc	2 461 28 is_stmt 0              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	add_co_u32 r8, r0, r8
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r4, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	addc_co_u32 r9, r1, r9
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r8, 0xe0, r4 devc
LBB3_144:                               ; %Flow579
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s2
	sor_b64 xmsk, xmsk, s4
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_113
LBB3_145:                               ; %if.then1281.8
.Ltmp700:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp701:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp702:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp703:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp704:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_147
; %bb.146:                              ; %if.then1354.8
.Ltmp705:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r3_lo
.Ltmp706:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r65, r2
.Ltmp707:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp708:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r5, r64, r2
.Ltmp709:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp710:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r63, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r62, r2
.Ltmp711:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp712:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp713:
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r4, 1, r6
	add_co_u32 r2, r0, r4
	addc_co_u32 r4, r1, r5
	add_co_u32 r10, 0x38000, r2
	addc_co_u32 r11, r4, 0
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_147:                               ; %Flow578
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_114
LBB3_148:                               ; %if.then1281.9
.Ltmp714:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp715:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp716:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp717:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp718:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_150
; %bb.149:                              ; %if.then1354.9
.Ltmp719:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r3_lo
.Ltmp720:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r61, r2
.Ltmp721:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp722:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r5, r60, r2
.Ltmp723:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp724:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r59, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r58, r2
.Ltmp725:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp726:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp727:
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r4, 1, r6
	add_co_u32 r2, r0, r4
	addc_co_u32 r4, r1, r5
	add_co_u32 r10, 0x38020, r2
	addc_co_u32 r11, r4, 0
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_150:                               ; %Flow577
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_115
LBB3_151:                               ; %if.then1281.10
.Ltmp728:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp729:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp730:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp731:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp732:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_153
; %bb.152:                              ; %if.then1354.10
.Ltmp733:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r3_lo
.Ltmp734:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r57, r2
.Ltmp735:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp736:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r5, r56, r2
.Ltmp737:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp738:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r55, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r54, r2
.Ltmp739:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp740:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp741:
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r4, 1, r6
	add_co_u32 r2, r0, r4
	addc_co_u32 r4, r1, r5
	add_co_u32 r10, 0x38040, r2
	addc_co_u32 r11, r4, 0
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_153:                               ; %Flow576
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_116
LBB3_154:                               ; %if.then1281.11
.Ltmp742:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp743:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp744:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp745:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp746:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_156
; %bb.155:                              ; %if.then1354.11
.Ltmp747:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r3_lo
.Ltmp748:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r53, r2
.Ltmp749:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp750:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r5, r52, r2
.Ltmp751:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp752:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r51, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r50, r2
.Ltmp753:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp754:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp755:
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r4, 1, r6
	add_co_u32 r2, r0, r4
	addc_co_u32 r4, r1, r5
	add_co_u32 r10, 0x38060, r2
	addc_co_u32 r11, r4, 0
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_156:                               ; %Flow575
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_117
LBB3_157:                               ; %if.then1281.12
.Ltmp756:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp757:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp758:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp759:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp760:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_159
; %bb.158:                              ; %if.then1354.12
.Ltmp761:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r3_lo
.Ltmp762:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r49, r2
.Ltmp763:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp764:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r5, r48, r2
.Ltmp765:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp766:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r47, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r46, r2
.Ltmp767:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp768:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp769:
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r4, 1, r6
	add_co_u32 r2, r0, r4
	addc_co_u32 r4, r1, r5
	add_co_u32 r10, 0x38080, r2
	addc_co_u32 r11, r4, 0
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_159:                               ; %Flow574
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_118
LBB3_160:                               ; %if.then1281.13
.Ltmp770:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp771:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp772:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp773:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp774:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_162
; %bb.161:                              ; %if.then1354.13
.Ltmp775:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r3_lo
.Ltmp776:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r45, r2
.Ltmp777:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp778:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r5, r44, r2
.Ltmp779:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp780:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r43, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r42, r2
.Ltmp781:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp782:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp783:
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r4, 1, r6
	add_co_u32 r2, r0, r4
	addc_co_u32 r4, r1, r5
	add_co_u32 r10, 0x380a0, r2
	addc_co_u32 r11, r4, 0
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_162:                               ; %Flow573
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_119
LBB3_163:                               ; %if.then1281.14
.Ltmp784:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp785:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp786:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp787:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp788:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_165
; %bb.164:                              ; %if.then1354.14
.Ltmp789:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r3_lo
.Ltmp790:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r4, r41, r2
.Ltmp791:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp792:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r5, r40, r2
.Ltmp793:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp794:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r4, 16, r4
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r4, r5
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r4, r39, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r38, r2
.Ltmp795:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp796:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp797:
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r4, 16, r4
	and_b32 r2, 0xffff, r2
	or_b32 r8, r4, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r4, 1, r6
	add_co_u32 r2, r0, r4
	addc_co_u32 r4, r1, r5
	add_co_u32 r10, 0x380c0, r2
	addc_co_u32 r11, r4, 0
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_165:                               ; %Flow572
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 447 9 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:447:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_120
LBB3_166:                               ; %if.then1281.15
.Ltmp798:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp799:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp800:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp801:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp802:
	.loc	2 459 11 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:459:11
	snop 0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_120
; %bb.167:                              ; %if.then1354.15
.Ltmp803:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r3_lo
.Ltmp804:
	.loc	2 455 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:455:24
	mul_f32 r3, r37, r2
.Ltmp805:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp806:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	mul_f32 r4, r36, r2
.Ltmp807:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp808:
	.loc	2 454 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:454:24
	shl_b32 r3, 16, r3
	.loc	2 458 42                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	.loc	2 453 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:453:24
	mul_f32 r3, r35, r2
	.loc	2 452 24                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:452:24
	mul_f32 r2, r34, r2
.Ltmp809:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp810:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp811:
	.loc	2 458 42 is_stmt 1              ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:458:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	.loc	2 461 28                        ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:28
	shl_b64 r2, 1, r6
	add_co_u32 r0, r0, r2
	addc_co_u32 r1, r1, r3
	add_co_u32 r0, 0x380e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 461 461 is_stmt 0             ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:461:461
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 466 1 is_stmt 1               ; race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp:466:1
	snop 2
	endk
.Ltmp812:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
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
.Lfunc_end3:
	.size	kernel_kernel_1, .Lfunc_end3-kernel_kernel_1
                                        ; -- End function
	.section	.MetaXGPU.csdata
; Function info:
; codeLenInByte = 21768
; NumMTRegsForWarps/PEU: 208
; NumSTRegsForWarps/PEU: 52
; MaxWarpsPerPEU: 2
	.protected	buf_dyn_shmem
	.protected	routed_expert_down_shared
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
	.byte	11                              ; Abbreviation Code
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
	.byte	1                               ; Abbrev [1] 0xb:0x401 DW_TAG_compile_unit
	.long	.Linfo_string0                  ; DW_AT_producer
	.short	33                              ; DW_AT_language
	.long	.Linfo_string1                  ; DW_AT_name
	.long	.Lline_table_start0             ; DW_AT_stmt_list
	.long	.Linfo_string2                  ; DW_AT_comp_dir
	.quad	.Lfunc_begin0                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin0       ; DW_AT_high_pc
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
	.byte	2                               ; Abbrev [2] 0x4e:0x6 DW_TAG_subprogram
	.long	.Linfo_string9                  ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x54:0x164 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x65:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	86                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x79:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x8e:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	117                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xa2:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xb7:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	164                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xcb:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xe0:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	196                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xf4:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x109:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp13                         ; DW_AT_low_pc
	.long	.Ltmp14-.Ltmp13                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	21                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x11d:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	227                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x129:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	226                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x135:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	225                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x141:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	224                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x14d:0x35 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	252                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x159:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x166:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x173:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x182:0x35 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	253                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x18e:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x19b:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x1a8:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x1b8:0x6 DW_TAG_subprogram
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1be:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x1c4:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x1ca:0x241 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	10                              ; Abbrev [10] 0x1db:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	301                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1f0:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x205:0xd DW_TAG_inlined_subroutine
	.long	440                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	304                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x212:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp331                        ; DW_AT_low_pc
	.long	.Ltmp332-.Ltmp331               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	333                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x227:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp331                        ; DW_AT_low_pc
	.long	.Ltmp332-.Ltmp331               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x23c:0xd DW_TAG_inlined_subroutine
	.long	440                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	335                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x249:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp343                        ; DW_AT_low_pc
	.long	.Ltmp344-.Ltmp343               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	353                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x25e:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp343                        ; DW_AT_low_pc
	.long	.Ltmp344-.Ltmp343               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x273:0xd DW_TAG_inlined_subroutine
	.long	440                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	355                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x280:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp357                        ; DW_AT_low_pc
	.long	.Ltmp358-.Ltmp357               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	386                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x295:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp357                        ; DW_AT_low_pc
	.long	.Ltmp358-.Ltmp357               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x2aa:0x15 DW_TAG_inlined_subroutine
	.long	440                             ; DW_AT_abstract_origin
	.quad	.Ltmp359                        ; DW_AT_low_pc
	.long	.Ltmp360-.Ltmp359               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	389                             ; DW_AT_call_line
	.byte	32                              ; DW_AT_call_column
	.byte	10                              ; Abbrev [10] 0x2bf:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp361                        ; DW_AT_low_pc
	.long	.Ltmp362-.Ltmp361               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	409                             ; DW_AT_call_line
	.byte	7                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2d4:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp361                        ; DW_AT_low_pc
	.long	.Ltmp362-.Ltmp361               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x2e9:0x15 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp362                        ; DW_AT_low_pc
	.long	.Ltmp363-.Ltmp362               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	275                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2fe:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	435                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x30b:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x318:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x325:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x334:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	436                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x341:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x34e:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x35b:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x36a:0x1a DW_TAG_inlined_subroutine
	.long	452                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	430                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x377:0xc DW_TAG_inlined_subroutine
	.long	446                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x384:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	456                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x391:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x39e:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3ab:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3ba:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	457                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3c7:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3d4:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3e1:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3f0:0x1a DW_TAG_inlined_subroutine
	.long	452                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	451                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x3fd:0xc DW_TAG_inlined_subroutine
	.long	446                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
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
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges34:
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v028_step2_half_b_pipeline_sc-16g/codegen/v028l/v028l_sync_only_case2_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=171
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=192
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=202
.Linfo_string5:
	.asciz	"min"                           ; string offset=216
.Linfo_string6:
	.asciz	"exp2f"                         ; string offset=220
.Linfo_string7:
	.asciz	"__float2half_rn"               ; string offset=226
.Linfo_string8:
	.asciz	"__floats2half2_rn"             ; string offset=242
.Linfo_string9:
	.asciz	"__float22half2_rn"             ; string offset=260
.Linfo_string10:
	.asciz	"memcpy_async<16, false>"       ; string offset=278
.Linfo_string11:
	.asciz	"__half2float"                  ; string offset=302
.Linfo_string12:
	.asciz	"operator float"                ; string offset=315
.Linfo_string13:
	.asciz	"kernel_kernel"                 ; string offset=330
.Linfo_string14:
	.asciz	"kernel_kernel_1"               ; string offset=344
	.section	".note.GNU-stack"
	.metaxgpu_metadata
---
macahca.kernels:
  - .args:
      - .access:         read_only
        .arg_name:       group_idx_for_bx.coerce
        .arg_offset_bytes: 0
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_offsets.coerce
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
        .arg_name:       routed_expert_gate.coerce
        .arg_offset_bytes: 40
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_attribute:  is_constant
        .arg_name:       routed_expert_up.coerce
        .arg_offset_bytes: 48
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_name:       up_logits.coerce
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
    .kd_symbol:      kernel_kernel.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 144
    .max_block_size: 256
    .mtreg_count:    212
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    52
  - .args:
      - .access:         read_only
        .arg_name:       group_idx_for_bx.coerce
        .arg_offset_bytes: 0
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_name:       group_offsets.coerce
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
      - .arg_name:       output.coerce
        .arg_offset_bytes: 32
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .arg_attribute:  is_constant
        .arg_name:       routed_expert_down.coerce
        .arg_offset_bytes: 40
        .arg_param_pass: global_buffer
        .arg_size_bytes: 8
      - .access:         read_only
        .arg_attribute:  is_constant
        .arg_name:       routed_expert_weights.coerce
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
    .kd_symbol:      kernel_kernel_1.kd
    .kernarg_align_bytes: 8
    .kernarg_size_bytes: 144
    .max_block_size: 256
    .mtreg_count:    208
    .name:           kernel_kernel_1
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
