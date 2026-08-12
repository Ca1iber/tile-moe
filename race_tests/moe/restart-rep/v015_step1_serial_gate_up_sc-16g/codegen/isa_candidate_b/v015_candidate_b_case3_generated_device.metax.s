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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 18 23 prologue_end            ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:18:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	and_b32 r0, 0x3ff, r0
	ldu_b256 s8, s0, 0x20
	shl_b32 r2, 3, r0
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	smul_i32 s17, 0xe0000, s4
	smov_b32 s5, 0x1c00
	shr_b32 r22, 3, r0
	mov_b32 r1, s17
	mad_u24 r1, r22, s5, r1
	and_b32 r23, r2, 56
	arrive slcnt(0)
	smul_i32 s24, 0xe00000, s6
	or_b32 r1, r1, r23
	add_u32 r32, r1, s24
	.loc	2 29 498                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:498
	add_u32 r34, 0x38000, r32
	.loc	2 29 377 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:377
	mad_i32 r8, r32, 2, s10
	.loc	2 29 498                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:498
	add_u32 r38, 0xa8000, r32
	.loc	2 29 377                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:377
	mad_i32 r10, r34, 2, s10
	.loc	2 29 498                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:498
	add_u32 r36, 0x70000, r32
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:346
	ldg_b128 r40, r8, 0x0
	ldg_b128 r44, r10, 0x0
	.loc	2 29 377                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:377
	mad_i32 r10, r36, 2, s10
	mad_i32 r12, r38, 2, s10
	and_b32 r1, r2, 16
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:346
	ldg_b128 r48, r10, 0x0
	ldg_b128 r52, r12, 0x0
	and_b32 r4, r2, 32
	and_b32 r3, 0x1fc0, r2
	add_u32 r2, r1, r0
	mul_u24 r1, r0, 9
	.loc	2 18 23 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:18:23
	sashr_i32 s7, 31, s6
	and_b32 r6, r1, 8
	shr_b32 r7, 1, r0
	and_b32 r1, r0, 15
	smov_b32 s0, 0x1e0
	.loc	2 19 24                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:19:24
	sshl_b64 s6, 2, s6
	and_or_b32 r25, r7, s0, r1
	sadd_co_u32 s0, s22, s6
	saddc_co_u32 s1, s23, s7
	.loc	2 20 38                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:20:38
	sshl_b32 s2, 7, s2
	.loc	2 20 47 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:20:47
	sadd_co_u32 s18, s18, s6
	saddc_co_u32 s19, s19, s7
	.loc	2 20 79                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:20:79
	sadd_co_u32 s6, s20, s6
	.loc	2 20 47                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:20:47
	ldu_b32 s3, s18, 0x0
	.loc	2 19 24 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:19:24
	ldu_b32 s1, s0, 0x0
	.loc	2 20 79                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:20:79
	saddc_co_u32 s7, s21, s7
	ldu_b32 s0, s6, 0x0
	shr_b32 r8, 6, r0
	shr_b32 r9, 5, r0
	mul_u24 r8, 0x38000, r8
	and_b32 r27, r7, 24
	add_shl_u32 r7, r9, r7, 4
	shr_b32 r9, 4, r0
	mad_u24 r26, r1, s5, r8
	shl_b32 r1, 6, r0
	add_shl_u32 r9, r9, r0, 3
	and_b32 r7, r7, 16
	and_b32 r8, 0x3c0, r1
	add_u32 r5, r4, r0
	and_or_b32 r33, r9, 8, r7
	.loc	2 21 54                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:21:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s2
	.loc	2 20 45                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:20:45
	sadd_co_i32 s2, s3, s2
	or_b32 r10, 0x400, r8
	or_b32 r11, 0x800, r8
	or_b32 r12, 0xc00, r8
	or_b32 r13, 0x1000, r8
	or_b32 r14, 0x1400, r8
	or_b32 r15, 0x1800, r8
	or_b32 r30, 0x1c00, r8
	or_b32 r8, r33, r8
	xor_b32 r31, r4, 32
	and_b32 r5, r5, 32
	or_b32 r9, r33, r4
	.loc	2 20 77 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:20:77
	ssub_co_i32 s16, s2, s0
	.loc	2 29 98 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:98
	or_b32 r7, r5, r6
	and_b32 r2, r2, 16
	or3_b32 r16, r33, r10, r31
	or3_b32 r17, r33, r11, r31
	or3_b32 r18, r33, r12, r31
	or3_b32 r19, r33, r13, r31
	or_b32 r13, r9, r13
	or_b32 r10, r9, r10
	or_b32 r11, r9, r11
	or_b32 r12, r9, r12
	or_b32 r35, r9, r14
	or_b32 r37, r9, r15
	or_b32 r9, r9, r30
	or_b32 r39, r8, r31
	sadd_co_u32 s10, 0x80, s10
	mov_b32 r24, 0x1c00
	.loc	2 29 62 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:62
	or_b32 r5, r3, r5
	.loc	2 29 268                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:268
	or3_b32 r28, r7, r3, r2
	or_b32 r29, r8, r4
	shl_add_u32 r8, 1, r16, 0
	shl_add_u32 r16, 1, r10, 0
	shl_add_u32 r10, 1, r9, 0
	shl_add_u32 r9, 1, r39, 0
	add_u32 r39, s16, r25
	.loc	2 29 183                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:183
	or3_b32 r6, r5, r2, r6
	shl_add_u32 r5, 1, r18, 0
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:43
	shl_add_u32 r18, 1, r28, 0
	mul_hi_i32 r28, s16, r24
	saddc_co_u32 s11, s11, 0
	smul_i32 s2, 0x1c00, s16
	add_u32 r24, r39, 16
	.loc	2 31 3 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:31:3
	sadd_co_i32 s17, s24, s17
	shl_add_u32 r7, 1, r17, 0
	shl_add_u32 r17, 1, r29, 0
	mov_b32 r29, s2
	cmp_gt_u32 s2, 0x2380, r24
	mov_b32 r24, s17
	mad_u24 r22, r22, s5, r24
	or3_b32 r20, r33, r14, r31
	or3_b32 r21, r33, r15, r31
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:43
	shl_add_u32 r6, 1, r6, 0
	shl_add_u32 r15, 1, r11, 0
	shl_add_u32 r14, 1, r12, 0
	shl_add_u32 r12, 1, r35, 0
	shl_add_u32 r11, 1, r37, 0
	.loc	2 31 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:31:3
	or_b32 r22, r22, r23
	shl_add_u32 r4, 1, r19, 0
	shl_add_u32 r3, 1, r20, 0
	shl_add_u32 r2, 1, r21, 0
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:43
	add_u32 r19, 0x1000, r6
	.loc	2 29 346 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:346
	add_i32 r35, 0x1000, r6
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:43
	add_u32 r20, 0x2000, r6
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:346
	add_i32 r37, 0x2000, r6
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:43
	add_u32 r21, 0x3000, r6
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:346
	add_i32 r6, 0x3000, r6
	.loc	2 31 3 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:31:3
	mov_b32 r23, 0x3800
	smul_i32 s5, 0x3800, s16
	cmp_gt_u32 s6, 0x2380, r39
	mov_b32 r24, s9
	shr_b32 r1, 2, r0
	shl_add_u32 r13, 1, r13, 0
	smov_b64 s18, 0
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:346
	arrive gvmcnt(3)
	sts_b128 r18, 0x0, r40
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:0
	shl_b64 r40, 0, 0
	shl_b64 r42, 0, 0
	shl_b64 r56, 0, r40
	shl_b64 r60, 0, r40
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:29:346
	arrive gvmcnt(2)
	sts_b128 r35, 0x0, r44
	shl_b64 r44, 0, r40
	shl_b64 r64, 0, r40
	shl_b64 r68, 0, r40
	arrive gvmcnt(1)
	sts_b128 r37, 0x0, r48
	arrive gvmcnt(0)
	sts_b128 r6, 0x0, r52
	or3_b32 r6, r33, r30, r31
	.loc	2 31 3 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:31:3
	mul_hi_i32 r31, s16, r23
	mov_b32 r23, s5
	and_or_b32 r30, r0, 48, r23
	mad_u32 r30, r26, 2, r30
	add_co_u32 r23, s8, r30
	shl_b64 r48, 0, r40
	shl_b64 r52, 0, r40
	shl_b64 r72, 0, r40
	shl_b64 r76, 0, r40
	shl_b64 r80, 0, r40
	shl_b64 r84, 0, r40
	shl_b64 r88, 0, r40
	shl_b64 r92, 0, r40
	shl_b64 r96, 0, r40
	shl_b64 r100, 0, r40
	shl_add_u32 r6, 1, r6, 0
	addc_co_u32 r24, r24, r31
	mov_b32 r30, r22
	shl_b64 r46, 0, r42
	shl_b64 r50, 0, r42
	shl_b64 r54, 0, r42
	shl_b64 r58, 0, r42
	shl_b64 r62, 0, r42
	shl_b64 r66, 0, r42
	shl_b64 r70, 0, r42
	shl_b64 r74, 0, r42
	shl_b64 r78, 0, r42
	shl_b64 r82, 0, r42
	shl_b64 r86, 0, r42
	shl_b64 r90, 0, r42
	shl_b64 r94, 0, r42
	shl_b64 r98, 0, r42
	shl_b64 r102, 0, r42
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:3
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
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r120, r17, 0x0
	lds_b128 r124, r16, 0x0
	lds_b128 r128, r15, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r120, r112, r100
	mma_16x16x16f16 r68, r120, r116, r68
	mma_16x16x16f16 r100, r122, r114, r100
	mma_16x16x16f16 r68, r122, r118, r68
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r120, r14, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r124, r112, r96
	mma_16x16x16f16 r64, r124, r116, r64
	mma_16x16x16f16 r96, r126, r114, r96
	mma_16x16x16f16 r64, r126, r118, r64
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r124, r13, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r128, r112, r92
	mma_16x16x16f16 r60, r128, r116, r60
	mma_16x16x16f16 r92, r130, r114, r92
	mma_16x16x16f16 r60, r130, r118, r60
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r128, r12, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r120, r112, r88
	mma_16x16x16f16 r56, r120, r116, r56
	mma_16x16x16f16 r88, r122, r114, r88
	mma_16x16x16f16 r56, r122, r118, r56
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r120, r11, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r124, r112, r84
	mma_16x16x16f16 r52, r124, r116, r52
	mma_16x16x16f16 r84, r126, r114, r84
	mma_16x16x16f16 r52, r126, r118, r52
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r124, r10, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r128, r112, r80
	mma_16x16x16f16 r48, r128, r116, r48
	mma_16x16x16f16 r80, r130, r114, r80
	mma_16x16x16f16 r48, r130, r118, r48
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r128, r9, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r120, r112, r76
	mma_16x16x16f16 r44, r120, r116, r44
	mma_16x16x16f16 r76, r122, r114, r76
	mma_16x16x16f16 r44, r122, r118, r44
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r120, r8, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r124, r112, r72
	mma_16x16x16f16 r40, r124, r116, r40
	mma_16x16x16f16 r72, r126, r114, r72
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r112, r7, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	mma_16x16x16f16 r40, r126, r118, r40
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r116, r5, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r100, r128, r104, r100
	mma_16x16x16f16 r68, r128, r108, r68
	mma_16x16x16f16 r100, r130, r106, r100
	mma_16x16x16f16 r68, r130, r110, r68
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r120, r104, r96
	mma_16x16x16f16 r64, r120, r108, r64
	mma_16x16x16f16 r96, r122, r106, r96
	mma_16x16x16f16 r64, r122, r110, r64
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r120, r4, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r112, r104, r92
	mma_16x16x16f16 r60, r112, r108, r60
	mma_16x16x16f16 r92, r114, r106, r92
	mma_16x16x16f16 r60, r114, r110, r60
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r112, r3, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r116, r104, r88
	mma_16x16x16f16 r56, r116, r108, r56
	mma_16x16x16f16 r88, r118, r106, r88
	mma_16x16x16f16 r56, r118, r110, r56
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r116, r2, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r120, r104, r84
	mma_16x16x16f16 r52, r120, r108, r52
	mma_16x16x16f16 r84, r122, r106, r84
	mma_16x16x16f16 r52, r122, r110, r52
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:46:50
	lds_b128 r120, r6, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r112, r104, r80
	mma_16x16x16f16 r48, r112, r108, r48
	mma_16x16x16f16 r80, r114, r106, r80
	mma_16x16x16f16 r48, r114, r110, r48
	arrive bsmcnt(1)
	mma_16x16x16f16 r76, r116, r104, r76
	mma_16x16x16f16 r44, r116, r108, r44
	mma_16x16x16f16 r76, r118, r106, r76
	mma_16x16x16f16 r44, r118, r110, r44
	arrive bsmcnt(0)
	mma_16x16x16f16 r72, r120, r104, r72
	mma_16x16x16f16 r40, r120, r108, r40
	mma_16x16x16f16 r72, r122, r106, r72
	mma_16x16x16f16 r40, r122, r110, r40
.Ltmp7:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 63 379                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:63:379
	add_u32 r31, 0x38000, r30
	mad_i32 r106, r31, 2, s10
	add_u32 r31, 0x70000, r30
	mad_i32 r112, r31, 2, s10
	add_u32 r31, 0xa8000, r30
	mad_i32 r104, r30, 2, s10
	mad_i32 r114, r31, 2, s10
	.loc	2 31 21                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:31:21
	sadd_co_u32 s18, 0x80, s18
	.loc	2 63 348                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:63:348
	ldg_b128 r108, r104, 0x0
	ldg_b128 r104, r106, 0x0
	ldg_b128 r116, r112, 0x0
	ldg_b128 r112, r114, 0x0
	.loc	2 31 21                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:31:21
	saddc_co_u32 s19, s19, 0
	scmp_eq_u64 0x3780, s18
	add_u32 r30, r30, 64
	.loc	2 63 348                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:63:348
	arrive gvmcnt(3)
	sts_b128 r18, 0x0, r108
	arrive gvmcnt(2)
	sts_b128 r19, 0x0, r104
	arrive gvmcnt(1)
	sts_b128 r20, 0x0, r116
	arrive gvmcnt(0)
	sts_b128 r21, 0x0, r112
	.loc	2 31 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:31:3
	bra_smsks LBB2_10
LBB2_2:                                 ; %for.cond89.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:3
	shl_b64 r112, 0, 0
	shl_b64 r114, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:36:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	add_co_u32 r104, r23, s18
	mov_b32 r31, s19
	addc_co_u32 r105, r24, r31
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:37:17
	snop 1
	ldg_b128 r112, r104, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r116, 0, 0
	shl_b64 r118, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:36:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	add_co_u32 r31, r23, s18
	mov_b32 r33, s19
	addc_co_u32 r33, r24, r33
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:37:17
	add_co_u32 r104, 0x38000, r31
	addc_co_u32 r105, r33, 0
	snop 1
	ldg_b128 r116, r104, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r104, 0, 0
	shl_b64 r106, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:36:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	add_co_u32 r104, r23, s18
	mov_b32 r31, s19
	addc_co_u32 r105, r24, r31
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:37:17
	snop 1
	ldg_b128 r104, r104, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r108, 0, 0
	shl_b64 r110, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:36:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB2_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	add_co_u32 r31, r23, s18
	mov_b32 r33, s19
	addc_co_u32 r33, r24, r33
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:37:17
	add_co_u32 r108, 0x38040, r31
	addc_co_u32 r109, r33, 0
	snop 1
	ldg_b128 r108, r108, 0x0
	bra LBB2_1
LBB2_10:                                ; %for.cond330.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	or_b32 r26, r26, r27
	add_co_u32 r30, r29, r26
	addc_co_u32 r31, r28, 0
	shl_b64 r108, 0, 0
	shl_b64 r110, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:70:115
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_12
; %bb.11:                               ; %if.then357
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:115
	shl_b64 r28, 1, r30
	add_co_u32 r26, s8, r28
	mov_b32 r27, s9
	addc_co_u32 r27, r27, r29
	add_co_u32 r26, 0x3780, r26
	addc_co_u32 r27, r27, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r108, r26, 0x0
LBB2_12:                                ; %if.end409
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r112, 0, 0
	shl_b64 r114, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:70:115
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then357.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:115
	shl_b64 r28, 1, r30
	add_co_u32 r26, s8, r28
	mov_b32 r27, s9
	addc_co_u32 r27, r27, r29
	add_co_u32 r26, 0x3b780, r26
	addc_co_u32 r27, r27, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r112, r26, 0x0
LBB2_14:                                ; %if.end409.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r26, 0, 0
	shl_b64 r28, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:70:115
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then357.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:115
	shl_b64 r28, 1, r30
	add_co_u32 r26, s8, r28
	mov_b32 r27, s9
	addc_co_u32 r27, r27, r29
	add_co_u32 r26, 0x37c0, r26
	addc_co_u32 r27, r27, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r26, r26, 0x0
LBB2_16:                                ; %if.end409.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	sadd_co_i32 s0, s1, s0
	shl_b64 r104, 0, 0
	shl_b64 r106, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:70:115
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then357.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:115
	shl_b64 r104, 1, r30
	add_co_u32 r33, s8, r104
	mov_b32 r35, s9
	addc_co_u32 r35, r35, r105
	add_co_u32 r104, 0x3b7c0, r33
	addc_co_u32 r105, r35, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r104, r104, 0x0
LBB2_18:                                ; %if.end409.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
.Ltmp9:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp10:
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r116, r17, 0x0
	lds_b128 r120, r16, 0x0
	lds_b128 r124, r15, 0x0
.Ltmp11:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp12:
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r116, r108, r100
	mma_16x16x16f16 r68, r116, r112, r68
	mma_16x16x16f16 r100, r118, r110, r100
	mma_16x16x16f16 r68, r118, r114, r68
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r116, r14, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r120, r108, r96
	mma_16x16x16f16 r64, r120, r112, r64
	mma_16x16x16f16 r96, r122, r110, r96
	mma_16x16x16f16 r64, r122, r114, r64
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r120, r13, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r124, r108, r92
	mma_16x16x16f16 r60, r124, r112, r60
	mma_16x16x16f16 r92, r126, r110, r92
	mma_16x16x16f16 r60, r126, r114, r60
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r124, r12, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r116, r108, r88
	mma_16x16x16f16 r56, r116, r112, r56
	mma_16x16x16f16 r88, r118, r110, r88
	mma_16x16x16f16 r56, r118, r114, r56
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r116, r11, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r120, r108, r84
	mma_16x16x16f16 r52, r120, r112, r52
	mma_16x16x16f16 r84, r122, r110, r84
	mma_16x16x16f16 r52, r122, r114, r52
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r120, r10, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r124, r108, r80
	mma_16x16x16f16 r48, r124, r112, r48
	mma_16x16x16f16 r80, r126, r110, r80
	mma_16x16x16f16 r48, r126, r114, r48
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r124, r9, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r116, r108, r76
	mma_16x16x16f16 r44, r116, r112, r44
	mma_16x16x16f16 r76, r118, r110, r76
	mma_16x16x16f16 r44, r118, r114, r44
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r116, r8, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r120, r108, r72
	mma_16x16x16f16 r40, r120, r112, r40
	mma_16x16x16f16 r72, r122, r110, r72
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r108, r7, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r40, r122, r114, r40
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r112, r5, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r100, r124, r26, r100
	mma_16x16x16f16 r68, r124, r104, r68
	mma_16x16x16f16 r100, r126, r28, r100
	mma_16x16x16f16 r68, r126, r106, r68
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r116, r26, r96
	mma_16x16x16f16 r64, r116, r104, r64
	mma_16x16x16f16 r96, r118, r28, r96
	mma_16x16x16f16 r64, r118, r106, r64
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r116, r4, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r108, r26, r92
	mma_16x16x16f16 r60, r108, r104, r60
	mma_16x16x16f16 r92, r110, r28, r92
	mma_16x16x16f16 r60, r110, r106, r60
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r108, r3, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r112, r26, r88
	mma_16x16x16f16 r56, r112, r104, r56
	mma_16x16x16f16 r88, r114, r28, r88
	mma_16x16x16f16 r56, r114, r106, r56
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r112, r2, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r116, r26, r84
	mma_16x16x16f16 r52, r116, r104, r52
	mma_16x16x16f16 r84, r118, r28, r84
	mma_16x16x16f16 r52, r118, r106, r52
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:80:50
	lds_b128 r116, r6, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r108, r26, r80
	mma_16x16x16f16 r48, r108, r104, r48
	mma_16x16x16f16 r80, r110, r28, r80
	mma_16x16x16f16 r48, r110, r106, r48
	arrive bsmcnt(1)
	mma_16x16x16f16 r76, r112, r26, r76
	mma_16x16x16f16 r44, r112, r104, r44
	mma_16x16x16f16 r76, r114, r28, r76
	mma_16x16x16f16 r44, r114, r106, r44
	arrive bsmcnt(0)
	mma_16x16x16f16 r72, r116, r26, r72
	mma_16x16x16f16 r40, r116, r104, r40
	shl_b32 r26, 10, r0
	shl_b32 r0, 11, r0
	and_b32 r0, 0x7800, r0
	mma_16x16x16f16 r72, r118, r28, r72
	snop 0
	and_b32 r28, 0xf0000, r26
	mov_b32 r29, 0
	mov_b32 r26, 0x80
	mad_u32 r26, s4, r26, r28
	add_co_u32 r26, r26, r0
	addc_co_u32 r27, r27, 0
	mov_b32 r0, 0x800
	mad_i32 r26, s16, r0, r26
	and_b32 r0, r1, 12
	.loc	2 96 94                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:94
	cmp_gt_i32 s4, s0, r25
	.loc	2 95 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:95:3
	shl_b32 r0, 1, r0
	add_co_u32 r0, s14, r0
	mov_b32 r1, s15
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r40, r118, r106, r40
	.loc	2 95 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:95:3
	addc_co_u32 r1, r1, 0
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmsks LBB2_26
; %bb.19:                               ; %for.inc693
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmsks LBB2_29
LBB2_20:                                ; %for.inc693.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmsks LBB2_32
LBB2_21:                                ; %for.inc693.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmsks LBB2_35
LBB2_22:                                ; %for.inc693.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmsks LBB2_38
LBB2_23:                                ; %for.inc693.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmsks LBB2_41
LBB2_24:                                ; %for.inc693.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmsks LBB2_44
LBB2_25:                                ; %for.inc693.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmsks LBB2_47
	bra LBB2_50
LBB2_26:                                ; %if.then525
.Ltmp13:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp14:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp15:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp16:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp17:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB2_28
; %bb.27:                               ; %if.then656
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r28, 0xbfb8aa3b, r103
.Ltmp18:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r28
	mov_b32 r35, 0x42800000
	mov_b32 r28, 0x1f800000
	mov_b32 r29, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r103, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp19:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r104, neg(r37), r39, r29
	fmac_f32 r39, r104, r39
	div_scale_f32 r104, s1, r33, s1
	mul_f32 r105, r104, r39
	fma_f32 r106, neg(r37), r105, r104
	fmac_f32 r105, r106, r39
	fmac_f32 r104, neg(r37), r105
	div_fmas_f32 r37, r104, r39, r105
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r37, 0xbfb8aa3b, r102
.Ltmp20:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp21:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r33, r103, r33
.Ltmp22:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp23:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r33, 16, r33
.Ltmp24:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r35, 0, s16
	fmka_f32 r39, r102, 0xbfb8aa3b, r39
	csel_b32 r37, r28, r29, s16
	exp_f32 r39, r39
