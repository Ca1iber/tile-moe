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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 18 23 prologue_end            ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:18:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	and_b32 r1, 0x3ff, r0
	ldu_b256 s8, s0, 0x20
	shl_b32 r2, 3, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	smul_i32 s17, 0xe0000, s4
	smov_b32 s5, 0x1c00
	shr_b32 r23, 3, r1
	mov_b32 r0, s17
	mad_u24 r0, r23, s5, r0
	and_b32 r24, r2, 56
	arrive slcnt(0)
	smul_i32 s24, 0xe00000, s6
	or_b32 r0, r0, r24
	add_u32 r46, r0, s24
	.loc	2 29 498                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:498
	add_u32 r48, 0x38000, r46
	add_u32 r50, 0x70000, r46
	add_u32 r52, 0xa8000, r46
	.loc	2 29 377 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:377
	mad_i32 r8, r46, 2, s10
	mad_i32 r10, r48, 2, s10
	mad_i32 r12, r50, 2, s10
	mad_i32 r14, r52, 2, s10
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:346
	ldg_b128 r36, r8, 0x0
	ldg_b128 r40, r10, 0x0
	ldg_b128 r54, r12, 0x0
	ldg_b128 r58, r14, 0x0
	and_b32 r0, r2, 16
	.loc	2 18 23 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:18:23
	sashr_i32 s7, 31, s6
	add_u32 r6, r0, r1
	and_b32 r4, r2, 32
	mul_u24 r0, r1, 9
	shr_b32 r8, 1, r1
	and_b32 r3, 0x1fc0, r2
	and_b32 r2, r1, 15
	smov_b32 s0, 0x1e0
	.loc	2 19 24                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:19:24
	sshl_b64 s6, 2, s6
	and_b32 r7, r0, 8
	and_or_b32 r0, r8, s0, r2
	sadd_co_u32 s0, s22, s6
	saddc_co_u32 s1, s23, s7
	.loc	2 20 38                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:20:38
	sshl_b32 s2, 7, s2
	.loc	2 20 47 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:20:47
	sadd_co_u32 s18, s18, s6
	saddc_co_u32 s19, s19, s7
	.loc	2 20 79                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:20:79
	sadd_co_u32 s6, s20, s6
	.loc	2 20 47                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:20:47
	ldu_b32 s3, s18, 0x0
	.loc	2 19 24 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:19:24
	ldu_b32 s1, s0, 0x0
	.loc	2 20 79                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:20:79
	saddc_co_u32 s7, s21, s7
	ldu_b32 s0, s6, 0x0
	shr_b32 r9, 6, r1
	shr_b32 r10, 5, r1
	mul_u24 r9, 0x38000, r9
	and_b32 r27, r8, 24
	add_shl_u32 r8, r10, r8, 4
	shr_b32 r10, 4, r1
	mad_u24 r26, r2, s5, r9
	shl_b32 r2, 6, r1
	add_shl_u32 r10, r10, r1, 3
	and_b32 r8, r8, 16
	and_b32 r9, 0x3c0, r2
	add_u32 r5, r4, r1
	and_or_b32 r32, r10, 8, r8
	.loc	2 21 54                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:21:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 20 45                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:20:45
	sadd_co_i32 s2, s3, s2
	or_b32 r11, 0x400, r9
	or_b32 r12, 0x800, r9
	or_b32 r13, 0xc00, r9
	or_b32 r14, 0x1000, r9
	or_b32 r15, 0x1400, r9
	or_b32 r16, 0x1800, r9
	or_b32 r30, 0x1c00, r9
	or_b32 r9, r32, r9
	xor_b32 r31, r4, 32
	and_b32 r5, r5, 32
	or_b32 r10, r32, r4
	.loc	2 20 77 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:20:77
	ssub_co_i32 s16, s2, s0
	.loc	2 29 98 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:98
	or_b32 r8, r5, r7
	and_b32 r6, r6, 16
	or3_b32 r17, r32, r11, r31
	or3_b32 r18, r32, r12, r31
	or3_b32 r19, r32, r13, r31
	or3_b32 r20, r32, r14, r31
	or_b32 r14, r10, r14
	or_b32 r11, r10, r11
	or_b32 r12, r10, r12
	or_b32 r13, r10, r13
	or_b32 r33, r10, r15
	or_b32 r34, r10, r16
	or_b32 r10, r10, r30
	or_b32 r35, r9, r31
	sadd_co_u32 s10, 0x80, s10
	mov_b32 r25, 0x1c00
	.loc	2 29 62 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:62
	or_b32 r5, r3, r5
	.loc	2 29 268                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:268
	or3_b32 r28, r8, r3, r6
	or_b32 r29, r9, r4
	shl_add_u32 r9, 1, r17, 0
	shl_add_u32 r17, 1, r11, 0
	shl_add_u32 r11, 1, r10, 0
	shl_add_u32 r10, 1, r35, 0
	add_u32 r35, s16, r0
	.loc	2 29 183                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:183
	or3_b32 r7, r5, r6, r7
	shl_add_u32 r6, 1, r19, 0
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:43
	shl_add_u32 r19, 1, r28, 0
	mul_hi_i32 r28, s16, r25
	saddc_co_u32 s11, s11, 0
	smul_i32 s2, 0x1c00, s16
	add_u32 r25, r35, 16
	.loc	2 31 3 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:31:3
	sadd_co_i32 s17, s24, s17
	shl_add_u32 r8, 1, r18, 0
	shl_add_u32 r18, 1, r29, 0
	mov_b32 r29, s2
	cmp_gt_u32 s2, 0x2380, r25
	mov_b32 r25, s17
	mad_u24 r23, r23, s5, r25
	or_b32 r23, r23, r24
	mov_b32 r24, 0x3800
	smul_i32 s5, 0x3800, s16
	or3_b32 r21, r32, r15, r31
	or3_b32 r22, r32, r16, r31
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:43
	shl_add_u32 r7, 1, r7, 0
	.loc	2 31 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:31:3
	mul_hi_i32 r25, s16, r24
	mov_b32 r24, s5
	shl_add_u32 r16, 1, r12, 0
	shl_add_u32 r15, 1, r13, 0
	shl_add_u32 r13, 1, r33, 0
	shl_add_u32 r12, 1, r34, 0
	shl_add_u32 r5, 1, r20, 0
	shl_add_u32 r4, 1, r21, 0
	shl_add_u32 r3, 1, r22, 0
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:43
	add_u32 r20, 0x1000, r7
	.loc	2 29 346 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:346
	add_i32 r33, 0x1000, r7
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:43
	add_u32 r21, 0x2000, r7
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:346
	add_i32 r34, 0x2000, r7
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:43
	add_u32 r22, 0x3000, r7
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:346
	add_i32 r7, 0x3000, r7
	cmp_gt_u32 s6, 0x2380, r35
	.loc	2 31 3 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:31:3
	and_or_b32 r24, r1, 48, r24
	shr_b32 r2, 2, r1
	shl_add_u32 r14, 1, r14, 0
	smov_b64 s18, 0
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:346
	arrive gvmcnt(3)
	sts_b128 r19, 0x0, r36
	arrive gvmcnt(2)
	sts_b128 r33, 0x0, r40
	arrive gvmcnt(1)
	sts_b128 r34, 0x0, r54
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:0
	shl_b64 r56, 0, 0
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:29:346
	arrive gvmcnt(0)
	sts_b128 r7, 0x0, r58
	or3_b32 r7, r32, r30, r31
	.loc	2 31 3 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:31:3
	mad_u32 r30, r26, 2, r24
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:0
	shl_b64 r58, 0, 0
	.loc	2 31 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:31:3
	add_co_u32 r24, s8, r30
	shl_b64 r60, 0, r56
	shl_b64 r64, 0, r56
	shl_b64 r68, 0, r56
	shl_b64 r72, 0, r56
	shl_b64 r76, 0, r56
	shl_b64 r80, 0, r56
	shl_b64 r84, 0, r56
	shl_b64 r88, 0, r56
	shl_b64 r92, 0, r56
	shl_b64 r96, 0, r56
	shl_b64 r100, 0, r56
	shl_b64 r104, 0, r56
	shl_b64 r108, 0, r56
	shl_b64 r112, 0, r56
	shl_b64 r116, 0, r56
	mov_b32 r25, s9
	shl_add_u32 r7, 1, r7, 0
	addc_co_u32 r25, r25, r31
	mov_b32 r30, r23
	shl_b64 r62, 0, r58
	shl_b64 r66, 0, r58
	shl_b64 r70, 0, r58
	shl_b64 r74, 0, r58
	shl_b64 r78, 0, r58
	shl_b64 r82, 0, r58
	shl_b64 r86, 0, r58
	shl_b64 r90, 0, r58
	shl_b64 r94, 0, r58
	shl_b64 r98, 0, r58
	shl_b64 r102, 0, r58
	shl_b64 r106, 0, r58
	shl_b64 r110, 0, r58
	shl_b64 r114, 0, r58
	shl_b64 r118, 0, r58
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 3                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s20
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r124, r18, 0x0
	lds_b128 r128, r17, 0x0
	lds_b128 r132, r16, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r124, r40, r116
	mma_16x16x16f16 r84, r124, r120, r84
	mma_16x16x16f16 r116, r126, r42, r116
	mma_16x16x16f16 r84, r126, r122, r84
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r124, r15, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r128, r40, r112
	mma_16x16x16f16 r80, r128, r120, r80
	mma_16x16x16f16 r112, r130, r42, r112
	mma_16x16x16f16 r80, r130, r122, r80
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r128, r14, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r132, r40, r108
	mma_16x16x16f16 r76, r132, r120, r76
	mma_16x16x16f16 r108, r134, r42, r108
	mma_16x16x16f16 r76, r134, r122, r76
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r132, r13, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r124, r40, r104
	mma_16x16x16f16 r72, r124, r120, r72
	mma_16x16x16f16 r104, r126, r42, r104
	mma_16x16x16f16 r72, r126, r122, r72
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r124, r12, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r128, r40, r100
	mma_16x16x16f16 r68, r128, r120, r68
	mma_16x16x16f16 r100, r130, r42, r100
	mma_16x16x16f16 r68, r130, r122, r68
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r128, r11, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r132, r40, r96
	mma_16x16x16f16 r64, r132, r120, r64
	mma_16x16x16f16 r96, r134, r42, r96
	mma_16x16x16f16 r64, r134, r122, r64
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r132, r10, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r124, r40, r92
	mma_16x16x16f16 r60, r124, r120, r60
	mma_16x16x16f16 r92, r126, r42, r92
	mma_16x16x16f16 r60, r126, r122, r60
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r124, r9, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r128, r40, r88
	mma_16x16x16f16 r56, r128, r120, r56
	mma_16x16x16f16 r88, r130, r42, r88
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r40, r8, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	mma_16x16x16f16 r56, r130, r122, r56
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r120, r6, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r116, r132, r32, r116
	mma_16x16x16f16 r84, r132, r36, r84
	mma_16x16x16f16 r116, r134, r34, r116
	mma_16x16x16f16 r84, r134, r38, r84
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r124, r32, r112
	mma_16x16x16f16 r80, r124, r36, r80
	mma_16x16x16f16 r112, r126, r34, r112
	mma_16x16x16f16 r80, r126, r38, r80
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r124, r5, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r40, r32, r108
	mma_16x16x16f16 r76, r40, r36, r76
	mma_16x16x16f16 r108, r42, r34, r108
	mma_16x16x16f16 r76, r42, r38, r76
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r40, r4, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r120, r32, r104
	mma_16x16x16f16 r72, r120, r36, r72
	mma_16x16x16f16 r104, r122, r34, r104
	mma_16x16x16f16 r72, r122, r38, r72
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r120, r3, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r124, r32, r100
	mma_16x16x16f16 r68, r124, r36, r68
	mma_16x16x16f16 r100, r126, r34, r100
	mma_16x16x16f16 r68, r126, r38, r68
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:46:50
	lds_b128 r124, r7, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r40, r32, r96
	mma_16x16x16f16 r64, r40, r36, r64
	mma_16x16x16f16 r96, r42, r34, r96
	mma_16x16x16f16 r64, r42, r38, r64
	arrive bsmcnt(1)
	mma_16x16x16f16 r92, r120, r32, r92
	mma_16x16x16f16 r60, r120, r36, r60
	mma_16x16x16f16 r92, r122, r34, r92
	mma_16x16x16f16 r60, r122, r38, r60
	arrive bsmcnt(0)
	mma_16x16x16f16 r88, r124, r32, r88
	mma_16x16x16f16 r56, r124, r36, r56
	mma_16x16x16f16 r88, r126, r34, r88
	mma_16x16x16f16 r56, r126, r38, r56
.Ltmp7:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 63 379                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:63:379
	add_u32 r31, 0x38000, r30
	mad_i32 r34, r31, 2, s10
	add_u32 r31, 0x70000, r30
	mad_i32 r40, r31, 2, s10
	add_u32 r31, 0xa8000, r30
	mad_i32 r32, r30, 2, s10
	mad_i32 r42, r31, 2, s10
	.loc	2 31 21                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:31:21
	sadd_co_u32 s18, 0x80, s18
	.loc	2 63 348                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:63:348
	ldg_b128 r36, r32, 0x0
	ldg_b128 r32, r34, 0x0
	ldg_b128 r120, r40, 0x0
	ldg_b128 r40, r42, 0x0
	.loc	2 31 21                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:31:21
	saddc_co_u32 s19, s19, 0
	scmp_eq_u64 0x3780, s18
	add_u32 r30, r30, 64
	.loc	2 63 348                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:63:348
	arrive gvmcnt(3)
	sts_b128 r19, 0x0, r36
	arrive gvmcnt(2)
	sts_b128 r20, 0x0, r32
	arrive gvmcnt(1)
	sts_b128 r21, 0x0, r120
	arrive gvmcnt(0)
	sts_b128 r22, 0x0, r40
	.loc	2 31 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:31:3
	bra_smsks LBB2_10
LBB2_2:                                 ; %for.cond89.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:3
	shl_b64 r40, 0, 0
	shl_b64 r42, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:36:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:117
	add_co_u32 r32, r24, s18
	mov_b32 r31, s19
	addc_co_u32 r33, r25, r31
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:37:17
	snop 1
	ldg_b128 r40, r32, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r120, 0, 0
	shl_b64 r122, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:36:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:117
	add_co_u32 r31, r24, s18
	mov_b32 r32, s19
	addc_co_u32 r32, r25, r32
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:37:17
	add_co_u32 r34, 0x38000, r31
	addc_co_u32 r35, r32, 0
	snop 1
	ldg_b128 r120, r34, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r32, 0, 0
	shl_b64 r34, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:36:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:117
	add_co_u32 r32, r24, s18
	mov_b32 r31, s19
	addc_co_u32 r33, r25, r31
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:37:17
	snop 1
	ldg_b128 r32, r32, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r36, 0, 0
	shl_b64 r38, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:36:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB2_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:117
	add_co_u32 r31, r24, s18
	mov_b32 r36, s19
	addc_co_u32 r36, r25, r36
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:37:17
	add_co_u32 r38, 0x38040, r31
	addc_co_u32 r39, r36, 0
	snop 1
	ldg_b128 r36, r38, 0x0
	bra LBB2_1
LBB2_10:                                ; %for.cond330.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	or_b32 r26, r26, r27
	add_co_u32 r54, r29, r26
	addc_co_u32 r55, r28, 0
	shl_b64 r26, 0, 0
	shl_b64 r28, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:70:115
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_12
; %bb.11:                               ; %if.then357
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:115
	shl_b64 r28, 1, r54
	add_co_u32 r26, s8, r28
	mov_b32 r27, s9
	addc_co_u32 r27, r27, r29
	add_co_u32 r26, 0x3780, r26
	addc_co_u32 r27, r27, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r26, r26, 0x0
LBB2_12:                                ; %if.end409
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r34, 0, 0
	shl_b64 r36, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:70:115
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then357.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:115
	shl_b64 r32, 1, r54
	add_co_u32 r30, s8, r32
	mov_b32 r31, s9
	addc_co_u32 r31, r31, r33
	add_co_u32 r30, 0x3b780, r30
	addc_co_u32 r31, r31, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r34, r30, 0x0
LBB2_14:                                ; %if.end409.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r30, 0, 0
	shl_b64 r32, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:70:115
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then357.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:115
	shl_b64 r32, 1, r54
	add_co_u32 r30, s8, r32
	mov_b32 r31, s9
	addc_co_u32 r31, r31, r33
	add_co_u32 r30, 0x37c0, r30
	addc_co_u32 r31, r31, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r30, r30, 0x0
LBB2_16:                                ; %if.end409.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r38, 0, 0
	shl_b64 r40, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:70:115
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then357.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:115
	shl_b64 r40, 1, r54
	add_co_u32 r38, s8, r40
	mov_b32 r39, s9
	addc_co_u32 r39, r39, r41
	add_co_u32 r38, 0x3b7c0, r38
	addc_co_u32 r39, r39, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r38, r38, 0x0