.Ltmp25:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r37, r37, r39, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r39, r37, r37, s1
	rcp_f32 r103, r39
	snop 0
	fma_f32 r104, neg(r39), r103, r29
	fmac_f32 r103, r104, r103
	div_scale_f32 r104, s1, r37, s1
	mul_f32 r105, r104, r103
	fma_f32 r106, neg(r39), r105, r104
	fmac_f32 r105, r106, r103
	fmac_f32 r104, neg(r39), r105
	div_fmas_f32 r39, r104, r103, r105
	div_fixup_f32 r37, r39, r37, s1
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r39, 0xbfb8aa3b, r101
.Ltmp26:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r39
.Ltmp27:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r37, r102, r37
.Ltmp28:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r37
.Ltmp29:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r37_hi, 0, 0
	or_b32 r105, r33, r37
.Ltmp30:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r101, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp31:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r102, neg(r37), r39, r29
	fmac_f32 r39, r102, r39
	div_scale_f32 r102, s1, r33, s1
	mul_f32 r103, r102, r39
	fma_f32 r104, neg(r37), r103, r102
	fmac_f32 r103, r104, r39
	fmac_f32 r102, neg(r37), r103
	div_fmas_f32 r37, r102, r39, r103
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r37, 0xbfb8aa3b, r100
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp33:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r33, r101, r33
.Ltmp34:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp35:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r33, 16, r33
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r35, 0, s16
	fmka_f32 r35, r100, 0xbfb8aa3b, r35
	csel_b32 r28, r28, r29, s16
	exp_f32 r35, r35
.Ltmp37:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r28, r28, r35, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r35, r28, r28, s1
	rcp_f32 r37, r35
	snop 0
	fmac_f32 r29, neg(r35), r37
	fmac_f32 r37, r29, r37
	div_scale_f32 r29, s1, r28, s1
	mul_f32 r39, r29, r37
	fma_f32 r101, neg(r35), r39, r29
	fmac_f32 r39, r101, r37
	fmac_f32 r29, neg(r35), r39
	div_fmas_f32 r29, r29, r37, r39
	div_fixup_f32 r28, r29, r28, s1
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r28, r100, r28
.Ltmp38:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r28
.Ltmp39:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r28, 0xffff, r28
	or_b32 r104, r33, r28
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r28, r0, r28
	addc_co_u32 r29, r1, r29
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r28, 0x0, r104 devc
LBB2_28:                                ; %Flow633
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmskz LBB2_20
LBB2_29:                                ; %if.then525.1
.Ltmp40:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp41:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp42:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp43:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp44:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB2_31
; %bb.30:                               ; %if.then656.1
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r28, 0xbfb8aa3b, r99
.Ltmp45:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r28
	mov_b32 r35, 0x42800000
	mov_b32 r28, 0x1f800000
	mov_b32 r29, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r99, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp46:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r100, neg(r37), r39, r29
	fmac_f32 r39, r100, r39
	div_scale_f32 r100, s1, r33, s1
	mul_f32 r101, r100, r39
	fma_f32 r102, neg(r37), r101, r100
	fmac_f32 r101, r102, r39
	fmac_f32 r100, neg(r37), r101
	div_fmas_f32 r37, r100, r39, r101
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r37, 0xbfb8aa3b, r98
.Ltmp47:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp48:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r33, r99, r33
.Ltmp49:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp50:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r33, 16, r33
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r35, 0, s16
	fmka_f32 r39, r98, 0xbfb8aa3b, r39
	csel_b32 r37, r28, r29, s16
	exp_f32 r39, r39
.Ltmp52:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r37, r37, r39, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r39, r37, r37, s1
	rcp_f32 r99, r39
	snop 0
	fma_f32 r100, neg(r39), r99, r29
	fmac_f32 r99, r100, r99
	div_scale_f32 r100, s1, r37, s1
	mul_f32 r101, r100, r99
	fma_f32 r102, neg(r39), r101, r100
	fmac_f32 r101, r102, r99
	fmac_f32 r100, neg(r39), r101
	div_fmas_f32 r39, r100, r99, r101
	div_fixup_f32 r37, r39, r37, s1
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r39, 0xbfb8aa3b, r97
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r39
.Ltmp54:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r37, r98, r37
.Ltmp55:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r37
.Ltmp56:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r37_hi, 0, 0
	or_b32 r101, r33, r37
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r97, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp58:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r98, neg(r37), r39, r29
	fmac_f32 r39, r98, r39
	div_scale_f32 r98, s1, r33, s1
	mul_f32 r99, r98, r39
	fma_f32 r100, neg(r37), r99, r98
	fmac_f32 r99, r100, r39
	fmac_f32 r98, neg(r37), r99
	div_fmas_f32 r37, r98, r39, r99
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r37, 0xbfb8aa3b, r96
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp60:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r33, r97, r33
.Ltmp61:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp62:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r33, 16, r33
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r35, 0, s16
	fmka_f32 r35, r96, 0xbfb8aa3b, r35
	csel_b32 r28, r28, r29, s16
	exp_f32 r35, r35
.Ltmp64:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r28, r28, r35, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r35, r28, r28, s1
	rcp_f32 r37, r35
	snop 0
	fmac_f32 r29, neg(r35), r37
	fmac_f32 r37, r29, r37
	div_scale_f32 r29, s1, r28, s1
	mul_f32 r39, r29, r37
	fma_f32 r97, neg(r35), r39, r29
	fmac_f32 r39, r97, r37
	fmac_f32 r29, neg(r35), r39
	div_fmas_f32 r29, r29, r37, r39
	div_fixup_f32 r28, r29, r28, s1
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r28, r96, r28
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r28
.Ltmp66:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r28, 0xffff, r28
	or_b32 r100, r33, r28
	.loc	2 142 313                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:313
	shl_b64 r28, 1, r26
	.loc	2 142 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	add_co_u32 r28, r0, r28
	addc_co_u32 r29, r1, r29
	.loc	2 142 443                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r28, 0x20, r100 devc
LBB2_31:                                ; %Flow632
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmskz LBB2_21
LBB2_32:                                ; %if.then525.2
.Ltmp67:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp68:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp69:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp70:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp71:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB2_34
; %bb.33:                               ; %if.then656.2
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r28, 0xbfb8aa3b, r95
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r28
	mov_b32 r35, 0x42800000
	mov_b32 r28, 0x1f800000
	mov_b32 r29, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r95, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp73:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r96, neg(r37), r39, r29
	fmac_f32 r39, r96, r39
	div_scale_f32 r96, s1, r33, s1
	mul_f32 r97, r96, r39
	fma_f32 r98, neg(r37), r97, r96
	fmac_f32 r97, r98, r39
	fmac_f32 r96, neg(r37), r97
	div_fmas_f32 r37, r96, r39, r97
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r37, 0xbfb8aa3b, r94
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp75:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r33, r95, r33
.Ltmp76:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp77:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r33, 16, r33
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r35, 0, s16
	fmka_f32 r39, r94, 0xbfb8aa3b, r39
	csel_b32 r37, r28, r29, s16
	exp_f32 r39, r39
.Ltmp79:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r37, r37, r39, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r39, r37, r37, s1
	rcp_f32 r95, r39
	snop 0
	fma_f32 r96, neg(r39), r95, r29
	fmac_f32 r95, r96, r95
	div_scale_f32 r96, s1, r37, s1
	mul_f32 r97, r96, r95
	fma_f32 r98, neg(r39), r97, r96
	fmac_f32 r97, r98, r95
	fmac_f32 r96, neg(r39), r97
	div_fmas_f32 r39, r96, r95, r97
	div_fixup_f32 r37, r39, r37, s1
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r39, 0xbfb8aa3b, r93
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r39
.Ltmp81:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r37, r94, r37
.Ltmp82:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r37
.Ltmp83:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r37_hi, 0, 0
	or_b32 r97, r33, r37
.Ltmp84:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r93, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp85:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r94, neg(r37), r39, r29
	fmac_f32 r39, r94, r39
	div_scale_f32 r94, s1, r33, s1
	mul_f32 r95, r94, r39
	fma_f32 r96, neg(r37), r95, r94
	fmac_f32 r95, r96, r39
	fmac_f32 r94, neg(r37), r95
	div_fmas_f32 r37, r94, r39, r95
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r37, 0xbfb8aa3b, r92
.Ltmp86:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp87:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r33, r93, r33
.Ltmp88:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp89:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r33, 16, r33
.Ltmp90:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r35, 0, s16
	fmka_f32 r35, r92, 0xbfb8aa3b, r35
	csel_b32 r28, r28, r29, s16
	exp_f32 r35, r35
.Ltmp91:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r28, r28, r35, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r35, r28, r28, s1
	rcp_f32 r37, r35
	snop 0
	fmac_f32 r29, neg(r35), r37
	fmac_f32 r37, r29, r37
	div_scale_f32 r29, s1, r28, s1
	mul_f32 r39, r29, r37
	fma_f32 r93, neg(r35), r39, r29
	fmac_f32 r39, r93, r37
	fmac_f32 r29, neg(r35), r39
	div_fmas_f32 r29, r29, r37, r39
	div_fixup_f32 r28, r29, r28, s1
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r28, r92, r28
.Ltmp92:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r28
.Ltmp93:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r28, 0xffff, r28
	or_b32 r96, r33, r28
	.loc	2 142 313                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:313
	shl_b64 r28, 1, r26
	.loc	2 142 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	add_co_u32 r28, r0, r28
	addc_co_u32 r29, r1, r29
	.loc	2 142 443                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r28, 0x40, r96 devc
LBB2_34:                                ; %Flow631
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmskz LBB2_22
LBB2_35:                                ; %if.then525.3
.Ltmp94:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp95:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp96:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp97:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp98:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB2_37
; %bb.36:                               ; %if.then656.3
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r28, 0xbfb8aa3b, r91
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r28
	mov_b32 r35, 0x42800000
	mov_b32 r28, 0x1f800000
	mov_b32 r29, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r91, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp100:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r92, neg(r37), r39, r29
	fmac_f32 r39, r92, r39
	div_scale_f32 r92, s1, r33, s1
	mul_f32 r93, r92, r39
	fma_f32 r94, neg(r37), r93, r92
	fmac_f32 r93, r94, r39
	fmac_f32 r92, neg(r37), r93
	div_fmas_f32 r37, r92, r39, r93
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r37, 0xbfb8aa3b, r90
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp102:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r33, r91, r33
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp104:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r33, 16, r33
.Ltmp105:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r35, 0, s16
	fmka_f32 r39, r90, 0xbfb8aa3b, r39
	csel_b32 r37, r28, r29, s16
	exp_f32 r39, r39
.Ltmp106:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r37, r37, r39, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r39, r37, r37, s1
	rcp_f32 r91, r39
	snop 0
	fma_f32 r92, neg(r39), r91, r29
	fmac_f32 r91, r92, r91
	div_scale_f32 r92, s1, r37, s1
	mul_f32 r93, r92, r91
	fma_f32 r94, neg(r39), r93, r92
	fmac_f32 r93, r94, r91
	fmac_f32 r92, neg(r39), r93
	div_fmas_f32 r39, r92, r91, r93
	div_fixup_f32 r37, r39, r37, s1
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r39, 0xbfb8aa3b, r89
.Ltmp107:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r39
.Ltmp108:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r37, r90, r37
.Ltmp109:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r37
.Ltmp110:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r37_hi, 0, 0
	or_b32 r93, r33, r37
.Ltmp111:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r89, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp112:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r90, neg(r37), r39, r29
	fmac_f32 r39, r90, r39
	div_scale_f32 r90, s1, r33, s1
	mul_f32 r91, r90, r39
	fma_f32 r92, neg(r37), r91, r90
	fmac_f32 r91, r92, r39
	fmac_f32 r90, neg(r37), r91
	div_fmas_f32 r37, r90, r39, r91
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r37, 0xbfb8aa3b, r88
.Ltmp113:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp114:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r33, r89, r33
.Ltmp115:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp116:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r33, 16, r33
.Ltmp117:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r35, 0, s16
	fmka_f32 r35, r88, 0xbfb8aa3b, r35
	csel_b32 r28, r28, r29, s16
	exp_f32 r35, r35
.Ltmp118:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r28, r28, r35, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r35, r28, r28, s1
	rcp_f32 r37, r35
	snop 0
	fmac_f32 r29, neg(r35), r37
	fmac_f32 r37, r29, r37
	div_scale_f32 r29, s1, r28, s1
	mul_f32 r39, r29, r37
	fma_f32 r89, neg(r35), r39, r29
	fmac_f32 r39, r89, r37
	fmac_f32 r29, neg(r35), r39
	div_fmas_f32 r29, r29, r37, r39
	div_fixup_f32 r28, r29, r28, s1
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r28, r88, r28
.Ltmp119:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r28
.Ltmp120:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r28, 0xffff, r28
	or_b32 r92, r33, r28
	.loc	2 142 313                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:313
	shl_b64 r28, 1, r26
	.loc	2 142 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	add_co_u32 r28, r0, r28
	addc_co_u32 r29, r1, r29
	.loc	2 142 443                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r28, 0x60, r92 devc
LBB2_37:                                ; %Flow630
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmskz LBB2_23
LBB2_38:                                ; %if.then525.4
.Ltmp121:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp122:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp123:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp125:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB2_40
; %bb.39:                               ; %if.then656.4
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r28, 0xbfb8aa3b, r87
.Ltmp126:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r28
	mov_b32 r35, 0x42800000
	mov_b32 r28, 0x1f800000
	mov_b32 r29, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r87, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp127:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r88, neg(r37), r39, r29
	fmac_f32 r39, r88, r39
	div_scale_f32 r88, s1, r33, s1
	mul_f32 r89, r88, r39
	fma_f32 r90, neg(r37), r89, r88
	fmac_f32 r89, r90, r39
	fmac_f32 r88, neg(r37), r89
	div_fmas_f32 r37, r88, r39, r89
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r37, 0xbfb8aa3b, r86
.Ltmp128:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp129:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r33, r87, r33
.Ltmp130:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp131:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r33, 16, r33
.Ltmp132:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r35, 0, s16
	fmka_f32 r39, r86, 0xbfb8aa3b, r39
	csel_b32 r37, r28, r29, s16
	exp_f32 r39, r39
.Ltmp133:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r37, r37, r39, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r39, r37, r37, s1
	rcp_f32 r87, r39
	snop 0
	fma_f32 r88, neg(r39), r87, r29
	fmac_f32 r87, r88, r87
	div_scale_f32 r88, s1, r37, s1
	mul_f32 r89, r88, r87
	fma_f32 r90, neg(r39), r89, r88
	fmac_f32 r89, r90, r87
	fmac_f32 r88, neg(r39), r89
	div_fmas_f32 r39, r88, r87, r89
	div_fixup_f32 r37, r39, r37, s1
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r39, 0xbfb8aa3b, r85
.Ltmp134:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r39
.Ltmp135:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r37, r86, r37
.Ltmp136:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r37
.Ltmp137:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r37_hi, 0, 0
	or_b32 r89, r33, r37
.Ltmp138:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r85, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp139:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r86, neg(r37), r39, r29
	fmac_f32 r39, r86, r39
	div_scale_f32 r86, s1, r33, s1
	mul_f32 r87, r86, r39
	fma_f32 r88, neg(r37), r87, r86
	fmac_f32 r87, r88, r39
	fmac_f32 r86, neg(r37), r87
	div_fmas_f32 r37, r86, r39, r87
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r37, 0xbfb8aa3b, r84
.Ltmp140:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp141:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r33, r85, r33
.Ltmp142:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp143:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r33, 16, r33
.Ltmp144:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r35, 0, s16
	fmka_f32 r35, r84, 0xbfb8aa3b, r35
	csel_b32 r28, r28, r29, s16
	exp_f32 r35, r35
.Ltmp145:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r28, r28, r35, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r35, r28, r28, s1
	rcp_f32 r37, r35
	snop 0
	fmac_f32 r29, neg(r35), r37
	fmac_f32 r37, r29, r37
	div_scale_f32 r29, s1, r28, s1
	mul_f32 r39, r29, r37
	fma_f32 r85, neg(r35), r39, r29
	fmac_f32 r39, r85, r37
	fmac_f32 r29, neg(r35), r39
	div_fmas_f32 r29, r29, r37, r39
	div_fixup_f32 r28, r29, r28, s1
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r28, r84, r28
.Ltmp146:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r28
.Ltmp147:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r28, 0xffff, r28
	or_b32 r88, r33, r28
	.loc	2 142 313                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:313
	shl_b64 r28, 1, r26
	.loc	2 142 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	add_co_u32 r28, r0, r28
	addc_co_u32 r29, r1, r29
	.loc	2 142 443                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r28, 0x80, r88 devc
LBB2_40:                                ; %Flow629
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmskz LBB2_24
LBB2_41:                                ; %if.then525.5
.Ltmp148:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp149:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp150:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp151:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp152:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB2_43
; %bb.42:                               ; %if.then656.5
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r28, 0xbfb8aa3b, r83
.Ltmp153:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r28
	mov_b32 r35, 0x42800000
	mov_b32 r28, 0x1f800000
	mov_b32 r29, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r83, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp154:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r84, neg(r37), r39, r29
	fmac_f32 r39, r84, r39
	div_scale_f32 r84, s1, r33, s1
	mul_f32 r85, r84, r39
	fma_f32 r86, neg(r37), r85, r84
	fmac_f32 r85, r86, r39
	fmac_f32 r84, neg(r37), r85
	div_fmas_f32 r37, r84, r39, r85
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r37, 0xbfb8aa3b, r82
.Ltmp155:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp156:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r33, r83, r33
.Ltmp157:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp158:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r33, 16, r33
.Ltmp159:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r35, 0, s16
	fmka_f32 r39, r82, 0xbfb8aa3b, r39
	csel_b32 r37, r28, r29, s16
	exp_f32 r39, r39
.Ltmp160:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r37, r37, r39, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r39, r37, r37, s1
	rcp_f32 r83, r39
	snop 0
	fma_f32 r84, neg(r39), r83, r29
	fmac_f32 r83, r84, r83
	div_scale_f32 r84, s1, r37, s1
	mul_f32 r85, r84, r83
	fma_f32 r86, neg(r39), r85, r84
	fmac_f32 r85, r86, r83
	fmac_f32 r84, neg(r39), r85
	div_fmas_f32 r39, r84, r83, r85
	div_fixup_f32 r37, r39, r37, s1
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r39, 0xbfb8aa3b, r81
.Ltmp161:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r39
.Ltmp162:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r37, r82, r37
.Ltmp163:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r37
.Ltmp164:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r37_hi, 0, 0
	or_b32 r85, r33, r37
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r81, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp166:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r82, neg(r37), r39, r29
	fmac_f32 r39, r82, r39
	div_scale_f32 r82, s1, r33, s1
	mul_f32 r83, r82, r39
	fma_f32 r84, neg(r37), r83, r82
	fmac_f32 r83, r84, r39
	fmac_f32 r82, neg(r37), r83
	div_fmas_f32 r37, r82, r39, r83
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r37, 0xbfb8aa3b, r80
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp168:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r33, r81, r33
.Ltmp169:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp170:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r33, 16, r33
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r35, 0, s16
	fmka_f32 r35, r80, 0xbfb8aa3b, r35
	csel_b32 r28, r28, r29, s16
	exp_f32 r35, r35
.Ltmp172:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r28, r28, r35, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r35, r28, r28, s1
	rcp_f32 r37, r35
	snop 0
	fmac_f32 r29, neg(r35), r37
	fmac_f32 r37, r29, r37
	div_scale_f32 r29, s1, r28, s1
	mul_f32 r39, r29, r37
	fma_f32 r81, neg(r35), r39, r29
	fmac_f32 r39, r81, r37
	fmac_f32 r29, neg(r35), r39
	div_fmas_f32 r29, r29, r37, r39
	div_fixup_f32 r28, r29, r28, s1
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r28, r80, r28
.Ltmp173:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r28
.Ltmp174:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r28, 0xffff, r28
	or_b32 r84, r33, r28
	.loc	2 142 313                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:313
	shl_b64 r28, 1, r26
	.loc	2 142 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	add_co_u32 r28, r0, r28
	addc_co_u32 r29, r1, r29
	.loc	2 142 443                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r28, 0xa0, r84 devc
LBB2_43:                                ; %Flow628
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmskz LBB2_25
LBB2_44:                                ; %if.then525.6
.Ltmp175:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp176:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp177:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp178:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp179:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB2_46
; %bb.45:                               ; %if.then656.6
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r28, 0xbfb8aa3b, r79
.Ltmp180:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r28
	mov_b32 r35, 0x42800000
	mov_b32 r28, 0x1f800000
	mov_b32 r29, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r79, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp181:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r80, neg(r37), r39, r29
	fmac_f32 r39, r80, r39
	div_scale_f32 r80, s1, r33, s1
	mul_f32 r81, r80, r39
	fma_f32 r82, neg(r37), r81, r80
	fmac_f32 r81, r82, r39
	fmac_f32 r80, neg(r37), r81
	div_fmas_f32 r37, r80, r39, r81
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r37, 0xbfb8aa3b, r78
.Ltmp182:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp183:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r33, r79, r33
.Ltmp184:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp185:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r33, 16, r33
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r35, 0, s16
	fmka_f32 r39, r78, 0xbfb8aa3b, r39
	csel_b32 r37, r28, r29, s16
	exp_f32 r39, r39
.Ltmp187:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r37, r37, r39, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r39, r37, r37, s1
	rcp_f32 r79, r39
	snop 0
	fma_f32 r80, neg(r39), r79, r29
	fmac_f32 r79, r80, r79
	div_scale_f32 r80, s1, r37, s1
	mul_f32 r81, r80, r79
	fma_f32 r82, neg(r39), r81, r80
	fmac_f32 r81, r82, r79
	fmac_f32 r80, neg(r39), r81
	div_fmas_f32 r39, r80, r79, r81
	div_fixup_f32 r37, r39, r37, s1
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r39, 0xbfb8aa3b, r77
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r39
.Ltmp189:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r37, r78, r37
.Ltmp190:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r37
.Ltmp191:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r37_hi, 0, 0
	or_b32 r81, r33, r37
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r77, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp193:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r78, neg(r37), r39, r29
	fmac_f32 r39, r78, r39
	div_scale_f32 r78, s1, r33, s1
	mul_f32 r79, r78, r39
	fma_f32 r80, neg(r37), r79, r78
	fmac_f32 r79, r80, r39
	fmac_f32 r78, neg(r37), r79
	div_fmas_f32 r37, r78, r39, r79
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r37, 0xbfb8aa3b, r76
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp195:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r33, r77, r33
.Ltmp196:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp197:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r33, 16, r33
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r35, 0, s16
	fmka_f32 r35, r76, 0xbfb8aa3b, r35
	csel_b32 r28, r28, r29, s16
	exp_f32 r35, r35
.Ltmp199:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r28, r28, r35, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r35, r28, r28, s1
	rcp_f32 r37, r35
	snop 0
	fmac_f32 r29, neg(r35), r37
	fmac_f32 r37, r29, r37
	div_scale_f32 r29, s1, r28, s1
	mul_f32 r39, r29, r37
	fma_f32 r77, neg(r35), r39, r29
	fmac_f32 r39, r77, r37
	fmac_f32 r29, neg(r35), r39
	div_fmas_f32 r29, r29, r37, r39
	div_fixup_f32 r28, r29, r28, s1
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r28, r76, r28
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r28
.Ltmp201:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r28, 0xffff, r28
	or_b32 r80, r33, r28
	.loc	2 142 313                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:313
	shl_b64 r28, 1, r26
	.loc	2 142 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	add_co_u32 r28, r0, r28
	addc_co_u32 r29, r1, r29
	.loc	2 142 443                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r28, 0xc0, r80 devc
LBB2_46:                                ; %Flow627
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s4
	snop 0
	bra_xmskz LBB2_50
LBB2_47:                                ; %if.then525.7
.Ltmp202:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp203:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp204:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp205:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp206:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB2_49
; %bb.48:                               ; %if.then656.7
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r28, 0xbfb8aa3b, r75
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r28
	mov_b32 r35, 0x42800000
	mov_b32 r28, 0x1f800000
	mov_b32 r29, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r75, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp208:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r76, neg(r37), r39, r29
	fmac_f32 r39, r76, r39
	div_scale_f32 r76, s1, r33, s1
	mul_f32 r77, r76, r39
	fma_f32 r78, neg(r37), r77, r76
	fmac_f32 r77, r78, r39
	fmac_f32 r76, neg(r37), r77
	div_fmas_f32 r37, r76, r39, r77
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r37, 0xbfb8aa3b, r74
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp210:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r33, r75, r33
.Ltmp211:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp212:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r33, 16, r33
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r39, r35, 0, s16
	fmka_f32 r39, r74, 0xbfb8aa3b, r39
	csel_b32 r37, r28, r29, s16
	exp_f32 r39, r39
.Ltmp214:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r37, r37, r39, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r39, r37, r37, s1
	rcp_f32 r75, r39
	snop 0
	fma_f32 r76, neg(r39), r75, r29
	fmac_f32 r75, r76, r75
	div_scale_f32 r76, s1, r37, s1
	mul_f32 r77, r76, r75
	fma_f32 r78, neg(r39), r77, r76
	fmac_f32 r77, r78, r75
	fmac_f32 r76, neg(r39), r77
	div_fmas_f32 r39, r76, r75, r77
	div_fixup_f32 r37, r39, r37, s1
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r39, 0xbfb8aa3b, r73
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r39
.Ltmp216:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r37, r74, r37
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r37
.Ltmp218:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r37_hi, 0, 0
	or_b32 r77, r33, r37
.Ltmp219:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r37, r35, 0, s16
	fmka_f32 r37, r73, 0xbfb8aa3b, r37
	csel_b32 r33, r28, r29, s16
	exp_f32 r37, r37
.Ltmp220:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r33, r33, r37, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r37, r33, r33, s1
	rcp_f32 r39, r37
	snop 0
	fma_f32 r74, neg(r37), r39, r29
	fmac_f32 r39, r74, r39
	div_scale_f32 r74, s1, r33, s1
	mul_f32 r75, r74, r39
	fma_f32 r76, neg(r37), r75, r74
	fmac_f32 r75, r76, r39
	fmac_f32 r74, neg(r37), r75
	div_fmas_f32 r37, r74, r39, r75
	div_fixup_f32 r33, r37, r33, s1
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r37, 0xbfb8aa3b, r72
.Ltmp221:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp222:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r33, r73, r33
.Ltmp223:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r33
.Ltmp224:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r33, 16, r33
.Ltmp225:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r35, r35, 0, s16
	fmka_f32 r35, r72, 0xbfb8aa3b, r35
	csel_b32 r28, r28, r29, s16
	exp_f32 r35, r35
.Ltmp226:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r28, r28, r35, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r35, r28, r28, s1
	rcp_f32 r37, r35
	snop 0
	fmac_f32 r29, neg(r35), r37
	fmac_f32 r37, r29, r37
	div_scale_f32 r29, s1, r28, s1
	mul_f32 r39, r29, r37
	fma_f32 r73, neg(r35), r39, r29
	fmac_f32 r39, r73, r37
	fmac_f32 r29, neg(r35), r39
	div_fmas_f32 r29, r29, r37, r39
	div_fixup_f32 r28, r29, r28, s1
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r28, r72, r28
.Ltmp227:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r28
.Ltmp228:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r28, 0xffff, r28
	or_b32 r76, r33, r28
	.loc	2 142 313                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:313
	shl_b64 r28, 1, r26
	.loc	2 142 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	add_co_u32 r28, r0, r28
	addc_co_u32 r29, r1, r29
	.loc	2 142 443                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r28, 0xe0, r76 devc
LBB2_49:                                ; %Flow626
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
LBB2_50:                                ; %for.inc693.7
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 65 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:65
	or_b32 r25, r25, 16
	.loc	2 96 94 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:94
	cmp_gt_i32 s0, s0, r25
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	snop 3
	and_xmsk s10, s0
	snop 0
	bra_xmsks LBB2_58
; %bb.51:                               ; %for.inc693.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmsks LBB2_61
LBB2_52:                                ; %for.inc693.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmsks LBB2_64
LBB2_53:                                ; %for.inc693.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmsks LBB2_67
LBB2_54:                                ; %for.inc693.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmsks LBB2_70
LBB2_55:                                ; %for.inc693.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmsks LBB2_73
LBB2_56:                                ; %for.inc693.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmsks LBB2_76
LBB2_57:                                ; %for.inc693.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmsks LBB2_79
	bra LBB2_82
LBB2_58:                                ; %if.then525.8
.Ltmp229:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp230:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp231:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp232:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp233:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB2_60
; %bb.59:                               ; %if.then656.8
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r25, 0xbfb8aa3b, r71
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r25
	mov_b32 r33, 0x42800000
	mov_b32 r25, 0x1f800000
	mov_b32 r28, 0x3f800000
	smov_b32 s18, 0x3f800000
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r71, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp235:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r72, r39, r37
	fma_f32 r73, neg(r35), r72, r39
	fmac_f32 r72, r73, r37
	fmac_f32 r39, neg(r35), r72
	div_fmas_f32 r35, r39, r37, r72
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r35, 0xbfb8aa3b, r70
.Ltmp236:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp237:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r29, r71, r29
.Ltmp238:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp239:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r29, 16, r29
.Ltmp240:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r33, 0, s16
	fmka_f32 r37, r70, 0xbfb8aa3b, r37
	csel_b32 r35, r25, r28, s16
	exp_f32 r37, r37
.Ltmp241:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r35, r35, r37, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r37, r35, r35, s18
	rcp_f32 r39, r37
	snop 0
	fma_f32 r71, neg(r37), r39, r28
	fmac_f32 r39, r71, r39
	div_scale_f32 r71, s18, r35, s18
	mul_f32 r72, r71, r39
	fma_f32 r73, neg(r37), r72, r71
	fmac_f32 r72, r73, r39
	fmac_f32 r71, neg(r37), r72
	div_fmas_f32 r37, r71, r39, r72
	div_fixup_f32 r35, r37, r35, s18
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r37, 0xbfb8aa3b, r69
.Ltmp242:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp243:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r35, r70, r35
.Ltmp244:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r35
.Ltmp245:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r35_hi, 0, 0
	or_b32 r73, r29, r35
.Ltmp246:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r69, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp247:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r70, r39, r37
	fma_f32 r71, neg(r35), r70, r39
	fmac_f32 r70, r71, r37
	fmac_f32 r39, neg(r35), r70
	div_fmas_f32 r35, r39, r37, r70
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r35, 0xbfb8aa3b, r68
.Ltmp248:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp249:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r29, r69, r29
.Ltmp250:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp251:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r29, 16, r29
.Ltmp252:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r33, 0, s16
	fmka_f32 r33, r68, 0xbfb8aa3b, r33
	csel_b32 r25, r25, r28, s16
	exp_f32 r33, r33
.Ltmp253:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r25, r25, r33, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r33, r25, r25, s18
	rcp_f32 r35, r33
	snop 0
	fmac_f32 r28, neg(r33), r35
	fmac_f32 r35, r28, r35
	div_scale_f32 r28, s18, r25, s18
	mul_f32 r37, r28, r35
	fma_f32 r39, neg(r33), r37, r28
	fmac_f32 r37, r39, r35
	fmac_f32 r28, neg(r33), r37
	div_fmas_f32 r28, r28, r35, r37
	div_fixup_f32 r25, r28, r25, s18
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r25, r68, r25
.Ltmp254:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r25
.Ltmp255:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r25, 0xffff, r25
	or_b32 r72, r29, r25
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r25, r0, r28
	addc_co_u32 r28, r1, r29
	add_co_u32 r68, 0x10000, r25
	addc_co_u32 r69, r28, 0
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r68, 0x0, r72 devc
LBB2_60:                                ; %Flow625
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmskz LBB2_52
LBB2_61:                                ; %if.then525.9
.Ltmp256:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp257:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp258:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp259:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp260:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB2_63
; %bb.62:                               ; %if.then656.9
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r25, 0xbfb8aa3b, r67
.Ltmp261:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r25
	mov_b32 r33, 0x42800000
	mov_b32 r25, 0x1f800000
	mov_b32 r28, 0x3f800000
	smov_b32 s18, 0x3f800000
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r67, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp262:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r68, r39, r37
	fma_f32 r69, neg(r35), r68, r39
	fmac_f32 r68, r69, r37
	fmac_f32 r39, neg(r35), r68
	div_fmas_f32 r35, r39, r37, r68
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r35, 0xbfb8aa3b, r66
.Ltmp263:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp264:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r29, r67, r29
.Ltmp265:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp266:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r29, 16, r29
.Ltmp267:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r33, 0, s16
	fmka_f32 r37, r66, 0xbfb8aa3b, r37
	csel_b32 r35, r25, r28, s16
	exp_f32 r37, r37
.Ltmp268:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r35, r35, r37, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r37, r35, r35, s18
	rcp_f32 r39, r37
	snop 0
	fma_f32 r67, neg(r37), r39, r28
	fmac_f32 r39, r67, r39
	div_scale_f32 r67, s18, r35, s18
	mul_f32 r68, r67, r39
	fma_f32 r69, neg(r37), r68, r67
	fmac_f32 r68, r69, r39
	fmac_f32 r67, neg(r37), r68
	div_fmas_f32 r37, r67, r39, r68
	div_fixup_f32 r35, r37, r35, s18
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r37, 0xbfb8aa3b, r65
.Ltmp269:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp270:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r35, r66, r35
.Ltmp271:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r35
.Ltmp272:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r35_hi, 0, 0
	or_b32 r69, r29, r35
.Ltmp273:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r65, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp274:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r66, r39, r37
	fma_f32 r67, neg(r35), r66, r39
	fmac_f32 r66, r67, r37
	fmac_f32 r39, neg(r35), r66
	div_fmas_f32 r35, r39, r37, r66
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r35, 0xbfb8aa3b, r64
.Ltmp275:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp276:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r29, r65, r29
.Ltmp277:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp278:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r29, 16, r29
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r33, 0, s16
	fmka_f32 r33, r64, 0xbfb8aa3b, r33
	csel_b32 r25, r25, r28, s16
	exp_f32 r33, r33
.Ltmp280:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r25, r25, r33, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r33, r25, r25, s18
	rcp_f32 r35, r33
	snop 0
	fmac_f32 r28, neg(r33), r35
	fmac_f32 r35, r28, r35
	div_scale_f32 r28, s18, r25, s18
	mul_f32 r37, r28, r35
	fma_f32 r39, neg(r33), r37, r28
	fmac_f32 r37, r39, r35
	fmac_f32 r28, neg(r33), r37
	div_fmas_f32 r28, r28, r35, r37
	div_fixup_f32 r25, r28, r25, s18
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r25, r64, r25
.Ltmp281:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r25
.Ltmp282:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r25, 0xffff, r25
	or_b32 r68, r29, r25
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r25, r0, r28
	addc_co_u32 r28, r1, r29
	add_co_u32 r64, 0x10020, r25
	addc_co_u32 r65, r28, 0
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r64, 0x0, r68 devc
LBB2_63:                                ; %Flow624
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmskz LBB2_53
LBB2_64:                                ; %if.then525.10
.Ltmp283:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp284:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp285:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp286:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp287:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB2_66
; %bb.65:                               ; %if.then656.10
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r25, 0xbfb8aa3b, r63
.Ltmp288:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r25
	mov_b32 r33, 0x42800000
	mov_b32 r25, 0x1f800000
	mov_b32 r28, 0x3f800000
	smov_b32 s18, 0x3f800000
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r63, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp289:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r64, r39, r37
	fma_f32 r65, neg(r35), r64, r39
	fmac_f32 r64, r65, r37
	fmac_f32 r39, neg(r35), r64
	div_fmas_f32 r35, r39, r37, r64
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r35, 0xbfb8aa3b, r62
.Ltmp290:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp291:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r29, r63, r29
.Ltmp292:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp293:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r29, 16, r29
.Ltmp294:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r33, 0, s16
	fmka_f32 r37, r62, 0xbfb8aa3b, r37
	csel_b32 r35, r25, r28, s16
	exp_f32 r37, r37
.Ltmp295:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r35, r35, r37, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r37, r35, r35, s18
	rcp_f32 r39, r37
	snop 0
	fma_f32 r63, neg(r37), r39, r28
	fmac_f32 r39, r63, r39
	div_scale_f32 r63, s18, r35, s18
	mul_f32 r64, r63, r39
	fma_f32 r65, neg(r37), r64, r63
	fmac_f32 r64, r65, r39
	fmac_f32 r63, neg(r37), r64
	div_fmas_f32 r37, r63, r39, r64
	div_fixup_f32 r35, r37, r35, s18
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r37, 0xbfb8aa3b, r61
.Ltmp296:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp297:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r35, r62, r35
.Ltmp298:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r35
.Ltmp299:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r35_hi, 0, 0
	or_b32 r65, r29, r35
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r61, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp301:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r62, r39, r37
	fma_f32 r63, neg(r35), r62, r39
	fmac_f32 r62, r63, r37
	fmac_f32 r39, neg(r35), r62
	div_fmas_f32 r35, r39, r37, r62
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r35, 0xbfb8aa3b, r60
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp303:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r29, r61, r29
.Ltmp304:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp305:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r29, 16, r29
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r33, 0, s16
	fmka_f32 r33, r60, 0xbfb8aa3b, r33
	csel_b32 r25, r25, r28, s16
	exp_f32 r33, r33
.Ltmp307:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r25, r25, r33, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r33, r25, r25, s18
	rcp_f32 r35, r33
	snop 0
	fmac_f32 r28, neg(r33), r35
	fmac_f32 r35, r28, r35
	div_scale_f32 r28, s18, r25, s18
	mul_f32 r37, r28, r35
	fma_f32 r39, neg(r33), r37, r28
	fmac_f32 r37, r39, r35
	fmac_f32 r28, neg(r33), r37
	div_fmas_f32 r28, r28, r35, r37
	div_fixup_f32 r25, r28, r25, s18
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r25, r60, r25
.Ltmp308:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r25
.Ltmp309:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r25, 0xffff, r25
	or_b32 r64, r29, r25
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r25, r0, r28
	addc_co_u32 r28, r1, r29
	add_co_u32 r60, 0x10040, r25
	addc_co_u32 r61, r28, 0
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r60, 0x0, r64 devc
LBB2_66:                                ; %Flow623
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmskz LBB2_54
LBB2_67:                                ; %if.then525.11
.Ltmp310:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp311:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp312:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp313:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp314:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB2_69
; %bb.68:                               ; %if.then656.11
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r25, 0xbfb8aa3b, r59
.Ltmp315:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r25
	mov_b32 r33, 0x42800000
	mov_b32 r25, 0x1f800000
	mov_b32 r28, 0x3f800000
	smov_b32 s18, 0x3f800000
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r59, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp316:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r60, r39, r37
	fma_f32 r61, neg(r35), r60, r39
	fmac_f32 r60, r61, r37
	fmac_f32 r39, neg(r35), r60
	div_fmas_f32 r35, r39, r37, r60
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r35, 0xbfb8aa3b, r58
.Ltmp317:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp318:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r29, r59, r29
.Ltmp319:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp320:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r29, 16, r29
.Ltmp321:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r33, 0, s16
	fmka_f32 r37, r58, 0xbfb8aa3b, r37
	csel_b32 r35, r25, r28, s16
	exp_f32 r37, r37
.Ltmp322:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r35, r35, r37, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r37, r35, r35, s18
	rcp_f32 r39, r37
	snop 0
	fma_f32 r59, neg(r37), r39, r28
	fmac_f32 r39, r59, r39
	div_scale_f32 r59, s18, r35, s18
	mul_f32 r60, r59, r39
	fma_f32 r61, neg(r37), r60, r59
	fmac_f32 r60, r61, r39
	fmac_f32 r59, neg(r37), r60
	div_fmas_f32 r37, r59, r39, r60
	div_fixup_f32 r35, r37, r35, s18
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r37, 0xbfb8aa3b, r57
.Ltmp323:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp324:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r35, r58, r35
.Ltmp325:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r35
.Ltmp326:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r35_hi, 0, 0
	or_b32 r61, r29, r35
.Ltmp327:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r57, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp328:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r58, r39, r37
	fma_f32 r59, neg(r35), r58, r39
	fmac_f32 r58, r59, r37
	fmac_f32 r39, neg(r35), r58
	div_fmas_f32 r35, r39, r37, r58
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r35, 0xbfb8aa3b, r56
.Ltmp329:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp330:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r29, r57, r29
.Ltmp331:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp332:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r29, 16, r29
.Ltmp333:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r33, 0, s16
	fmka_f32 r33, r56, 0xbfb8aa3b, r33
	csel_b32 r25, r25, r28, s16
	exp_f32 r33, r33
.Ltmp334:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r25, r25, r33, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r33, r25, r25, s18
	rcp_f32 r35, r33
	snop 0
	fmac_f32 r28, neg(r33), r35
	fmac_f32 r35, r28, r35
	div_scale_f32 r28, s18, r25, s18
	mul_f32 r37, r28, r35
	fma_f32 r39, neg(r33), r37, r28
	fmac_f32 r37, r39, r35
	fmac_f32 r28, neg(r33), r37
	div_fmas_f32 r28, r28, r35, r37
	div_fixup_f32 r25, r28, r25, s18
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r25, r56, r25
.Ltmp335:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r25
.Ltmp336:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r25, 0xffff, r25
	or_b32 r60, r29, r25
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r25, r0, r28
	addc_co_u32 r28, r1, r29
	add_co_u32 r56, 0x10060, r25
	addc_co_u32 r57, r28, 0
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r56, 0x0, r60 devc
LBB2_69:                                ; %Flow622
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmskz LBB2_55
LBB2_70:                                ; %if.then525.12
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp338:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp340:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp341:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB2_72
; %bb.71:                               ; %if.then656.12
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r25, 0xbfb8aa3b, r55
.Ltmp342:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r25
	mov_b32 r33, 0x42800000
	mov_b32 r25, 0x1f800000
	mov_b32 r28, 0x3f800000
	smov_b32 s18, 0x3f800000
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r55, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp343:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r56, r39, r37
	fma_f32 r57, neg(r35), r56, r39
	fmac_f32 r56, r57, r37
	fmac_f32 r39, neg(r35), r56
	div_fmas_f32 r35, r39, r37, r56
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r35, 0xbfb8aa3b, r54
.Ltmp344:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp345:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r29, r55, r29
.Ltmp346:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp347:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r29, 16, r29
.Ltmp348:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r33, 0, s16
	fmka_f32 r37, r54, 0xbfb8aa3b, r37
	csel_b32 r35, r25, r28, s16
	exp_f32 r37, r37
.Ltmp349:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r35, r35, r37, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r37, r35, r35, s18
	rcp_f32 r39, r37
	snop 0
	fma_f32 r55, neg(r37), r39, r28
	fmac_f32 r39, r55, r39
	div_scale_f32 r55, s18, r35, s18
	mul_f32 r56, r55, r39
	fma_f32 r57, neg(r37), r56, r55
	fmac_f32 r56, r57, r39
	fmac_f32 r55, neg(r37), r56
	div_fmas_f32 r37, r55, r39, r56
	div_fixup_f32 r35, r37, r35, s18
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r37, 0xbfb8aa3b, r53
.Ltmp350:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp351:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r35, r54, r35
.Ltmp352:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r35
.Ltmp353:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r35_hi, 0, 0
	or_b32 r57, r29, r35
.Ltmp354:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r53, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp355:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r54, r39, r37
	fma_f32 r55, neg(r35), r54, r39
	fmac_f32 r54, r55, r37
	fmac_f32 r39, neg(r35), r54
	div_fmas_f32 r35, r39, r37, r54
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r35, 0xbfb8aa3b, r52
.Ltmp356:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp357:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r29, r53, r29
.Ltmp358:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp359:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r29, 16, r29
.Ltmp360:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r33, 0, s16
	fmka_f32 r33, r52, 0xbfb8aa3b, r33
	csel_b32 r25, r25, r28, s16
	exp_f32 r33, r33
.Ltmp361:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r25, r25, r33, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r33, r25, r25, s18
	rcp_f32 r35, r33
	snop 0
	fmac_f32 r28, neg(r33), r35
	fmac_f32 r35, r28, r35
	div_scale_f32 r28, s18, r25, s18
	mul_f32 r37, r28, r35
	fma_f32 r39, neg(r33), r37, r28
	fmac_f32 r37, r39, r35
	fmac_f32 r28, neg(r33), r37
	div_fmas_f32 r28, r28, r35, r37
	div_fixup_f32 r25, r28, r25, s18
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r25, r52, r25
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r25
.Ltmp363:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r25, 0xffff, r25
	or_b32 r56, r29, r25
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r25, r0, r28
	addc_co_u32 r28, r1, r29
	add_co_u32 r52, 0x10080, r25
	addc_co_u32 r53, r28, 0
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r52, 0x0, r56 devc
LBB2_72:                                ; %Flow621
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmskz LBB2_56
LBB2_73:                                ; %if.then525.13
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp365:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp368:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB2_75
; %bb.74:                               ; %if.then656.13
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r25, 0xbfb8aa3b, r51
.Ltmp369:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r25
	mov_b32 r33, 0x42800000
	mov_b32 r25, 0x1f800000
	mov_b32 r28, 0x3f800000
	smov_b32 s18, 0x3f800000
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r51, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp370:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r52, r39, r37
	fma_f32 r53, neg(r35), r52, r39
	fmac_f32 r52, r53, r37
	fmac_f32 r39, neg(r35), r52
	div_fmas_f32 r35, r39, r37, r52
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r35, 0xbfb8aa3b, r50
.Ltmp371:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp372:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r29, r51, r29
.Ltmp373:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp374:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r29, 16, r29
.Ltmp375:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r33, 0, s16
	fmka_f32 r37, r50, 0xbfb8aa3b, r37
	csel_b32 r35, r25, r28, s16
	exp_f32 r37, r37
.Ltmp376:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r35, r35, r37, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r37, r35, r35, s18
	rcp_f32 r39, r37
	snop 0
	fma_f32 r51, neg(r37), r39, r28
	fmac_f32 r39, r51, r39
	div_scale_f32 r51, s18, r35, s18
	mul_f32 r52, r51, r39
	fma_f32 r53, neg(r37), r52, r51
	fmac_f32 r52, r53, r39
	fmac_f32 r51, neg(r37), r52
	div_fmas_f32 r37, r51, r39, r52
	div_fixup_f32 r35, r37, r35, s18
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r37, 0xbfb8aa3b, r49
.Ltmp377:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp378:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r35, r50, r35
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r35
.Ltmp380:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r35_hi, 0, 0
	or_b32 r53, r29, r35
.Ltmp381:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r49, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp382:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r50, r39, r37
	fma_f32 r51, neg(r35), r50, r39
	fmac_f32 r50, r51, r37
	fmac_f32 r39, neg(r35), r50
	div_fmas_f32 r35, r39, r37, r50
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r35, 0xbfb8aa3b, r48
.Ltmp383:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp384:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r29, r49, r29
.Ltmp385:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp386:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r29, 16, r29
.Ltmp387:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r33, 0, s16
	fmka_f32 r33, r48, 0xbfb8aa3b, r33
	csel_b32 r25, r25, r28, s16
	exp_f32 r33, r33