LBB2_18:                                ; %if.end409.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	sadd_co_i32 s0, s1, s0
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r42, r18, 0x0
	lds_b128 r120, r17, 0x0
	lds_b128 r124, r16, 0x0
	smov_b32 s1, 0x3f800000
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r42, r26, r116
	mma_16x16x16f16 r84, r42, r34, r84
	mma_16x16x16f16 r116, r44, r28, r116
	mma_16x16x16f16 r84, r44, r36, r84
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r42, r15, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r120, r26, r112
	mma_16x16x16f16 r80, r120, r34, r80
	mma_16x16x16f16 r112, r122, r28, r112
	mma_16x16x16f16 r80, r122, r36, r80
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r120, r14, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r124, r26, r108
	mma_16x16x16f16 r76, r124, r34, r76
	mma_16x16x16f16 r108, r126, r28, r108
	mma_16x16x16f16 r76, r126, r36, r76
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r124, r13, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r42, r26, r104
	mma_16x16x16f16 r72, r42, r34, r72
	mma_16x16x16f16 r104, r44, r28, r104
	mma_16x16x16f16 r72, r44, r36, r72
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r42, r12, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r120, r26, r100
	mma_16x16x16f16 r68, r120, r34, r68
	mma_16x16x16f16 r100, r122, r28, r100
	mma_16x16x16f16 r68, r122, r36, r68
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r120, r11, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r124, r26, r96
	mma_16x16x16f16 r64, r124, r34, r64
	mma_16x16x16f16 r96, r126, r28, r96
	mma_16x16x16f16 r64, r126, r36, r64
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r124, r10, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r42, r26, r92
	mma_16x16x16f16 r60, r42, r34, r60
	mma_16x16x16f16 r92, r44, r28, r92
	mma_16x16x16f16 r60, r44, r36, r60
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r42, r9, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r120, r26, r88
	mma_16x16x16f16 r56, r120, r34, r56
	mma_16x16x16f16 r88, r122, r28, r88
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r26, r8, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r56, r122, r36, r56
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r34, r6, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r116, r124, r30, r116
	mma_16x16x16f16 r84, r124, r38, r84
	mma_16x16x16f16 r116, r126, r32, r116
	mma_16x16x16f16 r84, r126, r40, r84
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r42, r30, r112
	mma_16x16x16f16 r80, r42, r38, r80
	mma_16x16x16f16 r112, r44, r32, r112
	mma_16x16x16f16 r80, r44, r40, r80
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r42, r5, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r26, r30, r108
	mma_16x16x16f16 r76, r26, r38, r76
	mma_16x16x16f16 r108, r28, r32, r108
	mma_16x16x16f16 r76, r28, r40, r76
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r26, r4, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r34, r30, r104
	mma_16x16x16f16 r72, r34, r38, r72
	mma_16x16x16f16 r104, r36, r32, r104
	mma_16x16x16f16 r72, r36, r40, r72
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r34, r3, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r42, r30, r100
	mma_16x16x16f16 r68, r42, r38, r68
	mma_16x16x16f16 r100, r44, r32, r100
	mma_16x16x16f16 r68, r44, r40, r68
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:80:50
	lds_b128 r42, r7, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r26, r30, r96
	mma_16x16x16f16 r64, r26, r38, r64
	mma_16x16x16f16 r96, r28, r32, r96
	mov_b32 r27, 0x1f800000
	mma_16x16x16f16 r64, r28, r40, r64
	arrive bsmcnt(1)
	mma_16x16x16f16 r92, r34, r30, r92
	mov_b32 r28, 0x42800000
	mma_16x16x16f16 r60, r34, r38, r60
	mma_16x16x16f16 r92, r36, r32, r92
	mma_16x16x16f16 r60, r36, r40, r60
	arrive bsmcnt(0)
	mma_16x16x16f16 r88, r42, r30, r88
	mma_16x16x16f16 r56, r42, r38, r56
	mma_16x16x16f16 r88, r44, r32, r88
	mma_16x16x16f16 r56, r44, r40, r56
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	snop 5
	mul_f32 r26, 0xbfb8aa3b, r58
.Ltmp11:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
	mov_b32 r26, 0x3f800000
	snop 2
	csel_b32 r30, r28, 0, s10
	fmka_f32 r30, r58, 0xbfb8aa3b, r30
	exp_f32 r30, r30
	csel_b32 r29, r27, r26, s10
.Ltmp12:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	fmak_f32 r29, r29, r30, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r30, r29, r29, s1
	rcp_f32 r31, r30
	snop 0
	fma_f32 r32, neg(r30), r31, r26
	fmac_f32 r31, r32, r31
	div_scale_f32 r32, s1, r29, s1
	mul_f32 r33, r32, r31
	fma_f32 r34, neg(r30), r33, r32
	fmac_f32 r33, r34, r31
	fmac_f32 r32, neg(r30), r33
	div_fmas_f32 r30, r32, r31, r33
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r31, 0xbfb8aa3b, r56
.Ltmp13:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r31
.Ltmp14:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r29, r30, r29, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r29, r58, r29
.Ltmp15:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r29_lo, r29
.Ltmp16:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r31, r28, 0, s10
	fmka_f32 r31, r56, 0xbfb8aa3b, r31
	csel_b32 r30, r27, r26, s10
	exp_f32 r31, r31
.Ltmp17:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r30, r30, r31, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r31, r30, r30, s1
	rcp_f32 r32, r31
	snop 0
	fma_f32 r33, neg(r31), r32, r26
	fmac_f32 r32, r33, r32
	div_scale_f32 r33, s1, r30, s1
	mul_f32 r34, r33, r32
	fma_f32 r35, neg(r31), r34, r33
	fmac_f32 r34, r35, r32
	fmac_f32 r33, neg(r31), r34
	div_fmas_f32 r31, r33, r32, r34
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r32, 0xbfb8aa3b, r62
.Ltmp18:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r32
.Ltmp19:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r30, r31, r30, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r30, r56, r30
.Ltmp20:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r30_lo, r30
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r32, r28, 0, s10
	fmka_f32 r32, r62, 0xbfb8aa3b, r32
	csel_b32 r31, r27, r26, s10
	exp_f32 r32, r32
.Ltmp22:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r31, r31, r32, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r32, r31, r31, s1
	rcp_f32 r33, r32
	snop 0
	fma_f32 r34, neg(r32), r33, r26
	fmac_f32 r33, r34, r33
	div_scale_f32 r34, s1, r31, s1
	mul_f32 r35, r34, r33
	fma_f32 r36, neg(r32), r35, r34
	fmac_f32 r35, r36, r33
	fmac_f32 r34, neg(r32), r35
	div_fmas_f32 r32, r34, r33, r35
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r33, 0xbfb8aa3b, r60
.Ltmp23:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r33
.Ltmp24:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r31, r32, r31, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r31, r62, r31
.Ltmp25:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r31_lo, r31
.Ltmp26:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r28, 0, s10
	fmka_f32 r33, r60, 0xbfb8aa3b, r33
	csel_b32 r32, r27, r26, s10
	exp_f32 r33, r33
.Ltmp27:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r32, r32, r33, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r33, r32, r32, s1
	rcp_f32 r34, r33
	snop 0
	fma_f32 r35, neg(r33), r34, r26
	fmac_f32 r34, r35, r34
	div_scale_f32 r35, s1, r32, s1
	mul_f32 r36, r35, r34
	fma_f32 r37, neg(r33), r36, r35
	fmac_f32 r36, r37, r34
	fmac_f32 r35, neg(r33), r36
	div_fmas_f32 r33, r35, r34, r36
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r34, 0xbfb8aa3b, r66
.Ltmp28:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r34
.Ltmp29:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r32, r33, r32, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r32, r60, r32
.Ltmp30:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r32_lo, r32
.Ltmp31:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r34, r28, 0, s10
	fmka_f32 r34, r66, 0xbfb8aa3b, r34
	csel_b32 r33, r27, r26, s10
	exp_f32 r34, r34
.Ltmp32:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r33, r33, r34, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r34, r33, r33, s1
	rcp_f32 r35, r34
	snop 0
	fma_f32 r36, neg(r34), r35, r26
	fmac_f32 r35, r36, r35
	div_scale_f32 r36, s1, r33, s1
	mul_f32 r37, r36, r35
	fma_f32 r38, neg(r34), r37, r36
	fmac_f32 r37, r38, r35
	fmac_f32 r36, neg(r34), r37
	div_fmas_f32 r34, r36, r35, r37
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r35, 0xbfb8aa3b, r64
.Ltmp33:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r35
.Ltmp34:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r33, r34, r33, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r33, r66, r33
.Ltmp35:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r33_lo, r33
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r28, 0, s10
	fmka_f32 r35, r64, 0xbfb8aa3b, r35
	csel_b32 r34, r27, r26, s10
	exp_f32 r35, r35
.Ltmp37:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r34, r34, r35, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r35, r34, r34, s1
	rcp_f32 r36, r35
	snop 0
	fma_f32 r37, neg(r35), r36, r26
	fmac_f32 r36, r37, r36
	div_scale_f32 r37, s1, r34, s1
	mul_f32 r38, r37, r36
	fma_f32 r39, neg(r35), r38, r37
	fmac_f32 r38, r39, r36
	fmac_f32 r37, neg(r35), r38
	div_fmas_f32 r35, r37, r36, r38
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r36, 0xbfb8aa3b, r70
.Ltmp38:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r36
.Ltmp39:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r34, r35, r34, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r34, r64, r34
.Ltmp40:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r34_lo, r34
.Ltmp41:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r36, r28, 0, s10
	fmka_f32 r36, r70, 0xbfb8aa3b, r36
	csel_b32 r35, r27, r26, s10
	exp_f32 r36, r36
.Ltmp42:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r35, r35, r36, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r36, r35, r35, s1
	rcp_f32 r37, r36
	snop 0
	fma_f32 r38, neg(r36), r37, r26
	fmac_f32 r37, r38, r37
	div_scale_f32 r38, s1, r35, s1
	mul_f32 r39, r38, r37
	fma_f32 r40, neg(r36), r39, r38
	fmac_f32 r39, r40, r37
	fmac_f32 r38, neg(r36), r39
	div_fmas_f32 r36, r38, r37, r39
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r37, 0xbfb8aa3b, r68
.Ltmp43:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r37
.Ltmp44:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r35, r36, r35, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r35, r70, r35
.Ltmp45:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r35_lo, r35
.Ltmp46:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r28, 0, s10
	fmka_f32 r37, r68, 0xbfb8aa3b, r37
	csel_b32 r36, r27, r26, s10
	exp_f32 r37, r37
.Ltmp47:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r36, r36, r37, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r37, r36, r36, s1
	rcp_f32 r38, r37
	snop 0
	fma_f32 r39, neg(r37), r38, r26
	fmac_f32 r38, r39, r38
	div_scale_f32 r39, s1, r36, s1
	mul_f32 r40, r39, r38
	fma_f32 r41, neg(r37), r40, r39
	fmac_f32 r40, r41, r38
	fmac_f32 r39, neg(r37), r40
	div_fmas_f32 r37, r39, r38, r40
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r38, 0xbfb8aa3b, r74
.Ltmp48:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r38
.Ltmp49:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r36, r37, r36, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r36, r68, r36
.Ltmp50:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r36_lo, r36
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r38, r28, 0, s10
	fmka_f32 r38, r74, 0xbfb8aa3b, r38
	csel_b32 r37, r27, r26, s10
	exp_f32 r38, r38
.Ltmp52:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r37, r37, r38, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r38, r37, r37, s1
	rcp_f32 r39, r38
	snop 0
	fma_f32 r40, neg(r38), r39, r26
	fmac_f32 r39, r40, r39
	div_scale_f32 r40, s1, r37, s1
	mul_f32 r41, r40, r39
	fma_f32 r42, neg(r38), r41, r40
	fmac_f32 r41, r42, r39
	fmac_f32 r40, neg(r38), r41
	div_fmas_f32 r38, r40, r39, r41
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r39, 0xbfb8aa3b, r72
.Ltmp53:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r39
.Ltmp54:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r37, r38, r37, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r37, r74, r37
.Ltmp55:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r37_lo, r37
.Ltmp56:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r28, 0, s10
	fmka_f32 r39, r72, 0xbfb8aa3b, r39
	csel_b32 r38, r27, r26, s10
	exp_f32 r39, r39
.Ltmp57:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r38, r38, r39, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r39, r38, r38, s1
	rcp_f32 r40, r39
	snop 0
	fma_f32 r41, neg(r39), r40, r26
	fmac_f32 r40, r41, r40
	div_scale_f32 r41, s1, r38, s1
	mul_f32 r42, r41, r40
	fma_f32 r43, neg(r39), r42, r41
	fmac_f32 r42, r43, r40
	fmac_f32 r41, neg(r39), r42
	div_fmas_f32 r39, r41, r40, r42
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r40, 0xbfb8aa3b, r78
.Ltmp58:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r40
.Ltmp59:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r38, r39, r38, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r38, r72, r38
.Ltmp60:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r38_lo, r38
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r40, r28, 0, s10
	fmka_f32 r40, r78, 0xbfb8aa3b, r40
	csel_b32 r39, r27, r26, s10
	exp_f32 r40, r40
.Ltmp62:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r39, r39, r40, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r40, r39, r39, s1
	rcp_f32 r41, r40
	snop 0
	fma_f32 r42, neg(r40), r41, r26
	fmac_f32 r41, r42, r41
	div_scale_f32 r42, s1, r39, s1
	mul_f32 r43, r42, r41
	fma_f32 r44, neg(r40), r43, r42
	fmac_f32 r43, r44, r41
	fmac_f32 r42, neg(r40), r43
	div_fmas_f32 r40, r42, r41, r43
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r41, 0xbfb8aa3b, r76
.Ltmp63:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r41
.Ltmp64:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r39, r40, r39, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r39, r78, r39
.Ltmp65:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r39_lo, r39
.Ltmp66:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r41, r28, 0, s10
	fmka_f32 r41, r76, 0xbfb8aa3b, r41
	csel_b32 r40, r27, r26, s10
	exp_f32 r41, r41
.Ltmp67:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r40, r40, r41, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r41, r40, r40, s1
	rcp_f32 r42, r41
	snop 0
	fma_f32 r43, neg(r41), r42, r26
	fmac_f32 r42, r43, r42
	div_scale_f32 r43, s1, r40, s1
	mul_f32 r44, r43, r42
	fma_f32 r45, neg(r41), r44, r43
	fmac_f32 r44, r45, r42
	fmac_f32 r43, neg(r41), r44
	div_fmas_f32 r41, r43, r42, r44
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r42, 0xbfb8aa3b, r82
.Ltmp68:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r42
.Ltmp69:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r40, r41, r40, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r40, r76, r40
.Ltmp70:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r40_lo, r40
.Ltmp71:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r42, r28, 0, s10
	fmka_f32 r42, r82, 0xbfb8aa3b, r42
	csel_b32 r41, r27, r26, s10
	exp_f32 r42, r42
.Ltmp72:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r41, r41, r42, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r42, r41, r41, s1
	rcp_f32 r43, r42
	snop 0
	fma_f32 r44, neg(r42), r43, r26
	fmac_f32 r43, r44, r43
	div_scale_f32 r44, s1, r41, s1
	mul_f32 r45, r44, r43
	fma_f32 r47, neg(r42), r45, r44
	fmac_f32 r45, r47, r43
	fmac_f32 r44, neg(r42), r45
	div_fmas_f32 r42, r44, r43, r45
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r43, 0xbfb8aa3b, r80
.Ltmp73:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r43
.Ltmp74:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r41, r42, r41, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r41, r82, r41
.Ltmp75:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r41_lo, r41
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r43, r28, 0, s10
	fmka_f32 r43, r80, 0xbfb8aa3b, r43
	csel_b32 r42, r27, r26, s10
	exp_f32 r43, r43
.Ltmp77:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r42, r42, r43, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r43, r42, r42, s1
	rcp_f32 r44, r43
	snop 0
	fma_f32 r45, neg(r43), r44, r26
	fmac_f32 r44, r45, r44
	div_scale_f32 r45, s1, r42, s1
	mul_f32 r47, r45, r44
	fma_f32 r49, neg(r43), r47, r45
	fmac_f32 r47, r49, r44
	fmac_f32 r45, neg(r43), r47
	div_fmas_f32 r43, r45, r44, r47
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r44, 0xbfb8aa3b, r86
.Ltmp78:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r44
.Ltmp79:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r42, r43, r42, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r42, r80, r42
.Ltmp80:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r42_lo, r42
.Ltmp81:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r44, r28, 0, s10
	fmka_f32 r44, r86, 0xbfb8aa3b, r44
	csel_b32 r43, r27, r26, s10
	exp_f32 r44, r44
.Ltmp82:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r43, r43, r44, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r44, r43, r43, s1
	rcp_f32 r45, r44
	snop 0
	fma_f32 r47, neg(r44), r45, r26
	fmac_f32 r45, r47, r45
	div_scale_f32 r47, s1, r43, s1
	mul_f32 r49, r47, r45
	fma_f32 r51, neg(r44), r49, r47
	fmac_f32 r49, r51, r45
	fmac_f32 r47, neg(r44), r49
	div_fmas_f32 r44, r47, r45, r49
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r45, 0xbfb8aa3b, r84
.Ltmp83:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r45
.Ltmp84:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r43, r44, r43, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r43, r86, r43
.Ltmp85:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r43_lo, r43
.Ltmp86:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r45, r28, 0, s10
	fmka_f32 r45, r84, 0xbfb8aa3b, r45
	csel_b32 r44, r27, r26, s10
	exp_f32 r45, r45
.Ltmp87:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r44, r44, r45, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r45, r44, r44, s1
	rcp_f32 r47, r45
	snop 0
	fma_f32 r49, neg(r45), r47, r26
	fmac_f32 r47, r49, r47
	div_scale_f32 r49, s1, r44, s1
	mul_f32 r51, r49, r47
	fma_f32 r53, neg(r45), r51, r49
	fmac_f32 r51, r53, r47
	fmac_f32 r49, neg(r45), r51
	div_fmas_f32 r45, r49, r47, r51
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r47, 0xbfb8aa3b, r90
.Ltmp88:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r47
.Ltmp89:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r44, r45, r44, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r44, r84, r44
.Ltmp90:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r44_lo, r44
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r47, r28, 0, s10
	fmka_f32 r47, r90, 0xbfb8aa3b, r47
	csel_b32 r45, r27, r26, s10
	exp_f32 r47, r47
.Ltmp92:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r45, r45, r47, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r47, r45, r45, s1
	rcp_f32 r49, r47
	snop 0
	fma_f32 r51, neg(r47), r49, r26
	fmac_f32 r49, r51, r49
	div_scale_f32 r51, s1, r45, s1
	mul_f32 r53, r51, r49
	fma_f32 r56, neg(r47), r53, r51
	fmac_f32 r53, r56, r49
	fmac_f32 r51, neg(r47), r53
	div_fmas_f32 r47, r51, r49, r53
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r49, 0xbfb8aa3b, r88
.Ltmp93:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r49
.Ltmp94:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r45, r47, r45, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r45, r90, r45
.Ltmp95:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r45_lo, r45
.Ltmp96:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r49, r28, 0, s10
	fmka_f32 r49, r88, 0xbfb8aa3b, r49
	csel_b32 r47, r27, r26, s10
	exp_f32 r49, r49
.Ltmp97:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r47, r47, r49, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r49, r47, r47, s1
	rcp_f32 r51, r49
	snop 0
	fma_f32 r53, neg(r49), r51, r26
	fmac_f32 r51, r53, r51
	div_scale_f32 r53, s1, r47, s1
	mul_f32 r56, r53, r51
	fma_f32 r58, neg(r49), r56, r53
	fmac_f32 r56, r58, r51
	fmac_f32 r53, neg(r49), r56
	div_fmas_f32 r49, r53, r51, r56
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r51, 0xbfb8aa3b, r94
.Ltmp98:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r51
.Ltmp99:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r47, r49, r47, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r47, r88, r47
.Ltmp100:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r47_lo, r47
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r51, r28, 0, s10
	fmka_f32 r51, r94, 0xbfb8aa3b, r51
	csel_b32 r49, r27, r26, s10
	exp_f32 r51, r51
.Ltmp102:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r49, r49, r51, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r51, r49, r49, s1
	rcp_f32 r53, r51
	snop 0
	fma_f32 r56, neg(r51), r53, r26
	fmac_f32 r53, r56, r53
	div_scale_f32 r56, s1, r49, s1
	mul_f32 r58, r56, r53
	fma_f32 r60, neg(r51), r58, r56
	fmac_f32 r58, r60, r53
	fmac_f32 r56, neg(r51), r58
	div_fmas_f32 r51, r56, r53, r58
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r53, 0xbfb8aa3b, r92
.Ltmp103:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r53
.Ltmp104:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r49, r51, r49, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r49, r94, r49
.Ltmp105:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r49_lo, r49
.Ltmp106:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r53, r28, 0, s10
	fmka_f32 r53, r92, 0xbfb8aa3b, r53
	csel_b32 r51, r27, r26, s10
	exp_f32 r53, r53