.Ltmp388:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r25, r25, r33, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r33, r25, r25, s18
	rcp_f32 r35, r33
	snop 0
	fmac_f32 r28, neg(r33), r35
	fmac_f32 r35, r28, r35
	div_scale_f32 r28, s18, r25, s18
	mul_f32 r37, r28, r35
	fma_f32 r39, neg(r33), r37, r28
	fmac_f32 r37, r39, r35
	fmac_f32 r28, neg(r33), r37
	div_fmas_f32 r28, r28, r35, r37
	div_fixup_f32 r25, r28, r25, s18
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r25, r48, r25
.Ltmp389:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r25
.Ltmp390:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r25, 0xffff, r25
	or_b32 r52, r29, r25
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r25, r0, r28
	addc_co_u32 r28, r1, r29
	add_co_u32 r48, 0x100a0, r25
	addc_co_u32 r49, r28, 0
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r48, 0x0, r52 devc
LBB2_75:                                ; %Flow620
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmskz LBB2_57
LBB2_76:                                ; %if.then525.14
.Ltmp391:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp392:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp393:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp395:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB2_78
; %bb.77:                               ; %if.then656.14
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r25, 0xbfb8aa3b, r47
.Ltmp396:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r25
	mov_b32 r33, 0x42800000
	mov_b32 r25, 0x1f800000
	mov_b32 r28, 0x3f800000
	smov_b32 s18, 0x3f800000
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r47, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp397:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r48, r39, r37
	fma_f32 r49, neg(r35), r48, r39
	fmac_f32 r48, r49, r37
	fmac_f32 r39, neg(r35), r48
	div_fmas_f32 r35, r39, r37, r48
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r35, 0xbfb8aa3b, r46
.Ltmp398:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp399:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r29, r47, r29
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp401:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r29, 16, r29
.Ltmp402:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r33, 0, s16
	fmka_f32 r37, r46, 0xbfb8aa3b, r37
	csel_b32 r35, r25, r28, s16
	exp_f32 r37, r37
.Ltmp403:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r35, r35, r37, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r37, r35, r35, s18
	rcp_f32 r39, r37
	snop 0
	fma_f32 r47, neg(r37), r39, r28
	fmac_f32 r39, r47, r39
	div_scale_f32 r47, s18, r35, s18
	mul_f32 r48, r47, r39
	fma_f32 r49, neg(r37), r48, r47
	fmac_f32 r48, r49, r39
	fmac_f32 r47, neg(r37), r48
	div_fmas_f32 r37, r47, r39, r48
	div_fixup_f32 r35, r37, r35, s18
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r37, 0xbfb8aa3b, r45
.Ltmp404:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp405:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r35, r46, r35
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r35
.Ltmp407:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r35_hi, 0, 0
	or_b32 r49, r29, r35
.Ltmp408:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r45, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp409:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r46, r39, r37
	fma_f32 r47, neg(r35), r46, r39
	fmac_f32 r46, r47, r37
	fmac_f32 r39, neg(r35), r46
	div_fmas_f32 r35, r39, r37, r46
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r35, 0xbfb8aa3b, r44
.Ltmp410:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp411:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r29, r45, r29
.Ltmp412:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp413:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r29, 16, r29
.Ltmp414:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r33, 0, s16
	fmka_f32 r33, r44, 0xbfb8aa3b, r33
	csel_b32 r25, r25, r28, s16
	exp_f32 r33, r33
.Ltmp415:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r25, r25, r33, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r33, r25, r25, s18
	rcp_f32 r35, r33
	snop 0
	fmac_f32 r28, neg(r33), r35
	fmac_f32 r35, r28, r35
	div_scale_f32 r28, s18, r25, s18
	mul_f32 r37, r28, r35
	fma_f32 r39, neg(r33), r37, r28
	fmac_f32 r37, r39, r35
	fmac_f32 r28, neg(r33), r37
	div_fmas_f32 r28, r28, r35, r37
	div_fixup_f32 r25, r28, r25, s18
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r25, r44, r25
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r25
.Ltmp417:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r25, 0xffff, r25
	or_b32 r48, r29, r25
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r25, r0, r28
	addc_co_u32 r28, r1, r29
	add_co_u32 r44, 0x100c0, r25
	addc_co_u32 r45, r28, 0
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r44, 0x0, r48 devc
LBB2_78:                                ; %Flow619
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
	sor_b64 xmsk, xmsk, s10
	.loc	2 96 9 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:96:9
	and_xmsk s10, s0
	snop 0
	bra_xmskz LBB2_82
LBB2_79:                                ; %if.then525.15
.Ltmp418:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp419:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp420:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s14, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s14
.Ltmp422:
	.loc	2 140 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:140:11
	snop 0
	and_xmsk s14, s2
	snop 0
	bra_xmskz LBB2_81
; %bb.80:                               ; %if.then656.15
	.loc	2 120 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:120:29
	mul_f32 r25, 0xbfb8aa3b, r43
.Ltmp423:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r25
	mov_b32 r33, 0x42800000
	mov_b32 r25, 0x1f800000
	mov_b32 r28, 0x3f800000
	smov_b32 s18, 0x3f800000
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r43, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp424:
	.loc	2 128 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:128:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 132 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:132:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r44, r39, r37
	fma_f32 r45, neg(r35), r44, r39
	fmac_f32 r44, r45, r37
	fmac_f32 r39, neg(r35), r44
	div_fmas_f32 r35, r39, r37, r44
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	mul_f32 r35, 0xbfb8aa3b, r42
.Ltmp425:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp426:
	.loc	2 136 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:136:22
	mul_f32 r29, r43, r29
.Ltmp427:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp428:
	.loc	2 119 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:119:29
	shl_b32 r29, 16, r29
.Ltmp429:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r37, r33, 0, s16
	fmka_f32 r37, r42, 0xbfb8aa3b, r37
	csel_b32 r35, r25, r28, s16
	exp_f32 r37, r37
.Ltmp430:
	.loc	2 127 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:127:28
	snop 0
	fmak_f32 r35, r35, r37, 0x3f800000
	.loc	2 131 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:131:26
	div_scale_f32 r37, r35, r35, s18
	rcp_f32 r39, r37
	snop 0
	fma_f32 r43, neg(r37), r39, r28
	fmac_f32 r39, r43, r39
	div_scale_f32 r43, s18, r35, s18
	mul_f32 r44, r43, r39
	fma_f32 r45, neg(r37), r44, r43
	fmac_f32 r44, r45, r39
	fmac_f32 r43, neg(r37), r44
	div_fmas_f32 r37, r43, r39, r44
	div_fixup_f32 r35, r37, r35, s18
	.loc	2 118 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:118:29
	mul_f32 r37, 0xbfb8aa3b, r41
.Ltmp431:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r37
.Ltmp432:
	.loc	2 135 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:135:22
	mul_f32 r35, r42, r35
.Ltmp433:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r35
.Ltmp434:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	add_u16 r35_hi, 0, 0
	or_b32 r45, r29, r35
.Ltmp435:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r35, r33, 0, s16
	fmka_f32 r35, r41, 0xbfb8aa3b, r35
	csel_b32 r29, r25, r28, s16
	exp_f32 r35, r35
.Ltmp436:
	.loc	2 126 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:126:28
	snop 0
	fmak_f32 r29, r29, r35, 0x3f800000
	.loc	2 130 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:130:26
	div_scale_f32 r35, r29, r29, s18
	rcp_f32 r37, r35
	snop 0
	fma_f32 r39, neg(r35), r37, r28
	fmac_f32 r37, r39, r37
	div_scale_f32 r39, s18, r29, s18
	mul_f32 r42, r39, r37
	fma_f32 r43, neg(r35), r42, r39
	fmac_f32 r42, r43, r37
	fmac_f32 r39, neg(r35), r42
	div_fmas_f32 r35, r39, r37, r42
	div_fixup_f32 r29, r35, r29, s18
	.loc	2 117 29                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:117:29
	mul_f32 r35, 0xbfb8aa3b, r40
.Ltmp437:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s16, 0xc2fc0000, r35
.Ltmp438:
	.loc	2 134 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:134:22
	mul_f32 r29, r41, r29
.Ltmp439:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r29_lo, r29
.Ltmp440:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	shl_b32 r29, 16, r29
.Ltmp441:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r33, r33, 0, s16
	fmka_f32 r33, r40, 0xbfb8aa3b, r33
	csel_b32 r25, r25, r28, s16
	exp_f32 r33, r33
.Ltmp442:
	.loc	2 125 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:125:28
	snop 0
	fmak_f32 r25, r25, r33, 0x3f800000
	.loc	2 129 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:129:26
	div_scale_f32 r33, r25, r25, s18
	rcp_f32 r35, r33
	snop 0
	fmac_f32 r28, neg(r33), r35
	fmac_f32 r35, r28, r35
	div_scale_f32 r28, s18, r25, s18
	mul_f32 r37, r28, r35
	fma_f32 r39, neg(r33), r37, r28
	fmac_f32 r37, r39, r35
	fmac_f32 r28, neg(r33), r37
	div_fmas_f32 r28, r28, r35, r37
	div_fixup_f32 r25, r28, r25, s18
	.loc	2 133 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:133:22
	mul_f32 r25, r40, r25
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r25
.Ltmp444:
	.loc	2 139 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:139:43
	and_b32 r25, 0xffff, r25
	or_b32 r44, r29, r25
	.loc	2 142 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:31
	shl_b64 r28, 1, r26
	add_co_u32 r25, r0, r28
	addc_co_u32 r28, r1, r29
	add_co_u32 r40, 0x100e0, r25
	addc_co_u32 r41, r28, 0
	.loc	2 142 443 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:142:443
	snop 1
	stg_b64 r40, 0x0, r44 devc
LBB2_81:                                ; %Flow618
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s14
LBB2_82:                                ; %for.inc693.15
	sor_b64 xmsk, xmsk, s10
.Ltmp445:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp446:
	.loc	2 155 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:155:375
	mad_i32 r28, r32, 2, s12
	mad_i32 r32, r34, 2, s12
	sadd_co_u32 s10, 0x80, s12
	.loc	2 155 346 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:155:346
	ldg_b128 r92, r28, 0x0
	ldg_b128 r96, r32, 0x0
	.loc	2 155 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:155:375
	mad_i32 r28, r36, 2, s12
	mad_i32 r32, r38, 2, s12
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:0
	shl_b64 r34, 0, 0
	.loc	2 155 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:155:346
	ldg_b128 r100, r28, 0x0
	ldg_b128 r104, r32, 0x0
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:0
	shl_b64 r32, 0, 0
	shl_b64 r36, 0, r32
	shl_b64 r40, 0, r32
	shl_b64 r44, 0, r32
	shl_b64 r48, 0, r32
	shl_b64 r52, 0, r32
	shl_b64 r56, 0, r32
	shl_b64 r60, 0, r32
	shl_b64 r64, 0, r32
	shl_b64 r68, 0, r32
	shl_b64 r72, 0, r32
	shl_b64 r76, 0, r32
	shl_b64 r80, 0, r32
	shl_b64 r84, 0, r32
	shl_b64 r88, 0, r32
	smov_b64 s14, 0
	saddc_co_u32 s11, s13, 0
	shl_b64 r38, 0, r34
	shl_b64 r42, 0, r34
	shl_b64 r46, 0, r34
	shl_b64 r50, 0, r34
	shl_b64 r54, 0, r34
	shl_b64 r58, 0, r34
	shl_b64 r62, 0, r34
	shl_b64 r66, 0, r34
	shl_b64 r70, 0, r34
	shl_b64 r74, 0, r34
	shl_b64 r78, 0, r34
	shl_b64 r82, 0, r34
	shl_b64 r86, 0, r34
	shl_b64 r90, 0, r34
	.loc	2 155 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:155:346
	arrive gvmcnt(3)
	sts_b128 r18, 0x0, r92
	shl_b64 r92, 0, r32
	shl_b64 r94, 0, r34
	arrive gvmcnt(2)
	sts_b128 r19, 0x0, r96
	arrive gvmcnt(1)
	sts_b128 r20, 0x0, r100
	arrive gvmcnt(0)
	sts_b128 r21, 0x0, r104
	bra LBB2_84
	.p2align	5
LBB2_83:                                ; %if.end853.3
                                        ;   in Loop: Header=BB2_84 Depth=1
	.loc	2 0 346                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:346
	sor_b64 xmsk, xmsk, s12
.Ltmp447:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp448:
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r112, r17, 0x0
	lds_b128 r116, r16, 0x0
	lds_b128 r120, r15, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r112, r104, r92
	mma_16x16x16f16 r60, r112, r108, r60
	mma_16x16x16f16 r92, r114, r106, r92
	mma_16x16x16f16 r60, r114, r110, r60
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r112, r14, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r116, r104, r88
	mma_16x16x16f16 r56, r116, r108, r56
	mma_16x16x16f16 r88, r118, r106, r88
	mma_16x16x16f16 r56, r118, r110, r56
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r116, r13, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r120, r104, r84
	mma_16x16x16f16 r52, r120, r108, r52
	mma_16x16x16f16 r84, r122, r106, r84
	mma_16x16x16f16 r52, r122, r110, r52
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r120, r12, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r112, r104, r80
	mma_16x16x16f16 r48, r112, r108, r48
	mma_16x16x16f16 r80, r114, r106, r80
	mma_16x16x16f16 r48, r114, r110, r48
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r112, r11, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r116, r104, r76
	mma_16x16x16f16 r44, r116, r108, r44
	mma_16x16x16f16 r76, r118, r106, r76
	mma_16x16x16f16 r44, r118, r110, r44
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r116, r10, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r120, r104, r72
	mma_16x16x16f16 r40, r120, r108, r40
	mma_16x16x16f16 r72, r122, r106, r72
	mma_16x16x16f16 r40, r122, r110, r40
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r120, r9, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r68, r112, r104, r68
	mma_16x16x16f16 r36, r112, r108, r36
	mma_16x16x16f16 r68, r114, r106, r68
	mma_16x16x16f16 r36, r114, r110, r36
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r112, r8, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r64, r116, r104, r64
	mma_16x16x16f16 r32, r116, r108, r32
	mma_16x16x16f16 r64, r118, r106, r64
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r104, r7, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	mma_16x16x16f16 r32, r118, r110, r32
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r108, r5, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r120, r96, r92
	mma_16x16x16f16 r60, r120, r100, r60
	mma_16x16x16f16 r92, r122, r98, r92
	mma_16x16x16f16 r60, r122, r102, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r112, r96, r88
	mma_16x16x16f16 r56, r112, r100, r56
	mma_16x16x16f16 r88, r114, r98, r88
	mma_16x16x16f16 r56, r114, r102, r56
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r112, r4, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r104, r96, r84
	mma_16x16x16f16 r52, r104, r100, r52
	mma_16x16x16f16 r84, r106, r98, r84
	mma_16x16x16f16 r52, r106, r102, r52
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r104, r3, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r108, r96, r80
	mma_16x16x16f16 r48, r108, r100, r48
	mma_16x16x16f16 r80, r110, r98, r80
	mma_16x16x16f16 r48, r110, r102, r48
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r108, r2, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r112, r96, r76
	mma_16x16x16f16 r44, r112, r100, r44
	mma_16x16x16f16 r76, r114, r98, r76
	mma_16x16x16f16 r44, r114, r102, r44
	.loc	2 172 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:172:52
	lds_b128 r112, r6, 0x0
	.loc	2 178 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:178:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r104, r96, r72
	mma_16x16x16f16 r40, r104, r100, r40
	mma_16x16x16f16 r72, r106, r98, r72
	mma_16x16x16f16 r40, r106, r102, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r108, r96, r68
	mma_16x16x16f16 r36, r108, r100, r36
	mma_16x16x16f16 r68, r110, r98, r68
	mma_16x16x16f16 r36, r110, r102, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r112, r96, r64
	mma_16x16x16f16 r32, r112, r100, r32
	mma_16x16x16f16 r64, r114, r98, r64
	mma_16x16x16f16 r32, r114, r102, r32
.Ltmp449:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp450:
	.loc	2 189 378                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:189:378
	add_u32 r25, 0x38000, r22
	mad_i32 r28, r22, 2, s10
	mad_i32 r96, r25, 2, s10
	add_u32 r25, 0x70000, r22
	.loc	2 189 349 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:189:349
	ldg_b128 r98, r28, 0x0
	.loc	2 189 378                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:189:378
	mad_i32 r28, r25, 2, s10
	add_u32 r25, 0xa8000, r22
	.loc	2 189 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:189:349
	ldg_b128 r102, r96, 0x0
	.loc	2 189 378                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:189:378
	mad_i32 r96, r25, 2, s10
	.loc	2 189 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:189:349
	ldg_b128 r106, r28, 0x0
	.loc	2 157 25 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:157:25
	sadd_co_u32 s14, 0x80, s14
	.loc	2 189 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:189:349
	ldg_b128 r110, r96, 0x0
	.loc	2 157 25                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:157:25
	saddc_co_u32 s15, s15, 0
	scmp_eq_u64 0x3780, s14
	add_u32 r22, r22, 64
	.loc	2 189 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:189:349
	arrive gvmcnt(3)
	sts_b128 r18, 0x0, r98
	arrive gvmcnt(2)
	sts_b128 r19, 0x0, r102
	arrive gvmcnt(1)
	sts_b128 r20, 0x0, r106
	arrive gvmcnt(0)
	sts_b128 r21, 0x0, r110
	.loc	2 157 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:157:3
	bra_smsks LBB2_92
LBB2_84:                                ; %for.cond772.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:3
	shl_b64 r104, 0, 0
	shl_b64 r106, 0, 0
	.loc	2 162 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:162:118
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB2_86
; %bb.85:                               ; %if.then799
                                        ;   in Loop: Header=BB2_84 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:118
	add_co_u32 r28, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r29, r24, r25
	.loc	2 163 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:163:19
	snop 1
	ldg_b128 r104, r28, 0x0
LBB2_86:                                ; %if.end853
                                        ;   in Loop: Header=BB2_84 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r108, 0, 0
	shl_b64 r110, 0, 0
	.loc	2 162 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:162:118
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB2_88
; %bb.87:                               ; %if.then799.1
                                        ;   in Loop: Header=BB2_84 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:118
	add_co_u32 r25, r23, s14
	mov_b32 r28, s15
	addc_co_u32 r28, r24, r28
	.loc	2 163 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:163:19
	add_co_u32 r96, 0x38000, r25
	addc_co_u32 r97, r28, 0
	snop 1
	ldg_b128 r108, r96, 0x0
LBB2_88:                                ; %if.end853.1
                                        ;   in Loop: Header=BB2_84 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r96, 0, 0
	shl_b64 r98, 0, 0
	.loc	2 162 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:162:118
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB2_90
; %bb.89:                               ; %if.then799.2
                                        ;   in Loop: Header=BB2_84 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:118
	add_co_u32 r28, r23, s14
	mov_b32 r25, s15
	addc_co_u32 r29, r24, r25
	.loc	2 163 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:163:19
	snop 1
	ldg_b128 r96, r28, 0x40
LBB2_90:                                ; %if.end853.2
                                        ;   in Loop: Header=BB2_84 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r100, 0, 0
	shl_b64 r102, 0, 0
	.loc	2 162 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:162:118
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB2_83
; %bb.91:                               ; %if.then799.3
                                        ;   in Loop: Header=BB2_84 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:118
	add_co_u32 r25, r23, s14
	mov_b32 r28, s15
	addc_co_u32 r28, r24, r28
	.loc	2 163 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:163:19
	add_co_u32 r100, 0x38040, r25
	addc_co_u32 r101, r28, 0
	snop 1
	ldg_b128 r100, r100, 0x0
	bra LBB2_83
LBB2_92:                                ; %for.cond1020.preheader
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	shl_b64 r98, 0, 0
	shl_b64 r96, 0, 0
	.loc	2 196 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:196:116
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_94
; %bb.93:                               ; %if.then1047
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:116
	shl_b64 r20, 1, r30
	add_co_u32 r18, s8, r20
	mov_b32 r19, s9
	addc_co_u32 r19, r19, r21
	add_co_u32 r18, 0x3780, r18
	addc_co_u32 r19, r19, 0
	.loc	2 197 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:197:17
	snop 1
	ldg_b128 r96, r18, 0x0
LBB2_94:                                ; %if.end1099
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r102, 0, 0
	shl_b64 r100, 0, 0
	.loc	2 196 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:196:116
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_96
; %bb.95:                               ; %if.then1047.1
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:116
	shl_b64 r20, 1, r30
	add_co_u32 r18, s8, r20
	mov_b32 r19, s9
	addc_co_u32 r19, r19, r21
	add_co_u32 r18, 0x3b780, r18
	addc_co_u32 r19, r19, 0
	.loc	2 197 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:197:17
	snop 1
	ldg_b128 r100, r18, 0x0
LBB2_96:                                ; %if.end1099.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r20, 0, 0
	shl_b64 r18, 0, 0
	.loc	2 196 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:196:116
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_98
; %bb.97:                               ; %if.then1047.2
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:116
	shl_b64 r20, 1, r30
	add_co_u32 r18, s8, r20
	mov_b32 r19, s9
	addc_co_u32 r19, r19, r21
	add_co_u32 r18, 0x37c0, r18
	addc_co_u32 r19, r19, 0
	.loc	2 197 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:197:17
	snop 1
	ldg_b128 r18, r18, 0x0
LBB2_98:                                ; %if.end1099.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r24, 0, 0
	shl_b64 r22, 0, 0
	.loc	2 196 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:196:116
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_100
; %bb.99:                               ; %if.then1047.3
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:116
	shl_b64 r24, 1, r30
	add_co_u32 r22, s8, r24
	mov_b32 r23, s9
	addc_co_u32 r23, r23, r25
	add_co_u32 r22, 0x3b7c0, r22
	addc_co_u32 r23, r23, 0
	.loc	2 197 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:197:17
	snop 1
	ldg_b128 r22, r22, 0x0
LBB2_100:                               ; %if.end1099.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
.Ltmp451:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp452:
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r28, r17, 0x0
	lds_b128 r104, r16, 0x0
	lds_b128 r108, r15, 0x0
	lds_b128 r14, r14, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r28, r96, r92
	mma_16x16x16f16 r60, r28, r100, r60
	mma_16x16x16f16 r92, r30, r98, r92
	mma_16x16x16f16 r60, r30, r102, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r104, r96, r88
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r28, r13, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	mma_16x16x16f16 r56, r104, r100, r56
	mma_16x16x16f16 r88, r106, r98, r88
	mma_16x16x16f16 r56, r106, r102, r56
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r104, r12, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r84, r108, r96, r84
	mma_16x16x16f16 r52, r108, r100, r52
	mma_16x16x16f16 r84, r110, r98, r84
	mma_16x16x16f16 r52, r110, r102, r52
	arrive bsmcnt(2)
	mma_16x16x16f16 r80, r14, r96, r80
	mma_16x16x16f16 r48, r14, r100, r48
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r12, r11, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	mma_16x16x16f16 r80, r16, r98, r80
	mma_16x16x16f16 r48, r16, r102, r48
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r28, r96, r76
	mma_16x16x16f16 r44, r28, r100, r44
	mma_16x16x16f16 r76, r30, r98, r76
	mma_16x16x16f16 r44, r30, r102, r44
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r28, r10, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r104, r96, r72
	mma_16x16x16f16 r40, r104, r100, r40
	mma_16x16x16f16 r72, r106, r98, r72
	mma_16x16x16f16 r40, r106, r102, r40
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r104, r9, 0x0
	lds_b128 r8, r8, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r68, r12, r96, r68
	mma_16x16x16f16 r36, r12, r100, r36
	mma_16x16x16f16 r68, r14, r98, r68
	mma_16x16x16f16 r36, r14, r102, r36
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r12, r7, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r64, r28, r96, r64
	mma_16x16x16f16 r32, r28, r100, r32
	mma_16x16x16f16 r64, r30, r98, r64
	mma_16x16x16f16 r32, r30, r102, r32
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r28, r5, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r104, r18, r92
	mma_16x16x16f16 r60, r104, r22, r60
	mma_16x16x16f16 r92, r106, r20, r92
	mma_16x16x16f16 r60, r106, r24, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r8, r18, r88
	mma_16x16x16f16 r56, r8, r22, r56
	mma_16x16x16f16 r88, r10, r20, r88
	mma_16x16x16f16 r56, r10, r24, r56
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r8, r4, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r84, r12, r18, r84
	mma_16x16x16f16 r52, r12, r22, r52
	mma_16x16x16f16 r84, r14, r20, r84
	mma_16x16x16f16 r52, r14, r24, r52
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r12, r3, 0x0
	lds_b128 r2, r2, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r80, r28, r18, r80
	mma_16x16x16f16 r48, r28, r22, r48
	mma_16x16x16f16 r80, r30, r20, r80
	mma_16x16x16f16 r48, r30, r24, r48
	arrive bsmcnt(2)
	mma_16x16x16f16 r76, r8, r18, r76
	mma_16x16x16f16 r44, r8, r22, r44
	.loc	2 206 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:206:50
	lds_b128 r6, r6, 0x0
	.loc	2 212 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:212:60
	mma_16x16x16f16 r76, r10, r20, r76
	mma_16x16x16f16 r44, r10, r24, r44
	arrive bsmcnt(2)
	mma_16x16x16f16 r72, r12, r18, r72
	mma_16x16x16f16 r40, r12, r22, r40
	mma_16x16x16f16 r72, r14, r20, r72
	mma_16x16x16f16 r40, r14, r24, r40
	arrive bsmcnt(1)
	mma_16x16x16f16 r68, r2, r18, r68
	mma_16x16x16f16 r36, r2, r22, r36
	mma_16x16x16f16 r68, r4, r20, r68
	mma_16x16x16f16 r36, r4, r24, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r64, r6, r18, r64
	mma_16x16x16f16 r32, r6, r22, r32
	mma_16x16x16f16 r64, r8, r20, r64
	mma_16x16x16f16 r32, r8, r24, r32
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_117
; %bb.101:                              ; %Flow617
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_122
LBB2_102:                               ; %Flow615
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_127
LBB2_103:                               ; %Flow613
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_132
LBB2_104:                               ; %Flow611
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_137
LBB2_105:                               ; %Flow609
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_142
LBB2_106:                               ; %Flow607
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_147
LBB2_107:                               ; %Flow605
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_152
LBB2_108:                               ; %Flow603
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_157
LBB2_109:                               ; %Flow601
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_162
LBB2_110:                               ; %Flow599
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_167
LBB2_111:                               ; %Flow597
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_172
LBB2_112:                               ; %Flow595
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_177
LBB2_113:                               ; %Flow593
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_182
LBB2_114:                               ; %Flow591
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_187
LBB2_115:                               ; %Flow589
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_192
LBB2_116:                               ; %for.inc1391.15
	.loc	2 252 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:252:1
	snop 0
	endk
LBB2_117:                               ; %if.then1215
	.loc	2 0 1 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:1
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_119
; %bb.118:                              ; %if.then1239
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_119:                               ; %if.end1284
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s10
.Ltmp453:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp454:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp455:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp457:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_121
; %bb.120:                              ; %if.then1354
.Ltmp458:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp459:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r95, r3
.Ltmp460:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp461:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp462:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r94, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r92, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r93, r2
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp464:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp466:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x0, r4 devc
LBB2_121:                               ; %Flow616
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_102
LBB2_122:                               ; %if.then1215.1
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_124
; %bb.123:                              ; %if.then1239.1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x20
LBB2_124:                               ; %if.end1284.1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s10
.Ltmp467:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp468:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp469:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp471:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_126
; %bb.125:                              ; %if.then1354.1
.Ltmp472:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp473:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r91, r3
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp475:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp476:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r90, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r88, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r89, r2
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp478:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp479:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp480:
	.loc	2 247 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:314
	shl_b64 r2, 1, r26
	.loc	2 247 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 247 445                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x20, r4 devc
LBB2_126:                               ; %Flow614
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_103
LBB2_127:                               ; %if.then1215.2
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_129
; %bb.128:                              ; %if.then1239.2
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x40
LBB2_129:                               ; %if.end1284.2
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s10
.Ltmp481:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp482:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp483:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp485:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_131
; %bb.130:                              ; %if.then1354.2
.Ltmp486:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp487:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r87, r3
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp489:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp490:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r86, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r84, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r85, r2
.Ltmp491:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp492:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp493:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp494:
	.loc	2 247 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:314
	shl_b64 r2, 1, r26
	.loc	2 247 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 247 445                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x40, r4 devc
LBB2_131:                               ; %Flow612
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_104
LBB2_132:                               ; %if.then1215.3
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_134
; %bb.133:                              ; %if.then1239.3
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x60
LBB2_134:                               ; %if.end1284.3
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s10
.Ltmp495:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp496:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp497:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp499:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_136
; %bb.135:                              ; %if.then1354.3
.Ltmp500:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp501:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r83, r3
.Ltmp502:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp503:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp504:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r82, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r80, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r81, r2
.Ltmp505:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp506:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp507:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp508:
	.loc	2 247 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:314
	shl_b64 r2, 1, r26
	.loc	2 247 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 247 445                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x60, r4 devc
LBB2_136:                               ; %Flow610
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_105
LBB2_137:                               ; %if.then1215.4
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_139
; %bb.138:                              ; %if.then1239.4
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x80
LBB2_139:                               ; %if.end1284.4
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s10
.Ltmp509:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp510:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp511:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp512:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp513:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_141
; %bb.140:                              ; %if.then1354.4
.Ltmp514:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp515:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r79, r3
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp517:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp518:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r78, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r76, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r77, r2
.Ltmp519:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp520:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp521:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp522:
	.loc	2 247 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:314
	shl_b64 r2, 1, r26
	.loc	2 247 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 247 445                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x80, r4 devc
LBB2_141:                               ; %Flow608
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_106
LBB2_142:                               ; %if.then1215.5
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_144
; %bb.143:                              ; %if.then1239.5
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0xa0
LBB2_144:                               ; %if.end1284.5
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s10
.Ltmp523:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp524:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp525:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp526:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp527:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_146
; %bb.145:                              ; %if.then1354.5
.Ltmp528:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp529:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r75, r3
.Ltmp530:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp531:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp532:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r74, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r72, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r73, r2
.Ltmp533:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp534:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp535:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp536:
	.loc	2 247 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:314
	shl_b64 r2, 1, r26
	.loc	2 247 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 247 445                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0xa0, r4 devc
LBB2_146:                               ; %Flow606
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_107
LBB2_147:                               ; %if.then1215.6
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_149
; %bb.148:                              ; %if.then1239.6
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0xc0
LBB2_149:                               ; %if.end1284.6
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s10
.Ltmp537:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp538:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp539:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp540:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp541:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_151
; %bb.150:                              ; %if.then1354.6
.Ltmp542:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp543:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r71, r3
.Ltmp544:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp545:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp546:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r70, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r68, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r69, r2
.Ltmp547:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp548:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp549:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp550:
	.loc	2 247 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:314
	shl_b64 r2, 1, r26
	.loc	2 247 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 247 445                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0xc0, r4 devc
LBB2_151:                               ; %Flow604
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_108
LBB2_152:                               ; %if.then1215.7
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB2_154
; %bb.153:                              ; %if.then1239.7
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0xe0
LBB2_154:                               ; %if.end1284.7
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s4
.Ltmp551:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp552:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp553:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp554:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp555:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB2_156
; %bb.155:                              ; %if.then1354.7
.Ltmp556:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp557:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r67, r3
.Ltmp558:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp559:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp560:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r66, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r64, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r65, r2
.Ltmp561:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp562:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp563:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp564:
	.loc	2 247 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:314
	shl_b64 r2, 1, r26
	.loc	2 247 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 247 445                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0xe0, r4 devc
LBB2_156:                               ; %Flow602
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s8
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_109
LBB2_157:                               ; %if.then1215.8
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_159
; %bb.158:                              ; %if.then1239.8
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10000, r2
	addc_co_u32 r3, r3, 0
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_159:                               ; %if.end1284.8
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
.Ltmp565:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp566:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp567:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp568:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp569:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_161
; %bb.160:                              ; %if.then1354.8
.Ltmp570:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp571:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r63, r3
.Ltmp572:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp573:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp574:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r62, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r60, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r61, r2
.Ltmp575:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp576:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp577:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp578:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10000, r2
	addc_co_u32 r3, r3, 0
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x0, r4 devc
LBB2_161:                               ; %Flow600
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_110
LBB2_162:                               ; %if.then1215.9
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_164
; %bb.163:                              ; %if.then1239.9
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10020, r2
	addc_co_u32 r3, r3, 0
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_164:                               ; %if.end1284.9
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
.Ltmp579:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp580:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp581:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp582:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp583:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_166
; %bb.165:                              ; %if.then1354.9
.Ltmp584:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp585:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r59, r3
.Ltmp586:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp587:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp588:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r58, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r56, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r57, r2
.Ltmp589:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp590:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp591:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp592:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10020, r2
	addc_co_u32 r3, r3, 0
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x0, r4 devc
LBB2_166:                               ; %Flow598
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_111
LBB2_167:                               ; %if.then1215.10
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_169
; %bb.168:                              ; %if.then1239.10
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10040, r2
	addc_co_u32 r3, r3, 0
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_169:                               ; %if.end1284.10
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
.Ltmp593:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp594:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp595:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp596:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp597:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_171
; %bb.170:                              ; %if.then1354.10
.Ltmp598:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp599:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r55, r3
.Ltmp600:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp601:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp602:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r54, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r52, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r53, r2
.Ltmp603:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp604:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp605:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp606:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10040, r2
	addc_co_u32 r3, r3, 0
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x0, r4 devc
LBB2_171:                               ; %Flow596
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_112
LBB2_172:                               ; %if.then1215.11
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_174
; %bb.173:                              ; %if.then1239.11
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10060, r2
	addc_co_u32 r3, r3, 0
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_174:                               ; %if.end1284.11
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
.Ltmp607:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp608:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp609:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp610:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp611:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_176
; %bb.175:                              ; %if.then1354.11
.Ltmp612:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp613:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r51, r3
.Ltmp614:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp615:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp616:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r50, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r48, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r49, r2
.Ltmp617:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp618:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp619:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp620:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10060, r2
	addc_co_u32 r3, r3, 0
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x0, r4 devc
LBB2_176:                               ; %Flow594
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_113
LBB2_177:                               ; %if.then1215.12
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_179
; %bb.178:                              ; %if.then1239.12
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10080, r2
	addc_co_u32 r3, r3, 0
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_179:                               ; %if.end1284.12
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
.Ltmp621:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp622:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp623:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp624:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp625:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_181
; %bb.180:                              ; %if.then1354.12
.Ltmp626:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp627:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r47, r3
.Ltmp628:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp629:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp630:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r46, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r44, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r45, r2
.Ltmp631:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp632:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp633:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp634:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x10080, r2
	addc_co_u32 r3, r3, 0
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x0, r4 devc
LBB2_181:                               ; %Flow592
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_114
LBB2_182:                               ; %if.then1215.13
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_184
; %bb.183:                              ; %if.then1239.13
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x100a0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_184:                               ; %if.end1284.13
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
.Ltmp635:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp636:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp637:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp638:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp639:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_186
; %bb.185:                              ; %if.then1354.13
.Ltmp640:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp641:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r43, r3
.Ltmp642:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp643:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp644:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r42, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r40, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r41, r2
.Ltmp645:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp646:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp647:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp648:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x100a0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x0, r4 devc
LBB2_186:                               ; %Flow590
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_115
LBB2_187:                               ; %if.then1215.14
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_189
; %bb.188:                              ; %if.then1239.14
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x100c0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_189:                               ; %if.end1284.14
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s6
.Ltmp649:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp650:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp651:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp652:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp653:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_191
; %bb.190:                              ; %if.then1354.14
.Ltmp654:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp655:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r39, r3
.Ltmp656:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp657:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp658:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r38, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r36, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r37, r2
.Ltmp659:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp660:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp661:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp662:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x100c0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r2, 0x0, r4 devc
LBB2_191:                               ; %Flow588
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 222 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:222:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_116
LBB2_192:                               ; %if.then1215.15
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	arrive gvmcnt(0)
	shl_b64 r2, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:225:117
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB2_194
; %bb.193:                              ; %if.then1239.15
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	shl_b64 r2, 1, r26
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x100e0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 226 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:226:19
	snop 1
	ldg_b64 r2, r2, 0x0
LBB2_194:                               ; %if.end1284.15
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s0
.Ltmp663:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp664:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp665:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp666:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp667:
	.loc	2 245 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:245:11
	snop 0
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB2_116
; %bb.195:                              ; %if.then1354.15
.Ltmp668:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	arrive gvmcnt(0)
	cvt_f16tof32 r4, r3_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r3, r3_hi
.Ltmp669:
	.loc	2 241 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:241:24
	mul_f32 r3, r35, r3
.Ltmp670:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_hi, r3
.Ltmp671:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r2_lo
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r2, r2_hi
.Ltmp672:
	.loc	2 240 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:240:24
	mul_f32 r4, r34, r4
	.loc	2 238 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:238:24
	mul_f32 r3, r32, r3
	.loc	2 239 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:239:24
	mul_f32 r2, r33, r2
.Ltmp673:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r4
.Ltmp674:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r3
.Ltmp675:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_hi, r2
.Ltmp676:
	.loc	2 247 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:31
	shl_b64 r2, 1, r26
	add_co_u32 r0, r0, r2
	addc_co_u32 r1, r1, r3
	add_co_u32 r0, 0x100e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 247 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:247:445
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 252 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:252:1
	snop 2
	endk
.Ltmp677:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 17
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
; codeLenInByte = 33136
; NumMTRegsForWarps/PEU: 132
; NumSTRegsForWarps/PEU: 29
; MaxWarpsPerPEU: 3
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 254 0                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:254:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x0
	smov_b32 s6, s5
.Ltmp678:
	.loc	2 263 23 prologue_end           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:263:23
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
	.loc	2 264 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:264:24
	sshl_b64 s8, 2, s8
	sadd_co_u32 s0, s14, s8
	saddc_co_u32 s1, s15, s9
	.loc	2 265 38                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:265:38
	sshl_b32 s5, 7, s5
	.loc	2 265 47 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:265:47
	sadd_co_u32 s6, s10, s8
	saddc_co_u32 s7, s11, s9
	.loc	2 265 79                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:265:79
	sadd_co_u32 s8, s12, s8
	saddc_co_u32 s9, s13, s9
	sshl_b32 s3, 19, s4
	or3_b32 r2, r31, s3, r32
	add_u32 r2, r2, s2
	.loc	2 279 375 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:375
	mad_i32 r12, r2, 2, s18
	add_co_u32 r14, 0x20000, r12
	addc_co_u32 r15, r13, 0
	.loc	2 279 344 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	ldg_b128 r44, r12, 0x0
	add_u32 r0, r0, r1
	ldg_b128 r48, r14, 0x0
	.loc	2 279 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:375
	add_co_u32 r14, 0x40000, r12
	addc_co_u32 r15, r13, 0
	add_co_u32 r12, 0x60000, r12
	and_b32 r7, r0, 16
	mul_u24 r0, r1, 9
	and_b32 r8, r0, 8
	addc_co_u32 r13, r13, 0
	.loc	2 279 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:495
	or_b32 r0, 0x40000, r2
	.loc	2 279 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	ldg_b128 r52, r14, 0x0
	ldg_b128 r56, r12, 0x0
	.loc	2 279 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:375
	mad_i32 r12, r0, 2, s18
	.loc	2 279 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:495
	add_u32 r0, 0x50000, r2
	.loc	2 279 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:375
	mad_i32 r14, r0, 2, s18
	.loc	2 279 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:495
	add_u32 r0, 0x60000, r2
	.loc	2 279 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:375
	mad_i32 r16, r0, 2, s18
	.loc	2 279 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:495
	add_u32 r0, 0x70000, r2
	.loc	2 279 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:375
	mad_i32 r18, r0, 2, s18
	.loc	2 279 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	ldg_b128 r60, r12, 0x0
	ldg_b128 r64, r14, 0x0
	ldg_b128 r68, r16, 0x0
	ldg_b128 r72, r18, 0x0
	.loc	2 264 24 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:264:24
	ldu_b32 s1, s0, 0x0
	.loc	2 265 47                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:265:47
	ldu_b32 s6, s6, 0x0
	.loc	2 265 79 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:265:79
	ldu_b32 s0, s8, 0x0
	add_u32 r3, r6, r1
	and_b32 r3, r3, 32
	shr_b32 r11, 1, r1
	.loc	2 279 96 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:96
	or_b32 r9, r3, r8
	.loc	2 279 60 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:60
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
	.loc	2 266 54 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:266:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s5
	.loc	2 265 45                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:265:45
	sadd_co_i32 s5, s6, s5
	and_b32 r12, 0x3c0, r3
	and_or_b32 r33, r13, 8, r11
	.loc	2 265 77 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:265:77
	ssub_co_i32 s10, s5, s0
	.loc	2 279 266 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:266
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
	.loc	2 279 181 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:181
	or3_b32 r7, r10, r7, r8
	or_b32 r6, r11, r6
	.loc	2 279 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:41
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
	.loc	2 279 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	add_i32 r6, 0x1000, r5
	.loc	2 279 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:41
	add_u32 r25, 0x2000, r5
	.loc	2 279 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	add_i32 r7, 0x2000, r5
	.loc	2 279 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:41
	add_u32 r26, 0x3000, r5
	.loc	2 279 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	add_i32 r8, 0x3000, r5
	add_i32 r9, 0x4000, r23
	.loc	2 279 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:41
	add_u32 r28, 0x5000, r5
	.loc	2 279 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	add_i32 r12, 0x5000, r5
	.loc	2 279 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:41
	add_u32 r29, 0x6000, r5
	.loc	2 279 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	add_i32 r41, 0x6000, r5
	.loc	2 279 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:41
	add_u32 r30, 0x7000, r5
	.loc	2 279 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
	add_i32 r5, 0x7000, r5
	saddc_co_u32 s15, s19, 0
	.loc	2 281 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:281:3
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
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:0
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
	.loc	2 279 344 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:344
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
	.loc	2 281 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:281:3
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
	.loc	2 279 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:279:41
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
	.loc	2 0 41 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s18
.Ltmp679:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp680:
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r178, r20, 0x0
	lds_b128 r182, r19, 0x0
	lds_b128 r186, r18, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r178, r170, r158
	mma_16x16x16f16 r126, r178, r174, r126
	mma_16x16x16f16 r158, r180, r172, r158
	mma_16x16x16f16 r126, r180, r176, r126
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r178, r17, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r182, r170, r154
	mma_16x16x16f16 r122, r182, r174, r122
	mma_16x16x16f16 r154, r184, r172, r154
	mma_16x16x16f16 r122, r184, r176, r122
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r182, r16, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r186, r170, r150
	mma_16x16x16f16 r118, r186, r174, r118
	mma_16x16x16f16 r150, r188, r172, r150
	mma_16x16x16f16 r118, r188, r176, r118
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r186, r15, 0x0
	lds_b128 r190, r14, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r146, r178, r170, r146
	mma_16x16x16f16 r114, r178, r174, r114
	mma_16x16x16f16 r146, r180, r172, r146
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	add_i32 r178, 0x4000, r20
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	mma_16x16x16f16 r114, r180, r176, r114
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r182, r170, r142
	mma_16x16x16f16 r110, r182, r174, r110
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r180, r13, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	mma_16x16x16f16 r142, r184, r172, r142
	mma_16x16x16f16 r110, r184, r176, r110
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r170, r138
	mma_16x16x16f16 r106, r186, r174, r106
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r19
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	mma_16x16x16f16 r138, r188, r172, r138
	mma_16x16x16f16 r106, r188, r176, r106
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r190, r170, r134
	mma_16x16x16f16 r102, r190, r174, r102
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r18
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	mma_16x16x16f16 r134, r192, r172, r134
	mma_16x16x16f16 r102, r192, r176, r102
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r180, r170, r130
	mma_16x16x16f16 r98, r180, r174, r98
	mma_16x16x16f16 r130, r182, r172, r130
	mma_16x16x16f16 r98, r182, r176, r98
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r17
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r184, r170, r94
	mma_16x16x16f16 r62, r184, r174, r62
	mma_16x16x16f16 r94, r186, r172, r94
	mma_16x16x16f16 r62, r186, r176, r62
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r16
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r188, r170, r90
	mma_16x16x16f16 r58, r188, r174, r58
	mma_16x16x16f16 r90, r190, r172, r90
	mma_16x16x16f16 r58, r190, r176, r58
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r15
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r180, r170, r86
	mma_16x16x16f16 r54, r180, r174, r54
	mma_16x16x16f16 r86, r182, r172, r86
	mma_16x16x16f16 r54, r182, r176, r54
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r14
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r184, r170, r82
	mma_16x16x16f16 r50, r184, r174, r50
	mma_16x16x16f16 r82, r186, r172, r82
	mma_16x16x16f16 r50, r186, r176, r50
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r13
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r188, r170, r78
	mma_16x16x16f16 r46, r188, r174, r46
	mma_16x16x16f16 r78, r190, r172, r78
	mma_16x16x16f16 r46, r190, r176, r46
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r188, r178, 0x0
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r180, r170, r74
	mma_16x16x16f16 r42, r180, r174, r42
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r178, r11, 0x0
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	mma_16x16x16f16 r74, r182, r172, r74
	mma_16x16x16f16 r42, r182, r176, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r184, r170, r70
	mma_16x16x16f16 r38, r184, r174, r38
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r182, r10, 0x0
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	mma_16x16x16f16 r70, r186, r172, r70
	mma_16x16x16f16 r38, r186, r176, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r188, r170, r66
	mma_16x16x16f16 r34, r188, r174, r34
	mma_16x16x16f16 r66, r190, r172, r66
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r170, r12, 0x0
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	mma_16x16x16f16 r34, r190, r176, r34
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r174, r9, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r158, r178, r162, r158
	mma_16x16x16f16 r126, r178, r166, r126
	mma_16x16x16f16 r158, r180, r164, r158
	mma_16x16x16f16 r126, r180, r168, r126
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r178, r8, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
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
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r170, r7, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r174, r162, r146
	mma_16x16x16f16 r114, r174, r166, r114
	mma_16x16x16f16 r146, r176, r164, r146
	mma_16x16x16f16 r114, r176, r168, r114
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r174, r6, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r178, r162, r142
	mma_16x16x16f16 r110, r178, r166, r110
	mma_16x16x16f16 r142, r180, r164, r142
	mma_16x16x16f16 r110, r180, r168, r110
	.loc	2 296 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:296:48
	lds_b128 r178, r5, 0x0
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r170, r162, r138
	mma_16x16x16f16 r106, r170, r166, r106
	mma_16x16x16f16 r138, r172, r164, r138
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	add_i32 r170, 0x4000, r11
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	mma_16x16x16f16 r106, r172, r168, r106
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r174, r162, r134
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r182, r170, 0x0
	add_i32 r170, 0x4000, r10
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	mma_16x16x16f16 r102, r174, r166, r102
	mma_16x16x16f16 r134, r176, r164, r134
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r12
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	mma_16x16x16f16 r102, r176, r168, r102
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r178, r162, r130
	mma_16x16x16f16 r98, r178, r166, r98
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r9
	.loc	2 302 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:302:61
	mma_16x16x16f16 r130, r180, r164, r130
	mma_16x16x16f16 r98, r180, r168, r98
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r182, r162, r94
	mma_16x16x16f16 r62, r182, r166, r62
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r8
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	mma_16x16x16f16 r94, r184, r164, r94
	mma_16x16x16f16 r62, r184, r168, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r172, r162, r90
	mma_16x16x16f16 r58, r172, r166, r58
	mma_16x16x16f16 r90, r174, r164, r90
	mma_16x16x16f16 r58, r174, r168, r58
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r7
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r176, r162, r86
	mma_16x16x16f16 r54, r176, r166, r54
	mma_16x16x16f16 r86, r178, r164, r86
	mma_16x16x16f16 r54, r178, r168, r54
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r6
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r180, r162, r82
	mma_16x16x16f16 r50, r180, r166, r50
	mma_16x16x16f16 r82, r182, r164, r82
	mma_16x16x16f16 r50, r182, r168, r50
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r5
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r172, r162, r78
	mma_16x16x16f16 r46, r172, r166, r46
	.loc	2 310 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:310:50
	lds_b128 r170, r170, 0x0
	.loc	2 316 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:316:61
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
.Ltmp681:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp682:
	.loc	2 327 377                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:377
	add_u32 r162, 0x10000, r31
	mad_i32 r164, r31, 2, s14
	mad_i32 r162, r162, 2, s14
	.loc	2 281 21                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:281:21
	sadd_co_u32 s2, 0x80, s2
	.loc	2 327 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:346
	ldg_b128 r164, r164, 0x0
	ldg_b128 r168, r162, 0x0
	.loc	2 327 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:377
	add_u32 r162, 0x20000, r31
	mad_i32 r172, r162, 2, s14
	add_u32 r162, 0x30000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 327 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:346
	ldg_b128 r172, r172, 0x0
	.loc	2 281 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:281:21
	saddc_co_u32 s3, s3, 0
	.loc	2 327 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:346
	ldg_b128 r176, r162, 0x0
	.loc	2 327 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:377
	add_u32 r162, 0x40000, r31
	mad_i32 r180, r162, 2, s14
	add_u32 r162, 0x50000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 327 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:346
	ldg_b128 r180, r180, 0x0
	.loc	2 281 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:281:21
	scmp_eq_u64 0xf80, s2
	.loc	2 327 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:346
	ldg_b128 r184, r162, 0x0
	.loc	2 327 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:377
	add_u32 r162, 0x60000, r31
	mad_i32 r188, r162, 2, s14
	add_u32 r162, 0x70000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 327 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:346
	ldg_b128 r188, r188, 0x0
	.loc	2 281 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:281:21
	add_u32 r31, r31, 64
	.loc	2 327 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:327:346
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
	.loc	2 281 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:281:3
	bra_smsks LBB3_10