.Ltmp107:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r51, r51, r53, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r53, r51, r51, s1
	rcp_f32 r56, r53
	snop 0
	fma_f32 r58, neg(r53), r56, r26
	fmac_f32 r56, r58, r56
	div_scale_f32 r58, s1, r51, s1
	mul_f32 r60, r58, r56
	fma_f32 r62, neg(r53), r60, r58
	fmac_f32 r60, r62, r56
	fmac_f32 r58, neg(r53), r60
	div_fmas_f32 r53, r58, r56, r60
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r56, 0xbfb8aa3b, r98
.Ltmp108:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r56
.Ltmp109:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r51, r53, r51, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r51, r92, r51
.Ltmp110:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r51_lo, r51
.Ltmp111:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r56, r28, 0, s10
	fmka_f32 r56, r98, 0xbfb8aa3b, r56
	csel_b32 r53, r27, r26, s10
	exp_f32 r56, r56
.Ltmp112:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r53, r53, r56, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r56, r53, r53, s1
	rcp_f32 r58, r56
	snop 0
	fma_f32 r60, neg(r56), r58, r26
	fmac_f32 r58, r60, r58
	div_scale_f32 r60, s1, r53, s1
	mul_f32 r62, r60, r58
	fma_f32 r64, neg(r56), r62, r60
	fmac_f32 r62, r64, r58
	fmac_f32 r60, neg(r56), r62
	div_fmas_f32 r56, r60, r58, r62
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r58, 0xbfb8aa3b, r96
.Ltmp113:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r58
.Ltmp114:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r53, r56, r53, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r53, r98, r53
.Ltmp115:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r53_lo, r53
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r58, r28, 0, s10
	fmka_f32 r58, r96, 0xbfb8aa3b, r58
	csel_b32 r56, r27, r26, s10
	exp_f32 r58, r58
.Ltmp117:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r56, r56, r58, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r58, r56, r56, s1
	rcp_f32 r60, r58
	snop 0
	fma_f32 r62, neg(r58), r60, r26
	fmac_f32 r60, r62, r60
	div_scale_f32 r62, s1, r56, s1
	mul_f32 r64, r62, r60
	fma_f32 r66, neg(r58), r64, r62
	fmac_f32 r64, r66, r60
	fmac_f32 r62, neg(r58), r64
	div_fmas_f32 r58, r62, r60, r64
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r60, 0xbfb8aa3b, r102
.Ltmp118:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r60
.Ltmp119:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r56, r58, r56, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r56, r96, r56
.Ltmp120:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r56_lo, r56
.Ltmp121:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r60, r28, 0, s10
	fmka_f32 r60, r102, 0xbfb8aa3b, r60
	csel_b32 r58, r27, r26, s10
	exp_f32 r60, r60
.Ltmp122:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r58, r58, r60, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r60, r58, r58, s1
	rcp_f32 r62, r60
	snop 0
	fma_f32 r64, neg(r60), r62, r26
	fmac_f32 r62, r64, r62
	div_scale_f32 r64, s1, r58, s1
	mul_f32 r66, r64, r62
	fma_f32 r68, neg(r60), r66, r64
	fmac_f32 r66, r68, r62
	fmac_f32 r64, neg(r60), r66
	div_fmas_f32 r60, r64, r62, r66
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r62, 0xbfb8aa3b, r100
.Ltmp123:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r62
.Ltmp124:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r58, r60, r58, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r58, r102, r58
.Ltmp125:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r58_lo, r58
.Ltmp126:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r62, r28, 0, s10
	fmka_f32 r62, r100, 0xbfb8aa3b, r62
	csel_b32 r60, r27, r26, s10
	exp_f32 r62, r62
.Ltmp127:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r60, r60, r62, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r62, r60, r60, s1
	rcp_f32 r64, r62
	snop 0
	fma_f32 r66, neg(r62), r64, r26
	fmac_f32 r64, r66, r64
	div_scale_f32 r66, s1, r60, s1
	mul_f32 r68, r66, r64
	fma_f32 r70, neg(r62), r68, r66
	fmac_f32 r68, r70, r64
	fmac_f32 r66, neg(r62), r68
	div_fmas_f32 r62, r66, r64, r68
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r64, 0xbfb8aa3b, r106
.Ltmp128:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r64
.Ltmp129:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r60, r62, r60, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r60, r100, r60
.Ltmp130:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r60_lo, r60
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r64, r28, 0, s10
	fmka_f32 r64, r106, 0xbfb8aa3b, r64
	csel_b32 r62, r27, r26, s10
	exp_f32 r64, r64
.Ltmp132:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r62, r62, r64, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r64, r62, r62, s1
	rcp_f32 r66, r64
	snop 0
	fma_f32 r68, neg(r64), r66, r26
	fmac_f32 r66, r68, r66
	div_scale_f32 r68, s1, r62, s1
	mul_f32 r70, r68, r66
	fma_f32 r72, neg(r64), r70, r68
	fmac_f32 r70, r72, r66
	fmac_f32 r68, neg(r64), r70
	div_fmas_f32 r64, r68, r66, r70
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r66, 0xbfb8aa3b, r104
.Ltmp133:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r66
.Ltmp134:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r62, r64, r62, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r62, r106, r62
.Ltmp135:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r62_lo, r62
.Ltmp136:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r66, r28, 0, s10
	fmka_f32 r66, r104, 0xbfb8aa3b, r66
	csel_b32 r64, r27, r26, s10
	exp_f32 r66, r66
.Ltmp137:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r64, r64, r66, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r66, r64, r64, s1
	rcp_f32 r68, r66
	snop 0
	fma_f32 r70, neg(r66), r68, r26
	fmac_f32 r68, r70, r68
	div_scale_f32 r70, s1, r64, s1
	mul_f32 r72, r70, r68
	fma_f32 r74, neg(r66), r72, r70
	fmac_f32 r72, r74, r68
	fmac_f32 r70, neg(r66), r72
	div_fmas_f32 r66, r70, r68, r72
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r68, 0xbfb8aa3b, r110
.Ltmp138:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r68
.Ltmp139:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r64, r66, r64, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r64, r104, r64
.Ltmp140:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r64_lo, r64
.Ltmp141:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r68, r28, 0, s10
	fmka_f32 r68, r110, 0xbfb8aa3b, r68
	csel_b32 r66, r27, r26, s10
	exp_f32 r68, r68
.Ltmp142:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r66, r66, r68, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r68, r66, r66, s1
	rcp_f32 r70, r68
	snop 0
	fma_f32 r72, neg(r68), r70, r26
	fmac_f32 r70, r72, r70
	div_scale_f32 r72, s1, r66, s1
	mul_f32 r74, r72, r70
	fma_f32 r76, neg(r68), r74, r72
	fmac_f32 r74, r76, r70
	fmac_f32 r72, neg(r68), r74
	div_fmas_f32 r68, r72, r70, r74
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r70, 0xbfb8aa3b, r108
.Ltmp143:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r70
.Ltmp144:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r66, r68, r66, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r66, r110, r66
.Ltmp145:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r66_lo, r66
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r108, 0xbfb8aa3b, r70
	csel_b32 r68, r27, r26, s10
	exp_f32 r70, r70
.Ltmp147:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r68, r68, r70, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r70, r68, r68, s1
	rcp_f32 r72, r70
	snop 0
	fma_f32 r74, neg(r70), r72, r26
	fmac_f32 r72, r74, r72
	div_scale_f32 r74, s1, r68, s1
	mul_f32 r76, r74, r72
	fma_f32 r78, neg(r70), r76, r74
	fmac_f32 r76, r78, r72
	fmac_f32 r74, neg(r70), r76
	div_fmas_f32 r70, r74, r72, r76
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r72, 0xbfb8aa3b, r114
.Ltmp148:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r72
.Ltmp149:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r68, r70, r68, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r68, r108, r68
.Ltmp150:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r68_lo, r68
.Ltmp151:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r72, r28, 0, s10
	fmka_f32 r72, r114, 0xbfb8aa3b, r72
	csel_b32 r70, r27, r26, s10
	exp_f32 r72, r72
.Ltmp152:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r70, r70, r72, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r74, r72
	snop 0
	fma_f32 r76, neg(r72), r74, r26
	fmac_f32 r74, r76, r74
	div_scale_f32 r76, s1, r70, s1
	mul_f32 r78, r76, r74
	fma_f32 r80, neg(r72), r78, r76
	fmac_f32 r78, r80, r74
	fmac_f32 r76, neg(r72), r78
	div_fmas_f32 r72, r76, r74, r78
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r74, 0xbfb8aa3b, r112
.Ltmp153:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r74
.Ltmp154:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r70, r72, r70, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r70, r114, r70
.Ltmp155:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r74_lo, r70
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r72, r28, 0, s10
	fmka_f32 r72, r112, 0xbfb8aa3b, r72
	csel_b32 r70, r27, r26, s10
	exp_f32 r72, r72
.Ltmp157:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r70, r70, r72, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r76, 0xbfb8aa3b, r118
.Ltmp158:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r76
.Ltmp159:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r70, r72, r70, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r70, r112, r70
.Ltmp160:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r86_lo, r70
.Ltmp161:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r72, r28, 0, s10
	fmka_f32 r72, r118, 0xbfb8aa3b, r72
	csel_b32 r70, r27, r26, s10
	exp_f32 r72, r72
.Ltmp162:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r70, r70, r72, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	.loc	2 97 298                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:298
	mul_f32 r76, 0xbfb8aa3b, r116
.Ltmp163:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r76
.Ltmp164:
	.loc	2 97 146                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_fixup_f32 r70, r72, r70, s1
	.loc	2 97 119 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r70, r118, r70
.Ltmp165:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r100_lo, r70
.Ltmp166:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r72, r28, 0, s10
	fmka_f32 r72, r116, 0xbfb8aa3b, r72
	csel_b32 r70, r27, r26, s10
	exp_f32 r72, r72
.Ltmp167:
	.loc	2 97 173                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:173
	snop 0
	fmak_f32 r70, r70, r72, 0x3f800000
	.loc	2 97 146 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:146
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r117
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	.loc	2 97 119                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:97:119
	mul_f32 r70, r116, r70
.Ltmp168:
	.loc	5 984 21 is_stmt 1              ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:984:21
	cvt_f32tof16 r110_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r117, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r119
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r117, r70
	cvt_f32tof16 r120_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r119, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r113
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r119, r70
	cvt_f32tof16 r118_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r113, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r115
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r113, r70
	cvt_f32tof16 r117_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r115, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r109
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r115, r70
	cvt_f32tof16 r116_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r109, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r111
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r109, r70
	cvt_f32tof16 r109_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r111, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r105
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r111, r70
	cvt_f32tof16 r108_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r105, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r107
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r105, r70
	cvt_f32tof16 r106_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r107, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r101
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r107, r70
	cvt_f32tof16 r105_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r101, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r103
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r101, r70
	cvt_f32tof16 r104_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r103, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r97
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r103, r70
	cvt_f32tof16 r102_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r97, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r99
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r97, r70
	cvt_f32tof16 r101_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r99, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r93
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r99, r70
	cvt_f32tof16 r99_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r93, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r95
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r93, r70
	cvt_f32tof16 r98_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r95, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r89
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r95, r70
	cvt_f32tof16 r93_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r89, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r91
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r89, r70
	cvt_f32tof16 r92_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r91, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r85
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r91, r70
	cvt_f32tof16 r90_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r85, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r87
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r85, r70
	cvt_f32tof16 r89_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r87, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r81
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r87, r70
	cvt_f32tof16 r88_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r81, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r82, neg(r72), r80, r78
	fmac_f32 r80, r82, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r83
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r81, r70
	cvt_f32tof16 r87_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r83, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r81, neg(r72), r80, r78
	fmac_f32 r80, r81, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r77
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r83, r70
	cvt_f32tof16 r85_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r77, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r78, neg(r72), r76, r26
	fmac_f32 r76, r78, r76
	div_scale_f32 r78, s1, r70, s1
	mul_f32 r80, r78, r76
	fma_f32 r81, neg(r72), r80, r78
	fmac_f32 r80, r81, r76
	fmac_f32 r78, neg(r72), r80
	div_fmas_f32 r72, r78, r76, r80
	mul_f32 r76, 0xbfb8aa3b, r79
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r77, r70
	cvt_f32tof16 r84_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r79, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r77, neg(r72), r76, r26
	fmac_f32 r76, r77, r76
	div_scale_f32 r77, s1, r70, s1
	mul_f32 r78, r77, r76
	fma_f32 r80, neg(r72), r78, r77
	fmac_f32 r78, r80, r76
	fmac_f32 r77, neg(r72), r78
	div_fmas_f32 r72, r77, r76, r78
	mul_f32 r76, 0xbfb8aa3b, r73
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r79, r70
	cvt_f32tof16 r79_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r73, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r76, r72
	snop 0
	fma_f32 r77, neg(r72), r76, r26
	fmac_f32 r76, r77, r76
	div_scale_f32 r77, s1, r70, s1
	mul_f32 r78, r77, r76
	fma_f32 r80, neg(r72), r78, r77
	fmac_f32 r78, r80, r76
	fmac_f32 r77, neg(r72), r78
	div_fmas_f32 r72, r77, r76, r78
	mul_f32 r76, 0xbfb8aa3b, r75
	cmp_gt_f32 s10, 0xc2fc0000, r76
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r73, r70
	cvt_f32tof16 r78_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r75, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r73, r72
	snop 0
	fma_f32 r76, neg(r72), r73, r26
	fmac_f32 r73, r76, r73
	div_scale_f32 r76, s1, r70, s1
	mul_f32 r77, r76, r73
	fma_f32 r80, neg(r72), r77, r76
	fmac_f32 r77, r80, r73
	fmac_f32 r76, neg(r72), r77
	div_fmas_f32 r72, r76, r73, r77
	mul_f32 r73, 0xbfb8aa3b, r69
	cmp_gt_f32 s10, 0xc2fc0000, r73
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r70, r75, r70
	cvt_f32tof16 r77_lo, r70
	snop 0
	csel_b32 r70, r28, 0, s10
	fmka_f32 r70, r69, 0xbfb8aa3b, r70
	exp_f32 r70, r70
	csel_b32 r72, r27, r26, s10
	fmak_f32 r70, r72, r70, 0x3f800000
	div_scale_f32 r72, r70, r70, s1
	rcp_f32 r73, r72
	snop 0
	fma_f32 r75, neg(r72), r73, r26
	fmac_f32 r73, r75, r73
	div_scale_f32 r75, s1, r70, s1
	mul_f32 r76, r75, r73
	fma_f32 r80, neg(r72), r76, r75
	fmac_f32 r76, r80, r73
	fmac_f32 r75, neg(r72), r76
	div_fmas_f32 r72, r75, r73, r76
	mul_f32 r73, 0xbfb8aa3b, r71
	cmp_gt_f32 s10, 0xc2fc0000, r73
	div_fixup_f32 r70, r72, r70, s1
	mul_f32 r69, r69, r70
	cvt_f32tof16 r76_lo, r69
	snop 0
	csel_b32 r69, r28, 0, s10
	fmka_f32 r69, r71, 0xbfb8aa3b, r69
	exp_f32 r69, r69
	csel_b32 r70, r27, r26, s10
	fmak_f32 r69, r70, r69, 0x3f800000
	div_scale_f32 r70, r69, r69, s1
	rcp_f32 r72, r70
	snop 0
	fma_f32 r73, neg(r70), r72, r26
	fmac_f32 r72, r73, r72
	div_scale_f32 r73, s1, r69, s1
	mul_f32 r75, r73, r72
	fma_f32 r80, neg(r70), r75, r73
	fmac_f32 r75, r80, r72
	fmac_f32 r73, neg(r70), r75
	div_fmas_f32 r70, r73, r72, r75
	mul_f32 r72, 0xbfb8aa3b, r65
	cmp_gt_f32 s10, 0xc2fc0000, r72
	div_fixup_f32 r69, r70, r69, s1
	mul_f32 r69, r71, r69
	cvt_f32tof16 r75_lo, r69
	snop 0
	csel_b32 r69, r28, 0, s10
	fmka_f32 r69, r65, 0xbfb8aa3b, r69
	exp_f32 r69, r69
	csel_b32 r70, r27, r26, s10
	fmak_f32 r69, r70, r69, 0x3f800000
	div_scale_f32 r70, r69, r69, s1
	rcp_f32 r71, r70
	snop 0
	fma_f32 r72, neg(r70), r71, r26
	fmac_f32 r71, r72, r71
	div_scale_f32 r72, s1, r69, s1
	mul_f32 r73, r72, r71
	fma_f32 r80, neg(r70), r73, r72
	fmac_f32 r73, r80, r71
	fmac_f32 r72, neg(r70), r73
	div_fmas_f32 r70, r72, r71, r73
	mul_f32 r71, 0xbfb8aa3b, r67
	cmp_gt_f32 s10, 0xc2fc0000, r71
	div_fixup_f32 r69, r70, r69, s1
	mul_f32 r65, r65, r69
	cvt_f32tof16 r69_lo, r65
	snop 0
	csel_b32 r65, r28, 0, s10
	fmka_f32 r65, r67, 0xbfb8aa3b, r65
	exp_f32 r65, r65
	csel_b32 r70, r27, r26, s10
	fmak_f32 r65, r70, r65, 0x3f800000
	div_scale_f32 r70, r65, r65, s1
	rcp_f32 r71, r70
	snop 0
	fma_f32 r72, neg(r70), r71, r26
	fmac_f32 r71, r72, r71
	div_scale_f32 r72, s1, r65, s1
	mul_f32 r73, r72, r71
	fma_f32 r80, neg(r70), r73, r72
	fmac_f32 r73, r80, r71
	fmac_f32 r72, neg(r70), r73
	div_fmas_f32 r70, r72, r71, r73
	mul_f32 r71, 0xbfb8aa3b, r61
	cmp_gt_f32 s10, 0xc2fc0000, r71
	div_fixup_f32 r65, r70, r65, s1
	mul_f32 r65, r67, r65
	cvt_f32tof16 r67_lo, r65
	snop 0
	csel_b32 r65, r28, 0, s10
	fmka_f32 r65, r61, 0xbfb8aa3b, r65
	exp_f32 r65, r65
	csel_b32 r70, r27, r26, s10
	fmak_f32 r65, r70, r65, 0x3f800000
	div_scale_f32 r70, r65, r65, s1
	rcp_f32 r71, r70
	snop 0
	fma_f32 r72, neg(r70), r71, r26
	fmac_f32 r71, r72, r71
	div_scale_f32 r72, s1, r65, s1
	mul_f32 r73, r72, r71
	fma_f32 r80, neg(r70), r73, r72
	fmac_f32 r73, r80, r71
	fmac_f32 r72, neg(r70), r73
	div_fmas_f32 r70, r72, r71, r73
	mul_f32 r71, 0xbfb8aa3b, r63
	cmp_gt_f32 s10, 0xc2fc0000, r71
	div_fixup_f32 r65, r70, r65, s1
	mul_f32 r61, r61, r65
	cvt_f32tof16 r65_lo, r61
	snop 0
	csel_b32 r61, r28, 0, s10
	fmka_f32 r61, r63, 0xbfb8aa3b, r61
	exp_f32 r61, r61
	csel_b32 r70, r27, r26, s10
	fmak_f32 r61, r70, r61, 0x3f800000
	div_scale_f32 r70, r61, r61, s1
	rcp_f32 r71, r70
	snop 0
	fma_f32 r72, neg(r70), r71, r26
	fmac_f32 r71, r72, r71
	div_scale_f32 r72, s1, r61, s1
	mul_f32 r73, r72, r71
	fma_f32 r80, neg(r70), r73, r72
	fmac_f32 r73, r80, r71
	fmac_f32 r72, neg(r70), r73
	div_fmas_f32 r70, r72, r71, r73
	mul_f32 r71, 0xbfb8aa3b, r57
	cmp_gt_f32 s10, 0xc2fc0000, r71
	div_fixup_f32 r61, r70, r61, s1
	mul_f32 r61, r63, r61
	cvt_f32tof16 r61_lo, r61
	snop 0
	csel_b32 r63, r28, 0, s10
	fmka_f32 r63, r57, 0xbfb8aa3b, r63
	exp_f32 r63, r63
	csel_b32 r70, r27, r26, s10
	fmak_f32 r63, r70, r63, 0x3f800000
	div_scale_f32 r70, r63, r63, s1
	rcp_f32 r71, r70
	snop 0
	fma_f32 r72, neg(r70), r71, r26
	fmac_f32 r71, r72, r71
	div_scale_f32 r72, s1, r63, s1
	mul_f32 r73, r72, r71
	fma_f32 r80, neg(r70), r73, r72
	fmac_f32 r73, r80, r71
	fmac_f32 r72, neg(r70), r73
	div_fmas_f32 r70, r72, r71, r73
	mul_f32 r71, 0xbfb8aa3b, r59
	cmp_gt_f32 s10, 0xc2fc0000, r71
	div_fixup_f32 r63, r70, r63, s1
	mul_f32 r57, r57, r63
	cvt_f32tof16 r57_lo, r57
	snop 0
	csel_b32 r28, r28, 0, s10
	fmka_f32 r28, r59, 0xbfb8aa3b, r28
	exp_f32 r28, r28
	csel_b32 r27, r27, r26, s10
	fmak_f32 r27, r27, r28, 0x3f800000
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r63, r28
	snop 0
	fmac_f32 r26, neg(r28), r63
	fmac_f32 r63, r26, r63
	div_scale_f32 r26, s1, r27, s1
	mul_f32 r70, r26, r63
	fma_f32 r71, neg(r28), r70, r26
	fmac_f32 r70, r71, r63
	fmac_f32 r26, neg(r28), r70
	div_fmas_f32 r26, r26, r63, r70
	div_fixup_f32 r26, r26, r27, s1
	mul_f32 r26, r59, r26
	cvt_f32tof16 r26_lo, r26
.Ltmp169:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp170:
	.loc	2 116 376                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:116:376
	mad_i32 r70, r46, 2, s12
	mad_i32 r72, r48, 2, s12
	sadd_co_u32 s10, 0x80, s12
	.loc	2 116 347 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:116:347
	ldg_b128 r166, r70, 0x0
	ldg_b128 r170, r72, 0x0
	.loc	2 116 376                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:116:376
	mad_i32 r70, r50, 2, s12
	mad_i32 r72, r52, 2, s12
	smov_b64 s18, 0
	.loc	2 116 347                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:116:347
	ldg_b128 r174, r70, 0x0
	ldg_b128 r178, r72, 0x0
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:0
	shl_b64 r70, 0, 0
	shl_b64 r72, 0, 0
	shl_b64 r80, 0, r70
	shl_b64 r94, 0, r70
	shl_b64 r112, 0, r70
	shl_b64 r122, 0, r70
	shl_b64 r126, 0, r70
	shl_b64 r130, 0, r70
	shl_b64 r134, 0, r70
	shl_b64 r138, 0, r70
	shl_b64 r142, 0, r70
	shl_b64 r146, 0, r70
	shl_b64 r150, 0, r70
	shl_b64 r154, 0, r70
	shl_b64 r158, 0, r70
	shl_b64 r162, 0, r70
	saddc_co_u32 s11, s13, 0
	shl_b64 r82, 0, r72
	shl_b64 r96, 0, r72
	shl_b64 r114, 0, r72
	shl_b64 r124, 0, r72
	shl_b64 r128, 0, r72
	shl_b64 r132, 0, r72
	shl_b64 r136, 0, r72
	shl_b64 r140, 0, r72
	shl_b64 r144, 0, r72
	shl_b64 r148, 0, r72
	shl_b64 r152, 0, r72
	shl_b64 r156, 0, r72
	shl_b64 r160, 0, r72
	shl_b64 r164, 0, r72
	.loc	2 116 347                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:116:347
	arrive gvmcnt(3)
	sts_b128 r19, 0x0, r166
	shl_b64 r166, 0, r70
	shl_b64 r168, 0, r72
	arrive gvmcnt(2)
	sts_b128 r20, 0x0, r170
	arrive gvmcnt(1)
	sts_b128 r21, 0x0, r174
	arrive gvmcnt(0)
	sts_b128 r22, 0x0, r178
	bra LBB2_20
	.p2align	5
LBB2_19:                                ; %if.end785.3
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 347                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:347
	sor_b64 xmsk, xmsk, s12
.Ltmp171:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp172:
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r186, r18, 0x0
	lds_b128 r190, r17, 0x0
	lds_b128 r194, r16, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r186, r178, r166
	mma_16x16x16f16 r134, r186, r182, r134
	mma_16x16x16f16 r166, r188, r180, r166
	mma_16x16x16f16 r134, r188, r184, r134
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r186, r15, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r190, r178, r162
	mma_16x16x16f16 r130, r190, r182, r130
	mma_16x16x16f16 r162, r192, r180, r162
	mma_16x16x16f16 r130, r192, r184, r130
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r190, r14, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r194, r178, r158
	mma_16x16x16f16 r126, r194, r182, r126
	mma_16x16x16f16 r158, r196, r180, r158
	mma_16x16x16f16 r126, r196, r184, r126
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r194, r13, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r186, r178, r154
	mma_16x16x16f16 r122, r186, r182, r122
	mma_16x16x16f16 r154, r188, r180, r154
	mma_16x16x16f16 r122, r188, r184, r122
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r186, r12, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r190, r178, r150
	mma_16x16x16f16 r112, r190, r182, r112
	mma_16x16x16f16 r150, r192, r180, r150
	mma_16x16x16f16 r112, r192, r184, r112
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r190, r11, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r194, r178, r146
	mma_16x16x16f16 r94, r194, r182, r94
	mma_16x16x16f16 r146, r196, r180, r146
	mma_16x16x16f16 r94, r196, r184, r94
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r194, r10, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r186, r178, r142
	mma_16x16x16f16 r80, r186, r182, r80
	mma_16x16x16f16 r142, r188, r180, r142
	mma_16x16x16f16 r80, r188, r184, r80
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r186, r9, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r190, r178, r138
	mma_16x16x16f16 r70, r190, r182, r70
	mma_16x16x16f16 r138, r192, r180, r138
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r178, r8, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	mma_16x16x16f16 r70, r192, r184, r70
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r182, r6, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r166, r194, r170, r166
	mma_16x16x16f16 r134, r194, r174, r134
	mma_16x16x16f16 r166, r196, r172, r166
	mma_16x16x16f16 r134, r196, r176, r134
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r186, r170, r162
	mma_16x16x16f16 r130, r186, r174, r130
	mma_16x16x16f16 r162, r188, r172, r162
	mma_16x16x16f16 r130, r188, r176, r130
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r186, r5, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r178, r170, r158
	mma_16x16x16f16 r126, r178, r174, r126
	mma_16x16x16f16 r158, r180, r172, r158
	mma_16x16x16f16 r126, r180, r176, r126
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r178, r4, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r182, r170, r154
	mma_16x16x16f16 r122, r182, r174, r122
	mma_16x16x16f16 r154, r184, r172, r154
	mma_16x16x16f16 r122, r184, r176, r122
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r182, r3, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r186, r170, r150
	mma_16x16x16f16 r112, r186, r174, r112
	mma_16x16x16f16 r150, r188, r172, r150
	mma_16x16x16f16 r112, r188, r176, r112
	.loc	2 133 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:133:52
	lds_b128 r186, r7, 0x0
	.loc	2 139 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:139:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r178, r170, r146
	mma_16x16x16f16 r94, r178, r174, r94
	mma_16x16x16f16 r146, r180, r172, r146
	mma_16x16x16f16 r94, r180, r176, r94
	arrive bsmcnt(1)
	mma_16x16x16f16 r142, r182, r170, r142
	mma_16x16x16f16 r80, r182, r174, r80
	mma_16x16x16f16 r142, r184, r172, r142
	mma_16x16x16f16 r80, r184, r176, r80
	arrive bsmcnt(0)
	mma_16x16x16f16 r138, r186, r170, r138
	mma_16x16x16f16 r70, r186, r174, r70
	mma_16x16x16f16 r138, r188, r172, r138
	mma_16x16x16f16 r70, r188, r176, r70
.Ltmp173:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp174:
	.loc	2 150 378                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:150:378
	add_u32 r27, 0x38000, r23
	mad_i32 r172, r27, 2, s10
	add_u32 r27, 0x70000, r23
	mad_i32 r178, r27, 2, s10
	add_u32 r27, 0xa8000, r23
	mad_i32 r170, r23, 2, s10
	mad_i32 r180, r27, 2, s10
	.loc	2 118 25                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:118:25
	sadd_co_u32 s18, 0x80, s18
	.loc	2 150 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:150:349
	ldg_b128 r174, r170, 0x0
	ldg_b128 r170, r172, 0x0
	ldg_b128 r182, r178, 0x0
	ldg_b128 r178, r180, 0x0
	.loc	2 118 25                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:118:25
	saddc_co_u32 s19, s19, 0
	scmp_eq_u64 0x3780, s18
	add_u32 r23, r23, 64
	.loc	2 150 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:150:349
	arrive gvmcnt(3)
	sts_b128 r19, 0x0, r174
	arrive gvmcnt(2)
	sts_b128 r20, 0x0, r170
	arrive gvmcnt(1)
	sts_b128 r21, 0x0, r182
	arrive gvmcnt(0)
	sts_b128 r22, 0x0, r178
	.loc	2 118 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:118:3
	bra_smsks LBB2_28
LBB2_20:                                ; %for.cond704.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:3
	shl_b64 r178, 0, 0
	shl_b64 r180, 0, 0
	.loc	2 123 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:123:118
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB2_22
; %bb.21:                               ; %if.then731
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:118
	add_co_u32 r170, r24, s18
	mov_b32 r27, s19
	addc_co_u32 r171, r25, r27
	.loc	2 124 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:124:19
	snop 1
	ldg_b128 r178, r170, 0x0
LBB2_22:                                ; %if.end785
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r182, 0, 0
	shl_b64 r184, 0, 0
	.loc	2 123 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:123:118
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB2_24
; %bb.23:                               ; %if.then731.1
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:118
	add_co_u32 r27, r24, s18
	mov_b32 r28, s19
	addc_co_u32 r28, r25, r28
	.loc	2 124 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:124:19
	add_co_u32 r170, 0x38000, r27
	addc_co_u32 r171, r28, 0
	snop 1
	ldg_b128 r182, r170, 0x0
LBB2_24:                                ; %if.end785.1
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 123 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:123:118
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB2_26
; %bb.25:                               ; %if.then731.2
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:118
	add_co_u32 r170, r24, s18
	mov_b32 r27, s19
	addc_co_u32 r171, r25, r27
	.loc	2 124 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:124:19
	snop 1
	ldg_b128 r170, r170, 0x40
LBB2_26:                                ; %if.end785.2
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 123 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:123:118
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB2_19
; %bb.27:                               ; %if.then731.3
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:118
	add_co_u32 r27, r24, s18
	mov_b32 r28, s19
	addc_co_u32 r28, r25, r28
	.loc	2 124 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:124:19
	add_co_u32 r174, 0x38040, r27
	addc_co_u32 r175, r28, 0
	snop 1
	ldg_b128 r174, r174, 0x0
	bra LBB2_19
LBB2_28:                                ; %for.cond952.preheader
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:19
	shl_b64 r176, 0, 0
	shl_b64 r174, 0, 0
	.loc	2 157 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:157:116
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.then979
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:116
	shl_b64 r20, 1, r54
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x3780, r19
	addc_co_u32 r23, r20, 0
	.loc	2 158 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:158:17
	snop 1
	ldg_b128 r174, r22, 0x0
LBB2_30:                                ; %if.end1031
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r180, 0, 0
	shl_b64 r178, 0, 0
	.loc	2 157 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:157:116
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_32
; %bb.31:                               ; %if.then979.1
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:116
	shl_b64 r20, 1, r54
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x3b780, r19
	addc_co_u32 r23, r20, 0
	.loc	2 158 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:158:17
	snop 1
	ldg_b128 r178, r22, 0x0
LBB2_32:                                ; %if.end1031.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r22, 0, 0
	shl_b64 r20, 0, 0
	.loc	2 157 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:157:116
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_34
; %bb.33:                               ; %if.then979.2
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:116
	shl_b64 r20, 1, r54
	add_co_u32 r19, s8, r20
	mov_b32 r20, s9
	addc_co_u32 r20, r20, r21
	add_co_u32 r22, 0x37c0, r19
	addc_co_u32 r23, r20, 0
	.loc	2 158 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:158:17
	snop 1
	ldg_b128 r20, r22, 0x0
LBB2_34:                                ; %if.end1031.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r172, 0, 0
	shl_b64 r170, 0, 0
	.loc	2 157 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:157:116
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_36
; %bb.35:                               ; %if.then979.3
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:116
	shl_b64 r24, 1, r54
	add_co_u32 r19, s8, r24
	mov_b32 r24, s9
	addc_co_u32 r24, r24, r25
	add_co_u32 r54, 0x3b7c0, r19
	addc_co_u32 r55, r24, 0
	.loc	2 158 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:158:17
	snop 1
	ldg_b128 r170, r54, 0x0
LBB2_36:                                ; %if.end1031.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
.Ltmp175:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp176:
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r182, r18, 0x0
	lds_b128 r186, r17, 0x0
	lds_b128 r16, r16, 0x0
.Ltmp177:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp178:
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r182, r174, r166
	mma_16x16x16f16 r134, r182, r178, r134
	mma_16x16x16f16 r166, r184, r176, r166
	mma_16x16x16f16 r134, r184, r180, r134
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r182, r15, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r186, r174, r162
	mma_16x16x16f16 r130, r186, r178, r130
	mma_16x16x16f16 r162, r188, r176, r162
	mma_16x16x16f16 r130, r188, r180, r130
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r186, r14, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r16, r174, r158
	mma_16x16x16f16 r126, r16, r178, r126
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r14, r13, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	mma_16x16x16f16 r158, r18, r176, r158
	mma_16x16x16f16 r126, r18, r180, r126
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r182, r174, r154
	mma_16x16x16f16 r122, r182, r178, r122
	mma_16x16x16f16 r154, r184, r176, r154
	mma_16x16x16f16 r122, r184, r180, r122
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r182, r12, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r186, r174, r150
	mma_16x16x16f16 r112, r186, r178, r112
	mma_16x16x16f16 r150, r188, r176, r150
	mma_16x16x16f16 r112, r188, r180, r112
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r186, r11, 0x0
	lds_b128 r10, r10, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r146, r14, r174, r146
	mma_16x16x16f16 r94, r14, r178, r94
	mma_16x16x16f16 r146, r16, r176, r146
	mma_16x16x16f16 r94, r16, r180, r94
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r14, r9, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r142, r182, r174, r142
	mma_16x16x16f16 r80, r182, r178, r80
	mma_16x16x16f16 r142, r184, r176, r142
	mma_16x16x16f16 r80, r184, r180, r80
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r174, r138
	mma_16x16x16f16 r70, r186, r178, r70
	mma_16x16x16f16 r138, r188, r176, r138
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r174, r8, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	mma_16x16x16f16 r70, r188, r180, r70
	arrive bsmcnt(2)
	mma_16x16x16f16 r166, r10, r20, r166
	mma_16x16x16f16 r134, r10, r170, r134
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r8, r6, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	mma_16x16x16f16 r166, r12, r22, r166
	mma_16x16x16f16 r134, r12, r172, r134
	arrive bsmcnt(2)
	mma_16x16x16f16 r162, r14, r20, r162
	mma_16x16x16f16 r130, r14, r170, r130
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r12, r5, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	mma_16x16x16f16 r162, r16, r22, r162
	mma_16x16x16f16 r130, r16, r172, r130
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r16, r4, 0x0
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r158, r174, r20, r158
	mma_16x16x16f16 r126, r174, r170, r126
	mma_16x16x16f16 r158, r176, r22, r158
	mma_16x16x16f16 r126, r176, r172, r126
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r8, r20, r154
	mma_16x16x16f16 r122, r8, r170, r122
	mma_16x16x16f16 r154, r10, r22, r154
	mma_16x16x16f16 r122, r10, r172, r122
	.loc	2 167 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:167:50
	lds_b128 r8, r3, 0x0
	lds_b128 r4, r7, 0x0
	shl_b32 r3, 10, r1
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r150, r12, r20, r150
	shl_b32 r1, 11, r1
	and_b32 r1, 0x7800, r1
	mma_16x16x16f16 r112, r12, r170, r112
	mma_16x16x16f16 r150, r14, r22, r150
	mma_16x16x16f16 r112, r14, r172, r112
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r16, r20, r146
	mma_16x16x16f16 r94, r16, r170, r94
	mma_16x16x16f16 r146, r18, r22, r146
	mma_16x16x16f16 r94, r18, r172, r94
	arrive bsmcnt(1)
	mma_16x16x16f16 r142, r8, r20, r142
	mma_16x16x16f16 r80, r8, r170, r80
	mma_16x16x16f16 r142, r10, r22, r142
	mma_16x16x16f16 r80, r10, r172, r80
	arrive bsmcnt(0)
	mma_16x16x16f16 r138, r4, r20, r138
	mma_16x16x16f16 r70, r4, r170, r70
	snop 0
	and_b32 r4, 0xf0000, r3
	mov_b32 r5, 0
	mov_b32 r3, 0x80
	mad_u32 r4, s4, r3, r4
	add_co_u32 r4, r4, r1
	addc_co_u32 r5, r5, 0
	mov_b32 r1, 0x800
	mma_16x16x16f16 r138, r6, r22, r138
	mad_i32 r4, s16, r1, r4
	and_b32 r1, r2, 12
	.loc	2 183 95                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:95
	cmp_gt_i32 s4, s0, r0
	.loc	2 182 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:182:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s14, r1
	mov_b32 r2, s15
	.loc	2 173 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:173:60
	mma_16x16x16f16 r70, r6, r172, r70
	.loc	2 182 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:182:3
	addc_co_u32 r2, r2, 0
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_52
; %bb.37:                               ; %for.inc1259
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_55
LBB2_38:                                ; %for.inc1259.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_58
LBB2_39:                                ; %for.inc1259.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_61
LBB2_40:                                ; %for.inc1259.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_64
LBB2_41:                                ; %for.inc1259.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_67
LBB2_42:                                ; %for.inc1259.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_70
LBB2_43:                                ; %for.inc1259.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_73
LBB2_44:                                ; %for.inc1259.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_76
LBB2_45:                                ; %for.inc1259.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_79
LBB2_46:                                ; %for.inc1259.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_82
LBB2_47:                                ; %for.inc1259.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_85
LBB2_48:                                ; %for.inc1259.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_88
LBB2_49:                                ; %for.inc1259.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_91
LBB2_50:                                ; %for.inc1259.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_94
LBB2_51:                                ; %for.inc1259.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_97
	bra LBB2_100