LBB3_2:                                 ; %for.cond103.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:3
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 286 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:286:117
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	.loc	2 287 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:287:17
	snop 1
	ldg_b128 r170, r164, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 286 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:286:117
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	add_co_u32 r162, r32, s2
	mov_b32 r163, s3
	addc_co_u32 r163, r33, r163
	.loc	2 287 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:287:17
	add_co_u32 r162, 0x10000, r162
	addc_co_u32 r163, r163, 0
	snop 1
	ldg_b128 r174, r162, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 286 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:286:117
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	.loc	2 287 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:287:17
	snop 1
	ldg_b128 r162, r164, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r166, 0, 0
	shl_b64 r168, 0, 0
	.loc	2 286 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:286:117
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:117
	add_co_u32 r166, r32, s2
	mov_b32 r167, s3
	addc_co_u32 r167, r33, r167
	.loc	2 287 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:287:17
	add_co_u32 r166, 0x10040, r166
	addc_co_u32 r167, r167, 0
	snop 1
	ldg_b128 r166, r166, 0x0
	bra LBB3_1
LBB3_10:                                ; %for.cond432.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	or_b32 r21, r21, r22
	add_co_u32 r166, s12, r21
	mov_b32 r21, s13
	addc_co_u32 r167, r21, 0
	shl_b64 r30, 0, 0
	shl_b64 r32, 0, 0
	.loc	2 334 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:334:115
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_12
; %bb.11:                               ; %if.then459
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r22, s22, r22
	mov_b32 r21, s23
	addc_co_u32 r23, r21, r23
	.loc	2 335 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:335:17
	snop 1
	ldg_b128 r30, r22, 0xf80
LBB3_12:                                ; %if.end511
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 334 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:334:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then459.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r21, s22, r22
	mov_b32 r22, s23
	addc_co_u32 r22, r22, r23
	add_co_u32 r24, 0x10f80, r21
	addc_co_u32 r25, r22, 0
	.loc	2 335 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:335:17
	snop 1
	ldg_b128 r162, r24, 0x0
LBB3_14:                                ; %if.end511.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r22, 0, 0
	shl_b64 r24, 0, 0
	.loc	2 334 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:334:115
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then459.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r22, s22, r22
	mov_b32 r21, s23
	addc_co_u32 r23, r21, r23
	.loc	2 335 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:335:17
	snop 1
	ldg_b128 r22, r22, 0xfc0
LBB3_16:                                ; %if.end511.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	sadd_co_i32 s0, s1, s0
	shl_b64 r26, 0, 0
	shl_b64 r28, 0, 0
	.loc	2 334 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:334:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then459.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:115
	shl_b64 r26, 1, r166
	add_co_u32 r21, s22, r26
	mov_b32 r26, s23
	addc_co_u32 r26, r26, r27
	add_co_u32 r28, 0x10fc0, r21
	addc_co_u32 r29, r26, 0
	.loc	2 335 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:335:17
	snop 1
	ldg_b128 r26, r28, 0x0
LBB3_18:                                ; %if.end511.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
.Ltmp683:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp684:
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r166, r20, 0x0
	lds_b128 r170, r19, 0x0
	lds_b128 r174, r18, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r20, 0x4000, r20
	add_i32 r19, 0x4000, r19
	add_i32 r18, 0x4000, r18
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r166, r30, r158
.Ltmp685:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp686:
	.loc	2 374 92                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:374:92
	cmp_gt_i32 s2, s0, r0
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	mma_16x16x16f16 r126, r166, r162, r126
	mma_16x16x16f16 r158, r168, r32, r158
	mma_16x16x16f16 r126, r168, r164, r126
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r166, r17, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r17, 0x4000, r17
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r170, r30, r154
	mma_16x16x16f16 r122, r170, r162, r122
	mma_16x16x16f16 r154, r172, r32, r154
	mma_16x16x16f16 r122, r172, r164, r122
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r170, r16, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r16, 0x4000, r16
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r174, r30, r150
	mma_16x16x16f16 r118, r174, r162, r118
	mma_16x16x16f16 r150, r176, r32, r150
	mma_16x16x16f16 r118, r176, r164, r118
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r174, r15, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r15, 0x4000, r15
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r166, r30, r146
	mma_16x16x16f16 r114, r166, r162, r114
	mma_16x16x16f16 r146, r168, r32, r146
	mma_16x16x16f16 r114, r168, r164, r114
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r166, r14, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r14, 0x4000, r14
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r170, r30, r142
	mma_16x16x16f16 r110, r170, r162, r110
	mma_16x16x16f16 r142, r172, r32, r142
	mma_16x16x16f16 r110, r172, r164, r110
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r170, r13, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r13, 0x4000, r13
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r174, r30, r138
	mma_16x16x16f16 r106, r174, r162, r106
	mma_16x16x16f16 r138, r176, r32, r138
	mma_16x16x16f16 r106, r176, r164, r106
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r174, r20, 0x0
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r166, r30, r134
	mma_16x16x16f16 r102, r166, r162, r102
	mma_16x16x16f16 r134, r168, r32, r134
	mma_16x16x16f16 r102, r168, r164, r102
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r166, r19, 0x0
	lds_b128 r18, r18, 0x0
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r130, r170, r30, r130
	mma_16x16x16f16 r98, r170, r162, r98
	mma_16x16x16f16 r130, r172, r32, r130
	mma_16x16x16f16 r98, r172, r164, r98
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r170, r17, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
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
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r166, r16, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r18, r30, r86
	mma_16x16x16f16 r54, r18, r162, r54
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r16, r15, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	mma_16x16x16f16 r86, r20, r32, r86
	mma_16x16x16f16 r54, r20, r164, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r170, r30, r82
	mma_16x16x16f16 r50, r170, r162, r50
	mma_16x16x16f16 r82, r172, r32, r82
	mma_16x16x16f16 r50, r172, r164, r50
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r170, r14, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r166, r30, r78
	mma_16x16x16f16 r46, r166, r162, r46
	mma_16x16x16f16 r78, r168, r32, r78
	mma_16x16x16f16 r46, r168, r164, r46
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r166, r13, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r16, r30, r74
	mma_16x16x16f16 r42, r16, r162, r42
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r14, r11, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r11, 0x4000, r11
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	mma_16x16x16f16 r74, r18, r32, r74
	mma_16x16x16f16 r42, r18, r164, r42
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r18, r10, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r10, 0x4000, r10
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r70, r170, r30, r70
	mma_16x16x16f16 r38, r170, r162, r38
	mma_16x16x16f16 r70, r172, r32, r70
	mma_16x16x16f16 r38, r172, r164, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r166, r30, r66
	mma_16x16x16f16 r34, r166, r162, r34
	mma_16x16x16f16 r66, r168, r32, r66
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r30, r12, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	mma_16x16x16f16 r34, r168, r164, r34
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r14, r22, r158
	mma_16x16x16f16 r126, r14, r26, r126
	mma_16x16x16f16 r158, r16, r24, r158
	mma_16x16x16f16 r126, r16, r28, r126
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r14, r9, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r9, 0x4000, r9
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r18, r22, r154
	mma_16x16x16f16 r122, r18, r26, r122
	mma_16x16x16f16 r154, r20, r24, r154
	mma_16x16x16f16 r122, r20, r28, r122
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r18, r8, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r8, 0x4000, r8
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r30, r22, r150
	mma_16x16x16f16 r118, r30, r26, r118
	mma_16x16x16f16 r150, r32, r24, r150
	mma_16x16x16f16 r118, r32, r28, r118
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r30, r7, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r7, 0x4000, r7
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r14, r22, r146
	mma_16x16x16f16 r114, r14, r26, r114
	mma_16x16x16f16 r146, r16, r24, r146
	mma_16x16x16f16 r114, r16, r28, r114
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r14, r6, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r6, 0x4000, r6
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r18, r22, r142
	mma_16x16x16f16 r110, r18, r26, r110
	mma_16x16x16f16 r142, r20, r24, r142
	mma_16x16x16f16 r110, r20, r28, r110
	.loc	2 344 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:344:48
	lds_b128 r18, r5, 0x0
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	add_i32 r5, 0x4000, r5
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r30, r22, r138
	mma_16x16x16f16 r106, r30, r26, r106
	mma_16x16x16f16 r138, r32, r24, r138
	mma_16x16x16f16 r106, r32, r28, r106
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r30, r11, 0x0
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r14, r22, r134
	mma_16x16x16f16 r102, r14, r26, r102
	mma_16x16x16f16 r134, r16, r24, r134
	mma_16x16x16f16 r102, r16, r28, r102
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r14, r10, 0x0
	add_i32 r10, 0x4000, r12
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r18, r22, r130
	mma_16x16x16f16 r98, r18, r26, r98
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r10, r10, 0x0
	.loc	2 350 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:350:61
	mma_16x16x16f16 r130, r20, r24, r130
	mma_16x16x16f16 r98, r20, r28, r98
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r18, r9, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
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
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r14, r8, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r10, r22, r86
	mma_16x16x16f16 r54, r10, r26, r54
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r8, r7, 0x0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	mma_16x16x16f16 r86, r12, r24, r86
	mma_16x16x16f16 r54, r12, r28, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r18, r22, r82
	mma_16x16x16f16 r50, r18, r26, r50
	mma_16x16x16f16 r82, r20, r24, r82
	mma_16x16x16f16 r50, r20, r28, r50
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r18, r6, 0x0
	.loc	2 372 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:372:3
	shl_b64 r6, 0, s20
	mad_i32 r6, s10, 2, r6
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r14, r22, r78
	mma_16x16x16f16 r46, r14, r26, r46
	.loc	2 358 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:358:48
	lds_b128 r12, r5, 0x0
	.loc	2 372 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:372:3
	shl_b32 r5, 1, r2
	add_co_u32 r6, r6, r5
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
	mma_16x16x16f16 r78, r16, r24, r78
	.loc	2 372 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:372:3
	addc_co_u32 r7, r7, 0
	add_u16 r5_lo, 0, 0
	.loc	2 364 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:364:61
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
	.loc	2 374 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:374:9
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB3_22
; %bb.19:                               ; %if.then717
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	add_u16 r5_lo, 0, 0
	.loc	2 376 114 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:376:114
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_21
; %bb.20:                               ; %if.then739
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:114
	shl_b32 r5, 1, r4
	add_co_u32 r8, r6, r5
	addc_co_u32 r9, r7, 0
	.loc	2 377 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:377:19
	snop 1
	ldg_u16 r5, r8, 0x0
LBB3_21:                                ; %Flow560
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_22:                                ; %for.inc760
	sor_b64 xmsk, xmsk, s12
	.loc	2 374 63 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:374:63
	or_b32 r8, r4, 16
	.loc	2 374 92 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:374:92
	or_b32 r4, r2, r8
	cmp_gt_i32 s14, s0, r4
	add_u16 r4_lo, 0, 0
	.loc	2 374 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:374:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then717.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	add_u16 r4_lo, 0, 0
	.loc	2 376 114 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:376:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then739.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:114
	shl_b32 r4, 1, r8
	add_co_u32 r6, r6, r4
	addc_co_u32 r7, r7, 0
	.loc	2 377 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:377:19
	snop 1
	ldg_u16 r4, r6, 0x0
LBB3_25:                                ; %Flow559
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:19
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
	.loc	2 385 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:385:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s16, r1
	mov_b32 r2, s17
	addc_co_u32 r2, r2, 0
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_34
; %bb.27:                               ; %for.inc883
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_37
LBB3_28:                                ; %for.inc883.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_40
LBB3_29:                                ; %for.inc883.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_43
LBB3_30:                                ; %for.inc883.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_46
LBB3_31:                                ; %for.inc883.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_49
LBB3_32:                                ; %for.inc883.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_52
LBB3_33:                                ; %for.inc883.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_55
	bra LBB3_58
LBB3_34:                                ; %if.then777
.Ltmp687:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp688:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp689:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp690:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp691:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then846
.Ltmp692:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp693:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r8, r161, r3
.Ltmp694:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp695:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r9, r160, r3
.Ltmp696:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp697:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r8, 16, r8
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r8, r159, r3
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r3, r158, r3
.Ltmp698:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp699:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp700:
	.loc	2 400 28 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	addc_co_u32 r11, r2, r11
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_36:                                ; %Flow558
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_28
LBB3_37:                                ; %if.then777.1
.Ltmp701:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp702:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp703:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp704:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp705:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_39
; %bb.38:                               ; %if.then846.1
.Ltmp706:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp707:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r8, r157, r3
.Ltmp708:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp709:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r9, r156, r3
.Ltmp710:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp711:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r8, 16, r8
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r8, r155, r3
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r3, r154, r3
.Ltmp712:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp713:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp714:
	.loc	2 400 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:313
	shl_b64 r10, 1, r6
	.loc	2 400 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r10, r1, r10
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	addc_co_u32 r11, r2, r11
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_39:                                ; %Flow557
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_29
LBB3_40:                                ; %if.then777.2
.Ltmp715:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp716:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp717:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp718:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp719:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then846.2
.Ltmp720:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp721:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r8, r153, r3
.Ltmp722:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp723:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r9, r152, r3
.Ltmp724:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp725:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r8, 16, r8
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r8, r151, r3
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r3, r150, r3
.Ltmp726:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp727:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp728:
	.loc	2 400 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:313
	shl_b64 r10, 1, r6
	.loc	2 400 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r10, r1, r10
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	addc_co_u32 r11, r2, r11
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_42:                                ; %Flow556
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_30
LBB3_43:                                ; %if.then777.3
.Ltmp729:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp730:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp731:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp732:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp733:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_45
; %bb.44:                               ; %if.then846.3
.Ltmp734:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp735:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r8, r149, r3
.Ltmp736:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp737:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r9, r148, r3
.Ltmp738:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp739:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r8, 16, r8
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r8, r147, r3
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r3, r146, r3
.Ltmp740:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp741:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp742:
	.loc	2 400 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:313
	shl_b64 r10, 1, r6
	.loc	2 400 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r10, r1, r10
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	addc_co_u32 r11, r2, r11
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_45:                                ; %Flow555
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_31
LBB3_46:                                ; %if.then777.4
.Ltmp743:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp744:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp745:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp746:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp747:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then846.4
.Ltmp748:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp749:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r8, r145, r3
.Ltmp750:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp751:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r9, r144, r3
.Ltmp752:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp753:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r8, 16, r8
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r8, r143, r3
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r3, r142, r3
.Ltmp754:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp755:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp756:
	.loc	2 400 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:313
	shl_b64 r10, 1, r6
	.loc	2 400 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r10, r1, r10
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	addc_co_u32 r11, r2, r11
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_48:                                ; %Flow554
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_32
LBB3_49:                                ; %if.then777.5
.Ltmp757:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp758:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp759:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp760:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp761:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_51
; %bb.50:                               ; %if.then846.5
.Ltmp762:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp763:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r8, r141, r3
.Ltmp764:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp765:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r9, r140, r3
.Ltmp766:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp767:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r8, 16, r8
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r8, r139, r3
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r3, r138, r3
.Ltmp768:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp769:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp770:
	.loc	2 400 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:313
	shl_b64 r10, 1, r6
	.loc	2 400 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r10, r1, r10
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	addc_co_u32 r11, r2, r11
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_51:                                ; %Flow553
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_33
LBB3_52:                                ; %if.then777.6
.Ltmp771:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp772:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp773:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp774:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp775:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.then846.6
.Ltmp776:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp777:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r8, r137, r3
.Ltmp778:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp779:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r9, r136, r3
.Ltmp780:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp781:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r8, 16, r8
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r8, r135, r3
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r3, r134, r3
.Ltmp782:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp783:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp784:
	.loc	2 400 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:313
	shl_b64 r10, 1, r6
	.loc	2 400 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r10, r1, r10
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	addc_co_u32 r11, r2, r11
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_54:                                ; %Flow552
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_58
LBB3_55:                                ; %if.then777.7
.Ltmp785:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp786:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp787:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp788:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp789:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_57
; %bb.56:                               ; %if.then846.7
.Ltmp790:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp791:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r8, r133, r3
.Ltmp792:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp793:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r9, r132, r3
.Ltmp794:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp795:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r8, 16, r8
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r8, r131, r3
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r3, r130, r3
.Ltmp796:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp797:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp798:
	.loc	2 400 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:313
	shl_b64 r10, 1, r6
	.loc	2 400 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r10, r1, r10
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	addc_co_u32 r11, r2, r11
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0xe0, r8 devc
LBB3_57:                                ; %Flow551
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
LBB3_58:                                ; %for.inc883.7
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 66 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:66
	or_b32 r0, r0, 16
	.loc	2 386 95 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_66
; %bb.59:                               ; %for.inc883.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_69
LBB3_60:                                ; %for.inc883.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_72
LBB3_61:                                ; %for.inc883.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_75
LBB3_62:                                ; %for.inc883.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_78
LBB3_63:                                ; %for.inc883.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_81
LBB3_64:                                ; %for.inc883.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_84
LBB3_65:                                ; %for.inc883.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_87
	bra LBB3_90
LBB3_66:                                ; %if.then777.8
.Ltmp799:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp800:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp801:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp802:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp803:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then846.8
.Ltmp804:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp805:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r3, r129, r0
.Ltmp806:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp807:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r8, r128, r0
.Ltmp808:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp809:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r3, 16, r3
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r3, r127, r0
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r0, r126, r0
.Ltmp810:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp811:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp812:
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	or_b32 r8, r3, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r3, 0
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_68:                                ; %Flow550
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_60
LBB3_69:                                ; %if.then777.9
.Ltmp813:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp814:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp815:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp816:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp817:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_71
; %bb.70:                               ; %if.then846.9
.Ltmp818:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp819:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r3, r125, r0
.Ltmp820:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp821:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r8, r124, r0
.Ltmp822:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp823:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r3, 16, r3
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r3, r123, r0
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r0, r122, r0
.Ltmp824:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp825:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp826:
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	or_b32 r8, r3, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r3, 0
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_71:                                ; %Flow549
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_61
LBB3_72:                                ; %if.then777.10
.Ltmp827:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp828:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp829:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp830:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp831:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.then846.10
.Ltmp832:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp833:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r3, r121, r0
.Ltmp834:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp835:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r8, r120, r0
.Ltmp836:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp837:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r3, 16, r3
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r3, r119, r0
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r0, r118, r0
.Ltmp838:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp839:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp840:
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	or_b32 r8, r3, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r3, 0
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_74:                                ; %Flow548
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_62
LBB3_75:                                ; %if.then777.11
.Ltmp841:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp842:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp843:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp844:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp845:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_77
; %bb.76:                               ; %if.then846.11
.Ltmp846:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp847:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r3, r117, r0
.Ltmp848:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp849:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r8, r116, r0
.Ltmp850:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp851:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r3, 16, r3
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r3, r115, r0
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r0, r114, r0
.Ltmp852:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp853:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp854:
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	or_b32 r8, r3, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r3, 0
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_77:                                ; %Flow547
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_63
LBB3_78:                                ; %if.then777.12
.Ltmp855:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp856:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp857:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp858:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp859:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then846.12
.Ltmp860:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp861:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r3, r113, r0
.Ltmp862:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp863:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r8, r112, r0
.Ltmp864:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp865:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r3, 16, r3
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r3, r111, r0
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r0, r110, r0
.Ltmp866:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp867:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp868:
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	or_b32 r8, r3, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r3, 0
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_80:                                ; %Flow546
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_64
LBB3_81:                                ; %if.then777.13
.Ltmp869:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp870:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp871:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp872:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp873:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_83
; %bb.82:                               ; %if.then846.13
.Ltmp874:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp875:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r3, r109, r0
.Ltmp876:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp877:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r8, r108, r0
.Ltmp878:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp879:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r3, 16, r3
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r3, r107, r0
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r0, r106, r0
.Ltmp880:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp881:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp882:
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	or_b32 r8, r3, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_83:                                ; %Flow545
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_65
LBB3_84:                                ; %if.then777.14
.Ltmp883:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp884:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp885:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp886:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp887:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_86
; %bb.85:                               ; %if.then846.14
.Ltmp888:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp889:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r3, r105, r0
.Ltmp890:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp891:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r8, r104, r0
.Ltmp892:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp893:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r3, 16, r3
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r3, r103, r0
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r0, r102, r0
.Ltmp894:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp895:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp896:
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	or_b32 r8, r3, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_86:                                ; %Flow544
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 386 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:386:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_90
LBB3_87:                                ; %if.then777.15
.Ltmp897:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp898:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp899:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp900:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp901:
	.loc	2 398 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:398:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_89
; %bb.88:                               ; %if.then846.15
.Ltmp902:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp903:
	.loc	2 394 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:394:22
	mul_f32 r3, r101, r0
.Ltmp904:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp905:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	mul_f32 r8, r100, r0
.Ltmp906:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp907:
	.loc	2 393 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:393:22
	shl_b32 r3, 16, r3
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 392 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:392:22
	mul_f32 r3, r99, r0
	.loc	2 391 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:391:22
	mul_f32 r0, r98, r0