LBB2_52:                                ; %if.then1147
.Ltmp179:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp180:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp181:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_54
; %bb.53:                               ; %if.then1217
.Ltmp182:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r120_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r110_lo
.Ltmp183:
	.file	6 "/root/tilelang-metax" "src/tl_templates/maca/common.h"
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r167, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r166, r6
.Ltmp184:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp185:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp186:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x0, r3 devc
LBB2_54:                                ; %Flow585
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_38
LBB2_55:                                ; %if.then1147.1
.Ltmp187:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp188:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp189:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_57
; %bb.56:                               ; %if.then1217.1
.Ltmp190:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r118_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r100_lo
.Ltmp191:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r169, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r168, r6
.Ltmp192:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp193:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp194:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x4, r3 devc
LBB2_57:                                ; %Flow584
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_39
LBB2_58:                                ; %if.then1147.2
.Ltmp195:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp196:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp197:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_60
; %bb.59:                               ; %if.then1217.2
.Ltmp198:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r117_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r86_lo
.Ltmp199:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r163, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r162, r6
.Ltmp200:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp201:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp202:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x20, r3 devc
LBB2_60:                                ; %Flow583
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_40
LBB2_61:                                ; %if.then1147.3
.Ltmp203:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp204:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp205:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_63
; %bb.62:                               ; %if.then1217.3
.Ltmp206:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r116_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r74_lo
.Ltmp207:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r165, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r164, r6
.Ltmp208:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp209:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp210:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x24, r3 devc
LBB2_63:                                ; %Flow582
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_41
LBB2_64:                                ; %if.then1147.4
.Ltmp211:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp212:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp213:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_66
; %bb.65:                               ; %if.then1217.4
.Ltmp214:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r109_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r68_lo
.Ltmp215:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r159, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r158, r6
.Ltmp216:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp217:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp218:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x40, r3 devc
LBB2_66:                                ; %Flow581
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_42
LBB2_67:                                ; %if.then1147.5
.Ltmp219:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp220:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp221:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_69
; %bb.68:                               ; %if.then1217.5
.Ltmp222:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r108_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r66_lo
.Ltmp223:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r161, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r160, r6
.Ltmp224:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp225:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp226:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x44, r3 devc
LBB2_69:                                ; %Flow580
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_43
LBB2_70:                                ; %if.then1147.6
.Ltmp227:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp228:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp229:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_72
; %bb.71:                               ; %if.then1217.6
.Ltmp230:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r106_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r64_lo
.Ltmp231:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r155, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r154, r6
.Ltmp232:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp233:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp234:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x60, r3 devc
LBB2_72:                                ; %Flow579
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_44
LBB2_73:                                ; %if.then1147.7
.Ltmp235:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp236:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp237:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_75
; %bb.74:                               ; %if.then1217.7
.Ltmp238:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r105_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r62_lo
.Ltmp239:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r157, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r156, r6
.Ltmp240:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp241:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp242:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x64, r3 devc
LBB2_75:                                ; %Flow578
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_45
LBB2_76:                                ; %if.then1147.8
.Ltmp243:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp244:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp245:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_78
; %bb.77:                               ; %if.then1217.8
.Ltmp246:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r104_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r60_lo
.Ltmp247:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r151, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r150, r6
.Ltmp248:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp249:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp250:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x80, r3 devc
LBB2_78:                                ; %Flow577
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_46
LBB2_79:                                ; %if.then1147.9
.Ltmp251:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp252:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp253:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_81
; %bb.80:                               ; %if.then1217.9
.Ltmp254:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r102_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r58_lo
.Ltmp255:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r153, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r152, r6
.Ltmp256:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp257:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp258:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0x84, r3 devc
LBB2_81:                                ; %Flow576
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_47
LBB2_82:                                ; %if.then1147.10
.Ltmp259:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp260:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp261:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_84
; %bb.83:                               ; %if.then1217.10
.Ltmp262:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r101_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r56_lo
.Ltmp263:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r147, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r146, r6
.Ltmp264:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp265:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp266:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0xa0, r3 devc
LBB2_84:                                ; %Flow575
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_48
LBB2_85:                                ; %if.then1147.11
.Ltmp267:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp268:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp269:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_87
; %bb.86:                               ; %if.then1217.11
.Ltmp270:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r99_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r53_lo
.Ltmp271:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r149, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r148, r6
.Ltmp272:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp273:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp274:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0xa4, r3 devc
LBB2_87:                                ; %Flow574
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_49
LBB2_88:                                ; %if.then1147.12
.Ltmp275:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp276:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp277:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_90
; %bb.89:                               ; %if.then1217.12
.Ltmp278:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r98_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r51_lo
.Ltmp279:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r143, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r142, r6
.Ltmp280:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp281:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp282:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0xc0, r3 devc
LBB2_90:                                ; %Flow573
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_50
LBB2_91:                                ; %if.then1147.13
.Ltmp283:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp284:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp285:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_93
; %bb.92:                               ; %if.then1217.13
.Ltmp286:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r93_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r49_lo
.Ltmp287:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r145, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r144, r6
.Ltmp288:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp289:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp290:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0xc4, r3 devc
LBB2_93:                                ; %Flow572
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_51
LBB2_94:                                ; %if.then1147.14
.Ltmp291:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp292:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp293:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_96
; %bb.95:                               ; %if.then1217.14
.Ltmp294:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r92_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r47_lo
.Ltmp295:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r139, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r138, r6
.Ltmp296:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp297:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp298:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0xe0, r3 devc
LBB2_96:                                ; %Flow571
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_100
LBB2_97:                                ; %if.then1147.15
.Ltmp299:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp300:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp301:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB2_99
; %bb.98:                               ; %if.then1217.15
.Ltmp302:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r90_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r6, r45_lo
.Ltmp303:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r3, r141, r3
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r6, r140, r6
.Ltmp304:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_hi, r3
.Ltmp305:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r6
.Ltmp306:
	.loc	2 206 315 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:315
	shl_b64 r6, 1, r4
	.loc	2 206 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	.loc	2 206 512                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r6, 0xe4, r3 devc
LBB2_99:                                ; %Flow570
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s4
LBB2_100:                               ; %for.inc1259.15
	sor_b64 xmsk, xmsk, s8
	.loc	2 183 66 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:66
	or_b32 r0, r0, 16
	.loc	2 183 95 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_117
; %bb.101:                              ; %for.inc1259.16
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_120
LBB2_102:                               ; %for.inc1259.17
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_123
LBB2_103:                               ; %for.inc1259.18
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_126
LBB2_104:                               ; %for.inc1259.19
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_129
LBB2_105:                               ; %for.inc1259.20
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_132
LBB2_106:                               ; %for.inc1259.21
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_135
LBB2_107:                               ; %for.inc1259.22
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_138
LBB2_108:                               ; %for.inc1259.23
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_141
LBB2_109:                               ; %for.inc1259.24
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_144
LBB2_110:                               ; %for.inc1259.25
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_147
LBB2_111:                               ; %for.inc1259.26
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_150
LBB2_112:                               ; %for.inc1259.27
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_153
LBB2_113:                               ; %for.inc1259.28
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_156
LBB2_114:                               ; %for.inc1259.29
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_159
LBB2_115:                               ; %for.inc1259.30
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_162
LBB2_116:                               ; %for.inc1259.31
	.loc	2 211 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:211:1
	snop 0
	endk
LBB2_117:                               ; %if.then1147.16
.Ltmp307:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp308:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp309:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_119
; %bb.118:                              ; %if.then1217.16
.Ltmp310:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r89_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r44_lo
.Ltmp311:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r135, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r134, r3
.Ltmp312:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp313:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp314:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp315:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10000, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_119:                               ; %Flow569
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_102
LBB2_120:                               ; %if.then1147.17
.Ltmp316:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp317:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp318:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_122
; %bb.121:                              ; %if.then1217.17
.Ltmp319:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r88_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r43_lo
.Ltmp320:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r137, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r136, r3
.Ltmp321:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp322:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp323:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp324:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10004, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_122:                               ; %Flow568
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_103
LBB2_123:                               ; %if.then1147.18
.Ltmp325:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp326:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp327:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_125
; %bb.124:                              ; %if.then1217.18
.Ltmp328:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r87_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r42_lo
.Ltmp329:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r131, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r130, r3
.Ltmp330:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp331:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp332:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp333:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10020, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_125:                               ; %Flow567
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_104
LBB2_126:                               ; %if.then1147.19
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp335:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp336:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_128
; %bb.127:                              ; %if.then1217.19
.Ltmp337:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r85_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r41_lo
.Ltmp338:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r133, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r132, r3
.Ltmp339:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp340:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp341:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp342:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10024, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_128:                               ; %Flow566
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_105
LBB2_129:                               ; %if.then1147.20
.Ltmp343:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp344:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp345:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_131
; %bb.130:                              ; %if.then1217.20
.Ltmp346:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r84_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r40_lo
.Ltmp347:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r127, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r126, r3
.Ltmp348:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp350:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp351:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10040, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_131:                               ; %Flow565
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_106
LBB2_132:                               ; %if.then1147.21
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp353:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp354:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_134
; %bb.133:                              ; %if.then1217.21
.Ltmp355:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r79_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r39_lo
.Ltmp356:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r129, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r128, r3
.Ltmp357:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp358:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp359:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp360:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10044, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_134:                               ; %Flow564
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_107
LBB2_135:                               ; %if.then1147.22
.Ltmp361:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp362:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp363:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_137
; %bb.136:                              ; %if.then1217.22
.Ltmp364:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r78_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r38_lo
.Ltmp365:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r123, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r122, r3
.Ltmp366:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp368:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp369:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10060, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_137:                               ; %Flow563
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_108
LBB2_138:                               ; %if.then1147.23
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp371:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp372:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_140
; %bb.139:                              ; %if.then1217.23
.Ltmp373:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r77_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r37_lo
.Ltmp374:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r125, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r124, r3
.Ltmp375:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp377:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp378:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10064, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_140:                               ; %Flow562
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_109
LBB2_141:                               ; %if.then1147.24
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp380:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp381:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_143
; %bb.142:                              ; %if.then1217.24
.Ltmp382:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r76_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r36_lo
.Ltmp383:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r113, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r112, r3
.Ltmp384:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp386:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp387:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10080, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_143:                               ; %Flow561
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_110
LBB2_144:                               ; %if.then1147.25
.Ltmp388:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp389:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp390:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_146
; %bb.145:                              ; %if.then1217.25
.Ltmp391:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r75_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r35_lo
.Ltmp392:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r115, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r114, r3
.Ltmp393:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp395:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp396:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x10084, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_146:                               ; %Flow560
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_111
LBB2_147:                               ; %if.then1147.26
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp398:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp399:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_149
; %bb.148:                              ; %if.then1217.26
.Ltmp400:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r69_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r34_lo
.Ltmp401:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r95, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r94, r3
.Ltmp402:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp403:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp404:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp405:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x100a0, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_149:                               ; %Flow559
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_112
LBB2_150:                               ; %if.then1147.27
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp407:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp408:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_152
; %bb.151:                              ; %if.then1217.27
.Ltmp409:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r67_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r33_lo
.Ltmp410:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r97, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r96, r3
.Ltmp411:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp413:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp414:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x100a4, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_152:                               ; %Flow558
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_113
LBB2_153:                               ; %if.then1147.28
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp416:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp417:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_155
; %bb.154:                              ; %if.then1217.28
.Ltmp418:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r65_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r32_lo
.Ltmp419:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r81, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r80, r3
.Ltmp420:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp422:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp423:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x100c0, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_155:                               ; %Flow557
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_114
LBB2_156:                               ; %if.then1147.29
.Ltmp424:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp425:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp426:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_158
; %bb.157:                              ; %if.then1217.29
.Ltmp427:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r61_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r31_lo
.Ltmp428:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r83, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r82, r3
.Ltmp429:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp431:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp432:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x100c4, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_158:                               ; %Flow556
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_115
LBB2_159:                               ; %if.then1147.30
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp434:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp435:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_161
; %bb.160:                              ; %if.then1217.30
.Ltmp436:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r57_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r30_lo
.Ltmp437:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r71, r0
	.loc	6 402 26 is_stmt 0              ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r70, r3
.Ltmp438:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r6, 1, r4
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp440:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp441:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r3, r1, r6
	addc_co_u32 r6, r2, r7
	add_co_u32 r8, 0x100e0, r3
	addc_co_u32 r9, r6, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r8, 0x0, r0 devc
LBB2_161:                               ; %Flow555
	.loc	2 0 512                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:512
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 183 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:183:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_116
LBB2_162:                               ; %if.then1147.31
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp443:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp444:
	.loc	2 204 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:204:11
	snop 0
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB2_116
; %bb.163:                              ; %if.then1217.31
	.loc	2 206 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	shl_b64 r4, 1, r4
	add_co_u32 r1, r1, r4
.Ltmp445:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r26_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r29_lo
.Ltmp446:
	.loc	2 206 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	addc_co_u32 r2, r2, r5
.Ltmp447:
	.loc	6 402 37                        ; src/tl_templates/maca/common.h:402:37
	mul_f32 r0, r73, r0
.Ltmp448:
	.loc	2 206 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	add_co_u32 r4, 0x100e4, r1
.Ltmp449:
	.loc	6 402 26                        ; src/tl_templates/maca/common.h:402:26
	mul_f32 r3, r72, r3
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_hi, r0
.Ltmp451:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r3
.Ltmp452:
	.loc	2 206 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:31
	addc_co_u32 r5, r2, 0
	.loc	2 206 512 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:206:512
	snop 1
	stg_b32 r4, 0x0, r0 devc
	.loc	2 211 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:211:1
	snop 2
	endk
.Ltmp453:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 25
		.macahca_streg_size 2
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
; codeLenInByte = 27696
; NumMTRegsForWarps/PEU: 198
; NumSTRegsForWarps/PEU: 29
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 213 0                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:213:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x0
	smov_b32 s6, s5
.Ltmp454:
	.loc	2 222 23 prologue_end           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:222:23
	smov_b32 s7, 0
	sshl_b64 s2, 2, s6
	ldu_b256 s16, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 8, r1
	arrive slcnt(0)
	sadd_co_u32 s2, s8, s2
	saddc_co_u32 s3, s9, s3
	ldu_b32 s8, s2, 0x0
	and_b32 r31, 0x3f800, r0
	shl_b32 r0, 3, r1
	and_b32 r32, r0, 56
	and_b32 r6, r0, 32
	and_b32 r5, 0x1fc0, r0
	and_b32 r0, r0, 16
	arrive slcnt(0)
	sashr_i32 s9, 31, s8
	smul_i32 s2, 0xe00000, s8
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:223:24
	sshl_b64 s8, 2, s8
	sadd_co_u32 s0, s14, s8
	saddc_co_u32 s1, s15, s9
	.loc	2 224 38                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:224:38
	sshl_b32 s5, 7, s5
	.loc	2 224 47 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:224:47
	sadd_co_u32 s6, s10, s8
	saddc_co_u32 s7, s11, s9
	.loc	2 224 79                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:224:79
	sadd_co_u32 s8, s12, s8
	saddc_co_u32 s9, s13, s9
	sshl_b32 s3, 19, s4
	or3_b32 r2, r31, s3, r32
	add_u32 r2, r2, s2
	.loc	2 238 375 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:375
	mad_i32 r12, r2, 2, s18
	add_co_u32 r14, 0x20000, r12
	addc_co_u32 r15, r13, 0
	.loc	2 238 344 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	ldg_b128 r44, r12, 0x0
	add_u32 r0, r0, r1
	ldg_b128 r48, r14, 0x0
	.loc	2 238 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:375
	add_co_u32 r14, 0x40000, r12
	addc_co_u32 r15, r13, 0
	add_co_u32 r12, 0x60000, r12
	and_b32 r7, r0, 16
	mul_u24 r0, r1, 9
	and_b32 r8, r0, 8
	addc_co_u32 r13, r13, 0
	.loc	2 238 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:495
	or_b32 r0, 0x40000, r2
	.loc	2 238 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	ldg_b128 r52, r14, 0x0
	ldg_b128 r56, r12, 0x0
	.loc	2 238 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:375
	mad_i32 r12, r0, 2, s18
	.loc	2 238 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:495
	add_u32 r0, 0x50000, r2
	.loc	2 238 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:375
	mad_i32 r14, r0, 2, s18
	.loc	2 238 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:495
	add_u32 r0, 0x60000, r2
	.loc	2 238 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:375
	mad_i32 r16, r0, 2, s18
	.loc	2 238 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:495
	add_u32 r0, 0x70000, r2
	.loc	2 238 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:375
	mad_i32 r18, r0, 2, s18
	.loc	2 238 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	ldg_b128 r60, r12, 0x0
	ldg_b128 r64, r14, 0x0
	ldg_b128 r68, r16, 0x0
	ldg_b128 r72, r18, 0x0
	.loc	2 223 24 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:223:24
	ldu_b32 s1, s0, 0x0
	.loc	2 224 47                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:224:47
	ldu_b32 s6, s6, 0x0
	.loc	2 224 79 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:224:79
	ldu_b32 s0, s8, 0x0
	add_u32 r3, r6, r1
	and_b32 r3, r3, 32
	shr_b32 r11, 1, r1
	.loc	2 238 96 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:96
	or_b32 r9, r3, r8
	.loc	2 238 60 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:60
	or_b32 r10, r5, r3
	shl_b32 r3, 10, r1
	shr_b32 r13, 5, r1
	and_b32 r4, 0x1e0, r11
	and_b32 r3, 0xf0000, r3
	shl_b32 r12, 11, r1
	smov_b32 s10, 0x7800
	and_b32 r22, r11, 24
	add_shl_u32 r11, r13, r11, 4
	shr_b32 r13, 4, r1
	and_or_b32 r21, r12, s10, r3
	shl_b32 r3, 6, r1
	and_b32 r11, r11, 16
	add_shl_u32 r13, r13, r1, 3
	.loc	2 225 54 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:225:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s5
	.loc	2 224 45                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:224:45
	sadd_co_i32 s5, s6, s5
	and_b32 r12, 0x3c0, r3
	and_or_b32 r33, r13, 8, r11
	.loc	2 224 77 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:224:77
	ssub_co_i32 s10, s5, s0
	.loc	2 238 266 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:266
	or3_b32 r5, r9, r5, r7
	sashr_i32 s11, 31, s10
	or_b32 r11, r33, r12
	or_b32 r13, 0x400, r12
	or_b32 r14, r33, r6
	or_b32 r15, 0x800, r12
	or_b32 r34, 0xc00, r12
	or_b32 r35, 0x1000, r12
	or_b32 r36, 0x1400, r12
	or_b32 r37, 0x1800, r12
	or_b32 r38, 0x1c00, r12
	xor_b32 r39, r6, 32
	.loc	2 238 181 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:181
	or3_b32 r7, r10, r7, r8
	or_b32 r6, r11, r6
	.loc	2 238 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:41
	shl_add_u32 r23, 1, r5, 0
	shl_add_u32 r5, 1, r7, 0
	or_b32 r8, r14, r13
	or_b32 r9, r14, r15
	sshl_b64 s12, 11, s10
	or3_b32 r12, r33, r13, r39
	or_b32 r13, r14, r34
	or3_b32 r40, r33, r15, r39
	or_b32 r15, r14, r35
	or_b32 r24, r14, r36
	or_b32 r25, r14, r37
	or_b32 r26, r14, r38
	sadd_co_u32 s14, 0x80, s18
	shl_add_u32 r10, 1, r12, 0
	shl_add_u32 r19, 1, r8, 0
	shl_add_u32 r18, 1, r9, 0
	shl_add_u32 r14, 1, r25, 0
	shl_add_u32 r20, 1, r6, 0
	shl_add_u32 r17, 1, r13, 0
	shl_add_u32 r13, 1, r26, 0
	shl_add_u32 r16, 1, r15, 0
	shl_add_u32 r15, 1, r24, 0
	add_u32 r24, 0x1000, r5
	.loc	2 238 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	add_i32 r6, 0x1000, r5
	.loc	2 238 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:41
	add_u32 r25, 0x2000, r5
	.loc	2 238 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	add_i32 r7, 0x2000, r5
	.loc	2 238 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:41
	add_u32 r26, 0x3000, r5
	.loc	2 238 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	add_i32 r8, 0x3000, r5
	add_i32 r9, 0x4000, r23
	.loc	2 238 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:41
	add_u32 r28, 0x5000, r5
	.loc	2 238 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	add_i32 r12, 0x5000, r5
	.loc	2 238 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:41
	add_u32 r29, 0x6000, r5
	.loc	2 238 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	add_i32 r41, 0x6000, r5
	.loc	2 238 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:41
	add_u32 r30, 0x7000, r5
	.loc	2 238 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	add_i32 r5, 0x7000, r5
	saddc_co_u32 s15, s19, 0
	.loc	2 240 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:240:3
	sadd_co_i32 s2, s2, s3
	or3_b32 r31, s2, r31, r32
	sshl_b64 s2, 12, s10
	and_b32 r2, r1, 15
	mov_b32 r32, s2
	or_b32 r0, r4, r2
	add_u32 r42, s10, r0
	and_or_b32 r32, r1, 48, r32
	cmp_gt_u32 s8, 0x2380, r42
	add_u32 r42, r42, 16
	cmp_gt_u32 s6, 0x2380, r42
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:0
	shl_b64 r98, 0, 0
	or_b32 r11, r11, r39
	shl_b64 r100, 0, 0
	shl_b64 r102, 0, r98
	shl_b64 r106, 0, r98
	shl_b64 r110, 0, r98
	shl_b64 r114, 0, r98
	shl_b64 r118, 0, r98
	shl_b64 r122, 0, r98
	shl_b64 r126, 0, r98
	.loc	2 238 344 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:344
	arrive gvmcnt(7)
	sts_b128 r23, 0x0, r44
	shl_b64 r130, 0, r98
	arrive gvmcnt(6)
	sts_b128 r6, 0x0, r48
	shl_b64 r134, 0, r98
	shl_b64 r138, 0, r98
	shl_b64 r142, 0, r98
	shl_b64 r146, 0, r98
	shl_b64 r150, 0, r98
	shl_b64 r154, 0, r98
	shl_b64 r158, 0, r98
	shl_b64 r42, 0, r98
	arrive gvmcnt(5)
	sts_b128 r7, 0x0, r52
	arrive gvmcnt(4)
	sts_b128 r8, 0x0, r56
	shl_b64 r46, 0, r98
	shl_b64 r50, 0, r98
	shl_b64 r54, 0, r98
	shl_b64 r78, 0, r98
	shl_b64 r82, 0, r98
	shl_b64 r86, 0, r98
	shl_b64 r90, 0, r98
	arrive gvmcnt(3)
	sts_b128 r9, 0x0, r60
	arrive gvmcnt(2)
	sts_b128 r12, 0x0, r64
	arrive gvmcnt(1)
	sts_b128 r41, 0x0, r68
	arrive gvmcnt(0)
	sts_b128 r5, 0x0, r72
	or3_b32 r5, r33, r34, r39
	shl_add_u32 r9, 1, r5, 0
	or3_b32 r5, r33, r35, r39
	shl_add_u32 r8, 1, r5, 0
	or3_b32 r5, r33, r36, r39
	shl_add_u32 r7, 1, r5, 0
	or3_b32 r5, r33, r37, r39
	.loc	2 240 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:240:3
	shl_b32 r34, 1, r21
	shl_add_u32 r6, 1, r5, 0
	or3_b32 r5, r33, r38, r39
	mov_b32 r33, s3
	add_co_u32 r32, r32, r34
	mov_b32 r35, 0
	addc_co_u32 r33, r33, r35
	add_co_u32 r32, s22, r32
	mov_b32 r34, s23
	addc_co_u32 r33, r34, r33
	shl_b64 r34, 0, r98
	shl_b64 r58, 0, r98
	shl_b64 r62, 0, r98
	shl_b64 r66, 0, r98
	shl_b64 r70, 0, r98
	shl_b64 r74, 0, r98
	shl_b64 r94, 0, r98
	shl_add_u32 r12, 1, r40, 0
	shl_b64 r38, 0, r98
	shr_b32 r3, 2, r1
	shl_add_u32 r11, 1, r11, 0
	.loc	2 238 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:238:41
	add_u32 r27, 0x4000, r23
	shl_add_u32 r5, 1, r5, 0
	smov_b64 s2, 0
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
	shl_b64 r148, 0, r100
	shl_b64 r152, 0, r100
	shl_b64 r156, 0, r100
	shl_b64 r160, 0, r100
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
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %if.end.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 41 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s18
.Ltmp455:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp456:
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r178, r20, 0x0
	lds_b128 r182, r19, 0x0
	lds_b128 r186, r18, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r178, r170, r158
	mma_16x16x16f16 r126, r178, r174, r126
	mma_16x16x16f16 r158, r180, r172, r158
	mma_16x16x16f16 r126, r180, r176, r126
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r178, r17, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r182, r170, r154
	mma_16x16x16f16 r122, r182, r174, r122
	mma_16x16x16f16 r154, r184, r172, r154
	mma_16x16x16f16 r122, r184, r176, r122
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r182, r16, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r186, r170, r150
	mma_16x16x16f16 r118, r186, r174, r118
	mma_16x16x16f16 r150, r188, r172, r150
	mma_16x16x16f16 r118, r188, r176, r118
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r186, r15, 0x0
	lds_b128 r190, r14, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r146, r178, r170, r146
	mma_16x16x16f16 r114, r178, r174, r114
	mma_16x16x16f16 r146, r180, r172, r146
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	add_i32 r178, 0x4000, r20
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	mma_16x16x16f16 r114, r180, r176, r114
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r182, r170, r142
	mma_16x16x16f16 r110, r182, r174, r110
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r180, r13, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	mma_16x16x16f16 r142, r184, r172, r142
	mma_16x16x16f16 r110, r184, r176, r110
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r170, r138
	mma_16x16x16f16 r106, r186, r174, r106
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r19
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	mma_16x16x16f16 r138, r188, r172, r138
	mma_16x16x16f16 r106, r188, r176, r106
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r190, r170, r134
	mma_16x16x16f16 r102, r190, r174, r102
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r18
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	mma_16x16x16f16 r134, r192, r172, r134
	mma_16x16x16f16 r102, r192, r176, r102
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r180, r170, r130
	mma_16x16x16f16 r98, r180, r174, r98
	mma_16x16x16f16 r130, r182, r172, r130
	mma_16x16x16f16 r98, r182, r176, r98
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r17
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r184, r170, r94
	mma_16x16x16f16 r62, r184, r174, r62
	mma_16x16x16f16 r94, r186, r172, r94
	mma_16x16x16f16 r62, r186, r176, r62
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r16
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r188, r170, r90
	mma_16x16x16f16 r58, r188, r174, r58
	mma_16x16x16f16 r90, r190, r172, r90
	mma_16x16x16f16 r58, r190, r176, r58
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r15
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r180, r170, r86
	mma_16x16x16f16 r54, r180, r174, r54
	mma_16x16x16f16 r86, r182, r172, r86
	mma_16x16x16f16 r54, r182, r176, r54
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r14
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r184, r170, r82
	mma_16x16x16f16 r50, r184, r174, r50
	mma_16x16x16f16 r82, r186, r172, r82
	mma_16x16x16f16 r50, r186, r176, r50
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r13
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r188, r170, r78
	mma_16x16x16f16 r46, r188, r174, r46
	mma_16x16x16f16 r78, r190, r172, r78
	mma_16x16x16f16 r46, r190, r176, r46
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r188, r178, 0x0
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r180, r170, r74
	mma_16x16x16f16 r42, r180, r174, r42
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r178, r11, 0x0
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	mma_16x16x16f16 r74, r182, r172, r74
	mma_16x16x16f16 r42, r182, r176, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r184, r170, r70
	mma_16x16x16f16 r38, r184, r174, r38
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r182, r10, 0x0
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	mma_16x16x16f16 r70, r186, r172, r70
	mma_16x16x16f16 r38, r186, r176, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r188, r170, r66
	mma_16x16x16f16 r34, r188, r174, r34
	mma_16x16x16f16 r66, r190, r172, r66
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r170, r12, 0x0
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	mma_16x16x16f16 r34, r190, r176, r34
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r174, r9, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r158, r178, r162, r158
	mma_16x16x16f16 r126, r178, r166, r126
	mma_16x16x16f16 r158, r180, r164, r158
	mma_16x16x16f16 r126, r180, r168, r126
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r178, r8, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r154, r182, r162, r154
	mma_16x16x16f16 r122, r182, r166, r122
	mma_16x16x16f16 r154, r184, r164, r154
	mma_16x16x16f16 r122, r184, r168, r122
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r170, r162, r150
	mma_16x16x16f16 r118, r170, r166, r118
	mma_16x16x16f16 r150, r172, r164, r150
	mma_16x16x16f16 r118, r172, r168, r118
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r170, r7, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r174, r162, r146
	mma_16x16x16f16 r114, r174, r166, r114
	mma_16x16x16f16 r146, r176, r164, r146
	mma_16x16x16f16 r114, r176, r168, r114
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r174, r6, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r178, r162, r142
	mma_16x16x16f16 r110, r178, r166, r110
	mma_16x16x16f16 r142, r180, r164, r142
	mma_16x16x16f16 r110, r180, r168, r110
	.loc	2 255 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:255:48
	lds_b128 r178, r5, 0x0
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r170, r162, r138
	mma_16x16x16f16 r106, r170, r166, r106
	mma_16x16x16f16 r138, r172, r164, r138
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	add_i32 r170, 0x4000, r11
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	mma_16x16x16f16 r106, r172, r168, r106
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r174, r162, r134
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r182, r170, 0x0
	add_i32 r170, 0x4000, r10
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	mma_16x16x16f16 r102, r174, r166, r102
	mma_16x16x16f16 r134, r176, r164, r134
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r12
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	mma_16x16x16f16 r102, r176, r168, r102
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r178, r162, r130
	mma_16x16x16f16 r98, r178, r166, r98
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r9
	.loc	2 261 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:261:61
	mma_16x16x16f16 r130, r180, r164, r130
	mma_16x16x16f16 r98, r180, r168, r98
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r182, r162, r94
	mma_16x16x16f16 r62, r182, r166, r62
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r8
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	mma_16x16x16f16 r94, r184, r164, r94
	mma_16x16x16f16 r62, r184, r168, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r172, r162, r90
	mma_16x16x16f16 r58, r172, r166, r58
	mma_16x16x16f16 r90, r174, r164, r90
	mma_16x16x16f16 r58, r174, r168, r58
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r7
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r176, r162, r86
	mma_16x16x16f16 r54, r176, r166, r54
	mma_16x16x16f16 r86, r178, r164, r86
	mma_16x16x16f16 r54, r178, r168, r54
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r6
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r180, r162, r82
	mma_16x16x16f16 r50, r180, r166, r50
	mma_16x16x16f16 r82, r182, r164, r82
	mma_16x16x16f16 r50, r182, r168, r50
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r5
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r172, r162, r78
	mma_16x16x16f16 r46, r172, r166, r46
	.loc	2 269 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:269:50
	lds_b128 r170, r170, 0x0
	.loc	2 275 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:275:61
	mma_16x16x16f16 r78, r174, r164, r78
	mma_16x16x16f16 r46, r174, r168, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r176, r162, r74
	mma_16x16x16f16 r42, r176, r166, r42
	mma_16x16x16f16 r74, r178, r164, r74
	mma_16x16x16f16 r42, r178, r168, r42
	arrive bsmcnt(1)
	mma_16x16x16f16 r70, r180, r162, r70
	mma_16x16x16f16 r38, r180, r166, r38
	mma_16x16x16f16 r70, r182, r164, r70
	mma_16x16x16f16 r38, r182, r168, r38
	arrive bsmcnt(0)
	mma_16x16x16f16 r66, r170, r162, r66
	mma_16x16x16f16 r34, r170, r166, r34
	mma_16x16x16f16 r66, r172, r164, r66
	mma_16x16x16f16 r34, r172, r168, r34
.Ltmp457:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp458:
	.loc	2 286 377                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:377
	add_u32 r162, 0x10000, r31
	mad_i32 r164, r31, 2, s14
	mad_i32 r162, r162, 2, s14
	.loc	2 240 21                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:240:21
	sadd_co_u32 s2, 0x80, s2
	.loc	2 286 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:346
	ldg_b128 r164, r164, 0x0
	ldg_b128 r168, r162, 0x0
	.loc	2 286 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:377
	add_u32 r162, 0x20000, r31
	mad_i32 r172, r162, 2, s14
	add_u32 r162, 0x30000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 286 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:346
	ldg_b128 r172, r172, 0x0
	.loc	2 240 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:240:21
	saddc_co_u32 s3, s3, 0
	.loc	2 286 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:346
	ldg_b128 r176, r162, 0x0
	.loc	2 286 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:377
	add_u32 r162, 0x40000, r31
	mad_i32 r180, r162, 2, s14
	add_u32 r162, 0x50000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 286 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:346
	ldg_b128 r180, r180, 0x0
	.loc	2 240 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:240:21
	scmp_eq_u64 0xf80, s2
	.loc	2 286 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:346
	ldg_b128 r184, r162, 0x0
	.loc	2 286 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:377
	add_u32 r162, 0x60000, r31
	mad_i32 r188, r162, 2, s14
	add_u32 r162, 0x70000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 286 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:346
	ldg_b128 r188, r188, 0x0
	.loc	2 240 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:240:21
	add_u32 r31, r31, 64
	.loc	2 286 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:286:346
	ldg_b128 r192, r162, 0x0
	arrive gvmcnt(7)
	sts_b128 r23, 0x0, r164
	arrive gvmcnt(6)
	sts_b128 r24, 0x0, r168
	arrive gvmcnt(5)
	sts_b128 r25, 0x0, r172
	arrive gvmcnt(4)
	sts_b128 r26, 0x0, r176
	arrive gvmcnt(3)
	sts_b128 r27, 0x0, r180
	arrive gvmcnt(2)
	sts_b128 r28, 0x0, r184
	arrive gvmcnt(1)
	sts_b128 r29, 0x0, r188
	arrive gvmcnt(0)
	sts_b128 r30, 0x0, r192
	.loc	2 240 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:240:3
	bra_smsks LBB3_10
LBB3_2:                                 ; %for.cond103.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:3
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 245 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:245:117
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:117
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	.loc	2 246 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:246:17
	snop 1
	ldg_b128 r170, r164, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 245 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:245:117
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:117
	add_co_u32 r162, r32, s2
	mov_b32 r163, s3
	addc_co_u32 r163, r33, r163
	.loc	2 246 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:246:17
	add_co_u32 r162, 0x10000, r162
	addc_co_u32 r163, r163, 0
	snop 1
	ldg_b128 r174, r162, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 245 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:245:117
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:117
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	.loc	2 246 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:246:17
	snop 1
	ldg_b128 r162, r164, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r166, 0, 0
	shl_b64 r168, 0, 0
	.loc	2 245 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:245:117
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:117
	add_co_u32 r166, r32, s2
	mov_b32 r167, s3
	addc_co_u32 r167, r33, r167
	.loc	2 246 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:246:17
	add_co_u32 r166, 0x10040, r166
	addc_co_u32 r167, r167, 0
	snop 1
	ldg_b128 r166, r166, 0x0
	bra LBB3_1
LBB3_10:                                ; %for.cond432.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	or_b32 r21, r21, r22
	add_co_u32 r166, s12, r21
	mov_b32 r21, s13
	addc_co_u32 r167, r21, 0
	shl_b64 r30, 0, 0
	shl_b64 r32, 0, 0
	.loc	2 293 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:293:115
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_12
; %bb.11:                               ; %if.then459
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r22, s22, r22
	mov_b32 r21, s23
	addc_co_u32 r23, r21, r23
	.loc	2 294 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:294:17
	snop 1
	ldg_b128 r30, r22, 0xf80