.Ltmp908:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp909:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp910:
	.loc	2 397 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	shl_b64 r10, 1, r6
	.loc	2 397 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:397:42
	or_b32 r8, r3, r0
	.loc	2 400 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380e0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 400 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:400:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_89:                                ; %Flow543
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
LBB3_90:                                ; %for.inc883.15
	sor_b64 xmsk, xmsk, s4
	.loc	2 406 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:406:3
	add_co_u32 r0, 0x100, r1
	addc_co_u32 r1, r2, 0
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_107
; %bb.91:                               ; %for.inc1011
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_110
LBB3_92:                                ; %for.inc1011.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_113
LBB3_93:                                ; %for.inc1011.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_116
LBB3_94:                                ; %for.inc1011.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_119
LBB3_95:                                ; %for.inc1011.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_122
LBB3_96:                                ; %for.inc1011.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_125
LBB3_97:                                ; %for.inc1011.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_128
LBB3_98:                                ; %for.inc1011.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_131
LBB3_99:                                ; %for.inc1011.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_134
LBB3_100:                               ; %for.inc1011.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_137
LBB3_101:                               ; %for.inc1011.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_140
LBB3_102:                               ; %for.inc1011.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_143
LBB3_103:                               ; %for.inc1011.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_146
LBB3_104:                               ; %for.inc1011.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_149
LBB3_105:                               ; %for.inc1011.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_152
LBB3_106:                               ; %for.inc1011.15
	.loc	2 426 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:426:1
	snop 0
	endk
LBB3_107:                               ; %if.then900
.Ltmp911:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp912:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp913:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp914:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp915:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_109
; %bb.108:                              ; %if.then973
.Ltmp916:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp917:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r97, r2
.Ltmp918:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp919:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r8, r96, r2
.Ltmp920:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp921:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r95, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r94, r2
.Ltmp922:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp923:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp924:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_109:                               ; %Flow542
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_92
LBB3_110:                               ; %if.then900.1
.Ltmp925:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp926:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp927:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp928:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp929:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_112
; %bb.111:                              ; %if.then973.1
.Ltmp930:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp931:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r93, r2
.Ltmp932:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp933:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r8, r92, r2
.Ltmp934:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp935:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r91, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r90, r2
.Ltmp936:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp937:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp938:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:314
	shl_b64 r2, 1, r6
	.loc	2 421 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 421 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x20, r8 devc
LBB3_112:                               ; %Flow541
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_93
LBB3_113:                               ; %if.then900.2
.Ltmp939:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp940:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp941:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp942:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp943:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_115
; %bb.114:                              ; %if.then973.2
.Ltmp944:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp945:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r89, r2
.Ltmp946:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp947:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r8, r88, r2
.Ltmp948:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp949:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r87, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r86, r2
.Ltmp950:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp951:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp952:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:314
	shl_b64 r2, 1, r6
	.loc	2 421 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 421 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x40, r8 devc
LBB3_115:                               ; %Flow540
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_94
LBB3_116:                               ; %if.then900.3
.Ltmp953:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp954:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp955:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp956:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp957:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_118
; %bb.117:                              ; %if.then973.3
.Ltmp958:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp959:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r85, r2
.Ltmp960:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp961:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r8, r84, r2
.Ltmp962:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp963:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r83, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r82, r2
.Ltmp964:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp965:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp966:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:314
	shl_b64 r2, 1, r6
	.loc	2 421 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 421 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x60, r8 devc
LBB3_118:                               ; %Flow539
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_95
LBB3_119:                               ; %if.then900.4
.Ltmp967:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp968:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp969:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp970:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp971:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_121
; %bb.120:                              ; %if.then973.4
.Ltmp972:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp973:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r81, r2
.Ltmp974:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp975:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r8, r80, r2
.Ltmp976:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp977:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r79, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r78, r2
.Ltmp978:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp979:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp980:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:314
	shl_b64 r2, 1, r6
	.loc	2 421 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 421 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x80, r8 devc
LBB3_121:                               ; %Flow538
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_96
LBB3_122:                               ; %if.then900.5
.Ltmp981:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp982:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp983:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp984:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp985:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_124
; %bb.123:                              ; %if.then973.5
.Ltmp986:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp987:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r77, r2
.Ltmp988:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp989:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r8, r76, r2
.Ltmp990:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp991:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r75, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r74, r2
.Ltmp992:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp993:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp994:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:314
	shl_b64 r2, 1, r6
	.loc	2 421 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 421 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0xa0, r8 devc
LBB3_124:                               ; %Flow537
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_97
LBB3_125:                               ; %if.then900.6
.Ltmp995:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp996:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp997:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp998:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp999:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_127
; %bb.126:                              ; %if.then973.6
.Ltmp1000:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1001:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r73, r2
.Ltmp1002:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1003:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r8, r72, r2
.Ltmp1004:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1005:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r71, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r70, r2
.Ltmp1006:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1007:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1008:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:314
	shl_b64 r2, 1, r6
	.loc	2 421 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 421 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0xc0, r8 devc
LBB3_127:                               ; %Flow536
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_98
LBB3_128:                               ; %if.then900.7
.Ltmp1009:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp1010:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp1011:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp1012:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp1013:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_130
; %bb.129:                              ; %if.then973.7
.Ltmp1014:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1015:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r69, r2
.Ltmp1016:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1017:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r5, r68, r2
.Ltmp1018:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1019:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r67, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r66, r2
.Ltmp1020:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1021:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1022:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:314
	shl_b64 r2, 1, r6
	.loc	2 421 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 421 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0xe0, r8 devc
LBB3_130:                               ; %Flow535
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s2
	sor_b64 xmsk, xmsk, s4
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_99
LBB3_131:                               ; %if.then900.8
.Ltmp1023:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1024:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1025:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1026:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1027:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_133
; %bb.132:                              ; %if.then973.8
.Ltmp1028:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1029:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r65, r2
.Ltmp1030:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1031:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r5, r64, r2
.Ltmp1032:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1033:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r63, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r62, r2
.Ltmp1034:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1035:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1036:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38000, r2
	addc_co_u32 r3, r3, 0
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_133:                               ; %Flow534
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_100
LBB3_134:                               ; %if.then900.9
.Ltmp1037:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1038:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1039:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1040:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1041:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_136
; %bb.135:                              ; %if.then973.9
.Ltmp1042:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1043:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r61, r2
.Ltmp1044:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1045:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r5, r60, r2
.Ltmp1046:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1047:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r59, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r58, r2
.Ltmp1048:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1049:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1050:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38020, r2
	addc_co_u32 r3, r3, 0
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_136:                               ; %Flow533
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_101
LBB3_137:                               ; %if.then900.10
.Ltmp1051:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1052:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1053:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1054:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1055:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_139
; %bb.138:                              ; %if.then973.10
.Ltmp1056:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1057:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r57, r2
.Ltmp1058:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1059:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r5, r56, r2
.Ltmp1060:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1061:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r55, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r54, r2
.Ltmp1062:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1063:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1064:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38040, r2
	addc_co_u32 r3, r3, 0
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_139:                               ; %Flow532
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_102
LBB3_140:                               ; %if.then900.11
.Ltmp1065:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1066:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1067:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1068:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1069:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_142
; %bb.141:                              ; %if.then973.11
.Ltmp1070:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1071:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r53, r2
.Ltmp1072:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1073:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r5, r52, r2
.Ltmp1074:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1075:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r51, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r50, r2
.Ltmp1076:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1077:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1078:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38060, r2
	addc_co_u32 r3, r3, 0
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_142:                               ; %Flow531
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_103
LBB3_143:                               ; %if.then900.12
.Ltmp1079:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1080:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1081:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1082:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1083:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_145
; %bb.144:                              ; %if.then973.12
.Ltmp1084:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1085:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r49, r2
.Ltmp1086:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1087:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r5, r48, r2
.Ltmp1088:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1089:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r47, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r46, r2
.Ltmp1090:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1091:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1092:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38080, r2
	addc_co_u32 r3, r3, 0
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_145:                               ; %Flow530
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_146:                               ; %if.then900.13
.Ltmp1093:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1094:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1095:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1096:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1097:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_148
; %bb.147:                              ; %if.then973.13
.Ltmp1098:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1099:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r45, r2
.Ltmp1100:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1101:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r5, r44, r2
.Ltmp1102:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1103:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r43, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r42, r2
.Ltmp1104:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1105:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1106:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x380a0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_148:                               ; %Flow529
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_105
LBB3_149:                               ; %if.then900.14
.Ltmp1107:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1108:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1109:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1110:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1111:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_151
; %bb.150:                              ; %if.then973.14
.Ltmp1112:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1113:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r41, r2
.Ltmp1114:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1115:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r5, r40, r2
.Ltmp1116:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1117:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r39, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r38, r2
.Ltmp1118:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1119:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1120:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x380c0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_151:                               ; %Flow528
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 407 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:407:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_106
LBB3_152:                               ; %if.then900.15
.Ltmp1121:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp1122:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp1123:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp1124:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp1125:
	.loc	2 419 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:419:11
	snop 0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_106
; %bb.153:                              ; %if.then973.15
.Ltmp1126:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1127:
	.loc	2 415 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:415:24
	mul_f32 r3, r37, r2
.Ltmp1128:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1129:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	mul_f32 r4, r36, r2
.Ltmp1130:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp1131:
	.loc	2 414 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:414:24
	shl_b32 r3, 16, r3
	.loc	2 418 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	.loc	2 413 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:413:24
	mul_f32 r3, r35, r2
	.loc	2 412 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:412:24
	mul_f32 r2, r34, r2
.Ltmp1132:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1133:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1134:
	.loc	2 418 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:418:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	.loc	2 421 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:28
	shl_b64 r2, 1, r6
	add_co_u32 r0, r0, r2
	addc_co_u32 r1, r1, r3
	add_co_u32 r0, 0x380e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 421 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:421:461
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 426 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp:426:1
	snop 2
	endk
.Ltmp1135:
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
	.byte	5                               ; DW_FORM_data2
	.byte	87                              ; DW_AT_call_column
	.byte	11                              ; DW_FORM_data1
	.byte	0                               ; EOM(1)
	.byte	0                               ; EOM(2)
	.byte	8                               ; Abbreviation Code
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
	.byte	11                              ; DW_FORM_data1
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
	.byte	1                               ; Abbrev [1] 0xb:0x46e DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x5a:0x261 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x6b:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	43                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x7f:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x94:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	60                              ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xa8:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0xbd:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	77                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xd1:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xe6:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp11                         ; DW_AT_low_pc
	.long	.Ltmp12-.Ltmp11                 ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	21                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xfa:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	137                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x106:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x113:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x120:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x12f:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	138                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x13b:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x148:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x155:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x164:0xc DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	124                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x170:0xc DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	123                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x17c:0xc DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	122                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x188:0xc DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	121                             ; DW_AT_call_line
	.byte	21                              ; DW_AT_call_column
	.byte	4                               ; Abbrev [4] 0x194:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp445                        ; DW_AT_low_pc
	.long	.Ltmp446-.Ltmp445               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	152                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1a8:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp445                        ; DW_AT_low_pc
	.long	.Ltmp446-.Ltmp445               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1bd:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp447                        ; DW_AT_low_pc
	.long	.Ltmp448-.Ltmp447               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	169                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1d1:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp447                        ; DW_AT_low_pc
	.long	.Ltmp448-.Ltmp447               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1e6:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp449                        ; DW_AT_low_pc
	.long	.Ltmp450-.Ltmp449               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	186                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1fa:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp449                        ; DW_AT_low_pc
	.long	.Ltmp450-.Ltmp449               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x20f:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp451                        ; DW_AT_low_pc
	.long	.Ltmp452-.Ltmp451               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	203                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x223:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp451                        ; DW_AT_low_pc
	.long	.Ltmp452-.Ltmp451               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x238:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	242                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x244:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x251:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x25e:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x26d:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	243                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x279:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x286:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x293:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	9                               ; Abbrev [9] 0x2a2:0xc DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	237                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x2ae:0xc DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	236                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x2bb:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2c1:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x2c7:0x1b1 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	10                              ; Abbrev [10] 0x2d8:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp679                        ; DW_AT_low_pc
	.long	.Ltmp680-.Ltmp679               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	293                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2ed:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp679                        ; DW_AT_low_pc
	.long	.Ltmp680-.Ltmp679               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x302:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp681                        ; DW_AT_low_pc
	.long	.Ltmp682-.Ltmp681               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	324                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x317:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp681                        ; DW_AT_low_pc
	.long	.Ltmp682-.Ltmp681               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x32c:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp683                        ; DW_AT_low_pc
	.long	.Ltmp684-.Ltmp683               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	341                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x341:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp683                        ; DW_AT_low_pc
	.long	.Ltmp684-.Ltmp683               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	11                              ; Abbrev [11] 0x356:0x15 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp685                        ; DW_AT_low_pc
	.long	.Ltmp686-.Ltmp685               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	266                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x36b:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	395                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x378:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x385:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x392:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x3a1:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	396                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3ae:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3bb:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3c8:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x3d7:0x1a DW_TAG_inlined_subroutine
	.long	705                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	390                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3e4:0xc DW_TAG_inlined_subroutine
	.long	699                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x3f1:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	416                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x3fe:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x40b:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x418:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x427:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	417                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x434:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x441:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x44e:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x45d:0x1a DW_TAG_inlined_subroutine
	.long	705                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges40                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	411                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x46a:0xc DW_TAG_inlined_subroutine
	.long	699                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges41                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges
.Ldebug_ranges0:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp119-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp308-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp245-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp266-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp287-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp182-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp516-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	.Ltmp515-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp517-.Lfunc_begin0
	.quad	.Ltmp518-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
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
.Ldebug_ranges23:
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
.Ldebug_ranges24:
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
.Ldebug_ranges25:
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
.Ldebug_ranges26:
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
.Ldebug_ranges27:
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
.Ldebug_ranges28:
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
.Ldebug_ranges29:
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
.Ldebug_ranges30:
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
.Ldebug_ranges31:
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
.Ldebug_ranges32:
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp924-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp938-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp950-.Lfunc_begin0
	.quad	.Ltmp952-.Lfunc_begin0
	.quad	.Ltmp953-.Lfunc_begin0
	.quad	.Ltmp955-.Lfunc_begin0
	.quad	.Ltmp964-.Lfunc_begin0
	.quad	.Ltmp966-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.quad	.Ltmp969-.Lfunc_begin0
	.quad	.Ltmp978-.Lfunc_begin0
	.quad	.Ltmp980-.Lfunc_begin0
	.quad	.Ltmp981-.Lfunc_begin0
	.quad	.Ltmp983-.Lfunc_begin0
	.quad	.Ltmp992-.Lfunc_begin0
	.quad	.Ltmp994-.Lfunc_begin0
	.quad	.Ltmp995-.Lfunc_begin0
	.quad	.Ltmp997-.Lfunc_begin0
	.quad	.Ltmp1006-.Lfunc_begin0
	.quad	.Ltmp1008-.Lfunc_begin0
	.quad	.Ltmp1009-.Lfunc_begin0
	.quad	.Ltmp1011-.Lfunc_begin0
	.quad	.Ltmp1020-.Lfunc_begin0
	.quad	.Ltmp1022-.Lfunc_begin0
	.quad	.Ltmp1023-.Lfunc_begin0
	.quad	.Ltmp1025-.Lfunc_begin0
	.quad	.Ltmp1034-.Lfunc_begin0
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1037-.Lfunc_begin0
	.quad	.Ltmp1039-.Lfunc_begin0
	.quad	.Ltmp1048-.Lfunc_begin0
	.quad	.Ltmp1050-.Lfunc_begin0
	.quad	.Ltmp1051-.Lfunc_begin0
	.quad	.Ltmp1053-.Lfunc_begin0
	.quad	.Ltmp1062-.Lfunc_begin0
	.quad	.Ltmp1064-.Lfunc_begin0
	.quad	.Ltmp1065-.Lfunc_begin0
	.quad	.Ltmp1067-.Lfunc_begin0
	.quad	.Ltmp1076-.Lfunc_begin0
	.quad	.Ltmp1078-.Lfunc_begin0
	.quad	.Ltmp1079-.Lfunc_begin0
	.quad	.Ltmp1081-.Lfunc_begin0
	.quad	.Ltmp1090-.Lfunc_begin0
	.quad	.Ltmp1092-.Lfunc_begin0
	.quad	.Ltmp1093-.Lfunc_begin0
	.quad	.Ltmp1095-.Lfunc_begin0
	.quad	.Ltmp1104-.Lfunc_begin0
	.quad	.Ltmp1106-.Lfunc_begin0
	.quad	.Ltmp1107-.Lfunc_begin0
	.quad	.Ltmp1109-.Lfunc_begin0
	.quad	.Ltmp1118-.Lfunc_begin0
	.quad	.Ltmp1120-.Lfunc_begin0
	.quad	.Ltmp1121-.Lfunc_begin0
	.quad	.Ltmp1123-.Lfunc_begin0
	.quad	.Ltmp1132-.Lfunc_begin0
	.quad	.Ltmp1134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp924-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp938-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp950-.Lfunc_begin0
	.quad	.Ltmp952-.Lfunc_begin0
	.quad	.Ltmp953-.Lfunc_begin0
	.quad	.Ltmp955-.Lfunc_begin0
	.quad	.Ltmp964-.Lfunc_begin0
	.quad	.Ltmp966-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.quad	.Ltmp969-.Lfunc_begin0
	.quad	.Ltmp978-.Lfunc_begin0
	.quad	.Ltmp980-.Lfunc_begin0
	.quad	.Ltmp981-.Lfunc_begin0
	.quad	.Ltmp983-.Lfunc_begin0
	.quad	.Ltmp992-.Lfunc_begin0
	.quad	.Ltmp994-.Lfunc_begin0
	.quad	.Ltmp995-.Lfunc_begin0
	.quad	.Ltmp997-.Lfunc_begin0
	.quad	.Ltmp1006-.Lfunc_begin0
	.quad	.Ltmp1008-.Lfunc_begin0
	.quad	.Ltmp1009-.Lfunc_begin0
	.quad	.Ltmp1011-.Lfunc_begin0
	.quad	.Ltmp1020-.Lfunc_begin0
	.quad	.Ltmp1022-.Lfunc_begin0
	.quad	.Ltmp1023-.Lfunc_begin0
	.quad	.Ltmp1025-.Lfunc_begin0
	.quad	.Ltmp1034-.Lfunc_begin0
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1037-.Lfunc_begin0
	.quad	.Ltmp1039-.Lfunc_begin0
	.quad	.Ltmp1048-.Lfunc_begin0
	.quad	.Ltmp1050-.Lfunc_begin0
	.quad	.Ltmp1051-.Lfunc_begin0
	.quad	.Ltmp1053-.Lfunc_begin0
	.quad	.Ltmp1062-.Lfunc_begin0
	.quad	.Ltmp1064-.Lfunc_begin0
	.quad	.Ltmp1065-.Lfunc_begin0
	.quad	.Ltmp1067-.Lfunc_begin0
	.quad	.Ltmp1076-.Lfunc_begin0
	.quad	.Ltmp1078-.Lfunc_begin0
	.quad	.Ltmp1079-.Lfunc_begin0
	.quad	.Ltmp1081-.Lfunc_begin0
	.quad	.Ltmp1090-.Lfunc_begin0
	.quad	.Ltmp1092-.Lfunc_begin0
	.quad	.Ltmp1093-.Lfunc_begin0
	.quad	.Ltmp1095-.Lfunc_begin0
	.quad	.Ltmp1104-.Lfunc_begin0
	.quad	.Ltmp1106-.Lfunc_begin0
	.quad	.Ltmp1107-.Lfunc_begin0
	.quad	.Ltmp1109-.Lfunc_begin0
	.quad	.Ltmp1118-.Lfunc_begin0
	.quad	.Ltmp1120-.Lfunc_begin0
	.quad	.Ltmp1121-.Lfunc_begin0
	.quad	.Ltmp1123-.Lfunc_begin0
	.quad	.Ltmp1132-.Lfunc_begin0
	.quad	.Ltmp1134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges34:
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp912-.Lfunc_begin0
	.quad	.Ltmp923-.Lfunc_begin0
	.quad	.Ltmp924-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp926-.Lfunc_begin0
	.quad	.Ltmp937-.Lfunc_begin0
	.quad	.Ltmp938-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp940-.Lfunc_begin0
	.quad	.Ltmp951-.Lfunc_begin0
	.quad	.Ltmp952-.Lfunc_begin0
	.quad	.Ltmp953-.Lfunc_begin0
	.quad	.Ltmp954-.Lfunc_begin0
	.quad	.Ltmp965-.Lfunc_begin0
	.quad	.Ltmp966-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.quad	.Ltmp968-.Lfunc_begin0
	.quad	.Ltmp979-.Lfunc_begin0
	.quad	.Ltmp980-.Lfunc_begin0
	.quad	.Ltmp981-.Lfunc_begin0
	.quad	.Ltmp982-.Lfunc_begin0
	.quad	.Ltmp993-.Lfunc_begin0
	.quad	.Ltmp994-.Lfunc_begin0
	.quad	.Ltmp995-.Lfunc_begin0
	.quad	.Ltmp996-.Lfunc_begin0
	.quad	.Ltmp1007-.Lfunc_begin0
	.quad	.Ltmp1008-.Lfunc_begin0
	.quad	.Ltmp1009-.Lfunc_begin0
	.quad	.Ltmp1010-.Lfunc_begin0
	.quad	.Ltmp1021-.Lfunc_begin0
	.quad	.Ltmp1022-.Lfunc_begin0
	.quad	.Ltmp1023-.Lfunc_begin0
	.quad	.Ltmp1024-.Lfunc_begin0
	.quad	.Ltmp1035-.Lfunc_begin0
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1037-.Lfunc_begin0
	.quad	.Ltmp1038-.Lfunc_begin0
	.quad	.Ltmp1049-.Lfunc_begin0
	.quad	.Ltmp1050-.Lfunc_begin0
	.quad	.Ltmp1051-.Lfunc_begin0
	.quad	.Ltmp1052-.Lfunc_begin0
	.quad	.Ltmp1063-.Lfunc_begin0
	.quad	.Ltmp1064-.Lfunc_begin0
	.quad	.Ltmp1065-.Lfunc_begin0
	.quad	.Ltmp1066-.Lfunc_begin0
	.quad	.Ltmp1077-.Lfunc_begin0
	.quad	.Ltmp1078-.Lfunc_begin0
	.quad	.Ltmp1079-.Lfunc_begin0
	.quad	.Ltmp1080-.Lfunc_begin0
	.quad	.Ltmp1091-.Lfunc_begin0
	.quad	.Ltmp1092-.Lfunc_begin0
	.quad	.Ltmp1093-.Lfunc_begin0
	.quad	.Ltmp1094-.Lfunc_begin0
	.quad	.Ltmp1105-.Lfunc_begin0
	.quad	.Ltmp1106-.Lfunc_begin0
	.quad	.Ltmp1107-.Lfunc_begin0
	.quad	.Ltmp1108-.Lfunc_begin0
	.quad	.Ltmp1119-.Lfunc_begin0
	.quad	.Ltmp1120-.Lfunc_begin0
	.quad	.Ltmp1121-.Lfunc_begin0
	.quad	.Ltmp1122-.Lfunc_begin0
	.quad	.Ltmp1133-.Lfunc_begin0
	.quad	.Ltmp1134-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges35:
	.quad	.Ltmp912-.Lfunc_begin0
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp923-.Lfunc_begin0
	.quad	.Ltmp926-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp937-.Lfunc_begin0
	.quad	.Ltmp940-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp950-.Lfunc_begin0
	.quad	.Ltmp951-.Lfunc_begin0
	.quad	.Ltmp954-.Lfunc_begin0
	.quad	.Ltmp955-.Lfunc_begin0
	.quad	.Ltmp964-.Lfunc_begin0
	.quad	.Ltmp965-.Lfunc_begin0
	.quad	.Ltmp968-.Lfunc_begin0
	.quad	.Ltmp969-.Lfunc_begin0
	.quad	.Ltmp978-.Lfunc_begin0
	.quad	.Ltmp979-.Lfunc_begin0
	.quad	.Ltmp982-.Lfunc_begin0
	.quad	.Ltmp983-.Lfunc_begin0
	.quad	.Ltmp992-.Lfunc_begin0
	.quad	.Ltmp993-.Lfunc_begin0
	.quad	.Ltmp996-.Lfunc_begin0
	.quad	.Ltmp997-.Lfunc_begin0
	.quad	.Ltmp1006-.Lfunc_begin0
	.quad	.Ltmp1007-.Lfunc_begin0
	.quad	.Ltmp1010-.Lfunc_begin0
	.quad	.Ltmp1011-.Lfunc_begin0
	.quad	.Ltmp1020-.Lfunc_begin0
	.quad	.Ltmp1021-.Lfunc_begin0
	.quad	.Ltmp1024-.Lfunc_begin0
	.quad	.Ltmp1025-.Lfunc_begin0
	.quad	.Ltmp1034-.Lfunc_begin0
	.quad	.Ltmp1035-.Lfunc_begin0
	.quad	.Ltmp1038-.Lfunc_begin0
	.quad	.Ltmp1039-.Lfunc_begin0
	.quad	.Ltmp1048-.Lfunc_begin0
	.quad	.Ltmp1049-.Lfunc_begin0
	.quad	.Ltmp1052-.Lfunc_begin0
	.quad	.Ltmp1053-.Lfunc_begin0
	.quad	.Ltmp1062-.Lfunc_begin0
	.quad	.Ltmp1063-.Lfunc_begin0
	.quad	.Ltmp1066-.Lfunc_begin0
	.quad	.Ltmp1067-.Lfunc_begin0
	.quad	.Ltmp1076-.Lfunc_begin0
	.quad	.Ltmp1077-.Lfunc_begin0
	.quad	.Ltmp1080-.Lfunc_begin0
	.quad	.Ltmp1081-.Lfunc_begin0
	.quad	.Ltmp1090-.Lfunc_begin0
	.quad	.Ltmp1091-.Lfunc_begin0
	.quad	.Ltmp1094-.Lfunc_begin0
	.quad	.Ltmp1095-.Lfunc_begin0
	.quad	.Ltmp1104-.Lfunc_begin0
	.quad	.Ltmp1105-.Lfunc_begin0
	.quad	.Ltmp1108-.Lfunc_begin0
	.quad	.Ltmp1109-.Lfunc_begin0
	.quad	.Ltmp1118-.Lfunc_begin0
	.quad	.Ltmp1119-.Lfunc_begin0
	.quad	.Ltmp1122-.Lfunc_begin0
	.quad	.Ltmp1123-.Lfunc_begin0
	.quad	.Ltmp1132-.Lfunc_begin0
	.quad	.Ltmp1133-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges36:
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp918-.Lfunc_begin0
	.quad	.Ltmp919-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp921-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp932-.Lfunc_begin0
	.quad	.Ltmp933-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp935-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp946-.Lfunc_begin0
	.quad	.Ltmp947-.Lfunc_begin0
	.quad	.Ltmp948-.Lfunc_begin0
	.quad	.Ltmp949-.Lfunc_begin0
	.quad	.Ltmp955-.Lfunc_begin0
	.quad	.Ltmp957-.Lfunc_begin0
	.quad	.Ltmp960-.Lfunc_begin0
	.quad	.Ltmp961-.Lfunc_begin0
	.quad	.Ltmp962-.Lfunc_begin0
	.quad	.Ltmp963-.Lfunc_begin0
	.quad	.Ltmp969-.Lfunc_begin0
	.quad	.Ltmp971-.Lfunc_begin0
	.quad	.Ltmp974-.Lfunc_begin0
	.quad	.Ltmp975-.Lfunc_begin0
	.quad	.Ltmp976-.Lfunc_begin0
	.quad	.Ltmp977-.Lfunc_begin0
	.quad	.Ltmp983-.Lfunc_begin0
	.quad	.Ltmp985-.Lfunc_begin0
	.quad	.Ltmp988-.Lfunc_begin0
	.quad	.Ltmp989-.Lfunc_begin0
	.quad	.Ltmp990-.Lfunc_begin0
	.quad	.Ltmp991-.Lfunc_begin0
	.quad	.Ltmp997-.Lfunc_begin0
	.quad	.Ltmp999-.Lfunc_begin0
	.quad	.Ltmp1002-.Lfunc_begin0
	.quad	.Ltmp1003-.Lfunc_begin0
	.quad	.Ltmp1004-.Lfunc_begin0
	.quad	.Ltmp1005-.Lfunc_begin0
	.quad	.Ltmp1011-.Lfunc_begin0
	.quad	.Ltmp1013-.Lfunc_begin0
	.quad	.Ltmp1016-.Lfunc_begin0
	.quad	.Ltmp1017-.Lfunc_begin0
	.quad	.Ltmp1018-.Lfunc_begin0
	.quad	.Ltmp1019-.Lfunc_begin0
	.quad	.Ltmp1025-.Lfunc_begin0
	.quad	.Ltmp1027-.Lfunc_begin0
	.quad	.Ltmp1030-.Lfunc_begin0
	.quad	.Ltmp1031-.Lfunc_begin0
	.quad	.Ltmp1032-.Lfunc_begin0
	.quad	.Ltmp1033-.Lfunc_begin0
	.quad	.Ltmp1039-.Lfunc_begin0
	.quad	.Ltmp1041-.Lfunc_begin0
	.quad	.Ltmp1044-.Lfunc_begin0
	.quad	.Ltmp1045-.Lfunc_begin0
	.quad	.Ltmp1046-.Lfunc_begin0
	.quad	.Ltmp1047-.Lfunc_begin0
	.quad	.Ltmp1053-.Lfunc_begin0
	.quad	.Ltmp1055-.Lfunc_begin0
	.quad	.Ltmp1058-.Lfunc_begin0
	.quad	.Ltmp1059-.Lfunc_begin0
	.quad	.Ltmp1060-.Lfunc_begin0
	.quad	.Ltmp1061-.Lfunc_begin0
	.quad	.Ltmp1067-.Lfunc_begin0
	.quad	.Ltmp1069-.Lfunc_begin0
	.quad	.Ltmp1072-.Lfunc_begin0
	.quad	.Ltmp1073-.Lfunc_begin0
	.quad	.Ltmp1074-.Lfunc_begin0
	.quad	.Ltmp1075-.Lfunc_begin0
	.quad	.Ltmp1081-.Lfunc_begin0
	.quad	.Ltmp1083-.Lfunc_begin0
	.quad	.Ltmp1086-.Lfunc_begin0
	.quad	.Ltmp1087-.Lfunc_begin0
	.quad	.Ltmp1088-.Lfunc_begin0
	.quad	.Ltmp1089-.Lfunc_begin0
	.quad	.Ltmp1095-.Lfunc_begin0
	.quad	.Ltmp1097-.Lfunc_begin0
	.quad	.Ltmp1100-.Lfunc_begin0
	.quad	.Ltmp1101-.Lfunc_begin0
	.quad	.Ltmp1102-.Lfunc_begin0
	.quad	.Ltmp1103-.Lfunc_begin0
	.quad	.Ltmp1109-.Lfunc_begin0
	.quad	.Ltmp1111-.Lfunc_begin0
	.quad	.Ltmp1114-.Lfunc_begin0
	.quad	.Ltmp1115-.Lfunc_begin0
	.quad	.Ltmp1116-.Lfunc_begin0
	.quad	.Ltmp1117-.Lfunc_begin0
	.quad	.Ltmp1123-.Lfunc_begin0
	.quad	.Ltmp1125-.Lfunc_begin0
	.quad	.Ltmp1128-.Lfunc_begin0
	.quad	.Ltmp1129-.Lfunc_begin0
	.quad	.Ltmp1130-.Lfunc_begin0
	.quad	.Ltmp1131-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges37:
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp918-.Lfunc_begin0
	.quad	.Ltmp919-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp921-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp932-.Lfunc_begin0
	.quad	.Ltmp933-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp935-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp946-.Lfunc_begin0
	.quad	.Ltmp947-.Lfunc_begin0
	.quad	.Ltmp948-.Lfunc_begin0
	.quad	.Ltmp949-.Lfunc_begin0
	.quad	.Ltmp955-.Lfunc_begin0
	.quad	.Ltmp957-.Lfunc_begin0
	.quad	.Ltmp960-.Lfunc_begin0
	.quad	.Ltmp961-.Lfunc_begin0
	.quad	.Ltmp962-.Lfunc_begin0
	.quad	.Ltmp963-.Lfunc_begin0
	.quad	.Ltmp969-.Lfunc_begin0
	.quad	.Ltmp971-.Lfunc_begin0
	.quad	.Ltmp974-.Lfunc_begin0
	.quad	.Ltmp975-.Lfunc_begin0
	.quad	.Ltmp976-.Lfunc_begin0
	.quad	.Ltmp977-.Lfunc_begin0
	.quad	.Ltmp983-.Lfunc_begin0
	.quad	.Ltmp985-.Lfunc_begin0
	.quad	.Ltmp988-.Lfunc_begin0
	.quad	.Ltmp989-.Lfunc_begin0
	.quad	.Ltmp990-.Lfunc_begin0
	.quad	.Ltmp991-.Lfunc_begin0
	.quad	.Ltmp997-.Lfunc_begin0
	.quad	.Ltmp999-.Lfunc_begin0
	.quad	.Ltmp1002-.Lfunc_begin0
	.quad	.Ltmp1003-.Lfunc_begin0
	.quad	.Ltmp1004-.Lfunc_begin0
	.quad	.Ltmp1005-.Lfunc_begin0
	.quad	.Ltmp1011-.Lfunc_begin0
	.quad	.Ltmp1013-.Lfunc_begin0
	.quad	.Ltmp1016-.Lfunc_begin0
	.quad	.Ltmp1017-.Lfunc_begin0
	.quad	.Ltmp1018-.Lfunc_begin0
	.quad	.Ltmp1019-.Lfunc_begin0
	.quad	.Ltmp1025-.Lfunc_begin0
	.quad	.Ltmp1027-.Lfunc_begin0
	.quad	.Ltmp1030-.Lfunc_begin0
	.quad	.Ltmp1031-.Lfunc_begin0
	.quad	.Ltmp1032-.Lfunc_begin0
	.quad	.Ltmp1033-.Lfunc_begin0
	.quad	.Ltmp1039-.Lfunc_begin0
	.quad	.Ltmp1041-.Lfunc_begin0
	.quad	.Ltmp1044-.Lfunc_begin0
	.quad	.Ltmp1045-.Lfunc_begin0
	.quad	.Ltmp1046-.Lfunc_begin0
	.quad	.Ltmp1047-.Lfunc_begin0
	.quad	.Ltmp1053-.Lfunc_begin0
	.quad	.Ltmp1055-.Lfunc_begin0
	.quad	.Ltmp1058-.Lfunc_begin0
	.quad	.Ltmp1059-.Lfunc_begin0
	.quad	.Ltmp1060-.Lfunc_begin0
	.quad	.Ltmp1061-.Lfunc_begin0
	.quad	.Ltmp1067-.Lfunc_begin0
	.quad	.Ltmp1069-.Lfunc_begin0
	.quad	.Ltmp1072-.Lfunc_begin0
	.quad	.Ltmp1073-.Lfunc_begin0
	.quad	.Ltmp1074-.Lfunc_begin0
	.quad	.Ltmp1075-.Lfunc_begin0
	.quad	.Ltmp1081-.Lfunc_begin0
	.quad	.Ltmp1083-.Lfunc_begin0
	.quad	.Ltmp1086-.Lfunc_begin0
	.quad	.Ltmp1087-.Lfunc_begin0
	.quad	.Ltmp1088-.Lfunc_begin0
	.quad	.Ltmp1089-.Lfunc_begin0
	.quad	.Ltmp1095-.Lfunc_begin0
	.quad	.Ltmp1097-.Lfunc_begin0
	.quad	.Ltmp1100-.Lfunc_begin0
	.quad	.Ltmp1101-.Lfunc_begin0
	.quad	.Ltmp1102-.Lfunc_begin0
	.quad	.Ltmp1103-.Lfunc_begin0
	.quad	.Ltmp1109-.Lfunc_begin0
	.quad	.Ltmp1111-.Lfunc_begin0
	.quad	.Ltmp1114-.Lfunc_begin0
	.quad	.Ltmp1115-.Lfunc_begin0
	.quad	.Ltmp1116-.Lfunc_begin0
	.quad	.Ltmp1117-.Lfunc_begin0
	.quad	.Ltmp1123-.Lfunc_begin0
	.quad	.Ltmp1125-.Lfunc_begin0
	.quad	.Ltmp1128-.Lfunc_begin0
	.quad	.Ltmp1129-.Lfunc_begin0
	.quad	.Ltmp1130-.Lfunc_begin0
	.quad	.Ltmp1131-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges38:
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp914-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp921-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp928-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp935-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp942-.Lfunc_begin0
	.quad	.Ltmp948-.Lfunc_begin0
	.quad	.Ltmp949-.Lfunc_begin0
	.quad	.Ltmp955-.Lfunc_begin0
	.quad	.Ltmp956-.Lfunc_begin0
	.quad	.Ltmp962-.Lfunc_begin0
	.quad	.Ltmp963-.Lfunc_begin0
	.quad	.Ltmp969-.Lfunc_begin0
	.quad	.Ltmp970-.Lfunc_begin0
	.quad	.Ltmp976-.Lfunc_begin0
	.quad	.Ltmp977-.Lfunc_begin0
	.quad	.Ltmp983-.Lfunc_begin0
	.quad	.Ltmp984-.Lfunc_begin0
	.quad	.Ltmp990-.Lfunc_begin0
	.quad	.Ltmp991-.Lfunc_begin0
	.quad	.Ltmp997-.Lfunc_begin0
	.quad	.Ltmp998-.Lfunc_begin0
	.quad	.Ltmp1004-.Lfunc_begin0
	.quad	.Ltmp1005-.Lfunc_begin0
	.quad	.Ltmp1011-.Lfunc_begin0
	.quad	.Ltmp1012-.Lfunc_begin0
	.quad	.Ltmp1018-.Lfunc_begin0
	.quad	.Ltmp1019-.Lfunc_begin0
	.quad	.Ltmp1025-.Lfunc_begin0
	.quad	.Ltmp1026-.Lfunc_begin0
	.quad	.Ltmp1032-.Lfunc_begin0
	.quad	.Ltmp1033-.Lfunc_begin0
	.quad	.Ltmp1039-.Lfunc_begin0
	.quad	.Ltmp1040-.Lfunc_begin0
	.quad	.Ltmp1046-.Lfunc_begin0
	.quad	.Ltmp1047-.Lfunc_begin0
	.quad	.Ltmp1053-.Lfunc_begin0
	.quad	.Ltmp1054-.Lfunc_begin0
	.quad	.Ltmp1060-.Lfunc_begin0
	.quad	.Ltmp1061-.Lfunc_begin0
	.quad	.Ltmp1067-.Lfunc_begin0
	.quad	.Ltmp1068-.Lfunc_begin0
	.quad	.Ltmp1074-.Lfunc_begin0
	.quad	.Ltmp1075-.Lfunc_begin0
	.quad	.Ltmp1081-.Lfunc_begin0
	.quad	.Ltmp1082-.Lfunc_begin0
	.quad	.Ltmp1088-.Lfunc_begin0
	.quad	.Ltmp1089-.Lfunc_begin0
	.quad	.Ltmp1095-.Lfunc_begin0
	.quad	.Ltmp1096-.Lfunc_begin0
	.quad	.Ltmp1102-.Lfunc_begin0
	.quad	.Ltmp1103-.Lfunc_begin0
	.quad	.Ltmp1109-.Lfunc_begin0
	.quad	.Ltmp1110-.Lfunc_begin0
	.quad	.Ltmp1116-.Lfunc_begin0
	.quad	.Ltmp1117-.Lfunc_begin0
	.quad	.Ltmp1123-.Lfunc_begin0
	.quad	.Ltmp1124-.Lfunc_begin0
	.quad	.Ltmp1130-.Lfunc_begin0
	.quad	.Ltmp1131-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges39:
	.quad	.Ltmp914-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp918-.Lfunc_begin0
	.quad	.Ltmp919-.Lfunc_begin0
	.quad	.Ltmp928-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp932-.Lfunc_begin0
	.quad	.Ltmp933-.Lfunc_begin0
	.quad	.Ltmp942-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp946-.Lfunc_begin0
	.quad	.Ltmp947-.Lfunc_begin0
	.quad	.Ltmp956-.Lfunc_begin0
	.quad	.Ltmp957-.Lfunc_begin0
	.quad	.Ltmp960-.Lfunc_begin0
	.quad	.Ltmp961-.Lfunc_begin0
	.quad	.Ltmp970-.Lfunc_begin0
	.quad	.Ltmp971-.Lfunc_begin0
	.quad	.Ltmp974-.Lfunc_begin0
	.quad	.Ltmp975-.Lfunc_begin0
	.quad	.Ltmp984-.Lfunc_begin0
	.quad	.Ltmp985-.Lfunc_begin0
	.quad	.Ltmp988-.Lfunc_begin0
	.quad	.Ltmp989-.Lfunc_begin0
	.quad	.Ltmp998-.Lfunc_begin0
	.quad	.Ltmp999-.Lfunc_begin0
	.quad	.Ltmp1002-.Lfunc_begin0
	.quad	.Ltmp1003-.Lfunc_begin0
	.quad	.Ltmp1012-.Lfunc_begin0
	.quad	.Ltmp1013-.Lfunc_begin0
	.quad	.Ltmp1016-.Lfunc_begin0
	.quad	.Ltmp1017-.Lfunc_begin0
	.quad	.Ltmp1026-.Lfunc_begin0
	.quad	.Ltmp1027-.Lfunc_begin0
	.quad	.Ltmp1030-.Lfunc_begin0
	.quad	.Ltmp1031-.Lfunc_begin0
	.quad	.Ltmp1040-.Lfunc_begin0
	.quad	.Ltmp1041-.Lfunc_begin0
	.quad	.Ltmp1044-.Lfunc_begin0
	.quad	.Ltmp1045-.Lfunc_begin0
	.quad	.Ltmp1054-.Lfunc_begin0
	.quad	.Ltmp1055-.Lfunc_begin0
	.quad	.Ltmp1058-.Lfunc_begin0
	.quad	.Ltmp1059-.Lfunc_begin0
	.quad	.Ltmp1068-.Lfunc_begin0
	.quad	.Ltmp1069-.Lfunc_begin0
	.quad	.Ltmp1072-.Lfunc_begin0
	.quad	.Ltmp1073-.Lfunc_begin0
	.quad	.Ltmp1082-.Lfunc_begin0
	.quad	.Ltmp1083-.Lfunc_begin0
	.quad	.Ltmp1086-.Lfunc_begin0
	.quad	.Ltmp1087-.Lfunc_begin0
	.quad	.Ltmp1096-.Lfunc_begin0
	.quad	.Ltmp1097-.Lfunc_begin0
	.quad	.Ltmp1100-.Lfunc_begin0
	.quad	.Ltmp1101-.Lfunc_begin0
	.quad	.Ltmp1110-.Lfunc_begin0
	.quad	.Ltmp1111-.Lfunc_begin0
	.quad	.Ltmp1114-.Lfunc_begin0
	.quad	.Ltmp1115-.Lfunc_begin0
	.quad	.Ltmp1124-.Lfunc_begin0
	.quad	.Ltmp1125-.Lfunc_begin0
	.quad	.Ltmp1128-.Lfunc_begin0
	.quad	.Ltmp1129-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges40:
	.quad	.Ltmp916-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp930-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp944-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	.Ltmp958-.Lfunc_begin0
	.quad	.Ltmp959-.Lfunc_begin0
	.quad	.Ltmp972-.Lfunc_begin0
	.quad	.Ltmp973-.Lfunc_begin0
	.quad	.Ltmp986-.Lfunc_begin0
	.quad	.Ltmp987-.Lfunc_begin0
	.quad	.Ltmp1000-.Lfunc_begin0
	.quad	.Ltmp1001-.Lfunc_begin0
	.quad	.Ltmp1014-.Lfunc_begin0
	.quad	.Ltmp1015-.Lfunc_begin0
	.quad	.Ltmp1028-.Lfunc_begin0
	.quad	.Ltmp1029-.Lfunc_begin0
	.quad	.Ltmp1042-.Lfunc_begin0
	.quad	.Ltmp1043-.Lfunc_begin0
	.quad	.Ltmp1056-.Lfunc_begin0
	.quad	.Ltmp1057-.Lfunc_begin0
	.quad	.Ltmp1070-.Lfunc_begin0
	.quad	.Ltmp1071-.Lfunc_begin0
	.quad	.Ltmp1084-.Lfunc_begin0
	.quad	.Ltmp1085-.Lfunc_begin0
	.quad	.Ltmp1098-.Lfunc_begin0
	.quad	.Ltmp1099-.Lfunc_begin0
	.quad	.Ltmp1112-.Lfunc_begin0
	.quad	.Ltmp1113-.Lfunc_begin0
	.quad	.Ltmp1126-.Lfunc_begin0
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges41:
	.quad	.Ltmp916-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp930-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp944-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	.Ltmp958-.Lfunc_begin0
	.quad	.Ltmp959-.Lfunc_begin0
	.quad	.Ltmp972-.Lfunc_begin0
	.quad	.Ltmp973-.Lfunc_begin0
	.quad	.Ltmp986-.Lfunc_begin0
	.quad	.Ltmp987-.Lfunc_begin0
	.quad	.Ltmp1000-.Lfunc_begin0
	.quad	.Ltmp1001-.Lfunc_begin0
	.quad	.Ltmp1014-.Lfunc_begin0
	.quad	.Ltmp1015-.Lfunc_begin0
	.quad	.Ltmp1028-.Lfunc_begin0
	.quad	.Ltmp1029-.Lfunc_begin0
	.quad	.Ltmp1042-.Lfunc_begin0
	.quad	.Ltmp1043-.Lfunc_begin0
	.quad	.Ltmp1056-.Lfunc_begin0
	.quad	.Ltmp1057-.Lfunc_begin0
	.quad	.Ltmp1070-.Lfunc_begin0
	.quad	.Ltmp1071-.Lfunc_begin0
	.quad	.Ltmp1084-.Lfunc_begin0
	.quad	.Ltmp1085-.Lfunc_begin0
	.quad	.Ltmp1098-.Lfunc_begin0
	.quad	.Ltmp1099-.Lfunc_begin0
	.quad	.Ltmp1112-.Lfunc_begin0
	.quad	.Ltmp1113-.Lfunc_begin0
	.quad	.Ltmp1126-.Lfunc_begin0
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_b/v015_candidate_b_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=177
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=198
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=208
.Linfo_string5:
	.asciz	"min"                           ; string offset=222
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=226
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=242
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=260
.Linfo_string9:
	.asciz	"exp2f"                         ; string offset=278
.Linfo_string10:
	.asciz	"__half22float2"                ; string offset=284
.Linfo_string11:
	.asciz	"__half2float"                  ; string offset=299
.Linfo_string12:
	.asciz	"operator float"                ; string offset=312
.Linfo_string13:
	.asciz	"kernel_kernel"                 ; string offset=327
.Linfo_string14:
	.asciz	"kernel_kernel_1"               ; string offset=341
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
    .mtreg_count:    132
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