LBB3_12:                                ; %if.end511
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 293 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:293:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then459.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r21, s22, r22
	mov_b32 r22, s23
	addc_co_u32 r22, r22, r23
	add_co_u32 r24, 0x10f80, r21
	addc_co_u32 r25, r22, 0
	.loc	2 294 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:294:17
	snop 1
	ldg_b128 r162, r24, 0x0
LBB3_14:                                ; %if.end511.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r22, 0, 0
	shl_b64 r24, 0, 0
	.loc	2 293 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:293:115
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then459.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r22, s22, r22
	mov_b32 r21, s23
	addc_co_u32 r23, r21, r23
	.loc	2 294 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:294:17
	snop 1
	ldg_b128 r22, r22, 0xfc0
LBB3_16:                                ; %if.end511.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	sadd_co_i32 s0, s1, s0
	shl_b64 r26, 0, 0
	shl_b64 r28, 0, 0
	.loc	2 293 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:293:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then459.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:115
	shl_b64 r26, 1, r166
	add_co_u32 r21, s22, r26
	mov_b32 r26, s23
	addc_co_u32 r26, r26, r27
	add_co_u32 r28, 0x10fc0, r21
	addc_co_u32 r29, r26, 0
	.loc	2 294 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:294:17
	snop 1
	ldg_b128 r26, r28, 0x0
LBB3_18:                                ; %if.end511.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
.Ltmp459:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp460:
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r166, r20, 0x0
	lds_b128 r170, r19, 0x0
	lds_b128 r174, r18, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r20, 0x4000, r20
	add_i32 r19, 0x4000, r19
	add_i32 r18, 0x4000, r18
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r166, r30, r158
.Ltmp461:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp462:
	.loc	2 333 92                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:333:92
	cmp_gt_i32 s2, s0, r0
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	mma_16x16x16f16 r126, r166, r162, r126
	mma_16x16x16f16 r158, r168, r32, r158
	mma_16x16x16f16 r126, r168, r164, r126
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r166, r17, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r17, 0x4000, r17
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r170, r30, r154
	mma_16x16x16f16 r122, r170, r162, r122
	mma_16x16x16f16 r154, r172, r32, r154
	mma_16x16x16f16 r122, r172, r164, r122
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r170, r16, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r16, 0x4000, r16
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r174, r30, r150
	mma_16x16x16f16 r118, r174, r162, r118
	mma_16x16x16f16 r150, r176, r32, r150
	mma_16x16x16f16 r118, r176, r164, r118
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r174, r15, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r15, 0x4000, r15
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r166, r30, r146
	mma_16x16x16f16 r114, r166, r162, r114
	mma_16x16x16f16 r146, r168, r32, r146
	mma_16x16x16f16 r114, r168, r164, r114
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r166, r14, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r14, 0x4000, r14
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r170, r30, r142
	mma_16x16x16f16 r110, r170, r162, r110
	mma_16x16x16f16 r142, r172, r32, r142
	mma_16x16x16f16 r110, r172, r164, r110
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r170, r13, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r13, 0x4000, r13
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r174, r30, r138
	mma_16x16x16f16 r106, r174, r162, r106
	mma_16x16x16f16 r138, r176, r32, r138
	mma_16x16x16f16 r106, r176, r164, r106
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r174, r20, 0x0
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r166, r30, r134
	mma_16x16x16f16 r102, r166, r162, r102
	mma_16x16x16f16 r134, r168, r32, r134
	mma_16x16x16f16 r102, r168, r164, r102
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r166, r19, 0x0
	lds_b128 r18, r18, 0x0
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r130, r170, r30, r130
	mma_16x16x16f16 r98, r170, r162, r98
	mma_16x16x16f16 r130, r172, r32, r130
	mma_16x16x16f16 r98, r172, r164, r98
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r170, r17, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r94, r174, r30, r94
	mma_16x16x16f16 r62, r174, r162, r62
	mma_16x16x16f16 r94, r176, r32, r94
	mma_16x16x16f16 r62, r176, r164, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r166, r30, r90
	mma_16x16x16f16 r58, r166, r162, r58
	mma_16x16x16f16 r90, r168, r32, r90
	mma_16x16x16f16 r58, r168, r164, r58
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r166, r16, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r18, r30, r86
	mma_16x16x16f16 r54, r18, r162, r54
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r16, r15, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	mma_16x16x16f16 r86, r20, r32, r86
	mma_16x16x16f16 r54, r20, r164, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r170, r30, r82
	mma_16x16x16f16 r50, r170, r162, r50
	mma_16x16x16f16 r82, r172, r32, r82
	mma_16x16x16f16 r50, r172, r164, r50
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r170, r14, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r166, r30, r78
	mma_16x16x16f16 r46, r166, r162, r46
	mma_16x16x16f16 r78, r168, r32, r78
	mma_16x16x16f16 r46, r168, r164, r46
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r166, r13, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r16, r30, r74
	mma_16x16x16f16 r42, r16, r162, r42
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r14, r11, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r11, 0x4000, r11
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	mma_16x16x16f16 r74, r18, r32, r74
	mma_16x16x16f16 r42, r18, r164, r42
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r18, r10, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r10, 0x4000, r10
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r70, r170, r30, r70
	mma_16x16x16f16 r38, r170, r162, r38
	mma_16x16x16f16 r70, r172, r32, r70
	mma_16x16x16f16 r38, r172, r164, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r166, r30, r66
	mma_16x16x16f16 r34, r166, r162, r34
	mma_16x16x16f16 r66, r168, r32, r66
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r30, r12, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	mma_16x16x16f16 r34, r168, r164, r34
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r14, r22, r158
	mma_16x16x16f16 r126, r14, r26, r126
	mma_16x16x16f16 r158, r16, r24, r158
	mma_16x16x16f16 r126, r16, r28, r126
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r14, r9, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r9, 0x4000, r9
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r18, r22, r154
	mma_16x16x16f16 r122, r18, r26, r122
	mma_16x16x16f16 r154, r20, r24, r154
	mma_16x16x16f16 r122, r20, r28, r122
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r18, r8, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r8, 0x4000, r8
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r30, r22, r150
	mma_16x16x16f16 r118, r30, r26, r118
	mma_16x16x16f16 r150, r32, r24, r150
	mma_16x16x16f16 r118, r32, r28, r118
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r30, r7, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r7, 0x4000, r7
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r14, r22, r146
	mma_16x16x16f16 r114, r14, r26, r114
	mma_16x16x16f16 r146, r16, r24, r146
	mma_16x16x16f16 r114, r16, r28, r114
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r14, r6, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r6, 0x4000, r6
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r18, r22, r142
	mma_16x16x16f16 r110, r18, r26, r110
	mma_16x16x16f16 r142, r20, r24, r142
	mma_16x16x16f16 r110, r20, r28, r110
	.loc	2 303 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:303:48
	lds_b128 r18, r5, 0x0
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	add_i32 r5, 0x4000, r5
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r30, r22, r138
	mma_16x16x16f16 r106, r30, r26, r106
	mma_16x16x16f16 r138, r32, r24, r138
	mma_16x16x16f16 r106, r32, r28, r106
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r30, r11, 0x0
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r14, r22, r134
	mma_16x16x16f16 r102, r14, r26, r102
	mma_16x16x16f16 r134, r16, r24, r134
	mma_16x16x16f16 r102, r16, r28, r102
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r14, r10, 0x0
	add_i32 r10, 0x4000, r12
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r18, r22, r130
	mma_16x16x16f16 r98, r18, r26, r98
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r10, r10, 0x0
	.loc	2 309 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:309:61
	mma_16x16x16f16 r130, r20, r24, r130
	mma_16x16x16f16 r98, r20, r28, r98
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r18, r9, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r94, r30, r22, r94
	mma_16x16x16f16 r62, r30, r26, r62
	mma_16x16x16f16 r94, r32, r24, r94
	mma_16x16x16f16 r62, r32, r28, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r14, r22, r90
	mma_16x16x16f16 r58, r14, r26, r58
	mma_16x16x16f16 r90, r16, r24, r90
	mma_16x16x16f16 r58, r16, r28, r58
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r14, r8, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r10, r22, r86
	mma_16x16x16f16 r54, r10, r26, r54
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r8, r7, 0x0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	mma_16x16x16f16 r86, r12, r24, r86
	mma_16x16x16f16 r54, r12, r28, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r18, r22, r82
	mma_16x16x16f16 r50, r18, r26, r50
	mma_16x16x16f16 r82, r20, r24, r82
	mma_16x16x16f16 r50, r20, r28, r50
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r18, r6, 0x0
	.loc	2 331 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:331:3
	shl_b64 r6, 0, s20
	mad_i32 r6, s10, 2, r6
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r14, r22, r78
	mma_16x16x16f16 r46, r14, r26, r46
	.loc	2 317 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:317:48
	lds_b128 r12, r5, 0x0
	.loc	2 331 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:331:3
	shl_b32 r5, 1, r2
	add_co_u32 r6, r6, r5
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	mma_16x16x16f16 r78, r16, r24, r78
	.loc	2 331 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:331:3
	addc_co_u32 r7, r7, 0
	add_u16 r5_lo, 0, 0
	.loc	2 323 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:323:61
	mma_16x16x16f16 r46, r16, r28, r46
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r8, r22, r74
	mma_16x16x16f16 r42, r8, r26, r42
	mma_16x16x16f16 r74, r10, r24, r74
	mma_16x16x16f16 r42, r10, r28, r42
	arrive bsmcnt(1)
	mma_16x16x16f16 r70, r18, r22, r70
	mma_16x16x16f16 r38, r18, r26, r38
	mma_16x16x16f16 r70, r20, r24, r70
	mma_16x16x16f16 r38, r20, r28, r38
	arrive bsmcnt(0)
	mma_16x16x16f16 r66, r12, r22, r66
	mma_16x16x16f16 r34, r12, r26, r34
	mma_16x16x16f16 r66, r14, r24, r66
	mma_16x16x16f16 r34, r14, r28, r34
	.loc	2 333 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:333:9
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB3_22
; %bb.19:                               ; %if.then717
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	add_u16 r5_lo, 0, 0
	.loc	2 335 114 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:335:114
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_21
; %bb.20:                               ; %if.then739
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:114
	shl_b32 r5, 1, r4
	add_co_u32 r8, r6, r5
	addc_co_u32 r9, r7, 0
	.loc	2 336 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:336:19
	snop 1
	ldg_u16 r5, r8, 0x0
LBB3_21:                                ; %Flow560
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_22:                                ; %for.inc760
	sor_b64 xmsk, xmsk, s12
	.loc	2 333 63 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:333:63
	or_b32 r8, r4, 16
	.loc	2 333 92 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:333:92
	or_b32 r4, r2, r8
	cmp_gt_i32 s14, s0, r4
	add_u16 r4_lo, 0, 0
	.loc	2 333 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:333:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then717.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	add_u16 r4_lo, 0, 0
	.loc	2 335 114 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:335:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then739.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:114
	shl_b32 r4, 1, r8
	add_co_u32 r6, r6, r4
	addc_co_u32 r7, r7, 0
	.loc	2 336 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:336:19
	snop 1
	ldg_u16 r4, r6, 0x0
LBB3_25:                                ; %Flow559
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_26:                                ; %for.inc760.1
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
	and_b32 r1, r3, 12
	.loc	2 344 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:344:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s16, r1
	mov_b32 r2, s17
	addc_co_u32 r2, r2, 0
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_34
; %bb.27:                               ; %for.inc883
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_37
LBB3_28:                                ; %for.inc883.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_40
LBB3_29:                                ; %for.inc883.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_43
LBB3_30:                                ; %for.inc883.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_46
LBB3_31:                                ; %for.inc883.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_49
LBB3_32:                                ; %for.inc883.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_52
LBB3_33:                                ; %for.inc883.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_55
	bra LBB3_58
LBB3_34:                                ; %if.then777
.Ltmp463:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp464:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp467:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then846
.Ltmp468:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp469:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r8, r161, r3
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp471:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r9, r160, r3
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp473:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r8, 16, r8
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r8, r159, r3
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r3, r158, r3
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp475:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp476:
	.loc	2 359 28 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	addc_co_u32 r11, r2, r11
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_36:                                ; %Flow558
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_28
LBB3_37:                                ; %if.then777.1
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp478:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp480:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp481:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_39
; %bb.38:                               ; %if.then846.1
.Ltmp482:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp483:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r8, r157, r3
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp485:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r9, r156, r3
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp487:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r8, 16, r8
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r8, r155, r3
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r3, r154, r3
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp489:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp490:
	.loc	2 359 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:313
	shl_b64 r10, 1, r6
	.loc	2 359 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r10, r1, r10
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	addc_co_u32 r11, r2, r11
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_39:                                ; %Flow557
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_29
LBB3_40:                                ; %if.then777.2
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp492:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp493:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp494:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp495:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then846.2
.Ltmp496:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp497:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r8, r153, r3
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp499:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r9, r152, r3
.Ltmp500:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp501:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r8, 16, r8
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r8, r151, r3
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r3, r150, r3
.Ltmp502:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp503:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp504:
	.loc	2 359 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:313
	shl_b64 r10, 1, r6
	.loc	2 359 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r10, r1, r10
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	addc_co_u32 r11, r2, r11
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_42:                                ; %Flow556
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_30
LBB3_43:                                ; %if.then777.3
.Ltmp505:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp506:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp507:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp508:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp509:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_45
; %bb.44:                               ; %if.then846.3
.Ltmp510:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp511:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r8, r149, r3
.Ltmp512:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp513:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r9, r148, r3
.Ltmp514:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp515:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r8, 16, r8
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r8, r147, r3
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r3, r146, r3
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp517:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp518:
	.loc	2 359 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:313
	shl_b64 r10, 1, r6
	.loc	2 359 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r10, r1, r10
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	addc_co_u32 r11, r2, r11
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_45:                                ; %Flow555
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_31
LBB3_46:                                ; %if.then777.4
.Ltmp519:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp520:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp521:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp522:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp523:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then846.4
.Ltmp524:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp525:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r8, r145, r3
.Ltmp526:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp527:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r9, r144, r3
.Ltmp528:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp529:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r8, 16, r8
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r8, r143, r3
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r3, r142, r3
.Ltmp530:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp531:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp532:
	.loc	2 359 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:313
	shl_b64 r10, 1, r6
	.loc	2 359 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r10, r1, r10
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	addc_co_u32 r11, r2, r11
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_48:                                ; %Flow554
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_32
LBB3_49:                                ; %if.then777.5
.Ltmp533:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp534:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp535:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp536:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp537:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_51
; %bb.50:                               ; %if.then846.5
.Ltmp538:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp539:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r8, r141, r3
.Ltmp540:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp541:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r9, r140, r3
.Ltmp542:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp543:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r8, 16, r8
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r8, r139, r3
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r3, r138, r3
.Ltmp544:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp545:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp546:
	.loc	2 359 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:313
	shl_b64 r10, 1, r6
	.loc	2 359 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r10, r1, r10
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	addc_co_u32 r11, r2, r11
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_51:                                ; %Flow553
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_33
LBB3_52:                                ; %if.then777.6
.Ltmp547:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp548:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp549:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp550:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp551:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.then846.6
.Ltmp552:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp553:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r8, r137, r3
.Ltmp554:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp555:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r9, r136, r3
.Ltmp556:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp557:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r8, 16, r8
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r8, r135, r3
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r3, r134, r3
.Ltmp558:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp559:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp560:
	.loc	2 359 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:313
	shl_b64 r10, 1, r6
	.loc	2 359 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r10, r1, r10
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	addc_co_u32 r11, r2, r11
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_54:                                ; %Flow552
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_58
LBB3_55:                                ; %if.then777.7
.Ltmp561:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp562:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp563:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp564:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp565:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_57
; %bb.56:                               ; %if.then846.7
.Ltmp566:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp567:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r8, r133, r3
.Ltmp568:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp569:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r9, r132, r3
.Ltmp570:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp571:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r8, 16, r8
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r8, r131, r3
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r3, r130, r3
.Ltmp572:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp573:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp574:
	.loc	2 359 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:313
	shl_b64 r10, 1, r6
	.loc	2 359 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r10, r1, r10
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	addc_co_u32 r11, r2, r11
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0xe0, r8 devc
LBB3_57:                                ; %Flow551
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
LBB3_58:                                ; %for.inc883.7
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 66 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:66
	or_b32 r0, r0, 16
	.loc	2 345 95 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_66
; %bb.59:                               ; %for.inc883.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_69
LBB3_60:                                ; %for.inc883.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_72
LBB3_61:                                ; %for.inc883.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_75
LBB3_62:                                ; %for.inc883.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_78
LBB3_63:                                ; %for.inc883.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_81
LBB3_64:                                ; %for.inc883.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_84
LBB3_65:                                ; %for.inc883.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_87
	bra LBB3_90
LBB3_66:                                ; %if.then777.8
.Ltmp575:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp576:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp579:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then846.8
.Ltmp580:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp581:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r3, r129, r0
.Ltmp582:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp583:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r8, r128, r0
.Ltmp584:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp585:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r3, 16, r3
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r3, r127, r0
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r0, r126, r0
.Ltmp586:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp587:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp588:
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	or_b32 r8, r3, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r3, 0
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_68:                                ; %Flow550
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_60
LBB3_69:                                ; %if.then777.9
.Ltmp589:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp590:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp593:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_71
; %bb.70:                               ; %if.then846.9
.Ltmp594:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp595:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r3, r125, r0
.Ltmp596:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp597:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r8, r124, r0
.Ltmp598:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp599:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r3, 16, r3
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r3, r123, r0
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r0, r122, r0
.Ltmp600:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp601:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp602:
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	or_b32 r8, r3, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r3, 0
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_71:                                ; %Flow549
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_61
LBB3_72:                                ; %if.then777.10
.Ltmp603:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp604:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp607:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.then846.10
.Ltmp608:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp609:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r3, r121, r0
.Ltmp610:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp611:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r8, r120, r0
.Ltmp612:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp613:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r3, 16, r3
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r3, r119, r0
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r0, r118, r0
.Ltmp614:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp615:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp616:
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	or_b32 r8, r3, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r3, 0
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_74:                                ; %Flow548
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_62
LBB3_75:                                ; %if.then777.11
.Ltmp617:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp618:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp621:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_77
; %bb.76:                               ; %if.then846.11
.Ltmp622:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp623:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r3, r117, r0
.Ltmp624:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp625:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r8, r116, r0
.Ltmp626:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp627:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r3, 16, r3
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r3, r115, r0
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r0, r114, r0
.Ltmp628:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp629:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp630:
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	or_b32 r8, r3, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r3, 0
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_77:                                ; %Flow547
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_63
LBB3_78:                                ; %if.then777.12
.Ltmp631:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp632:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp635:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then846.12
.Ltmp636:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp637:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r3, r113, r0
.Ltmp638:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp639:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r8, r112, r0
.Ltmp640:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp641:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r3, 16, r3
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r3, r111, r0
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r0, r110, r0
.Ltmp642:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp643:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp644:
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	or_b32 r8, r3, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r3, 0
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_80:                                ; %Flow546
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_64
LBB3_81:                                ; %if.then777.13
.Ltmp645:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp646:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp649:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_83
; %bb.82:                               ; %if.then846.13
.Ltmp650:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp651:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r3, r109, r0
.Ltmp652:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp653:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r8, r108, r0
.Ltmp654:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp655:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r3, 16, r3
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r3, r107, r0
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r0, r106, r0
.Ltmp656:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp657:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp658:
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	or_b32 r8, r3, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_83:                                ; %Flow545
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_65
LBB3_84:                                ; %if.then777.14
.Ltmp659:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp660:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp663:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_86
; %bb.85:                               ; %if.then846.14
.Ltmp664:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp665:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r3, r105, r0
.Ltmp666:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp667:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r8, r104, r0
.Ltmp668:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp669:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r3, 16, r3
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r3, r103, r0
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r0, r102, r0
.Ltmp670:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp671:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp672:
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	or_b32 r8, r3, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_86:                                ; %Flow544
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 345 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:345:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_90
LBB3_87:                                ; %if.then777.15
.Ltmp673:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp674:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp677:
	.loc	2 357 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:357:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_89
; %bb.88:                               ; %if.then846.15
.Ltmp678:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp679:
	.loc	2 353 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:353:22
	mul_f32 r3, r101, r0
.Ltmp680:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp681:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	mul_f32 r8, r100, r0
.Ltmp682:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp683:
	.loc	2 352 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:352:22
	shl_b32 r3, 16, r3
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 351 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:351:22
	mul_f32 r3, r99, r0
	.loc	2 350 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:350:22
	mul_f32 r0, r98, r0
.Ltmp684:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp685:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp686:
	.loc	2 356 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	shl_b64 r10, 1, r6
	.loc	2 356 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:356:42
	or_b32 r8, r3, r0
	.loc	2 359 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380e0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 359 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:359:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_89:                                ; %Flow543
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
LBB3_90:                                ; %for.inc883.15
	sor_b64 xmsk, xmsk, s4
	.loc	2 365 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:365:3
	add_co_u32 r0, 0x100, r1
	addc_co_u32 r1, r2, 0
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_107
; %bb.91:                               ; %for.inc1011
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_110
LBB3_92:                                ; %for.inc1011.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_113
LBB3_93:                                ; %for.inc1011.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_116
LBB3_94:                                ; %for.inc1011.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_119
LBB3_95:                                ; %for.inc1011.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_122
LBB3_96:                                ; %for.inc1011.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_125
LBB3_97:                                ; %for.inc1011.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_128
LBB3_98:                                ; %for.inc1011.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_131
LBB3_99:                                ; %for.inc1011.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_134
LBB3_100:                               ; %for.inc1011.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_137
LBB3_101:                               ; %for.inc1011.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_140
LBB3_102:                               ; %for.inc1011.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_143
LBB3_103:                               ; %for.inc1011.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_146
LBB3_104:                               ; %for.inc1011.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_149
LBB3_105:                               ; %for.inc1011.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_152
LBB3_106:                               ; %for.inc1011.15
	.loc	2 385 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:385:1
	snop 0
	endk
LBB3_107:                               ; %if.then900
.Ltmp687:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp688:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp689:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp690:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp691:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_109
; %bb.108:                              ; %if.then973
.Ltmp692:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp693:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r97, r2
.Ltmp694:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp695:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r8, r96, r2
.Ltmp696:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp697:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r95, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r94, r2
.Ltmp698:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp699:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp700:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_109:                               ; %Flow542
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_92
LBB3_110:                               ; %if.then900.1
.Ltmp701:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp702:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp703:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp704:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp705:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_112
; %bb.111:                              ; %if.then973.1
.Ltmp706:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp707:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r93, r2
.Ltmp708:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp709:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r8, r92, r2
.Ltmp710:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp711:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r91, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r90, r2
.Ltmp712:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp713:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp714:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:314
	shl_b64 r2, 1, r6
	.loc	2 380 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 380 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x20, r8 devc
LBB3_112:                               ; %Flow541
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_93
LBB3_113:                               ; %if.then900.2
.Ltmp715:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp716:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp717:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp718:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp719:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_115
; %bb.114:                              ; %if.then973.2
.Ltmp720:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp721:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r89, r2
.Ltmp722:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp723:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r8, r88, r2
.Ltmp724:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp725:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r87, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r86, r2
.Ltmp726:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp727:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp728:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:314
	shl_b64 r2, 1, r6
	.loc	2 380 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 380 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x40, r8 devc
LBB3_115:                               ; %Flow540
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_94
LBB3_116:                               ; %if.then900.3
.Ltmp729:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp730:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp731:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp732:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp733:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_118
; %bb.117:                              ; %if.then973.3
.Ltmp734:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp735:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r85, r2
.Ltmp736:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp737:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r8, r84, r2
.Ltmp738:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp739:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r83, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r82, r2
.Ltmp740:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp741:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp742:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:314
	shl_b64 r2, 1, r6
	.loc	2 380 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 380 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x60, r8 devc
LBB3_118:                               ; %Flow539
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_95
LBB3_119:                               ; %if.then900.4
.Ltmp743:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp744:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp745:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp746:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp747:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_121
; %bb.120:                              ; %if.then973.4
.Ltmp748:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp749:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r81, r2
.Ltmp750:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp751:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r8, r80, r2
.Ltmp752:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp753:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r79, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r78, r2
.Ltmp754:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp755:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp756:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:314
	shl_b64 r2, 1, r6
	.loc	2 380 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 380 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x80, r8 devc
LBB3_121:                               ; %Flow538
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_96
LBB3_122:                               ; %if.then900.5
.Ltmp757:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp758:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp759:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp760:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp761:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_124
; %bb.123:                              ; %if.then973.5
.Ltmp762:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp763:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r77, r2
.Ltmp764:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp765:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r8, r76, r2
.Ltmp766:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp767:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r75, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r74, r2
.Ltmp768:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp769:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp770:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:314
	shl_b64 r2, 1, r6
	.loc	2 380 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 380 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0xa0, r8 devc
LBB3_124:                               ; %Flow537
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_97
LBB3_125:                               ; %if.then900.6
.Ltmp771:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp772:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp773:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp774:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp775:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_127
; %bb.126:                              ; %if.then973.6
.Ltmp776:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp777:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r73, r2
.Ltmp778:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp779:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r8, r72, r2
.Ltmp780:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp781:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r71, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r70, r2
.Ltmp782:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp783:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp784:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:314
	shl_b64 r2, 1, r6
	.loc	2 380 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 380 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0xc0, r8 devc
LBB3_127:                               ; %Flow536
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_98
LBB3_128:                               ; %if.then900.7
.Ltmp785:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp786:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp787:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp788:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp789:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_130
; %bb.129:                              ; %if.then973.7
.Ltmp790:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp791:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r69, r2
.Ltmp792:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp793:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r5, r68, r2
.Ltmp794:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp795:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r67, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r66, r2
.Ltmp796:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp797:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp798:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:314
	shl_b64 r2, 1, r6
	.loc	2 380 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 380 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0xe0, r8 devc
LBB3_130:                               ; %Flow535
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s2
	sor_b64 xmsk, xmsk, s4
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_99
LBB3_131:                               ; %if.then900.8
.Ltmp799:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp800:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp801:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp802:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp803:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_133
; %bb.132:                              ; %if.then973.8
.Ltmp804:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp805:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r65, r2
.Ltmp806:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp807:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r5, r64, r2
.Ltmp808:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp809:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r63, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r62, r2
.Ltmp810:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp811:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp812:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38000, r2
	addc_co_u32 r3, r3, 0
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_133:                               ; %Flow534
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_100
LBB3_134:                               ; %if.then900.9
.Ltmp813:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp814:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp815:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp816:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp817:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_136
; %bb.135:                              ; %if.then973.9
.Ltmp818:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp819:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r61, r2
.Ltmp820:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp821:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r5, r60, r2
.Ltmp822:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp823:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r59, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r58, r2
.Ltmp824:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp825:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp826:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38020, r2
	addc_co_u32 r3, r3, 0
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_136:                               ; %Flow533
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_101
LBB3_137:                               ; %if.then900.10
.Ltmp827:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp828:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp829:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp830:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp831:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_139
; %bb.138:                              ; %if.then973.10
.Ltmp832:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp833:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r57, r2
.Ltmp834:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp835:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r5, r56, r2
.Ltmp836:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp837:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r55, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r54, r2
.Ltmp838:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp839:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp840:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38040, r2
	addc_co_u32 r3, r3, 0
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_139:                               ; %Flow532
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_102
LBB3_140:                               ; %if.then900.11
.Ltmp841:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp842:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp843:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp844:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp845:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_142
; %bb.141:                              ; %if.then973.11
.Ltmp846:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp847:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r53, r2
.Ltmp848:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp849:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r5, r52, r2
.Ltmp850:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp851:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r51, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r50, r2
.Ltmp852:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp853:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp854:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38060, r2
	addc_co_u32 r3, r3, 0
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_142:                               ; %Flow531
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_103
LBB3_143:                               ; %if.then900.12
.Ltmp855:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp856:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp857:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp858:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp859:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_145
; %bb.144:                              ; %if.then973.12
.Ltmp860:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp861:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r49, r2
.Ltmp862:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp863:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r5, r48, r2
.Ltmp864:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp865:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r47, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r46, r2
.Ltmp866:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp867:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp868:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38080, r2
	addc_co_u32 r3, r3, 0
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_145:                               ; %Flow530
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_146:                               ; %if.then900.13
.Ltmp869:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp870:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp871:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp872:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp873:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_148
; %bb.147:                              ; %if.then973.13
.Ltmp874:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp875:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r45, r2
.Ltmp876:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp877:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r5, r44, r2
.Ltmp878:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp879:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r43, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r42, r2
.Ltmp880:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp881:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp882:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x380a0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_148:                               ; %Flow529
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_105
LBB3_149:                               ; %if.then900.14
.Ltmp883:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp884:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp885:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp886:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp887:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_151
; %bb.150:                              ; %if.then973.14
.Ltmp888:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp889:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r41, r2
.Ltmp890:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp891:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r5, r40, r2
.Ltmp892:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp893:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r39, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r38, r2
.Ltmp894:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp895:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp896:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x380c0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_151:                               ; %Flow528
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 366 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:366:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_106
LBB3_152:                               ; %if.then900.15
.Ltmp897:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp898:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp899:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp900:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp901:
	.loc	2 378 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:378:11
	snop 0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_106
; %bb.153:                              ; %if.then973.15
.Ltmp902:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp903:
	.loc	2 374 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:374:24
	mul_f32 r3, r37, r2
.Ltmp904:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp905:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	mul_f32 r4, r36, r2
.Ltmp906:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp907:
	.loc	2 373 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:373:24
	shl_b32 r3, 16, r3
	.loc	2 377 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	.loc	2 372 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:372:24
	mul_f32 r3, r35, r2
	.loc	2 371 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:371:24
	mul_f32 r2, r34, r2
.Ltmp908:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp909:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp910:
	.loc	2 377 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:377:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	.loc	2 380 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:28
	shl_b64 r2, 1, r6
	add_co_u32 r0, r0, r2
	addc_co_u32 r1, r1, r3
	add_co_u32 r0, 0x380e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 380 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:380:461
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 385 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp:385:1
	snop 2
	endk
.Ltmp911:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 25
		.macahca_streg_size 2
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
; codeLenInByte = 20856
; NumMTRegsForWarps/PEU: 196
; NumSTRegsForWarps/PEU: 28
; MaxWarpsPerPEU: 2
	.protected	routed_expert_weight_shared
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
	.byte	0                               ; EOM(3)
	.section	.debug_info
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x3d4 DW_TAG_compile_unit
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
	.byte	2                               ; Abbrev [2] 0x54:0x6 DW_TAG_subprogram
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x5a:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x60:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x66:0x6 DW_TAG_subprogram
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x6c:0x1b7 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string16                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x7d:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	43                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x91:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xa6:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	60                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xba:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xcf:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	77                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xe3:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0xf8:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	97                              ; DW_AT_call_line
	.byte	175                             ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x104:0x19 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	97                              ; DW_AT_call_line
	.byte	24                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x110:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	133                             ; DW_AT_call_line
	.byte	53                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x11d:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp169                        ; DW_AT_low_pc
	.long	.Ltmp170-.Ltmp169               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	113                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x131:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp169                        ; DW_AT_low_pc
	.long	.Ltmp170-.Ltmp169               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x146:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp171                        ; DW_AT_low_pc
	.long	.Ltmp172-.Ltmp171               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	130                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x15a:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp171                        ; DW_AT_low_pc
	.long	.Ltmp172-.Ltmp171               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x16f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp173                        ; DW_AT_low_pc
	.long	.Ltmp174-.Ltmp173               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	147                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x183:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp173                        ; DW_AT_low_pc
	.long	.Ltmp174-.Ltmp173               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x198:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp175                        ; DW_AT_low_pc
	.long	.Ltmp176-.Ltmp175               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	164                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1ac:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp175                        ; DW_AT_low_pc
	.long	.Ltmp176-.Ltmp175               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x1c1:0x14 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.quad	.Ltmp177                        ; DW_AT_low_pc
	.long	.Ltmp178-.Ltmp177               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	21                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x1d5:0x35 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	202                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x1e1:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x1ee:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x1fb:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x20a:0xc DW_TAG_inlined_subroutine
	.long	96                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	200                             ; DW_AT_call_line
	.byte	30                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x216:0xc DW_TAG_inlined_subroutine
	.long	102                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	201                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x223:0x6 DW_TAG_subprogram
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x229:0x6 DW_TAG_subprogram
	.long	.Linfo_string15                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x22f:0x1af DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string17                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x240:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp455                        ; DW_AT_low_pc
	.long	.Ltmp456-.Ltmp455               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	252                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x254:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp455                        ; DW_AT_low_pc
	.long	.Ltmp456-.Ltmp455               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x269:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp457                        ; DW_AT_low_pc
	.long	.Ltmp458-.Ltmp457               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	283                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x27e:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp457                        ; DW_AT_low_pc
	.long	.Ltmp458-.Ltmp457               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x293:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp459                        ; DW_AT_low_pc
	.long	.Ltmp460-.Ltmp459               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	300                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2a8:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp459                        ; DW_AT_low_pc
	.long	.Ltmp460-.Ltmp459               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x2bd:0x14 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.quad	.Ltmp461                        ; DW_AT_low_pc
	.long	.Ltmp462-.Ltmp461               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	225                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2d1:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	354                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x2de:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2eb:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2f8:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x307:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	355                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x314:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x321:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x32e:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x33d:0x1a DW_TAG_inlined_subroutine
	.long	553                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	349                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x34a:0xc DW_TAG_inlined_subroutine
	.long	547                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x357:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	375                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x364:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x371:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x37e:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x38d:0x36 DW_TAG_inlined_subroutine
	.long	90                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	376                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x39a:0x28 DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3a7:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3b4:0xd DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3c3:0x1a DW_TAG_inlined_subroutine
	.long	553                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	370                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x3d0:0xc DW_TAG_inlined_subroutine
	.long	547                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges
.Ldebug_ranges0:
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp840-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp882-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp896-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp910-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp840-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp882-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp896-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp910-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp812-.Lfunc_begin0
	.quad	.Ltmp813-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp825-.Lfunc_begin0
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.quad	.Ltmp839-.Lfunc_begin0
	.quad	.Ltmp840-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	.Ltmp853-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp856-.Lfunc_begin0
	.quad	.Ltmp867-.Lfunc_begin0
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp881-.Lfunc_begin0
	.quad	.Ltmp882-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp884-.Lfunc_begin0
	.quad	.Ltmp895-.Lfunc_begin0
	.quad	.Ltmp896-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp898-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.quad	.Ltmp910-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp810-.Lfunc_begin0
	.quad	.Ltmp811-.Lfunc_begin0
	.quad	.Ltmp814-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp825-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp839-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp853-.Lfunc_begin0
	.quad	.Ltmp856-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp867-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp881-.Lfunc_begin0
	.quad	.Ltmp884-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp895-.Lfunc_begin0
	.quad	.Ltmp898-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp823-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp837-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp848-.Lfunc_begin0
	.quad	.Ltmp849-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp851-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	.Ltmp863-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp865-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp879-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp890-.Lfunc_begin0
	.quad	.Ltmp891-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp893-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp907-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp823-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp837-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp848-.Lfunc_begin0
	.quad	.Ltmp849-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp851-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	.Ltmp863-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp865-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp879-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp890-.Lfunc_begin0
	.quad	.Ltmp891-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp893-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp907-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp808-.Lfunc_begin0
	.quad	.Ltmp809-.Lfunc_begin0
	.quad	.Ltmp815-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp823-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp830-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp837-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp851-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp865-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp872-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp879-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp886-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp893-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp900-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp907-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	.Ltmp807-.Lfunc_begin0
	.quad	.Ltmp816-.Lfunc_begin0
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp830-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp848-.Lfunc_begin0
	.quad	.Ltmp849-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	.Ltmp863-.Lfunc_begin0
	.quad	.Ltmp872-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.quad	.Ltmp886-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp890-.Lfunc_begin0
	.quad	.Ltmp891-.Lfunc_begin0
	.quad	.Ltmp900-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp832-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp846-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp860-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp874-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp888-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp902-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp832-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp846-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp860-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp874-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp888-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp902-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_d2/v015_candidate_d2_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=179
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=200
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=210
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=224
.Linfo_string6:
	.asciz	"__float2half"                  ; string offset=230
.Linfo_string7:
	.asciz	"__half"                        ; string offset=243
.Linfo_string8:
	.asciz	"min"                           ; string offset=250
.Linfo_string9:
	.asciz	"__float2half_rn"               ; string offset=254
.Linfo_string10:
	.asciz	"__floats2half2_rn"             ; string offset=270
.Linfo_string11:
	.asciz	"__float22half2_rn"             ; string offset=288
.Linfo_string12:
	.asciz	"__half22float2"                ; string offset=306
.Linfo_string13:
	.asciz	"mul2"                          ; string offset=321
.Linfo_string14:
	.asciz	"__half2float"                  ; string offset=326
.Linfo_string15:
	.asciz	"operator float"                ; string offset=339
.Linfo_string16:
	.asciz	"kernel_kernel"                 ; string offset=354
.Linfo_string17:
	.asciz	"kernel_kernel_1"               ; string offset=368
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
    .mtreg_count:    198
    .name:           kernel_kernel
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    29
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
      - .access:         read_only
        .arg_attribute:  is_constant
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
    .mtreg_count:    196
    .name:           kernel_kernel_1
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    28
macahca.version:
  - 1
  - 0
...

	.end_metaxgpu_metadata
	.section	.debug_line
.Lline_table_start0:
