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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s16, s0, 0x0
	sshl_b32 s6, 8, s6
	sadd_co_u32 prvt_lo, s2, s6
	saddc_co_u32 prvt_hi, s3, 0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 18 23 prologue_end            ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:18:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	arrive slcnt(0)
	sadd_co_u32 s6, s16, s6
	saddc_co_u32 s7, s17, s7
	ldu_b32 s6, s6, 0x0
	and_b32 r1, 0x3ff, r0
	smul_i32 s17, 0xe0000, s4
	ldu_b256 s8, s0, 0x20
	shl_b32 r3, 3, r1
	smov_b32 s5, 0x1c00
	shr_b32 r0, 3, r1
	mov_b32 r2, s17
	mad_u24 r2, r0, s5, r2
	and_b32 r23, r3, 56
	arrive slcnt(0)
	smul_i32 s24, 0xe00000, s6
	or_b32 r2, r2, r23
	add_u32 r188, r2, s24
	.loc	2 29 498                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:498
	add_u32 r190, 0x38000, r188
	.loc	2 29 377 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:377
	mad_i32 r8, r188, 2, s10
	.loc	2 29 498                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:498
	add_u32 r194, 0xa8000, r188
	.loc	2 29 377                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:377
	mad_i32 r10, r190, 2, s10
	.loc	2 29 498                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:498
	add_u32 r192, 0x70000, r188
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:346
	ldg_b128 r36, r8, 0x0
	ldg_b128 r40, r10, 0x0
	.loc	2 29 377                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:377
	mad_i32 r10, r192, 2, s10
	mad_i32 r12, r194, 2, s10
	.loc	2 18 23 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:18:23
	sashr_i32 s7, 31, s6
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:346
	ldg_b128 r44, r10, 0x0
	ldg_b128 r48, r12, 0x0
	shr_b32 r7, 1, r1
	and_b32 r8, r1, 15
	smov_b32 s0, 0x1e0
	.loc	2 19 24                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:19:24
	sshl_b64 s6, 2, s6
	and_or_b32 r35, r7, s0, r8
	sadd_co_u32 s0, s22, s6
	saddc_co_u32 s1, s23, s7
	.loc	2 20 38                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:20:38
	sshl_b32 s2, 7, s2
	.loc	2 20 47 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:20:47
	sadd_co_u32 s18, s18, s6
	saddc_co_u32 s19, s19, s7
	shr_b32 r9, 6, r1
	.loc	2 20 79                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:20:79
	sadd_co_u32 s6, s20, s6
	mul_u24 r9, 0x38000, r9
	.loc	2 20 47                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:20:47
	ldu_b32 s3, s18, 0x0
	.loc	2 19 24 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:19:24
	ldu_b32 s1, s0, 0x0
	.loc	2 20 79                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:20:79
	saddc_co_u32 s7, s21, s7
	mad_u24 r26, r8, s5, r9
	smov_b32 s33, 0
	shr_b32 r9, 2, r1
	ldu_b32 s0, s6, 0x0
	and_b32 r4, r3, 32
	arrive slcnt(0)
	stp_b32 s33, 0x8, r9                    ; 4-byte Folded Spill
	shr_b32 r9, 5, r1
	add_u32 r5, r4, r1
	mul_u24 r6, r1, 9
	shl_b32 r8, 6, r1
	and_b32 r2, 0x1fc0, r3
	and_b32 r3, r3, 16
	and_b32 r27, r7, 24
	add_shl_u32 r7, r9, r7, 4
	shr_b32 r9, 4, r1
	and_b32 r8, 0x3c0, r8
	add_u32 r3, r3, r1
	and_b32 r6, r6, 8
	add_shl_u32 r9, r9, r1, 3
	and_b32 r7, r7, 16
	and_b32 r5, r5, 32
	and_or_b32 r7, r9, 8, r7
	.loc	2 29 98                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:98
	or_b32 r9, r5, r6
	or_b32 r12, 0xc00, r8
	xor_b32 r30, r4, 32
	and_b32 r3, r3, 16
	.loc	2 29 62 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:62
	or_b32 r5, r2, r5
	.loc	2 21 54 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:21:54
	ssub_co_i32 s1, s1, s2
	.loc	2 20 45                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:20:45
	sadd_co_i32 s2, s3, s2
	or_b32 r13, 0x1000, r8
	or_b32 r14, 0x1400, r8
	or_b32 r15, 0x1800, r8
	or_b32 r16, r7, r4
	or3_b32 r19, r7, r12, r30
	.loc	2 29 268                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:268
	or3_b32 r2, r9, r2, r3
	.loc	2 29 183 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:183
	or3_b32 r28, r5, r3, r6
	.loc	2 20 77 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:20:77
	ssub_co_i32 s16, s2, s0
	shl_add_u32 r6, 1, r19, 0
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:43
	shl_add_u32 r19, 1, r2, 0
	or_b32 r10, 0x400, r8
	or_b32 r11, 0x800, r8
	or_b32 r25, 0x1c00, r8
	or_b32 r8, r7, r8
	or3_b32 r20, r7, r13, r30
	or3_b32 r21, r7, r14, r30
	or3_b32 r22, r7, r15, r30
	or_b32 r12, r16, r12
	or_b32 r13, r16, r13
	or_b32 r31, r16, r14
	or_b32 r32, r16, r15
	shl_add_u32 r2, 1, r28, 0
	sadd_co_u32 s10, 0x80, s10
	shl_add_u32 r15, 1, r12, 0
	shl_add_u32 r14, 1, r13, 0
	shl_add_u32 r13, 1, r31, 0
	shl_add_u32 r12, 1, r32, 0
	or_b32 r29, r8, r4
	shl_add_u32 r4, 1, r21, 0
	shl_add_u32 r5, 1, r20, 0
	shl_add_u32 r3, 1, r22, 0
	add_u32 r20, 0x1000, r2
	.loc	2 29 346 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:346
	add_i32 r31, 0x1000, r2
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:43
	add_u32 r21, 0x2000, r2
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:346
	add_i32 r32, 0x2000, r2
	.loc	2 29 43                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:43
	add_u32 r22, 0x3000, r2
	.loc	2 29 346                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:346
	add_i32 r2, 0x3000, r2
	saddc_co_u32 s11, s11, 0
	.loc	2 31 3 is_stmt 1                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:31:3
	sadd_co_i32 s17, s24, s17
	or3_b32 r17, r7, r10, r30
	or3_b32 r18, r7, r11, r30
	or_b32 r11, r16, r11
	or_b32 r33, r16, r25
	mov_b32 r24, 0x1c00
	or_b32 r10, r16, r10
	shl_add_u32 r16, 1, r11, 0
	shl_add_u32 r11, 1, r33, 0
	add_u32 r33, s16, r35
	mul_hi_i32 r28, s16, r24
	smul_i32 s2, 0x1c00, s16
	add_u32 r24, r33, 16
	or_b32 r34, r8, r30
	shl_add_u32 r8, 1, r18, 0
	shl_add_u32 r18, 1, r29, 0
	mov_b32 r29, s2
	cmp_gt_u32 s6, 0x2380, r33
	cmp_gt_u32 s2, 0x2380, r24
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:0
	shl_b64 r184, 0, 0
	shl_b64 r186, 0, 0
	shl_b64 r180, 0, r184
	shl_b64 r176, 0, r184
	shl_b64 r172, 0, r184
	shl_b64 r168, 0, r184
	shl_b64 r164, 0, r184
	shl_b64 r160, 0, r184
	shl_b64 r154, 0, r184
	shl_b64 r150, 0, r184
	shl_b64 r146, 0, r184
	shl_b64 r142, 0, r184
	.loc	2 29 346 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:29:346
	arrive gvmcnt(4)
	sts_b128 r19, 0x0, r36
	arrive gvmcnt(3)
	sts_b128 r31, 0x0, r40
	shl_b64 r138, 0, r184
	shl_b64 r134, 0, r184
	shl_b64 r130, 0, r184
	arrive gvmcnt(2)
	sts_b128 r32, 0x0, r44
	arrive gvmcnt(1)
	sts_b128 r2, 0x0, r48
	or3_b32 r2, r7, r25, r30
	shl_add_u32 r7, 1, r2, 0
	.loc	2 31 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:31:3
	mov_b32 r2, s17
	mad_u24 r0, r0, s5, r2
	or_b32 r23, r0, r23
	mov_b32 r0, 0x3800
	smul_i32 s5, 0x3800, s16
	mul_hi_i32 r25, s16, r0
	mov_b32 r0, s5
	and_or_b32 r24, r1, 48, r0
	mad_u32 r24, r26, 2, r24
	shl_b64 r126, 0, r184
	shl_b64 r122, 0, r184
	add_co_u32 r24, s8, r24
	mov_b32 r0, s9
	shl_add_u32 r9, 1, r17, 0
	shl_add_u32 r17, 1, r10, 0
	shl_add_u32 r10, 1, r34, 0
	addc_co_u32 r25, r0, r25
	smov_b64 s18, 0
	mov_b32 r30, r23
	shl_b64 r182, 0, r186
	shl_b64 r178, 0, r186
	shl_b64 r174, 0, r186
	shl_b64 r170, 0, r186
	shl_b64 r166, 0, r186
	shl_b64 r162, 0, r186
	shl_b64 r156, 0, r186
	shl_b64 r152, 0, r186
	shl_b64 r148, 0, r186
	shl_b64 r144, 0, r186
	shl_b64 r140, 0, r186
	shl_b64 r136, 0, r186
	shl_b64 r132, 0, r186
	shl_b64 r128, 0, r186
	shl_b64 r124, 0, r186
	stp_b32 s33, 0x4, r35                   ; 4-byte Folded Spill
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:3
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
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r48, r18, 0x0
	lds_b128 r52, r17, 0x0
	lds_b128 r56, r16, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r48, r40, r184
	mma_16x16x16f16 r150, r48, r44, r150
	mma_16x16x16f16 r184, r50, r42, r184
	mma_16x16x16f16 r150, r50, r46, r150
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r48, r15, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r180, r52, r40, r180
	mma_16x16x16f16 r146, r52, r44, r146
	mma_16x16x16f16 r180, r54, r42, r180
	mma_16x16x16f16 r146, r54, r46, r146
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r52, r14, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r56, r40, r176
	mma_16x16x16f16 r142, r56, r44, r142
	mma_16x16x16f16 r176, r58, r42, r176
	mma_16x16x16f16 r142, r58, r46, r142
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r56, r13, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r48, r40, r172
	mma_16x16x16f16 r138, r48, r44, r138
	mma_16x16x16f16 r172, r50, r42, r172
	mma_16x16x16f16 r138, r50, r46, r138
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r48, r12, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r52, r40, r168
	mma_16x16x16f16 r134, r52, r44, r134
	mma_16x16x16f16 r168, r54, r42, r168
	mma_16x16x16f16 r134, r54, r46, r134
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r52, r11, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r56, r40, r164
	mma_16x16x16f16 r130, r56, r44, r130
	mma_16x16x16f16 r164, r58, r42, r164
	mma_16x16x16f16 r130, r58, r46, r130
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r56, r10, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r48, r40, r160
	mma_16x16x16f16 r126, r48, r44, r126
	mma_16x16x16f16 r160, r50, r42, r160
	mma_16x16x16f16 r126, r50, r46, r126
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r48, r9, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r52, r40, r154
	mma_16x16x16f16 r122, r52, r44, r122
	mma_16x16x16f16 r154, r54, r42, r154
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r40, r8, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	mma_16x16x16f16 r122, r54, r46, r122
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r44, r6, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r184, r56, r32, r184
	mma_16x16x16f16 r150, r56, r36, r150
	mma_16x16x16f16 r184, r58, r34, r184
	mma_16x16x16f16 r150, r58, r38, r150
	arrive bsmcnt(2)
	mma_16x16x16f16 r180, r48, r32, r180
	mma_16x16x16f16 r146, r48, r36, r146
	mma_16x16x16f16 r180, r50, r34, r180
	mma_16x16x16f16 r146, r50, r38, r146
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r48, r5, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r40, r32, r176
	mma_16x16x16f16 r142, r40, r36, r142
	mma_16x16x16f16 r176, r42, r34, r176
	mma_16x16x16f16 r142, r42, r38, r142
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r40, r4, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r44, r32, r172
	mma_16x16x16f16 r138, r44, r36, r138
	mma_16x16x16f16 r172, r46, r34, r172
	mma_16x16x16f16 r138, r46, r38, r138
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r44, r3, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r48, r32, r168
	mma_16x16x16f16 r134, r48, r36, r134
	mma_16x16x16f16 r168, r50, r34, r168
	mma_16x16x16f16 r134, r50, r38, r134
	.loc	2 46 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:46:50
	lds_b128 r48, r7, 0x0
	.loc	2 52 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:52:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r40, r32, r164
	mma_16x16x16f16 r130, r40, r36, r130
	mma_16x16x16f16 r164, r42, r34, r164
	mma_16x16x16f16 r130, r42, r38, r130
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r44, r32, r160
	mma_16x16x16f16 r126, r44, r36, r126
	mma_16x16x16f16 r160, r46, r34, r160
	mma_16x16x16f16 r126, r46, r38, r126
	arrive bsmcnt(0)
	mma_16x16x16f16 r154, r48, r32, r154
	mma_16x16x16f16 r122, r48, r36, r122
	mma_16x16x16f16 r154, r50, r34, r154
	mma_16x16x16f16 r122, r50, r38, r122
.Ltmp7:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 63 379                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:63:379
	add_u32 r0, 0x38000, r30
	mad_i32 r34, r0, 2, s10
	add_u32 r0, 0x70000, r30
	mad_i32 r40, r0, 2, s10
	add_u32 r0, 0xa8000, r30
	mad_i32 r32, r30, 2, s10
	mad_i32 r42, r0, 2, s10
	.loc	2 31 21                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:31:21
	sadd_co_u32 s18, 0x80, s18
	.loc	2 63 348                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:63:348
	ldg_b128 r36, r32, 0x0
	ldg_b128 r32, r34, 0x0
	ldg_b128 r44, r40, 0x0
	ldg_b128 r40, r42, 0x0
	.loc	2 31 21                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:31:21
	saddc_co_u32 s19, s19, 0
	scmp_eq_u64 0x3780, s18
	add_u32 r30, r30, 64
	.loc	2 63 348                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:63:348
	arrive gvmcnt(3)
	sts_b128 r19, 0x0, r36
	arrive gvmcnt(2)
	sts_b128 r20, 0x0, r32
	arrive gvmcnt(1)
	sts_b128 r21, 0x0, r44
	arrive gvmcnt(0)
	sts_b128 r22, 0x0, r40
	.loc	2 31 3                          ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:31:3
	bra_smsks LBB2_10
LBB2_2:                                 ; %for.cond89.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:3
	shl_b64 r40, 0, 0
	shl_b64 r42, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:36:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:117
	add_co_u32 r32, r24, s18
	mov_b32 r0, s19
	addc_co_u32 r33, r25, r0
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:37:17
	snop 1
	ldg_b128 r40, r32, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r44, 0, 0
	shl_b64 r46, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:36:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:117
	add_co_u32 r0, r24, s18
	mov_b32 r2, s19
	addc_co_u32 r2, r25, r2
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:37:17
	add_co_u32 r32, 0x38000, r0
	addc_co_u32 r33, r2, 0
	snop 1
	ldg_b128 r44, r32, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r32, 0, 0
	shl_b64 r34, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:36:117
	and_xmsk s20, s6
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:117
	add_co_u32 r32, r24, s18
	mov_b32 r0, s19
	addc_co_u32 r33, r25, r0
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:37:17
	snop 1
	ldg_b128 r32, r32, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s20
	shl_b64 r36, 0, 0
	shl_b64 r38, 0, 0
	.loc	2 36 117 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:36:117
	and_xmsk s20, s2
	snop 0
	bra_xmskz LBB2_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:117
	add_co_u32 r0, r24, s18
	mov_b32 r2, s19
	addc_co_u32 r2, r25, r2
	.loc	2 37 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:37:17
	add_co_u32 r36, 0x38040, r0
	addc_co_u32 r37, r2, 0
	snop 1
	ldg_b128 r36, r36, 0x0
	bra LBB2_1
LBB2_10:                                ; %for.cond330.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	or_b32 r0, r26, r27
	add_co_u32 r158, r29, r0
	addc_co_u32 r159, r28, 0
	shl_b64 r34, 0, 0
	shl_b64 r36, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:70:115
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_12
; %bb.11:                               ; %if.then357
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:115
	shl_b64 r26, 1, r158
	add_co_u32 r0, s8, r26
	mov_b32 r2, s9
	addc_co_u32 r2, r2, r27
	add_co_u32 r26, 0x3780, r0
	addc_co_u32 r27, r2, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r34, r26, 0x0
LBB2_12:                                ; %if.end409
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r38, 0, 0
	shl_b64 r40, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:70:115
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then357.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:115
	shl_b64 r26, 1, r158
	add_co_u32 r0, s8, r26
	mov_b32 r2, s9
	addc_co_u32 r2, r2, r27
	add_co_u32 r26, 0x3b780, r0
	addc_co_u32 r27, r2, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r38, r26, 0x0
LBB2_14:                                ; %if.end409.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r26, 0, 0
	shl_b64 r28, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:70:115
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then357.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:115
	shl_b64 r26, 1, r158
	add_co_u32 r0, s8, r26
	mov_b32 r2, s9
	addc_co_u32 r2, r2, r27
	add_co_u32 r26, 0x37c0, r0
	addc_co_u32 r27, r2, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r26, r26, 0x0
LBB2_16:                                ; %if.end409.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r30, 0, 0
	shl_b64 r32, 0, 0
	.loc	2 70 115 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:70:115
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then357.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:115
	shl_b64 r30, 1, r158
	add_co_u32 r0, s8, r30
	mov_b32 r2, s9
	addc_co_u32 r2, r2, r31
	add_co_u32 r30, 0x3b7c0, r0
	addc_co_u32 r31, r2, 0
	.loc	2 71 17 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:71:17
	snop 1
	ldg_b128 r30, r30, 0x0
LBB2_18:                                ; %if.end409.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
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
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r42, r18, 0x0
	lds_b128 r46, r17, 0x0
	lds_b128 r50, r16, 0x0
	mov_b32 r113, 0x42800000
	mov_b32 r114, 0x1f800000
	mov_b32 r110, 0x3f800000
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r184, r42, r34, r184
	smov_b32 s1, 0x3f800000
	mma_16x16x16f16 r150, r42, r38, r150
	mma_16x16x16f16 r184, r44, r36, r184
	mma_16x16x16f16 r150, r44, r40, r150
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r42, r15, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r180, r46, r34, r180
	mma_16x16x16f16 r146, r46, r38, r146
	mma_16x16x16f16 r180, r48, r36, r180
	mma_16x16x16f16 r146, r48, r40, r146
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r46, r14, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r50, r34, r176
	mma_16x16x16f16 r142, r50, r38, r142
	mma_16x16x16f16 r176, r52, r36, r176
	mma_16x16x16f16 r142, r52, r40, r142
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r50, r13, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r42, r34, r172
	mma_16x16x16f16 r138, r42, r38, r138
	mma_16x16x16f16 r172, r44, r36, r172
	mma_16x16x16f16 r138, r44, r40, r138
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r42, r12, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r46, r34, r168
	mma_16x16x16f16 r134, r46, r38, r134
	mma_16x16x16f16 r168, r48, r36, r168
	mma_16x16x16f16 r134, r48, r40, r134
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r46, r11, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r50, r34, r164
	mma_16x16x16f16 r130, r50, r38, r130
	mma_16x16x16f16 r164, r52, r36, r164
	mma_16x16x16f16 r130, r52, r40, r130
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r50, r10, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r160, r42, r34, r160
	mma_16x16x16f16 r126, r42, r38, r126
	mma_16x16x16f16 r160, r44, r36, r160
	mma_16x16x16f16 r126, r44, r40, r126
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r42, r9, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r46, r34, r154
	mma_16x16x16f16 r122, r46, r38, r122
	mma_16x16x16f16 r154, r48, r36, r154
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r34, r8, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r122, r48, r40, r122
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r38, r6, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(3)
	mma_16x16x16f16 r184, r50, r26, r184
	mma_16x16x16f16 r150, r50, r30, r150
	mma_16x16x16f16 r184, r52, r28, r184
	mma_16x16x16f16 r150, r52, r32, r150
	arrive bsmcnt(2)
	mma_16x16x16f16 r180, r42, r26, r180
	mma_16x16x16f16 r146, r42, r30, r146
	mma_16x16x16f16 r180, r44, r28, r180
	mma_16x16x16f16 r146, r44, r32, r146
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r42, r5, 0x0
	.loc	2 116 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	mul_f32 r0, 0xbfb8aa3b, r184
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r2, 0xbfb8aa3b, r185
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r176, r34, r26, r176
.Ltmp11:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r0
.Ltmp12:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r2
.Ltmp13:
	.loc	2 118 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r0, 0xbfb8aa3b, r186
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r142, r34, r30, r142
	mma_16x16x16f16 r176, r36, r28, r176
.Ltmp14:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r2, r114, r110, s10
.Ltmp15:
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r142, r36, r32, r142
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r34, r4, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r172, r38, r26, r172
	mma_16x16x16f16 r138, r38, r30, r138
	mma_16x16x16f16 r172, r40, r28, r172
	mma_16x16x16f16 r138, r40, r32, r138
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r38, r3, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r168, r42, r26, r168
	mma_16x16x16f16 r134, r42, r30, r134
	mma_16x16x16f16 r168, r44, r28, r168
	mma_16x16x16f16 r134, r44, r32, r134
	.loc	2 80 50                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:80:50
	lds_b128 r42, r7, 0x0
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	arrive bsmcnt(2)
	mma_16x16x16f16 r164, r34, r26, r164
	mma_16x16x16f16 r130, r34, r30, r130
	mma_16x16x16f16 r164, r36, r28, r164
	mma_16x16x16f16 r130, r36, r32, r130
	arrive bsmcnt(1)
	mma_16x16x16f16 r160, r38, r26, r160
	mma_16x16x16f16 r126, r38, r30, r126
	mma_16x16x16f16 r160, r40, r28, r160
	mma_16x16x16f16 r126, r40, r32, r126
	arrive bsmcnt(0)
	mma_16x16x16f16 r154, r42, r26, r154
.Ltmp16:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r27, r113, 0, s10
.Ltmp17:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r0
.Ltmp18:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r0, r113, 0, s18
	fmka_f32 r0, r185, 0xbfb8aa3b, r0
.Ltmp19:
	.loc	2 119 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r26, 0xbfb8aa3b, r187
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r122, r42, r30, r122
.Ltmp20:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	stp_b32 s33, 0x10, r0                   ; 4-byte Folded Spill
	csel_b32 r0, r114, r110, s18
.Ltmp21:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp22:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r27, r184, 0xbfb8aa3b, r27
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	stp_b32 s33, 0xc, r0                    ; 4-byte Folded Spill
	csel_b32 r0, r113, 0, s10
	fmka_f32 r0, r186, 0xbfb8aa3b, r0
.Ltmp24:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r27, r27
.Ltmp25:
	.loc	2 86 59 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r154, r44, r28, r154
.Ltmp26:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r0
.Ltmp27:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r28, r113, 0, s18
.Ltmp28:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r26, r114, r110, s10
.Ltmp29:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r2, r2, r27, 0x3f800000
.Ltmp30:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r28, r187, 0xbfb8aa3b, r28
.Ltmp31:
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r0, r26, r0, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r26, r2, r2, s1
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	stp_b32 s33, 0x20, r28                  ; 4-byte Folded Spill
	csel_b32 r28, r114, r110, s18
.Ltmp33:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r27, r26
	.loc	2 86 59                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:86:59
	mma_16x16x16f16 r122, r44, r32, r122
	.loc	2 124 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	stp_b32 s33, 0x1c, r28                  ; 4-byte Folded Spill
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r28, neg(r26), r27, r110
	fmac_f32 r27, r28, r27
	div_scale_f32 r28, s1, r2, s1
	mul_f32 r29, r28, r27
	fma_f32 r30, neg(r26), r29, r28
	fmac_f32 r29, r30, r27
	fmac_f32 r28, neg(r26), r29
	div_fmas_f32 r26, r28, r27, r29
	div_fixup_f32 r2, r26, r2, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r26, r0, r0, s1
	rcp_f32 r27, r26
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r2, r184, r2
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r28, neg(r26), r27, r110
	fmac_f32 r27, r28, r27
	div_scale_f32 r28, s1, r0, s1
	mul_f32 r29, r28, r27
	fma_f32 r30, neg(r26), r29, r28
	fmac_f32 r29, r30, r27
	fmac_f32 r28, neg(r26), r29
	div_fmas_f32 r26, r28, r27, r29
	div_fixup_f32 r0, r26, r0, s1
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r0, r186, r0
	stp_b32 s33, 0x18, r2                   ; 4-byte Folded Spill
.Ltmp34:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 0
	stp_b32 s33, 0x14, r0                   ; 4-byte Folded Spill
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp35:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp36:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp37:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp38:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r0, 0xbfb8aa3b, r180
.Ltmp39:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r0
.Ltmp40:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r0, 0xbfb8aa3b, r181
.Ltmp41:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r0
.Ltmp42:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r2, 0xbfb8aa3b, r182
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r26, 0xbfb8aa3b, r183
.Ltmp43:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r180, 0xbfb8aa3b, r27
	exp_f32 r0, r27
	csel_b32 r27, r114, r110, s10
.Ltmp44:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r2
.Ltmp45:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r2, r113, 0, s18
	fmka_f32 r2, r181, 0xbfb8aa3b, r2
.Ltmp46:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r0, r27, r0, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r27, r0, r0, s1
.Ltmp47:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	stp_b32 s33, 0x28, r2                   ; 4-byte Folded Spill
	csel_b32 r2, r114, r110, s18
.Ltmp48:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp49:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r28, r114, r110, s10
	stp_b32 s33, 0x24, r2                   ; 4-byte Folded Spill
	csel_b32 r2, r113, 0, s10
	fmka_f32 r2, r182, 0xbfb8aa3b, r2
	exp_f32 r26, r2
.Ltmp50:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r114, r110, s18
.Ltmp51:
	.loc	2 126 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r26, r28, r26, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r28, r27
	.loc	2 124 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	stp_b32 s33, 0x30, r29                  ; 4-byte Folded Spill
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r29, neg(r27), r28, r110
	fmac_f32 r28, r29, r28
	div_scale_f32 r29, s1, r0, s1
	mul_f32 r30, r29, r28
	fma_f32 r31, neg(r27), r30, r29
	fmac_f32 r30, r31, r28
	fmac_f32 r29, neg(r27), r30
	div_fmas_f32 r27, r29, r28, r30
	div_fixup_f32 r0, r27, r0, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r27, r26, r26, s1
	rcp_f32 r28, r27
.Ltmp52:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r2, r113, 0, s18
.Ltmp53:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r29, neg(r27), r28, r110
	fmac_f32 r28, r29, r28
	div_scale_f32 r29, s1, r26, s1
	mul_f32 r30, r29, r28
	fma_f32 r31, neg(r27), r30, r29
	fmac_f32 r30, r31, r28
	fmac_f32 r29, neg(r27), r30
	div_fmas_f32 r27, r29, r28, r30
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r0, r180, r0
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_fixup_f32 r26, r27, r26, s1
.Ltmp54:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r2, r183, 0xbfb8aa3b, r2
.Ltmp55:
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	stp_b32 s33, 0x34, r0                   ; 4-byte Folded Spill
	mul_f32 r0, r182, r26
.Ltmp56:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	stp_b32 s33, 0x2c, r0                   ; 4-byte Folded Spill
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp57:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp58:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp59:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp60:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r176
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp62:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r177
.Ltmp63:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp64:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r178
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r179
.Ltmp65:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r176, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp66:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp67:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r0, r177, 0xbfb8aa3b, r27
	csel_b32 r27, r114, r110, s18
.Ltmp68:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp69:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r28, r114, r110, s10
	stp_b32 s33, 0x38, r27                  ; 4-byte Folded Spill
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r178, 0xbfb8aa3b, r27
	exp_f32 r27, r27
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp71:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r30, r179, 0xbfb8aa3b, r30
.Ltmp73:
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	stp_b32 s33, 0x48, r30                  ; 4-byte Folded Spill
	csel_b32 r30, r114, r110, s18
.Ltmp75:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
	.loc	2 124 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	snop 0
	stp_b32 s33, 0x40, r30                  ; 4-byte Folded Spill
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r26, r176, r26
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	stp_b32 s33, 0x44, r26                  ; 4-byte Folded Spill
	mul_f32 r26, r178, r27
.Ltmp76:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	stp_b32 s33, 0x3c, r26                  ; 4-byte Folded Spill
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp77:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp78:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp79:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp80:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r172
.Ltmp81:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp82:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r173
.Ltmp83:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp84:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r174
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r175
.Ltmp85:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r172, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp86:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp87:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r27, r173, 0xbfb8aa3b, r27
.Ltmp88:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	stp_b32 s33, 0x50, r27                  ; 4-byte Folded Spill
	csel_b32 r27, r114, r110, s18
.Ltmp90:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r28, r114, r110, s10
	stp_b32 s33, 0x4c, r27                  ; 4-byte Folded Spill
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r174, 0xbfb8aa3b, r27
	exp_f32 r27, r27
.Ltmp92:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
	fmka_f32 r30, r175, 0xbfb8aa3b, r30
.Ltmp93:
	.loc	2 126 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp94:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	stp_b32 s33, 0x60, r30                  ; 4-byte Folded Spill
	csel_b32 r30, r114, r110, s18
.Ltmp95:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
	.loc	2 124 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	snop 0
	stp_b32 s33, 0x58, r30                  ; 4-byte Folded Spill
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r26, r172, r26
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	stp_b32 s33, 0x5c, r26                  ; 4-byte Folded Spill
	mul_f32 r26, r174, r27
.Ltmp96:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	stp_b32 s33, 0x54, r26                  ; 4-byte Folded Spill
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp97:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp98:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp99:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp100:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r168
.Ltmp101:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp102:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r169
.Ltmp103:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp104:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r170
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r171
.Ltmp105:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r168, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp106:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp107:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r27, r169, 0xbfb8aa3b, r27
.Ltmp108:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
.Ltmp109:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	stp_b32 s33, 0x68, r27                  ; 4-byte Folded Spill
	csel_b32 r27, r114, r110, s18
.Ltmp110:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp111:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r28, r114, r110, s10
	stp_b32 s33, 0x64, r27                  ; 4-byte Folded Spill
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r170, 0xbfb8aa3b, r27
	exp_f32 r27, r27
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
	fmka_f32 r30, r171, 0xbfb8aa3b, r30
.Ltmp113:
	.loc	2 126 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	stp_b32 s33, 0x78, r30                  ; 4-byte Folded Spill
	csel_b32 r30, r114, r110, s18
.Ltmp115:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
	.loc	2 124 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	snop 0
	stp_b32 s33, 0x70, r30                  ; 4-byte Folded Spill
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r26, r168, r26
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	stp_b32 s33, 0x74, r26                  ; 4-byte Folded Spill
	mul_f32 r26, r170, r27
.Ltmp116:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	stp_b32 s33, 0x6c, r26                  ; 4-byte Folded Spill
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp117:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp118:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp119:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp120:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r164
.Ltmp121:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp122:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r165
.Ltmp123:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp124:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r166
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r167
.Ltmp125:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r164, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp126:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r176, r165, 0xbfb8aa3b, r27
	csel_b32 r170, r114, r110, s18
.Ltmp128:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r166, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp130:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp132:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r186, r167, 0xbfb8aa3b, r30
.Ltmp134:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r180, r114, r110, s18
.Ltmp136:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r164, r164, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r166, r166, r27
.Ltmp137:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp138:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp139:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp140:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp141:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r160
.Ltmp142:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp143:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r161
.Ltmp144:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp145:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r162
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r163
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r160, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp147:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r182, r161, 0xbfb8aa3b, r27
	csel_b32 r174, r114, r110, s18
.Ltmp149:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r162, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp151:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp153:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r184, r163, 0xbfb8aa3b, r30
.Ltmp155:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r168, r114, r110, s18
.Ltmp157:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r178, r160, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r160, r162, r27
.Ltmp158:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp159:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp161:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp162:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r154
.Ltmp163:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp164:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r155
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp166:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r156
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r157
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r154, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp168:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r172, r155, 0xbfb8aa3b, r27
	csel_b32 r162, r114, r110, s18
.Ltmp170:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r156, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp172:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp174:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r73, r157, 0xbfb8aa3b, r30
.Ltmp176:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp177:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r71, r114, r110, s18
.Ltmp178:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r72, r154, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r70, r156, r27
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp180:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp182:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp183:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r150
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp185:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r151
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp187:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r152
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r153
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r150, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp189:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r75, r151, 0xbfb8aa3b, r27
	csel_b32 r74, r114, r110, s18
.Ltmp191:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r152, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp193:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp195:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp196:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r79, r153, 0xbfb8aa3b, r30
.Ltmp197:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp198:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r77, r114, r110, s18
.Ltmp199:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r78, r150, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r76, r152, r27
.Ltmp200:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp201:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp202:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp203:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp204:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r146
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp206:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r147
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp208:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r148
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r149
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r146, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp210:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r81, r147, 0xbfb8aa3b, r27
	csel_b32 r80, r114, r110, s18
.Ltmp212:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r148, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp214:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp215:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp216:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp217:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r85, r149, 0xbfb8aa3b, r30
.Ltmp218:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp219:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r83, r114, r110, s18
.Ltmp220:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r84, r146, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r82, r148, r27
.Ltmp221:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp222:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp223:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp224:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp225:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r142
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp227:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r143
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp229:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r144
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r145
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r142, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp231:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r87, r143, 0xbfb8aa3b, r27
	csel_b32 r86, r114, r110, s18
.Ltmp233:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp234:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r144, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp235:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp236:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp237:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp238:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r91, r145, 0xbfb8aa3b, r30
.Ltmp239:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp240:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r89, r114, r110, s18
.Ltmp241:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r90, r142, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r88, r144, r27
.Ltmp242:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp243:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp244:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp245:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp246:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r138
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp248:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r139
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp250:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r140
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r141
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r138, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp252:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp253:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r93, r139, 0xbfb8aa3b, r27
	csel_b32 r92, r114, r110, s18
.Ltmp254:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp255:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r140, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp256:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp257:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp258:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp259:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r97, r141, 0xbfb8aa3b, r30
.Ltmp260:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp261:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r95, r114, r110, s18
.Ltmp262:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r96, r138, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r94, r140, r27
.Ltmp263:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp264:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp265:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp266:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp267:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r134
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp269:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r135
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp271:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r136
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r137
.Ltmp272:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r134, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp273:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp274:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r99, r135, 0xbfb8aa3b, r27
	csel_b32 r98, r114, r110, s18
.Ltmp275:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp276:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r136, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp277:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp278:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp279:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp280:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r103, r137, 0xbfb8aa3b, r30
.Ltmp281:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp282:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r101, r114, r110, s18
.Ltmp283:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r102, r134, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r100, r136, r27
.Ltmp284:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp285:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp286:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp287:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp288:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r130
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp290:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r131
.Ltmp291:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp292:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r132
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r133
.Ltmp293:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r130, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp294:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp295:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r105, r131, 0xbfb8aa3b, r27
	csel_b32 r104, r114, r110, s18
.Ltmp296:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp297:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r132, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp298:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp299:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp300:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp301:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r109, r133, 0xbfb8aa3b, r30
.Ltmp302:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp303:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r107, r114, r110, s18
.Ltmp304:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r108, r130, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r106, r132, r27
.Ltmp305:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp306:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp307:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp308:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp309:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r126
.Ltmp310:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp311:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r127
.Ltmp312:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp313:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r128
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r129
.Ltmp314:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r126, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp315:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp316:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r112, r127, 0xbfb8aa3b, r27
	csel_b32 r111, r114, r110, s18
.Ltmp317:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp318:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r128, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp319:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp320:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp321:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp322:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r118, r129, 0xbfb8aa3b, r30
.Ltmp323:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp324:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r116, r114, r110, s18
.Ltmp325:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r117, r126, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r115, r128, r27
.Ltmp326:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp327:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp328:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp329:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s5, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s5
.Ltmp330:
	.loc	2 116 27 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:116:27
	snop 0
	mul_f32 r26, 0xbfb8aa3b, r122
.Ltmp331:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r26
.Ltmp332:
	.loc	2 117 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:117:27
	mul_f32 r26, 0xbfb8aa3b, r123
.Ltmp333:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r26
.Ltmp334:
	.loc	2 118 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:118:27
	mul_f32 r27, 0xbfb8aa3b, r124
	.loc	2 119 27                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:119:27
	mul_f32 r28, 0xbfb8aa3b, r125
.Ltmp335:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r29, r113, 0, s10
	fmka_f32 r29, r122, 0xbfb8aa3b, r29
	exp_f32 r26, r29
	csel_b32 r29, r114, r110, s10
.Ltmp336:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s10, 0xc2fc0000, r27
.Ltmp337:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s18
	fmka_f32 r120, r123, 0xbfb8aa3b, r27
	csel_b32 r119, r114, r110, s18
.Ltmp338:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s18, 0xc2fc0000, r28
.Ltmp339:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r27, r113, 0, s10
	fmka_f32 r27, r124, 0xbfb8aa3b, r27
	exp_f32 r27, r27
	csel_b32 r28, r114, r110, s10
.Ltmp340:
	.loc	2 124 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:124:26
	fmak_f32 r26, r29, r26, 0x3f800000
	.loc	2 126 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:126:26
	fmak_f32 r27, r28, r27, 0x3f800000
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	div_scale_f32 r28, r26, r26, s1
.Ltmp341:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r30, r113, 0, s18
.Ltmp342:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	rcp_f32 r29, r28
.Ltmp343:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	fmka_f32 r121, r125, 0xbfb8aa3b, r30
.Ltmp344:
	.loc	2 128 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:128:24
	fma_f32 r30, neg(r28), r29, r110
	fmac_f32 r29, r30, r29
	div_scale_f32 r30, s1, r26, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r26, r28, r26, s1
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	div_scale_f32 r28, r27, r27, s1
	rcp_f32 r29, r28
.Ltmp345:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r113, r114, r110, s18
.Ltmp346:
	.loc	2 130 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:130:24
	fmac_f32 r110, neg(r28), r29
	fmac_f32 r29, r110, r29
	div_scale_f32 r30, s1, r27, s1
	mul_f32 r31, r30, r29
	fma_f32 r32, neg(r28), r31, r30
	fmac_f32 r31, r32, r29
	fmac_f32 r30, neg(r28), r31
	div_fmas_f32 r28, r30, r29, r31
	div_fixup_f32 r27, r28, r27, s1
	.loc	2 132 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:132:20
	mul_f32 r114, r122, r26
	.loc	2 134 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:134:20
	mul_f32 r110, r124, r27
.Ltmp347:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp348:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp349:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp350:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp351:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	snop 0
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp352:
	.loc	2 148 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:148:375
	mad_i32 r26, r188, 2, s12
	mad_i32 r28, r190, 2, s12
	mad_i32 r34, r192, 2, s12
	.loc	2 148 346 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:148:346
	ldg_b128 r30, r26, 0x0
	ldg_b128 r26, r28, 0x0
	ldg_b128 r188, r34, 0x0
	.loc	2 148 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:148:375
	mad_i32 r36, r194, 2, s12
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:0
	shl_b64 r248, 0, 0
	sadd_co_u32 s10, 0x80, s12
	.loc	2 148 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:148:346
	ldg_b128 r34, r36, 0x0
	.loc	2 0 0                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:0
	shl_b64 r250, 0, 0
	shl_b64 r244, 0, r248
	shl_b64 r240, 0, r248
	shl_b64 r236, 0, r248
	shl_b64 r232, 0, r248
	shl_b64 r228, 0, r248
	shl_b64 r224, 0, r248
	shl_b64 r220, 0, r248
	shl_b64 r216, 0, r248
	shl_b64 r212, 0, r248
	shl_b64 r208, 0, r248
	shl_b64 r204, 0, r248
	shl_b64 r200, 0, r248
	shl_b64 r196, 0, r248
	shl_b64 r192, 0, r248
	smov_b64 s18, 0
	saddc_co_u32 s11, s13, 0
	shl_b64 r246, 0, r250
	shl_b64 r242, 0, r250
	shl_b64 r238, 0, r250
	shl_b64 r234, 0, r250
	shl_b64 r230, 0, r250
	shl_b64 r226, 0, r250
	shl_b64 r222, 0, r250
	shl_b64 r218, 0, r250
	shl_b64 r214, 0, r250
	shl_b64 r210, 0, r250
	shl_b64 r206, 0, r250
	shl_b64 r202, 0, r250
	shl_b64 r198, 0, r250
	shl_b64 r194, 0, r250
	.loc	2 148 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:148:346
	arrive gvmcnt(3)
	sts_b128 r19, 0x0, r30
	arrive gvmcnt(2)
	sts_b128 r20, 0x0, r26
	arrive gvmcnt(1)
	sts_b128 r21, 0x0, r188
	shl_b64 r188, 0, r248
	shl_b64 r190, 0, r250
	arrive gvmcnt(0)
	sts_b128 r22, 0x0, r34
	bra LBB2_20
	.p2align	5
LBB2_19:                                ; %if.end784.3
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 346                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:346
	sor_b64 xmsk, xmsk, s12
.Ltmp353:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp354:
	.loc	2 165 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:165:52
	lds_b128 r38, r18, 0x0
	lds_b128 r42, r17, 0x0
	lds_b128 r46, r16, 0x0
	lds_b128 r50, r15, 0x0
	.loc	2 171 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:171:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r248, r38, r30, r248
	arrive bsmcnt(2)
	mma_16x16x16f16 r244, r42, r30, r244
	arrive bsmcnt(1)
	mma_16x16x16f16 r240, r46, r30, r240
	arrive bsmcnt(0)
	mma_16x16x16f16 r236, r50, r30, r236
	.loc	2 165 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:165:52
	lds_b128 r54, r14, 0x0
	.loc	2 171 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:171:60
	arrive bsmcnt(0)
	mma_16x16x16f16 r232, r54, r30, r232
	.loc	2 165 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:165:52
	lds_b128 r58, r13, 0x0
	lds_b128 r62, r12, 0x0
	lds_b128 r66, r11, 0x0
	.loc	2 171 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:171:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r228, r58, r30, r228
	arrive bsmcnt(1)
	mma_16x16x16f16 r224, r62, r30, r224
	arrive bsmcnt(0)
	mma_16x16x16f16 r220, r66, r30, r220
	mma_16x16x16f16 r216, r38, r34, r216
	mma_16x16x16f16 r212, r42, r34, r212
	mma_16x16x16f16 r208, r46, r34, r208
	mma_16x16x16f16 r204, r50, r34, r204
	mma_16x16x16f16 r200, r54, r34, r200
	mma_16x16x16f16 r196, r58, r34, r196
	mma_16x16x16f16 r192, r62, r34, r192
	mma_16x16x16f16 r188, r66, r34, r188
	mma_16x16x16f16 r248, r40, r32, r248
	mma_16x16x16f16 r244, r44, r32, r244
	mma_16x16x16f16 r240, r48, r32, r240
	mma_16x16x16f16 r236, r52, r32, r236
	mma_16x16x16f16 r232, r56, r32, r232
	mma_16x16x16f16 r228, r60, r32, r228
	mma_16x16x16f16 r224, r64, r32, r224
	mma_16x16x16f16 r220, r68, r32, r220
	.loc	2 165 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:165:52
	lds_b128 r30, r10, 0x0
	.loc	2 171 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:171:60
	mma_16x16x16f16 r216, r40, r36, r216
	mma_16x16x16f16 r212, r44, r36, r212
	mma_16x16x16f16 r208, r48, r36, r208
	mma_16x16x16f16 r204, r52, r36, r204
	mma_16x16x16f16 r200, r56, r36, r200
	mma_16x16x16f16 r196, r60, r36, r196
	mma_16x16x16f16 r192, r64, r36, r192
	mma_16x16x16f16 r188, r68, r36, r188
	.loc	2 165 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:165:52
	lds_b128 r34, r9, 0x0
	lds_b128 r38, r8, 0x0
	lds_b128 r42, r6, 0x0
	.loc	2 171 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:171:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r248, r30, r252, r248
	.loc	2 165 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:165:52
	lds_b128 r46, r5, 0x0
	.loc	2 171 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:171:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r244, r34, r252, r244
	arrive bsmcnt(2)
	mma_16x16x16f16 r240, r38, r252, r240
	arrive bsmcnt(1)
	mma_16x16x16f16 r236, r42, r252, r236
	arrive bsmcnt(0)
	mma_16x16x16f16 r232, r46, r252, r232
	.loc	2 165 52                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:165:52
	lds_b128 r50, r4, 0x0
	lds_b128 r54, r3, 0x0
	lds_b128 r58, r7, 0x0
	.loc	2 171 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:171:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r228, r50, r252, r228
	arrive bsmcnt(1)
	mma_16x16x16f16 r224, r54, r252, r224
	arrive bsmcnt(0)
	mma_16x16x16f16 r220, r58, r252, r220
	mma_16x16x16f16 r216, r30, r26, r216
	mma_16x16x16f16 r212, r34, r26, r212
	mma_16x16x16f16 r208, r38, r26, r208
	mma_16x16x16f16 r204, r42, r26, r204
	mma_16x16x16f16 r200, r46, r26, r200
	mma_16x16x16f16 r196, r50, r26, r196
	mma_16x16x16f16 r192, r54, r26, r192
	mma_16x16x16f16 r188, r58, r26, r188
	mma_16x16x16f16 r248, r32, r254, r248
	mma_16x16x16f16 r244, r36, r254, r244
	mma_16x16x16f16 r240, r40, r254, r240
	mma_16x16x16f16 r236, r44, r254, r236
	mma_16x16x16f16 r232, r48, r254, r232
	mma_16x16x16f16 r228, r52, r254, r228
	mma_16x16x16f16 r224, r56, r254, r224
	mma_16x16x16f16 r220, r60, r254, r220
	mma_16x16x16f16 r216, r32, r28, r216
	mma_16x16x16f16 r212, r36, r28, r212
	mma_16x16x16f16 r208, r40, r28, r208
	mma_16x16x16f16 r204, r44, r28, r204
	mma_16x16x16f16 r200, r48, r28, r200
	mma_16x16x16f16 r196, r52, r28, r196
	mma_16x16x16f16 r192, r56, r28, r192
	mma_16x16x16f16 r188, r60, r28, r188
.Ltmp355:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp356:
	.loc	2 182 378                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:182:378
	add_u32 r26, 0x38000, r23
	mad_i32 r28, r23, 2, s10
	mad_i32 r26, r26, 2, s10
	.loc	2 150 25                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:150:25
	sadd_co_u32 s18, 0x80, s18
	.loc	2 182 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:182:349
	ldg_b128 r28, r28, 0x0
	ldg_b128 r32, r26, 0x0
	.loc	2 182 378 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:182:378
	add_u32 r26, 0x70000, r23
	mad_i32 r36, r26, 2, s10
	add_u32 r26, 0xa8000, r23
	mad_i32 r26, r26, 2, s10
	.loc	2 182 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:182:349
	ldg_b128 r36, r36, 0x0
	.loc	2 150 25 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:150:25
	saddc_co_u32 s19, s19, 0
	.loc	2 182 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:182:349
	ldg_b128 r40, r26, 0x0
	.loc	2 150 25                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:150:25
	scmp_eq_u64 0x3780, s18
	add_u32 r23, r23, 64
	.loc	2 182 349                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:182:349
	arrive gvmcnt(3)
	sts_b128 r19, 0x0, r28
	arrive gvmcnt(2)
	sts_b128 r20, 0x0, r32
	arrive gvmcnt(1)
	sts_b128 r21, 0x0, r36
	arrive gvmcnt(0)
	sts_b128 r22, 0x0, r40
	.loc	2 150 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:150:3
	bra_smsks LBB2_28
LBB2_20:                                ; %for.cond703.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:3
	shl_b64 r30, 0, 0
	shl_b64 r32, 0, 0
	.loc	2 155 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:155:118
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB2_22
; %bb.21:                               ; %if.then730
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:118
	add_co_u32 r28, r24, s18
	mov_b32 r26, s19
	addc_co_u32 r29, r25, r26
	.loc	2 156 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:156:19
	snop 1
	ldg_b128 r30, r28, 0x0
LBB2_22:                                ; %if.end784
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r34, 0, 0
	shl_b64 r36, 0, 0
	.loc	2 155 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:155:118
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB2_24
; %bb.23:                               ; %if.then730.1
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:118
	add_co_u32 r26, r24, s18
	mov_b32 r27, s19
	addc_co_u32 r27, r25, r27
	.loc	2 156 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:156:19
	add_co_u32 r26, 0x38000, r26
	addc_co_u32 r27, r27, 0
	snop 1
	ldg_b128 r34, r26, 0x0
LBB2_24:                                ; %if.end784.1
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r252, 0, 0
	shl_b64 r254, 0, 0
	.loc	2 155 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:155:118
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB2_26
; %bb.25:                               ; %if.then730.2
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:118
	add_co_u32 r28, r24, s18
	mov_b32 r26, s19
	addc_co_u32 r29, r25, r26
	.loc	2 156 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:156:19
	snop 1
	ldg_b128 r252, r28, 0x40
LBB2_26:                                ; %if.end784.2
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s12
	shl_b64 r26, 0, 0
	shl_b64 r28, 0, 0
	.loc	2 155 118 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:155:118
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB2_19
; %bb.27:                               ; %if.then730.3
                                        ;   in Loop: Header=BB2_20 Depth=1
	.loc	2 0 118 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:118
	add_co_u32 r26, r24, s18
	mov_b32 r27, s19
	addc_co_u32 r27, r25, r27
	.loc	2 156 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:156:19
	add_co_u32 r26, 0x38040, r26
	addc_co_u32 r27, r27, 0
	snop 1
	ldg_b128 r26, r26, 0x0
	bra LBB2_19
LBB2_28:                                ; %for.cond951.preheader
.Ltmp357:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	ldp_b32 r19, s33, 0x10                  ; 4-byte Folded Reload
.Ltmp358:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	ldp_b32 r21, s33, 0xc                   ; 4-byte Folded Reload
.Ltmp359:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	ldp_b32 r20, s33, 0x20                  ; 4-byte Folded Reload
	smov_b32 s1, 0x3f800000
.Ltmp360:
	.loc	4 285 49 is_stmt 0              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r0
.Ltmp361:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r57_lo, r164
.Ltmp362:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r61_lo, r166
.Ltmp363:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r53_lo, r178
.Ltmp364:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r58_lo, r160
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r50_lo, r72
.Ltmp366:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r54_lo, r70
.Ltmp367:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r46_lo, r78
.Ltmp368:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r49_lo, r76
.Ltmp369:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r42_lo, r84
.Ltmp370:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r45_lo, r82
.Ltmp371:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r38_lo, r90
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r41_lo, r88
.Ltmp373:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r34_lo, r96
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r37_lo, r94
.Ltmp375:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r30_lo, r102
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r33_lo, r100
	cvt_f32tof16 r29_lo, r106
.Ltmp377:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	arrive gvmcnt(2)
	exp_f32 r19, r19
.Ltmp378:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	arrive gvmcnt(1)
	fmak_f32 r21, r21, r19, 0x3f800000
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	ldp_b32 r19, s33, 0x1c                  ; 4-byte Folded Reload
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r22, r21, r21, s1
	rcp_f32 r23, r22
.Ltmp379:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	arrive gvmcnt(1)
	exp_f32 r20, r20
.Ltmp380:
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	arrive gvmcnt(0)
	fmak_f32 r20, r19, r20, 0x3f800000
	mov_b32 r19, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r24, neg(r22), r23, r19
	fmac_f32 r23, r24, r23
	div_scale_f32 r24, s1, r21, s1
	mul_f32 r25, r24, r23
	fma_f32 r26, neg(r22), r25, r24
	fmac_f32 r25, r26, r23
	fmac_f32 r24, neg(r22), r25
	div_fmas_f32 r22, r24, r23, r25
	div_fixup_f32 r21, r22, r21, s1
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r21, r185, r21
.Ltmp381:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r156_lo, r21
.Ltmp382:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r21, s33, 0x14                  ; 4-byte Folded Reload
.Ltmp383:
	.loc	2 131 24 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r22, r20, r20, s1
	rcp_f32 r23, r22
	snop 0
	fma_f32 r24, neg(r22), r23, r19
	fmac_f32 r23, r24, r23
	div_scale_f32 r24, s1, r20, s1
	mul_f32 r25, r24, r23
	fma_f32 r26, neg(r22), r25, r24
	fmac_f32 r25, r26, r23
	fmac_f32 r24, neg(r22), r25
	div_fmas_f32 r22, r24, r23, r25
	div_fixup_f32 r20, r22, r20, s1
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r20, r187, r20
.Ltmp384:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r185_lo, r20
.Ltmp385:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	ldp_b32 r20, s33, 0x28                  ; 4-byte Folded Reload
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r22, s33, 0x18                  ; 4-byte Folded Reload
	cvt_f32tof16 r26_lo, r108
.Ltmp387:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	arrive gvmcnt(2)
	cvt_f32tof16 r187_lo, r21
.Ltmp388:
	.loc	4 285 49 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r21, r2
.Ltmp389:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	ldp_b32 r2, s33, 0x24                   ; 4-byte Folded Reload
.Ltmp390:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	arrive gvmcnt(2)
	exp_f32 r20, r20
.Ltmp391:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	arrive gvmcnt(0)
	fmak_f32 r20, r2, r20, 0x3f800000
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	ldp_b32 r2, s33, 0x30                   ; 4-byte Folded Reload
	arrive gvmcnt(0)
	fmak_f32 r2, r2, r21, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r21, r20, r20, s1
.Ltmp392:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r152_lo, r22
.Ltmp393:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	rcp_f32 r22, r21
	snop 0
	fma_f32 r23, neg(r21), r22, r19
	fmac_f32 r22, r23, r22
	div_scale_f32 r23, s1, r20, s1
	mul_f32 r24, r23, r22
	fma_f32 r25, neg(r21), r24, r23
	fmac_f32 r24, r25, r22
	fmac_f32 r23, neg(r21), r24
	div_fmas_f32 r21, r23, r22, r24
	div_fixup_f32 r20, r21, r20, s1
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r20, r181, r20
.Ltmp394:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r148_lo, r20
.Ltmp395:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r20, s33, 0x2c                  ; 4-byte Folded Reload
.Ltmp396:
	.loc	2 131 24 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r21, r2, r2, s1
	rcp_f32 r22, r21
.Ltmp397:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	arrive gvmcnt(0)
	cvt_f32tof16 r154_lo, r20
.Ltmp398:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	ldp_b32 r20, s33, 0x38                  ; 4-byte Folded Reload
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r23, neg(r21), r22, r19
	fmac_f32 r22, r23, r22
	div_scale_f32 r23, s1, r2, s1
	mul_f32 r24, r23, r22
	fma_f32 r25, neg(r21), r24, r23
	fmac_f32 r24, r25, r22
	fmac_f32 r23, neg(r21), r24
	div_fmas_f32 r21, r23, r22, r24
	div_fixup_f32 r2, r21, r2, s1
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r183, r2
.Ltmp399:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r181_lo, r2
.Ltmp400:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	ldp_b32 r2, s33, 0x48                   ; 4-byte Folded Reload
.Ltmp401:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r21, s33, 0x34                  ; 4-byte Folded Reload
.Ltmp402:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r25_lo, r115
.Ltmp403:
	.loc	2 125 26 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	arrive gvmcnt(2)
	fmak_f32 r0, r20, r0, 0x3f800000
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	ldp_b32 r20, s33, 0x40                  ; 4-byte Folded Reload
.Ltmp404:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	arrive gvmcnt(2)
	exp_f32 r2, r2
.Ltmp405:
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	arrive gvmcnt(0)
	fmak_f32 r2, r20, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
.Ltmp406:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r144_lo, r21
.Ltmp407:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	rcp_f32 r21, r20
	snop 0
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
	div_fmas_f32 r20, r22, r21, r23
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r177, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
	div_fmas_f32 r20, r22, r21, r23
.Ltmp408:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r140_lo, r0
.Ltmp409:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r0, s33, 0x3c                   ; 4-byte Folded Reload
.Ltmp410:
	.loc	2 131 24 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
.Ltmp411:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r20, s33, 0x44                  ; 4-byte Folded Reload
.Ltmp412:
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r179, r2
.Ltmp413:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r150_lo, r2
.Ltmp414:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	ldp_b32 r2, s33, 0x60                   ; 4-byte Folded Reload
.Ltmp415:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	arrive gvmcnt(2)
	cvt_f32tof16 r146_lo, r0
.Ltmp416:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	ldp_b32 r0, s33, 0x50                   ; 4-byte Folded Reload
.Ltmp417:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	arrive gvmcnt(2)
	cvt_f32tof16 r136_lo, r20
.Ltmp418:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	ldp_b32 r20, s33, 0x4c                  ; 4-byte Folded Reload
.Ltmp419:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	arrive gvmcnt(1)
	exp_f32 r0, r0
.Ltmp420:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	arrive gvmcnt(0)
	fmak_f32 r0, r20, r0, 0x3f800000
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	ldp_b32 r20, s33, 0x58                  ; 4-byte Folded Reload
.Ltmp421:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r2
.Ltmp422:
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	arrive gvmcnt(0)
	fmak_f32 r2, r20, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	snop 0
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
	div_fmas_f32 r20, r22, r21, r23
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r173, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
	div_fmas_f32 r20, r22, r21, r23
.Ltmp423:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r132_lo, r0
.Ltmp424:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r0, s33, 0x54                   ; 4-byte Folded Reload
.Ltmp425:
	.loc	2 131 24 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
.Ltmp426:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r20, s33, 0x5c                  ; 4-byte Folded Reload
.Ltmp427:
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r175, r2
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r142_lo, r2
.Ltmp429:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	ldp_b32 r2, s33, 0x78                   ; 4-byte Folded Reload
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	arrive gvmcnt(2)
	cvt_f32tof16 r138_lo, r0
.Ltmp431:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	ldp_b32 r0, s33, 0x68                   ; 4-byte Folded Reload
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	arrive gvmcnt(2)
	cvt_f32tof16 r128_lo, r20
.Ltmp433:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	ldp_b32 r20, s33, 0x64                  ; 4-byte Folded Reload
.Ltmp434:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	arrive gvmcnt(1)
	exp_f32 r0, r0
.Ltmp435:
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	arrive gvmcnt(0)
	fmak_f32 r0, r20, r0, 0x3f800000
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	ldp_b32 r20, s33, 0x70                  ; 4-byte Folded Reload
.Ltmp436:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r2
.Ltmp437:
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	arrive gvmcnt(0)
	fmak_f32 r2, r20, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	snop 0
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
	div_fmas_f32 r20, r22, r21, r23
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r169, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp438:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r124_lo, r0
.Ltmp439:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r0, s33, 0x6c                   ; 4-byte Folded Reload
.Ltmp440:
	.loc	2 131 24 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	div_fixup_f32 r2, r20, r2, s1
.Ltmp441:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	ldp_b32 r20, s33, 0x74                  ; 4-byte Folded Reload
.Ltmp442:
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r171, r2
.Ltmp443:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r134_lo, r2
.Ltmp444:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r186
.Ltmp445:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	arrive gvmcnt(1)
	cvt_f32tof16 r130_lo, r0
.Ltmp446:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r176
.Ltmp447:
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r180, r2, 0x3f800000
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r170, r0, 0x3f800000
.Ltmp448:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	arrive gvmcnt(0)
	cvt_f32tof16 r122_lo, r20
.Ltmp449:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	snop 0
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
	div_fmas_f32 r20, r22, r21, r23
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r165, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp450:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r59_lo, r0
.Ltmp451:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r182
.Ltmp452:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r174, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r167, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp453:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r126_lo, r2
.Ltmp454:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r184
.Ltmp455:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r168, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r161, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r55_lo, r0
.Ltmp457:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r172
.Ltmp458:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r162, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r163, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp459:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r60_lo, r2
.Ltmp460:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r73
.Ltmp461:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r71, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r155, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp462:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r52_lo, r0
.Ltmp463:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r75
.Ltmp464:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r74, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r157, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp465:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r56_lo, r2
.Ltmp466:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r79
.Ltmp467:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r77, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r151, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp468:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r48_lo, r0
.Ltmp469:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r81
.Ltmp470:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r80, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r153, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp471:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r51_lo, r2
.Ltmp472:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r85
.Ltmp473:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r83, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r147, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r44_lo, r0
.Ltmp475:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r87
.Ltmp476:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r86, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r149, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp477:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r47_lo, r2
.Ltmp478:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r91
.Ltmp479:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r89, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r143, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp480:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r40_lo, r0
.Ltmp481:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r93
.Ltmp482:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r92, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r145, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp483:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r43_lo, r2
.Ltmp484:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r97
.Ltmp485:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r95, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r139, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r36_lo, r0
.Ltmp487:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r99
.Ltmp488:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r98, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r141, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp489:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r39_lo, r2
.Ltmp490:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r103
.Ltmp491:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r101, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r135, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp492:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r32_lo, r0
.Ltmp493:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r105
.Ltmp494:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r104, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r137, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp495:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r35_lo, r2
.Ltmp496:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r109
.Ltmp497:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r107, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r131, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r28_lo, r0
.Ltmp499:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r112
.Ltmp500:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r111, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r133, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r0, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp501:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r31_lo, r2
.Ltmp502:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r118
.Ltmp503:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r116, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r127, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fma_f32 r22, neg(r20), r21, r19
	fmac_f32 r21, r22, r21
	div_scale_f32 r22, s1, r2, s1
	mul_f32 r23, r22, r21
	fma_f32 r24, neg(r20), r23, r22
	fmac_f32 r23, r24, r21
	fmac_f32 r22, neg(r20), r23
.Ltmp504:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r24_lo, r0
.Ltmp505:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r0, r120
.Ltmp506:
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fmas_f32 r20, r22, r21, r23
	.loc	2 125 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:125:26
	fmak_f32 r0, r119, r0, 0x3f800000
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_fixup_f32 r2, r20, r2, s1
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_scale_f32 r20, r0, r0, s1
	rcp_f32 r21, r20
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r129, r2
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	fma_f32 r23, neg(r20), r21, r19
	fmac_f32 r21, r23, r21
	div_scale_f32 r23, s1, r0, s1
	mul_f32 r62, r23, r21
	fma_f32 r63, neg(r20), r62, r23
	fmac_f32 r62, r63, r21
	fmac_f32 r23, neg(r20), r62
.Ltmp507:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r27_lo, r2
.Ltmp508:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	exp_f32 r2, r121
.Ltmp509:
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fmas_f32 r20, r23, r21, r62
	.loc	2 127 26                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:127:26
	fmak_f32 r2, r113, r2, 0x3f800000
	.loc	2 129 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:129:24
	div_fixup_f32 r0, r20, r0, s1
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	div_scale_f32 r20, r2, r2, s1
	rcp_f32 r21, r20
	.loc	2 133 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:133:20
	mul_f32 r0, r123, r0
	.loc	2 131 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:131:24
	fmac_f32 r19, neg(r20), r21
	fmac_f32 r21, r19, r21
	div_scale_f32 r19, s1, r2, s1
	mul_f32 r23, r19, r21
	fma_f32 r62, neg(r20), r23, r19
	fmac_f32 r23, r62, r21
	fmac_f32 r19, neg(r20), r23
	div_fmas_f32 r19, r19, r21, r23
	div_fixup_f32 r2, r19, r2, s1
	.loc	2 135 20                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:135:20
	mul_f32 r2, r125, r2
.Ltmp510:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r22_lo, r117
	cvt_f32tof16 r19_lo, r114
.Ltmp511:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r20_lo, r0
.Ltmp512:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r21_lo, r110
.Ltmp513:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r23_lo, r2
	shl_b64 r72, 0, 0
	shl_b64 r70, 0, 0
.Ltmp514:
	.loc	2 189 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:189:116
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_30
; %bb.29:                               ; %if.then978
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:116
	shl_b64 r62, 1, r158
	add_co_u32 r0, s8, r62
	mov_b32 r2, s9
	addc_co_u32 r2, r2, r63
	add_co_u32 r62, 0x3780, r0
	addc_co_u32 r63, r2, 0
	.loc	2 190 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:190:17
	snop 1
	ldg_b128 r70, r62, 0x0
LBB2_30:                                ; %if.end1030
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r76, 0, 0
	shl_b64 r74, 0, 0
	.loc	2 189 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:189:116
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_32
; %bb.31:                               ; %if.then978.1
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:116
	shl_b64 r62, 1, r158
	add_co_u32 r0, s8, r62
	mov_b32 r2, s9
	addc_co_u32 r2, r2, r63
	add_co_u32 r62, 0x3b780, r0
	addc_co_u32 r63, r2, 0
	.loc	2 190 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:190:17
	snop 1
	ldg_b128 r74, r62, 0x0
LBB2_32:                                ; %if.end1030.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r64, 0, 0
	shl_b64 r62, 0, 0
	.loc	2 189 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:189:116
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_34
; %bb.33:                               ; %if.then978.2
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:116
	shl_b64 r62, 1, r158
	add_co_u32 r0, s8, r62
	mov_b32 r2, s9
	addc_co_u32 r2, r2, r63
	add_co_u32 r62, 0x37c0, r0
	addc_co_u32 r63, r2, 0
	.loc	2 190 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:190:17
	snop 1
	ldg_b128 r62, r62, 0x0
LBB2_34:                                ; %if.end1030.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
	shl_b64 r68, 0, 0
	shl_b64 r66, 0, 0
	.loc	2 189 116 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:189:116
	and_xmsk s10, s2
	snop 0
	bra_xmskz LBB2_36
; %bb.35:                               ; %if.then978.3
	.loc	2 0 116 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:116
	shl_b64 r66, 1, r158
	add_co_u32 r0, s8, r66
	mov_b32 r2, s9
	addc_co_u32 r2, r2, r67
	add_co_u32 r66, 0x3b7c0, r0
	addc_co_u32 r67, r2, 0
	.loc	2 190 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:190:17
	snop 1
	ldg_b128 r66, r66, 0x0
LBB2_36:                                ; %if.end1030.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s10
.Ltmp515:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp516:
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r78, r18, 0x0
	lds_b128 r82, r17, 0x0
	lds_b128 r86, r16, 0x0
	shl_b32 r0, 10, r1
.Ltmp517:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp518:
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r248, r78, r70, r248
	mma_16x16x16f16 r216, r78, r74, r216
	mma_16x16x16f16 r248, r80, r72, r248
	mma_16x16x16f16 r216, r80, r76, r216
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r78, r15, 0x0
	lds_b128 r14, r14, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r244, r82, r70, r244
	mma_16x16x16f16 r212, r82, r74, r212
	mma_16x16x16f16 r244, r84, r72, r244
	mma_16x16x16f16 r212, r84, r76, r212
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r82, r13, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r240, r86, r70, r240
	mma_16x16x16f16 r208, r86, r74, r208
	mma_16x16x16f16 r240, r88, r72, r240
	mma_16x16x16f16 r208, r88, r76, r208
	arrive bsmcnt(2)
	mma_16x16x16f16 r236, r78, r70, r236
	mma_16x16x16f16 r204, r78, r74, r204
	mma_16x16x16f16 r236, r80, r72, r236
	mma_16x16x16f16 r204, r80, r76, r204
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r78, r12, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r232, r14, r70, r232
	mma_16x16x16f16 r200, r14, r74, r200
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r12, r11, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	mma_16x16x16f16 r232, r16, r72, r232
	mma_16x16x16f16 r200, r16, r76, r200
	arrive bsmcnt(2)
	mma_16x16x16f16 r228, r82, r70, r228
	mma_16x16x16f16 r196, r82, r74, r196
	mma_16x16x16f16 r228, r84, r72, r228
	mma_16x16x16f16 r196, r84, r76, r196
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r82, r10, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r224, r78, r70, r224
	mma_16x16x16f16 r192, r78, r74, r192
	mma_16x16x16f16 r224, r80, r72, r224
	mma_16x16x16f16 r192, r80, r76, r192
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r78, r9, 0x0
	lds_b128 r8, r8, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r220, r12, r70, r220
	mma_16x16x16f16 r188, r12, r74, r188
	mma_16x16x16f16 r220, r14, r72, r220
	mma_16x16x16f16 r188, r14, r76, r188
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r12, r6, 0x0
	lds_b128 r70, r5, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(4)
	mma_16x16x16f16 r248, r82, r62, r248
	mma_16x16x16f16 r216, r82, r66, r216
	mma_16x16x16f16 r248, r84, r64, r248
	mma_16x16x16f16 r216, r84, r68, r216
	arrive bsmcnt(3)
	mma_16x16x16f16 r244, r78, r62, r244
	mma_16x16x16f16 r212, r78, r66, r212
	mma_16x16x16f16 r244, r80, r64, r244
	mma_16x16x16f16 r212, r80, r68, r212
	arrive bsmcnt(2)
	mma_16x16x16f16 r240, r8, r62, r240
	mma_16x16x16f16 r208, r8, r66, r208
	mma_16x16x16f16 r240, r10, r64, r240
	mma_16x16x16f16 r208, r10, r68, r208
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r8, r4, 0x0
	lds_b128 r2, r3, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r236, r12, r62, r236
	mma_16x16x16f16 r204, r12, r66, r204
	mma_16x16x16f16 r236, r14, r64, r236
	mma_16x16x16f16 r204, r14, r68, r204
	.loc	2 199 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:199:50
	lds_b128 r12, r7, 0x0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r232, r70, r62, r232
	mma_16x16x16f16 r200, r70, r66, r200
	mma_16x16x16f16 r232, r72, r64, r232
	mma_16x16x16f16 r200, r72, r68, r200
	arrive bsmcnt(2)
	mma_16x16x16f16 r228, r8, r62, r228
	mma_16x16x16f16 r196, r8, r66, r196
	mma_16x16x16f16 r228, r10, r64, r228
	mma_16x16x16f16 r196, r10, r68, r196
	ldp_b32 r10, s33, 0x4                   ; 4-byte Folded Reload
	arrive bsmcnt(1)
	mma_16x16x16f16 r224, r2, r62, r224
	mma_16x16x16f16 r192, r2, r66, r192
	snop 0
	and_b32 r2, 0xf0000, r0
	shl_b32 r0, 11, r1
	mov_b32 r3, 0
	mov_b32 r1, 0x80
	mma_16x16x16f16 r224, r4, r64, r224
	mad_u32 r2, s4, r1, r2
	and_b32 r0, 0x7800, r0
	add_co_u32 r2, r2, r0
	addc_co_u32 r3, r3, 0
	mov_b32 r0, 0x800
	mma_16x16x16f16 r192, r4, r68, r192
	snop 0
	mad_i32 r4, s16, r0, r2
	ldp_b32 r0, s33, 0x8                    ; 4-byte Folded Reload
	arrive bsmcnt(0)
	mma_16x16x16f16 r220, r12, r62, r220
	mma_16x16x16f16 r188, r12, r66, r188
	arrive gvmcnt(0)
	and_b32 r0, r0, 12
	.loc	2 214 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:214:3
	shl_b32 r0, 1, r0
	add_co_u32 r1, s14, r0
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	mma_16x16x16f16 r220, r14, r64, r220
	.loc	2 214 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:214:3
	mov_b32 r0, s15
	addc_co_u32 r2, r0, 0
	.loc	2 215 95                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:95
	cmp_gt_i32 s4, s0, r10
	.loc	2 205 60                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:205:60
	mma_16x16x16f16 r188, r14, r68, r188
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	snop 2
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_44
; %bb.37:                               ; %for.inc1253
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_47
LBB2_38:                                ; %for.inc1253.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_50
LBB2_39:                                ; %for.inc1253.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_53
LBB2_40:                                ; %for.inc1253.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_56
LBB2_41:                                ; %for.inc1253.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_59
LBB2_42:                                ; %for.inc1253.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_62
LBB2_43:                                ; %for.inc1253.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmsks LBB2_65
	bra LBB2_68
LBB2_44:                                ; %if.then1146
.Ltmp519:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_46
; %bb.45:                               ; %if.then1216
.Ltmp524:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r185_lo
.Ltmp525:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r251, r0
.Ltmp526:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r187_lo
.Ltmp527:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp528:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r250, r3
.Ltmp529:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp530:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp531:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp532:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r156_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r152_lo
.Ltmp533:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r249, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r248, r3
.Ltmp534:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp535:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp536:
	.loc	2 232 31 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r8, 1, r4
	add_co_u32 r8, r1, r8
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	addc_co_u32 r9, r2, r9
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x0, r6 devc
LBB2_46:                                ; %Flow569
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_38
LBB2_47:                                ; %if.then1146.1
.Ltmp537:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp538:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp539:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp540:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp541:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_49
; %bb.48:                               ; %if.then1216.1
.Ltmp542:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r181_lo
.Ltmp543:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r247, r0
.Ltmp544:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r154_lo
.Ltmp545:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp546:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r246, r3
.Ltmp547:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp548:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp549:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp550:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r148_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r144_lo
.Ltmp551:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r245, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r244, r3
.Ltmp552:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp553:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp554:
	.loc	2 232 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:314
	shl_b64 r8, 1, r4
	.loc	2 232 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r8, r1, r8
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	addc_co_u32 r9, r2, r9
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x20, r6 devc
LBB2_49:                                ; %Flow568
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_39
LBB2_50:                                ; %if.then1146.2
.Ltmp555:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp556:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp557:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp558:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp559:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_52
; %bb.51:                               ; %if.then1216.2
.Ltmp560:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r150_lo
.Ltmp561:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r243, r0
.Ltmp562:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r146_lo
.Ltmp563:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp564:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r242, r3
.Ltmp565:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp566:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp567:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp568:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r140_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r136_lo
.Ltmp569:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r241, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r240, r3
.Ltmp570:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp571:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp572:
	.loc	2 232 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:314
	shl_b64 r8, 1, r4
	.loc	2 232 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r8, r1, r8
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	addc_co_u32 r9, r2, r9
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x40, r6 devc
LBB2_52:                                ; %Flow567
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_40
LBB2_53:                                ; %if.then1146.3
.Ltmp573:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp574:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp575:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp576:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp577:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_55
; %bb.54:                               ; %if.then1216.3
.Ltmp578:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r142_lo
.Ltmp579:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r239, r0
.Ltmp580:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r138_lo
.Ltmp581:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp582:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r238, r3
.Ltmp583:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp584:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp585:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp586:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r132_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r128_lo
.Ltmp587:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r237, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r236, r3
.Ltmp588:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp589:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp590:
	.loc	2 232 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:314
	shl_b64 r8, 1, r4
	.loc	2 232 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r8, r1, r8
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	addc_co_u32 r9, r2, r9
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x60, r6 devc
LBB2_55:                                ; %Flow566
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_41
LBB2_56:                                ; %if.then1146.4
.Ltmp591:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp592:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp593:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp594:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp595:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_58
; %bb.57:                               ; %if.then1216.4
.Ltmp596:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r134_lo
.Ltmp597:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r235, r0
.Ltmp598:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r130_lo
.Ltmp599:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp600:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r234, r3
.Ltmp601:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp602:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp603:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp604:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r124_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r122_lo
.Ltmp605:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r233, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r232, r3
.Ltmp606:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp607:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp608:
	.loc	2 232 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:314
	shl_b64 r8, 1, r4
	.loc	2 232 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r8, r1, r8
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	addc_co_u32 r9, r2, r9
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x80, r6 devc
LBB2_58:                                ; %Flow565
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_42
LBB2_59:                                ; %if.then1146.5
.Ltmp609:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp610:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp611:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp612:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp613:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_61
; %bb.60:                               ; %if.then1216.5
.Ltmp614:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r126_lo
.Ltmp615:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r231, r0
.Ltmp616:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r61_lo
.Ltmp617:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp618:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r230, r3
.Ltmp619:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp620:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp621:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp622:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r59_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r57_lo
.Ltmp623:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r229, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r228, r3
.Ltmp624:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp625:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp626:
	.loc	2 232 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:314
	shl_b64 r8, 1, r4
	.loc	2 232 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r8, r1, r8
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	addc_co_u32 r9, r2, r9
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0xa0, r6 devc
LBB2_61:                                ; %Flow564
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_43
LBB2_62:                                ; %if.then1146.6
.Ltmp627:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp628:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp629:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp630:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp631:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB2_64
; %bb.63:                               ; %if.then1216.6
.Ltmp632:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r60_lo
.Ltmp633:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r227, r0
.Ltmp634:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r58_lo
.Ltmp635:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp636:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r226, r3
.Ltmp637:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp638:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp639:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp640:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r55_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r53_lo
.Ltmp641:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r225, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r224, r3
.Ltmp642:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp643:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp644:
	.loc	2 232 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:314
	shl_b64 r8, 1, r4
	.loc	2 232 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r8, r1, r8
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	addc_co_u32 r9, r2, r9
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0xc0, r6 devc
LBB2_64:                                ; %Flow563
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s8, s4
	snop 0
	bra_xmskz LBB2_68
LBB2_65:                                ; %if.then1146.7
.Ltmp645:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp646:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp647:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp648:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp649:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB2_67
; %bb.66:                               ; %if.then1216.7
.Ltmp650:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r56_lo
.Ltmp651:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r223, r0
.Ltmp652:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r54_lo
.Ltmp653:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp654:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r222, r3
.Ltmp655:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp656:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp657:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp658:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r52_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r50_lo
.Ltmp659:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r221, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r220, r3
.Ltmp660:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp661:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp662:
	.loc	2 232 314 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:314
	shl_b64 r8, 1, r4
	.loc	2 232 31 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r8, r1, r8
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	addc_co_u32 r9, r2, r9
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0xe0, r6 devc
LBB2_67:                                ; %Flow562
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s4
LBB2_68:                                ; %for.inc1253.7
	sor_b64 xmsk, xmsk, s8
	.loc	2 215 66 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:66
	or_b32 r0, r10, 16
	.loc	2 215 95 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_77
; %bb.69:                               ; %for.inc1253.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_80
LBB2_70:                                ; %for.inc1253.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_83
LBB2_71:                                ; %for.inc1253.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_86
LBB2_72:                                ; %for.inc1253.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_89
LBB2_73:                                ; %for.inc1253.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_92
LBB2_74:                                ; %for.inc1253.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_95
LBB2_75:                                ; %for.inc1253.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB2_98
LBB2_76:                                ; %for.inc1253.15
	.loc	2 237 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:237:1
	snop 0
	endk
LBB2_77:                                ; %if.then1146.8
.Ltmp663:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp664:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp665:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp666:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp667:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_79
; %bb.78:                               ; %if.then1216.8
.Ltmp668:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r51_lo
.Ltmp669:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r219, r0
.Ltmp670:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r49_lo
.Ltmp671:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp672:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r218, r3
.Ltmp673:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp674:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp675:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp676:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r48_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r46_lo
.Ltmp677:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r217, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r216, r3
.Ltmp678:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp679:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp680:
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r8, 1, r4
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r0, r1, r8
	addc_co_u32 r3, r2, r9
	add_co_u32 r8, 0x10000, r0
	addc_co_u32 r9, r3, 0
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x0, r6 devc
LBB2_79:                                ; %Flow561
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_70
LBB2_80:                                ; %if.then1146.9
.Ltmp681:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp682:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp683:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp684:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp685:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_82
; %bb.81:                               ; %if.then1216.9
.Ltmp686:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r47_lo
.Ltmp687:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r215, r0
.Ltmp688:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r45_lo
.Ltmp689:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp690:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r214, r3
.Ltmp691:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp692:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp693:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp694:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r44_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r42_lo
.Ltmp695:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r213, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r212, r3
.Ltmp696:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp697:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp698:
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r8, 1, r4
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r0, r1, r8
	addc_co_u32 r3, r2, r9
	add_co_u32 r8, 0x10020, r0
	addc_co_u32 r9, r3, 0
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x0, r6 devc
LBB2_82:                                ; %Flow560
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_71
LBB2_83:                                ; %if.then1146.10
.Ltmp699:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp700:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp701:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp702:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp703:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_85
; %bb.84:                               ; %if.then1216.10
.Ltmp704:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r43_lo
.Ltmp705:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r211, r0
.Ltmp706:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r41_lo
.Ltmp707:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp708:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r210, r3
.Ltmp709:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp710:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp711:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp712:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r40_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r38_lo
.Ltmp713:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r209, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r208, r3
.Ltmp714:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp715:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp716:
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r8, 1, r4
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r0, r1, r8
	addc_co_u32 r3, r2, r9
	add_co_u32 r8, 0x10040, r0
	addc_co_u32 r9, r3, 0
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x0, r6 devc
LBB2_85:                                ; %Flow559
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_72
LBB2_86:                                ; %if.then1146.11
.Ltmp717:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp718:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp719:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp720:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp721:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_88
; %bb.87:                               ; %if.then1216.11
.Ltmp722:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r39_lo
.Ltmp723:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r207, r0
.Ltmp724:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r37_lo
.Ltmp725:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp726:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r206, r3
.Ltmp727:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp728:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp729:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp730:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r36_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r34_lo
.Ltmp731:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r205, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r204, r3
.Ltmp732:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp733:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp734:
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r8, 1, r4
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r0, r1, r8
	addc_co_u32 r3, r2, r9
	add_co_u32 r8, 0x10060, r0
	addc_co_u32 r9, r3, 0
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x0, r6 devc
LBB2_88:                                ; %Flow558
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_73
LBB2_89:                                ; %if.then1146.12
.Ltmp735:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp736:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp737:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp738:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp739:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_91
; %bb.90:                               ; %if.then1216.12
.Ltmp740:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r35_lo
.Ltmp741:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r203, r0
.Ltmp742:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r33_lo
.Ltmp743:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp744:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r202, r3
.Ltmp745:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp746:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp747:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp748:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r32_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r30_lo
.Ltmp749:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r201, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r200, r3
.Ltmp750:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp751:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp752:
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r8, 1, r4
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r0, r1, r8
	addc_co_u32 r3, r2, r9
	add_co_u32 r8, 0x10080, r0
	addc_co_u32 r9, r3, 0
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x0, r6 devc
LBB2_91:                                ; %Flow557
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_74
LBB2_92:                                ; %if.then1146.13
.Ltmp753:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp754:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp755:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp756:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp757:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_94
; %bb.93:                               ; %if.then1216.13
.Ltmp758:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r31_lo
.Ltmp759:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r199, r0
.Ltmp760:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r29_lo
.Ltmp761:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp762:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r198, r3
.Ltmp763:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp764:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp765:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp766:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r28_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r26_lo
.Ltmp767:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r197, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r196, r3
.Ltmp768:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp769:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp770:
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r8, 1, r4
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r0, r1, r8
	addc_co_u32 r3, r2, r9
	add_co_u32 r8, 0x100a0, r0
	addc_co_u32 r9, r3, 0
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x0, r6 devc
LBB2_94:                                ; %Flow556
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_75
LBB2_95:                                ; %if.then1146.14
.Ltmp771:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp772:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp773:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp774:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s6, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s6
.Ltmp775:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s6, s2
	snop 0
	bra_xmskz LBB2_97
; %bb.96:                               ; %if.then1216.14
.Ltmp776:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r27_lo
.Ltmp777:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r195, r0
.Ltmp778:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r25_lo
.Ltmp779:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp780:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r194, r3
.Ltmp781:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp782:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp783:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp784:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r24_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r22_lo
.Ltmp785:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r193, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r192, r3
.Ltmp786:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp787:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp788:
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r8, 1, r4
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r0, r1, r8
	addc_co_u32 r3, r2, r9
	add_co_u32 r8, 0x100c0, r0
	addc_co_u32 r9, r3, 0
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r8, 0x0, r6 devc
LBB2_97:                                ; %Flow555
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s6
	sor_b64 xmsk, xmsk, s4
	.loc	2 215 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:215:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB2_76
LBB2_98:                                ; %if.then1146.15
.Ltmp789:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp790:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp791:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp792:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp793:
	.loc	2 230 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:230:11
	snop 0
	and_xmsk s0, s2
	snop 0
	bra_xmskz LBB2_76
; %bb.99:                               ; %if.then1216.15
.Ltmp794:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r23_lo
.Ltmp795:
	.loc	2 226 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:226:24
	mul_f32 r0, r191, r0
.Ltmp796:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r21_lo
.Ltmp797:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp798:
	.loc	2 225 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:225:24
	mul_f32 r3, r190, r3
.Ltmp799:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp800:
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	shl_b32 r0, 16, r0
.Ltmp801:
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	add_u16 r3_hi, 0, 0
	or_b32 r7, r0, r3
.Ltmp802:
	.loc	5 1302 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1302:28
	cvt_f16tof32 r0, r20_lo
	.loc	5 1301 28                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1301:28
	cvt_f16tof32 r3, r19_lo
.Ltmp803:
	.loc	2 224 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:224:24
	mul_f32 r0, r189, r0
	.loc	2 223 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:223:24
	mul_f32 r3, r188, r3
.Ltmp804:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp805:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp806:
	.loc	2 229 43 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	shl_b32 r0, 16, r0
	and_b32 r3, 0xffff, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	shl_b64 r4, 1, r4
	.loc	2 229 43                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:229:43
	or_b32 r6, r0, r3
	.loc	2 232 31                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:31
	add_co_u32 r0, r1, r4
	addc_co_u32 r1, r2, r5
	add_co_u32 r0, 0x100e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 232 445 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:232:445
	snop 1
	stg_b64 r0, 0x0, r6 devc
	.loc	2 237 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:237:1
	snop 2
	endk
.Ltmp807:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 32
		.macahca_streg_size 3
		.macahca_priority 0
		.macahca_float_mode 240
		.macahca_privilege 0
		.macahca_debug_mode 0
		.macahca_ieee_mode 1
		.macahca_bulky_mode 0
		.macahca_fp16_overflow_mode 0
		.macahca_perf_on 0
		.macahca_priv_segm_on 1
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
		.macahca_streg_prvt_init_on 1
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
; codeLenInByte = 28320
; NumMTRegsForWarps/PEU: 256
; NumSTRegsForWarps/PEU: 38
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 239 0                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:239:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x0
	smov_b32 s6, s5
.Ltmp808:
	.loc	2 248 23 prologue_end           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:248:23
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
	.loc	2 249 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:249:24
	sshl_b64 s8, 2, s8
	sadd_co_u32 s0, s14, s8
	saddc_co_u32 s1, s15, s9
	.loc	2 250 38                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:250:38
	sshl_b32 s5, 7, s5
	.loc	2 250 47 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:250:47
	sadd_co_u32 s6, s10, s8
	saddc_co_u32 s7, s11, s9
	.loc	2 250 79                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:250:79
	sadd_co_u32 s8, s12, s8
	saddc_co_u32 s9, s13, s9
	sshl_b32 s3, 19, s4
	or3_b32 r2, r31, s3, r32
	add_u32 r2, r2, s2
	.loc	2 264 375 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:375
	mad_i32 r12, r2, 2, s18
	add_co_u32 r14, 0x20000, r12
	addc_co_u32 r15, r13, 0
	.loc	2 264 344 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	ldg_b128 r44, r12, 0x0
	add_u32 r0, r0, r1
	ldg_b128 r48, r14, 0x0
	.loc	2 264 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:375
	add_co_u32 r14, 0x40000, r12
	addc_co_u32 r15, r13, 0
	add_co_u32 r12, 0x60000, r12
	and_b32 r7, r0, 16
	mul_u24 r0, r1, 9
	and_b32 r8, r0, 8
	addc_co_u32 r13, r13, 0
	.loc	2 264 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:495
	or_b32 r0, 0x40000, r2
	.loc	2 264 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	ldg_b128 r52, r14, 0x0
	ldg_b128 r56, r12, 0x0
	.loc	2 264 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:375
	mad_i32 r12, r0, 2, s18
	.loc	2 264 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:495
	add_u32 r0, 0x50000, r2
	.loc	2 264 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:375
	mad_i32 r14, r0, 2, s18
	.loc	2 264 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:495
	add_u32 r0, 0x60000, r2
	.loc	2 264 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:375
	mad_i32 r16, r0, 2, s18
	.loc	2 264 495                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:495
	add_u32 r0, 0x70000, r2
	.loc	2 264 375                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:375
	mad_i32 r18, r0, 2, s18
	.loc	2 264 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	ldg_b128 r60, r12, 0x0
	ldg_b128 r64, r14, 0x0
	ldg_b128 r68, r16, 0x0
	ldg_b128 r72, r18, 0x0
	.loc	2 249 24 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:249:24
	ldu_b32 s1, s0, 0x0
	.loc	2 250 47                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:250:47
	ldu_b32 s6, s6, 0x0
	.loc	2 250 79 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:250:79
	ldu_b32 s0, s8, 0x0
	add_u32 r3, r6, r1
	and_b32 r3, r3, 32
	shr_b32 r11, 1, r1
	.loc	2 264 96 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:96
	or_b32 r9, r3, r8
	.loc	2 264 60 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:60
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
	.loc	2 251 54 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:251:54
	arrive slcnt(0)
	ssub_co_i32 s1, s1, s5
	.loc	2 250 45                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:250:45
	sadd_co_i32 s5, s6, s5
	and_b32 r12, 0x3c0, r3
	and_or_b32 r33, r13, 8, r11
	.loc	2 250 77 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:250:77
	ssub_co_i32 s10, s5, s0
	.loc	2 264 266 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:266
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
	.loc	2 264 181 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:181
	or3_b32 r7, r10, r7, r8
	or_b32 r6, r11, r6
	.loc	2 264 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:41
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
	.loc	2 264 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	add_i32 r6, 0x1000, r5
	.loc	2 264 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:41
	add_u32 r25, 0x2000, r5
	.loc	2 264 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	add_i32 r7, 0x2000, r5
	.loc	2 264 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:41
	add_u32 r26, 0x3000, r5
	.loc	2 264 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	add_i32 r8, 0x3000, r5
	add_i32 r9, 0x4000, r23
	.loc	2 264 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:41
	add_u32 r28, 0x5000, r5
	.loc	2 264 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	add_i32 r12, 0x5000, r5
	.loc	2 264 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:41
	add_u32 r29, 0x6000, r5
	.loc	2 264 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	add_i32 r41, 0x6000, r5
	.loc	2 264 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:41
	add_u32 r30, 0x7000, r5
	.loc	2 264 344                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
	add_i32 r5, 0x7000, r5
	saddc_co_u32 s15, s19, 0
	.loc	2 266 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:266:3
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
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:0
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
	.loc	2 264 344 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:344
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
	.loc	2 266 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:266:3
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
	.loc	2 264 41                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:264:41
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
	.loc	2 0 41 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:41
	sor_b64 xmsk, xmsk, s18
.Ltmp809:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp810:
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r178, r20, 0x0
	lds_b128 r182, r19, 0x0
	lds_b128 r186, r18, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r178, r170, r158
	mma_16x16x16f16 r126, r178, r174, r126
	mma_16x16x16f16 r158, r180, r172, r158
	mma_16x16x16f16 r126, r180, r176, r126
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r178, r17, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r182, r170, r154
	mma_16x16x16f16 r122, r182, r174, r122
	mma_16x16x16f16 r154, r184, r172, r154
	mma_16x16x16f16 r122, r184, r176, r122
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r182, r16, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r186, r170, r150
	mma_16x16x16f16 r118, r186, r174, r118
	mma_16x16x16f16 r150, r188, r172, r150
	mma_16x16x16f16 r118, r188, r176, r118
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r186, r15, 0x0
	lds_b128 r190, r14, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r146, r178, r170, r146
	mma_16x16x16f16 r114, r178, r174, r114
	mma_16x16x16f16 r146, r180, r172, r146
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	add_i32 r178, 0x4000, r20
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	mma_16x16x16f16 r114, r180, r176, r114
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r182, r170, r142
	mma_16x16x16f16 r110, r182, r174, r110
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r180, r13, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	mma_16x16x16f16 r142, r184, r172, r142
	mma_16x16x16f16 r110, r184, r176, r110
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r186, r170, r138
	mma_16x16x16f16 r106, r186, r174, r106
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r19
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	mma_16x16x16f16 r138, r188, r172, r138
	mma_16x16x16f16 r106, r188, r176, r106
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r190, r170, r134
	mma_16x16x16f16 r102, r190, r174, r102
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r18
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	mma_16x16x16f16 r134, r192, r172, r134
	mma_16x16x16f16 r102, r192, r176, r102
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r180, r170, r130
	mma_16x16x16f16 r98, r180, r174, r98
	mma_16x16x16f16 r130, r182, r172, r130
	mma_16x16x16f16 r98, r182, r176, r98
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r17
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r184, r170, r94
	mma_16x16x16f16 r62, r184, r174, r62
	mma_16x16x16f16 r94, r186, r172, r94
	mma_16x16x16f16 r62, r186, r176, r62
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r16
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r188, r170, r90
	mma_16x16x16f16 r58, r188, r174, r58
	mma_16x16x16f16 r90, r190, r172, r90
	mma_16x16x16f16 r58, r190, r176, r58
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r188, r178, 0x0
	add_i32 r178, 0x4000, r15
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r180, r170, r86
	mma_16x16x16f16 r54, r180, r174, r54
	mma_16x16x16f16 r86, r182, r172, r86
	mma_16x16x16f16 r54, r182, r176, r54
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r180, r178, 0x0
	add_i32 r178, 0x4000, r14
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r184, r170, r82
	mma_16x16x16f16 r50, r184, r174, r50
	mma_16x16x16f16 r82, r186, r172, r82
	mma_16x16x16f16 r50, r186, r176, r50
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r184, r178, 0x0
	add_i32 r178, 0x4000, r13
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r188, r170, r78
	mma_16x16x16f16 r46, r188, r174, r46
	mma_16x16x16f16 r78, r190, r172, r78
	mma_16x16x16f16 r46, r190, r176, r46
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r188, r178, 0x0
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r180, r170, r74
	mma_16x16x16f16 r42, r180, r174, r42
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r178, r11, 0x0
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	mma_16x16x16f16 r74, r182, r172, r74
	mma_16x16x16f16 r42, r182, r176, r42
	arrive bsmcnt(2)
	mma_16x16x16f16 r70, r184, r170, r70
	mma_16x16x16f16 r38, r184, r174, r38
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r182, r10, 0x0
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	mma_16x16x16f16 r70, r186, r172, r70
	mma_16x16x16f16 r38, r186, r176, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r188, r170, r66
	mma_16x16x16f16 r34, r188, r174, r34
	mma_16x16x16f16 r66, r190, r172, r66
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r170, r12, 0x0
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	mma_16x16x16f16 r34, r190, r176, r34
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r174, r9, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r158, r178, r162, r158
	mma_16x16x16f16 r126, r178, r166, r126
	mma_16x16x16f16 r158, r180, r164, r158
	mma_16x16x16f16 r126, r180, r168, r126
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r178, r8, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
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
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r170, r7, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r174, r162, r146
	mma_16x16x16f16 r114, r174, r166, r114
	mma_16x16x16f16 r146, r176, r164, r146
	mma_16x16x16f16 r114, r176, r168, r114
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r174, r6, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r178, r162, r142
	mma_16x16x16f16 r110, r178, r166, r110
	mma_16x16x16f16 r142, r180, r164, r142
	mma_16x16x16f16 r110, r180, r168, r110
	.loc	2 281 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:281:48
	lds_b128 r178, r5, 0x0
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r170, r162, r138
	mma_16x16x16f16 r106, r170, r166, r106
	mma_16x16x16f16 r138, r172, r164, r138
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	add_i32 r170, 0x4000, r11
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	mma_16x16x16f16 r106, r172, r168, r106
	arrive bsmcnt(1)
	mma_16x16x16f16 r134, r174, r162, r134
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r182, r170, 0x0
	add_i32 r170, 0x4000, r10
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	mma_16x16x16f16 r102, r174, r166, r102
	mma_16x16x16f16 r134, r176, r164, r134
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r12
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	mma_16x16x16f16 r102, r176, r168, r102
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r178, r162, r130
	mma_16x16x16f16 r98, r178, r166, r98
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r9
	.loc	2 287 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:287:61
	mma_16x16x16f16 r130, r180, r164, r130
	mma_16x16x16f16 r98, r180, r168, r98
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r94, r182, r162, r94
	mma_16x16x16f16 r62, r182, r166, r62
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r8
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	mma_16x16x16f16 r94, r184, r164, r94
	mma_16x16x16f16 r62, r184, r168, r62
	arrive bsmcnt(2)
	mma_16x16x16f16 r90, r172, r162, r90
	mma_16x16x16f16 r58, r172, r166, r58
	mma_16x16x16f16 r90, r174, r164, r90
	mma_16x16x16f16 r58, r174, r168, r58
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r172, r170, 0x0
	add_i32 r170, 0x4000, r7
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r176, r162, r86
	mma_16x16x16f16 r54, r176, r166, r54
	mma_16x16x16f16 r86, r178, r164, r86
	mma_16x16x16f16 r54, r178, r168, r54
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r176, r170, 0x0
	add_i32 r170, 0x4000, r6
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r180, r162, r82
	mma_16x16x16f16 r50, r180, r166, r50
	mma_16x16x16f16 r82, r182, r164, r82
	mma_16x16x16f16 r50, r182, r168, r50
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r180, r170, 0x0
	add_i32 r170, 0x4000, r5
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r172, r162, r78
	mma_16x16x16f16 r46, r172, r166, r46
	.loc	2 295 50                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:295:50
	lds_b128 r170, r170, 0x0
	.loc	2 301 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:301:61
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
.Ltmp811:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp812:
	.loc	2 312 377                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:377
	add_u32 r162, 0x10000, r31
	mad_i32 r164, r31, 2, s14
	mad_i32 r162, r162, 2, s14
	.loc	2 266 21                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:266:21
	sadd_co_u32 s2, 0x80, s2
	.loc	2 312 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:346
	ldg_b128 r164, r164, 0x0
	ldg_b128 r168, r162, 0x0
	.loc	2 312 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:377
	add_u32 r162, 0x20000, r31
	mad_i32 r172, r162, 2, s14
	add_u32 r162, 0x30000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 312 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:346
	ldg_b128 r172, r172, 0x0
	.loc	2 266 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:266:21
	saddc_co_u32 s3, s3, 0
	.loc	2 312 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:346
	ldg_b128 r176, r162, 0x0
	.loc	2 312 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:377
	add_u32 r162, 0x40000, r31
	mad_i32 r180, r162, 2, s14
	add_u32 r162, 0x50000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 312 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:346
	ldg_b128 r180, r180, 0x0
	.loc	2 266 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:266:21
	scmp_eq_u64 0xf80, s2
	.loc	2 312 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:346
	ldg_b128 r184, r162, 0x0
	.loc	2 312 377 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:377
	add_u32 r162, 0x60000, r31
	mad_i32 r188, r162, 2, s14
	add_u32 r162, 0x70000, r31
	mad_i32 r162, r162, 2, s14
	.loc	2 312 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:346
	ldg_b128 r188, r188, 0x0
	.loc	2 266 21 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:266:21
	add_u32 r31, r31, 64
	.loc	2 312 346                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:312:346
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
	.loc	2 266 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:266:3
	bra_smsks LBB3_10
LBB3_2:                                 ; %for.cond103.preheader
                                        ; =>This Inner Loop Header: Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:3
	shl_b64 r170, 0, 0
	shl_b64 r172, 0, 0
	.loc	2 271 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:271:117
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:117
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	.loc	2 272 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:272:17
	snop 1
	ldg_b128 r170, r164, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r174, 0, 0
	shl_b64 r176, 0, 0
	.loc	2 271 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:271:117
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:117
	add_co_u32 r162, r32, s2
	mov_b32 r163, s3
	addc_co_u32 r163, r33, r163
	.loc	2 272 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:272:17
	add_co_u32 r162, 0x10000, r162
	addc_co_u32 r163, r163, 0
	snop 1
	ldg_b128 r174, r162, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 271 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:271:117
	and_xmsk s18, s8
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:117
	add_co_u32 r164, r32, s2
	mov_b32 r162, s3
	addc_co_u32 r165, r33, r162
	.loc	2 272 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:272:17
	snop 1
	ldg_b128 r162, r164, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s18
	shl_b64 r166, 0, 0
	shl_b64 r168, 0, 0
	.loc	2 271 117 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:271:117
	and_xmsk s18, s6
	snop 0
	bra_xmskz LBB3_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:117
	add_co_u32 r166, r32, s2
	mov_b32 r167, s3
	addc_co_u32 r167, r33, r167
	.loc	2 272 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:272:17
	add_co_u32 r166, 0x10040, r166
	addc_co_u32 r167, r167, 0
	snop 1
	ldg_b128 r166, r166, 0x0
	bra LBB3_1
LBB3_10:                                ; %for.cond432.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	or_b32 r21, r21, r22
	add_co_u32 r166, s12, r21
	mov_b32 r21, s13
	addc_co_u32 r167, r21, 0
	shl_b64 r30, 0, 0
	shl_b64 r32, 0, 0
	.loc	2 319 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:319:115
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_12
; %bb.11:                               ; %if.then459
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r22, s22, r22
	mov_b32 r21, s23
	addc_co_u32 r23, r21, r23
	.loc	2 320 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:320:17
	snop 1
	ldg_b128 r30, r22, 0xf80
LBB3_12:                                ; %if.end511
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r162, 0, 0
	shl_b64 r164, 0, 0
	.loc	2 319 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:319:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then459.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r21, s22, r22
	mov_b32 r22, s23
	addc_co_u32 r22, r22, r23
	add_co_u32 r24, 0x10f80, r21
	addc_co_u32 r25, r22, 0
	.loc	2 320 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:320:17
	snop 1
	ldg_b128 r162, r24, 0x0
LBB3_14:                                ; %if.end511.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	shl_b64 r22, 0, 0
	shl_b64 r24, 0, 0
	.loc	2 319 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:319:115
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then459.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:115
	shl_b64 r22, 1, r166
	add_co_u32 r22, s22, r22
	mov_b32 r21, s23
	addc_co_u32 r23, r21, r23
	.loc	2 320 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:320:17
	snop 1
	ldg_b128 r22, r22, 0xfc0
LBB3_16:                                ; %if.end511.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
	sadd_co_i32 s0, s1, s0
	shl_b64 r26, 0, 0
	shl_b64 r28, 0, 0
	.loc	2 319 115 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:319:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then459.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:115
	shl_b64 r26, 1, r166
	add_co_u32 r21, s22, r26
	mov_b32 r26, s23
	addc_co_u32 r26, r26, r27
	add_co_u32 r28, 0x10fc0, r21
	addc_co_u32 r29, r26, 0
	.loc	2 320 17 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:320:17
	snop 1
	ldg_b128 r26, r28, 0x0
LBB3_18:                                ; %if.end511.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
.Ltmp813:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp814:
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r166, r20, 0x0
	lds_b128 r170, r19, 0x0
	lds_b128 r174, r18, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r20, 0x4000, r20
	add_i32 r19, 0x4000, r19
	add_i32 r18, 0x4000, r18
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r166, r30, r158
.Ltmp815:
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp816:
	.loc	2 359 92                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:359:92
	cmp_gt_i32 s2, s0, r0
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	mma_16x16x16f16 r126, r166, r162, r126
	mma_16x16x16f16 r158, r168, r32, r158
	mma_16x16x16f16 r126, r168, r164, r126
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r166, r17, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r17, 0x4000, r17
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r170, r30, r154
	mma_16x16x16f16 r122, r170, r162, r122
	mma_16x16x16f16 r154, r172, r32, r154
	mma_16x16x16f16 r122, r172, r164, r122
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r170, r16, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r16, 0x4000, r16
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r174, r30, r150
	mma_16x16x16f16 r118, r174, r162, r118
	mma_16x16x16f16 r150, r176, r32, r150
	mma_16x16x16f16 r118, r176, r164, r118
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r174, r15, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r15, 0x4000, r15
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r166, r30, r146
	mma_16x16x16f16 r114, r166, r162, r114
	mma_16x16x16f16 r146, r168, r32, r146
	mma_16x16x16f16 r114, r168, r164, r114
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r166, r14, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r14, 0x4000, r14
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r170, r30, r142
	mma_16x16x16f16 r110, r170, r162, r110
	mma_16x16x16f16 r142, r172, r32, r142
	mma_16x16x16f16 r110, r172, r164, r110
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r170, r13, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r13, 0x4000, r13
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r174, r30, r138
	mma_16x16x16f16 r106, r174, r162, r106
	mma_16x16x16f16 r138, r176, r32, r138
	mma_16x16x16f16 r106, r176, r164, r106
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r174, r20, 0x0
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r166, r30, r134
	mma_16x16x16f16 r102, r166, r162, r102
	mma_16x16x16f16 r134, r168, r32, r134
	mma_16x16x16f16 r102, r168, r164, r102
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r166, r19, 0x0
	lds_b128 r18, r18, 0x0
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r130, r170, r30, r130
	mma_16x16x16f16 r98, r170, r162, r98
	mma_16x16x16f16 r130, r172, r32, r130
	mma_16x16x16f16 r98, r172, r164, r98
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r170, r17, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
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
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r166, r16, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r18, r30, r86
	mma_16x16x16f16 r54, r18, r162, r54
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r16, r15, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	mma_16x16x16f16 r86, r20, r32, r86
	mma_16x16x16f16 r54, r20, r164, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r170, r30, r82
	mma_16x16x16f16 r50, r170, r162, r50
	mma_16x16x16f16 r82, r172, r32, r82
	mma_16x16x16f16 r50, r172, r164, r50
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r170, r14, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r166, r30, r78
	mma_16x16x16f16 r46, r166, r162, r46
	mma_16x16x16f16 r78, r168, r32, r78
	mma_16x16x16f16 r46, r168, r164, r46
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r166, r13, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r74, r16, r30, r74
	mma_16x16x16f16 r42, r16, r162, r42
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r14, r11, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r11, 0x4000, r11
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	mma_16x16x16f16 r74, r18, r32, r74
	mma_16x16x16f16 r42, r18, r164, r42
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r18, r10, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r10, 0x4000, r10
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	arrive bsmcnt(3)
	mma_16x16x16f16 r70, r170, r30, r70
	mma_16x16x16f16 r38, r170, r162, r38
	mma_16x16x16f16 r70, r172, r32, r70
	mma_16x16x16f16 r38, r172, r164, r38
	arrive bsmcnt(2)
	mma_16x16x16f16 r66, r166, r30, r66
	mma_16x16x16f16 r34, r166, r162, r34
	mma_16x16x16f16 r66, r168, r32, r66
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r30, r12, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	mma_16x16x16f16 r34, r168, r164, r34
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r158, r14, r22, r158
	mma_16x16x16f16 r126, r14, r26, r126
	mma_16x16x16f16 r158, r16, r24, r158
	mma_16x16x16f16 r126, r16, r28, r126
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r14, r9, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r9, 0x4000, r9
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r154, r18, r22, r154
	mma_16x16x16f16 r122, r18, r26, r122
	mma_16x16x16f16 r154, r20, r24, r154
	mma_16x16x16f16 r122, r20, r28, r122
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r18, r8, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r8, 0x4000, r8
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r150, r30, r22, r150
	mma_16x16x16f16 r118, r30, r26, r118
	mma_16x16x16f16 r150, r32, r24, r150
	mma_16x16x16f16 r118, r32, r28, r118
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r30, r7, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r7, 0x4000, r7
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r146, r14, r22, r146
	mma_16x16x16f16 r114, r14, r26, r114
	mma_16x16x16f16 r146, r16, r24, r146
	mma_16x16x16f16 r114, r16, r28, r114
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r14, r6, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r6, 0x4000, r6
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r142, r18, r22, r142
	mma_16x16x16f16 r110, r18, r26, r110
	mma_16x16x16f16 r142, r20, r24, r142
	mma_16x16x16f16 r110, r20, r28, r110
	.loc	2 329 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:329:48
	lds_b128 r18, r5, 0x0
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	add_i32 r5, 0x4000, r5
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r138, r30, r22, r138
	mma_16x16x16f16 r106, r30, r26, r106
	mma_16x16x16f16 r138, r32, r24, r138
	mma_16x16x16f16 r106, r32, r28, r106
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r30, r11, 0x0
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r134, r14, r22, r134
	mma_16x16x16f16 r102, r14, r26, r102
	mma_16x16x16f16 r134, r16, r24, r134
	mma_16x16x16f16 r102, r16, r28, r102
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r14, r10, 0x0
	add_i32 r10, 0x4000, r12
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r130, r18, r22, r130
	mma_16x16x16f16 r98, r18, r26, r98
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r10, r10, 0x0
	.loc	2 335 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:335:61
	mma_16x16x16f16 r130, r20, r24, r130
	mma_16x16x16f16 r98, r20, r28, r98
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r18, r9, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
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
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r14, r8, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r86, r10, r22, r86
	mma_16x16x16f16 r54, r10, r26, r54
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r8, r7, 0x0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	mma_16x16x16f16 r86, r12, r24, r86
	mma_16x16x16f16 r54, r12, r28, r54
	arrive bsmcnt(2)
	mma_16x16x16f16 r82, r18, r22, r82
	mma_16x16x16f16 r50, r18, r26, r50
	mma_16x16x16f16 r82, r20, r24, r82
	mma_16x16x16f16 r50, r20, r28, r50
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r18, r6, 0x0
	.loc	2 357 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:357:3
	shl_b64 r6, 0, s20
	mad_i32 r6, s10, 2, r6
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	arrive bsmcnt(2)
	mma_16x16x16f16 r78, r14, r22, r78
	mma_16x16x16f16 r46, r14, r26, r46
	.loc	2 343 48                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:343:48
	lds_b128 r12, r5, 0x0
	.loc	2 357 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:357:3
	shl_b32 r5, 1, r2
	add_co_u32 r6, r6, r5
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
	mma_16x16x16f16 r78, r16, r24, r78
	.loc	2 357 3                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:357:3
	addc_co_u32 r7, r7, 0
	add_u16 r5_lo, 0, 0
	.loc	2 349 61                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:349:61
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
	.loc	2 359 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:359:9
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB3_22
; %bb.19:                               ; %if.then717
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	add_u16 r5_lo, 0, 0
	.loc	2 361 114 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:361:114
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_21
; %bb.20:                               ; %if.then739
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:114
	shl_b32 r5, 1, r4
	add_co_u32 r8, r6, r5
	addc_co_u32 r9, r7, 0
	.loc	2 362 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:362:19
	snop 1
	ldg_u16 r5, r8, 0x0
LBB3_21:                                ; %Flow560
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_22:                                ; %for.inc760
	sor_b64 xmsk, xmsk, s12
	.loc	2 359 63 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:359:63
	or_b32 r8, r4, 16
	.loc	2 359 92 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:359:92
	or_b32 r4, r2, r8
	cmp_gt_i32 s14, s0, r4
	add_u16 r4_lo, 0, 0
	.loc	2 359 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:359:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then717.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	add_u16 r4_lo, 0, 0
	.loc	2 361 114 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:361:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then739.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:114
	shl_b32 r4, 1, r8
	add_co_u32 r6, r6, r4
	addc_co_u32 r7, r7, 0
	.loc	2 362 19 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:362:19
	snop 1
	ldg_u16 r4, r6, 0x0
LBB3_25:                                ; %Flow559
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:19
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
	.loc	2 370 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:370:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s16, r1
	mov_b32 r2, s17
	addc_co_u32 r2, r2, 0
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_34
; %bb.27:                               ; %for.inc883
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_37
LBB3_28:                                ; %for.inc883.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_40
LBB3_29:                                ; %for.inc883.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_43
LBB3_30:                                ; %for.inc883.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_46
LBB3_31:                                ; %for.inc883.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_49
LBB3_32:                                ; %for.inc883.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_52
LBB3_33:                                ; %for.inc883.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_55
	bra LBB3_58
LBB3_34:                                ; %if.then777
.Ltmp817:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp818:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp819:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp820:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp821:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_36
; %bb.35:                               ; %if.then846
.Ltmp822:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp823:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r8, r161, r3
.Ltmp824:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp825:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r9, r160, r3
.Ltmp826:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp827:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r8, 16, r8
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r8, r159, r3
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r3, r158, r3
.Ltmp828:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp829:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp830:
	.loc	2 385 28 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	addc_co_u32 r11, r2, r11
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_36:                                ; %Flow558
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_28
LBB3_37:                                ; %if.then777.1
.Ltmp831:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp832:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp833:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp834:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp835:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_39
; %bb.38:                               ; %if.then846.1
.Ltmp836:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp837:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r8, r157, r3
.Ltmp838:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp839:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r9, r156, r3
.Ltmp840:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp841:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r8, 16, r8
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r8, r155, r3
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r3, r154, r3
.Ltmp842:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp843:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp844:
	.loc	2 385 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:313
	shl_b64 r10, 1, r6
	.loc	2 385 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r10, r1, r10
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	addc_co_u32 r11, r2, r11
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_39:                                ; %Flow557
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_29
LBB3_40:                                ; %if.then777.2
.Ltmp845:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp846:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp847:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp848:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp849:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_42
; %bb.41:                               ; %if.then846.2
.Ltmp850:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp851:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r8, r153, r3
.Ltmp852:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp853:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r9, r152, r3
.Ltmp854:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp855:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r8, 16, r8
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r8, r151, r3
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r3, r150, r3
.Ltmp856:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp857:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp858:
	.loc	2 385 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:313
	shl_b64 r10, 1, r6
	.loc	2 385 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r10, r1, r10
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	addc_co_u32 r11, r2, r11
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_42:                                ; %Flow556
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_30
LBB3_43:                                ; %if.then777.3
.Ltmp859:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp860:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp861:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp862:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp863:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_45
; %bb.44:                               ; %if.then846.3
.Ltmp864:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp865:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r8, r149, r3
.Ltmp866:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp867:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r9, r148, r3
.Ltmp868:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp869:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r8, 16, r8
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r8, r147, r3
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r3, r146, r3
.Ltmp870:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp871:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp872:
	.loc	2 385 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:313
	shl_b64 r10, 1, r6
	.loc	2 385 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r10, r1, r10
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	addc_co_u32 r11, r2, r11
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_45:                                ; %Flow555
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_31
LBB3_46:                                ; %if.then777.4
.Ltmp873:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp874:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp875:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp876:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp877:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_48
; %bb.47:                               ; %if.then846.4
.Ltmp878:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp879:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r8, r145, r3
.Ltmp880:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp881:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r9, r144, r3
.Ltmp882:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp883:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r8, 16, r8
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r8, r143, r3
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r3, r142, r3
.Ltmp884:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp885:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp886:
	.loc	2 385 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:313
	shl_b64 r10, 1, r6
	.loc	2 385 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r10, r1, r10
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	addc_co_u32 r11, r2, r11
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_48:                                ; %Flow554
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_32
LBB3_49:                                ; %if.then777.5
.Ltmp887:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp888:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp889:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp890:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp891:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_51
; %bb.50:                               ; %if.then846.5
.Ltmp892:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp893:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r8, r141, r3
.Ltmp894:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp895:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r9, r140, r3
.Ltmp896:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp897:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r8, 16, r8
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r8, r139, r3
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r3, r138, r3
.Ltmp898:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp899:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp900:
	.loc	2 385 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:313
	shl_b64 r10, 1, r6
	.loc	2 385 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r10, r1, r10
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	addc_co_u32 r11, r2, r11
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_51:                                ; %Flow553
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_33
LBB3_52:                                ; %if.then777.6
.Ltmp901:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp902:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp903:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp904:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp905:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_54
; %bb.53:                               ; %if.then846.6
.Ltmp906:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp907:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r8, r137, r3
.Ltmp908:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp909:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r9, r136, r3
.Ltmp910:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp911:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r8, 16, r8
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r8, r135, r3
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r3, r134, r3
.Ltmp912:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp913:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp914:
	.loc	2 385 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:313
	shl_b64 r10, 1, r6
	.loc	2 385 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r10, r1, r10
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	addc_co_u32 r11, r2, r11
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_54:                                ; %Flow552
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_58
LBB3_55:                                ; %if.then777.7
.Ltmp915:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp916:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp917:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp918:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp919:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_57
; %bb.56:                               ; %if.then846.7
.Ltmp920:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp921:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r8, r133, r3
.Ltmp922:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp923:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r9, r132, r3
.Ltmp924:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp925:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r8, 16, r8
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r8, r131, r3
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r3, r130, r3
.Ltmp926:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp927:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp928:
	.loc	2 385 313 is_stmt 1             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:313
	shl_b64 r10, 1, r6
	.loc	2 385 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r10, r1, r10
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	addc_co_u32 r11, r2, r11
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0xe0, r8 devc
LBB3_57:                                ; %Flow551
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
LBB3_58:                                ; %for.inc883.7
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 66 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:66
	or_b32 r0, r0, 16
	.loc	2 371 95 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	snop 3
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_66
; %bb.59:                               ; %for.inc883.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_69
LBB3_60:                                ; %for.inc883.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_72
LBB3_61:                                ; %for.inc883.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_75
LBB3_62:                                ; %for.inc883.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_78
LBB3_63:                                ; %for.inc883.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_81
LBB3_64:                                ; %for.inc883.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_84
LBB3_65:                                ; %for.inc883.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmsks LBB3_87
	bra LBB3_90
LBB3_66:                                ; %if.then777.8
.Ltmp929:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp930:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp931:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp932:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp933:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then846.8
.Ltmp934:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp935:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r3, r129, r0
.Ltmp936:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp937:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r8, r128, r0
.Ltmp938:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp939:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r3, 16, r3
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r3, r127, r0
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r0, r126, r0
.Ltmp940:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp941:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp942:
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	or_b32 r8, r3, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r3, 0
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_68:                                ; %Flow550
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_60
LBB3_69:                                ; %if.then777.9
.Ltmp943:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp944:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp945:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp946:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp947:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_71
; %bb.70:                               ; %if.then846.9
.Ltmp948:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp949:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r3, r125, r0
.Ltmp950:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp951:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r8, r124, r0
.Ltmp952:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp953:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r3, 16, r3
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r3, r123, r0
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r0, r122, r0
.Ltmp954:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp955:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp956:
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	or_b32 r8, r3, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r3, 0
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_71:                                ; %Flow549
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_61
LBB3_72:                                ; %if.then777.10
.Ltmp957:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp958:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp959:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp960:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp961:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.then846.10
.Ltmp962:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp963:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r3, r121, r0
.Ltmp964:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp965:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r8, r120, r0
.Ltmp966:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp967:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r3, 16, r3
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r3, r119, r0
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r0, r118, r0
.Ltmp968:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp969:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp970:
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	or_b32 r8, r3, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r3, 0
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_74:                                ; %Flow548
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_62
LBB3_75:                                ; %if.then777.11
.Ltmp971:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp972:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp973:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp974:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp975:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_77
; %bb.76:                               ; %if.then846.11
.Ltmp976:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp977:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r3, r117, r0
.Ltmp978:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp979:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r8, r116, r0
.Ltmp980:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp981:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r3, 16, r3
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r3, r115, r0
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r0, r114, r0
.Ltmp982:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp983:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp984:
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	or_b32 r8, r3, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r3, 0
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_77:                                ; %Flow547
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_63
LBB3_78:                                ; %if.then777.12
.Ltmp985:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp986:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp987:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp988:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp989:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then846.12
.Ltmp990:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp991:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r3, r113, r0
.Ltmp992:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp993:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r8, r112, r0
.Ltmp994:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp995:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r3, 16, r3
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r3, r111, r0
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r0, r110, r0
.Ltmp996:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp997:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp998:
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	or_b32 r8, r3, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r3, 0
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_80:                                ; %Flow546
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_64
LBB3_81:                                ; %if.then777.13
.Ltmp999:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1000:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1001:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1002:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1003:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_83
; %bb.82:                               ; %if.then846.13
.Ltmp1004:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp1005:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r3, r109, r0
.Ltmp1006:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1007:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r8, r108, r0
.Ltmp1008:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1009:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r3, 16, r3
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r3, r107, r0
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r0, r106, r0
.Ltmp1010:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1011:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp1012:
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	or_b32 r8, r3, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_83:                                ; %Flow545
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_65
LBB3_84:                                ; %if.then777.14
.Ltmp1013:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1014:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1015:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1016:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1017:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_86
; %bb.85:                               ; %if.then846.14
.Ltmp1018:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp1019:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r3, r105, r0
.Ltmp1020:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1021:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r8, r104, r0
.Ltmp1022:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1023:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r3, 16, r3
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r3, r103, r0
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r0, r102, r0
.Ltmp1024:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1025:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp1026:
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	or_b32 r8, r3, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_86:                                ; %Flow544
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 371 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:371:9
	and_xmsk s4, s0
	snop 0
	bra_xmskz LBB3_90
LBB3_87:                                ; %if.then777.15
.Ltmp1027:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1028:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1029:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1030:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1031:
	.loc	2 383 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:383:11
	snop 0
	and_xmsk s10, s6
	snop 0
	bra_xmskz LBB3_89
; %bb.88:                               ; %if.then846.15
.Ltmp1032:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp1033:
	.loc	2 379 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:379:22
	mul_f32 r3, r101, r0
.Ltmp1034:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1035:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	mul_f32 r8, r100, r0
.Ltmp1036:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1037:
	.loc	2 378 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:378:22
	shl_b32 r3, 16, r3
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 377 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:377:22
	mul_f32 r3, r99, r0
	.loc	2 376 22                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:376:22
	mul_f32 r0, r98, r0
.Ltmp1038:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1039:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp1040:
	.loc	2 382 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	shl_b64 r10, 1, r6
	.loc	2 382 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:382:42
	or_b32 r8, r3, r0
	.loc	2 385 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380e0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 385 444 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:385:444
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_89:                                ; %Flow543
	.loc	2 0 444                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:444
	sor_b64 xmsk, xmsk, s10
LBB3_90:                                ; %for.inc883.15
	sor_b64 xmsk, xmsk, s4
	.loc	2 391 3 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:391:3
	add_co_u32 r0, 0x100, r1
	addc_co_u32 r1, r2, 0
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_107
; %bb.91:                               ; %for.inc1011
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_110
LBB3_92:                                ; %for.inc1011.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_113
LBB3_93:                                ; %for.inc1011.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_116
LBB3_94:                                ; %for.inc1011.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_119
LBB3_95:                                ; %for.inc1011.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_122
LBB3_96:                                ; %for.inc1011.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_125
LBB3_97:                                ; %for.inc1011.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_128
LBB3_98:                                ; %for.inc1011.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_131
LBB3_99:                                ; %for.inc1011.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_134
LBB3_100:                               ; %for.inc1011.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_137
LBB3_101:                               ; %for.inc1011.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_140
LBB3_102:                               ; %for.inc1011.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_143
LBB3_103:                               ; %for.inc1011.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_146
LBB3_104:                               ; %for.inc1011.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_149
LBB3_105:                               ; %for.inc1011.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_152
LBB3_106:                               ; %for.inc1011.15
	.loc	2 411 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:411:1
	snop 0
	endk
LBB3_107:                               ; %if.then900
.Ltmp1041:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1042:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1043:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1044:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1045:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_109
; %bb.108:                              ; %if.then973
.Ltmp1046:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1047:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r97, r2
.Ltmp1048:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1049:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r8, r96, r2
.Ltmp1050:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1051:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r95, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r94, r2
.Ltmp1052:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1053:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1054:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_109:                               ; %Flow542
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_92
LBB3_110:                               ; %if.then900.1
.Ltmp1055:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1056:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1057:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1058:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1059:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_112
; %bb.111:                              ; %if.then973.1
.Ltmp1060:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1061:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r93, r2
.Ltmp1062:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1063:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r8, r92, r2
.Ltmp1064:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1065:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r91, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r90, r2
.Ltmp1066:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1067:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1068:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:314
	shl_b64 r2, 1, r6
	.loc	2 406 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 406 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x20, r8 devc
LBB3_112:                               ; %Flow541
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_93
LBB3_113:                               ; %if.then900.2
.Ltmp1069:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1070:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1071:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1072:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1073:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_115
; %bb.114:                              ; %if.then973.2
.Ltmp1074:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1075:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r89, r2
.Ltmp1076:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1077:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r8, r88, r2
.Ltmp1078:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1079:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r87, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r86, r2
.Ltmp1080:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1081:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1082:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:314
	shl_b64 r2, 1, r6
	.loc	2 406 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 406 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x40, r8 devc
LBB3_115:                               ; %Flow540
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_94
LBB3_116:                               ; %if.then900.3
.Ltmp1083:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1084:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1085:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1086:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1087:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_118
; %bb.117:                              ; %if.then973.3
.Ltmp1088:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1089:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r85, r2
.Ltmp1090:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1091:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r8, r84, r2
.Ltmp1092:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1093:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r83, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r82, r2
.Ltmp1094:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1095:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1096:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:314
	shl_b64 r2, 1, r6
	.loc	2 406 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 406 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x60, r8 devc
LBB3_118:                               ; %Flow539
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_95
LBB3_119:                               ; %if.then900.4
.Ltmp1097:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1098:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1099:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1100:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1101:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_121
; %bb.120:                              ; %if.then973.4
.Ltmp1102:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1103:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r81, r2
.Ltmp1104:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1105:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r8, r80, r2
.Ltmp1106:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1107:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r79, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r78, r2
.Ltmp1108:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1109:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1110:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:314
	shl_b64 r2, 1, r6
	.loc	2 406 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 406 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x80, r8 devc
LBB3_121:                               ; %Flow538
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_96
LBB3_122:                               ; %if.then900.5
.Ltmp1111:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1112:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1113:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1114:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1115:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_124
; %bb.123:                              ; %if.then973.5
.Ltmp1116:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1117:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r77, r2
.Ltmp1118:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1119:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r8, r76, r2
.Ltmp1120:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1121:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r75, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r74, r2
.Ltmp1122:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1123:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1124:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:314
	shl_b64 r2, 1, r6
	.loc	2 406 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 406 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0xa0, r8 devc
LBB3_124:                               ; %Flow537
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_97
LBB3_125:                               ; %if.then900.6
.Ltmp1125:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1126:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1127:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1128:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s10, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s10
.Ltmp1129:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_127
; %bb.126:                              ; %if.then973.6
.Ltmp1130:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1131:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r73, r2
.Ltmp1132:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1133:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r8, r72, r2
.Ltmp1134:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp1135:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r8_hi, 0, 0
	or_b32 r9, r3, r8
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r71, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r70, r2
.Ltmp1136:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1137:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1138:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:314
	shl_b64 r2, 1, r6
	.loc	2 406 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 406 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0xc0, r8 devc
LBB3_127:                               ; %Flow536
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_98
LBB3_128:                               ; %if.then900.7
.Ltmp1139:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp1140:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp1141:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp1142:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s2, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s2
.Ltmp1143:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_130
; %bb.129:                              ; %if.then973.7
.Ltmp1144:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r5_lo
.Ltmp1145:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r69, r2
.Ltmp1146:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1147:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r5, r68, r2
.Ltmp1148:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1149:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r67, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r66, r2
.Ltmp1150:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1151:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1152:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 314                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:314
	shl_b64 r2, 1, r6
	.loc	2 406 28 is_stmt 0              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	.loc	2 406 461                       ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0xe0, r8 devc
LBB3_130:                               ; %Flow535
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s2
	sor_b64 xmsk, xmsk, s4
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_99
LBB3_131:                               ; %if.then900.8
.Ltmp1153:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1154:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1155:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1156:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1157:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_133
; %bb.132:                              ; %if.then973.8
.Ltmp1158:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1159:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r65, r2
.Ltmp1160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1161:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r5, r64, r2
.Ltmp1162:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1163:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r63, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r62, r2
.Ltmp1164:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1165:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1166:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38000, r2
	addc_co_u32 r3, r3, 0
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_133:                               ; %Flow534
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_100
LBB3_134:                               ; %if.then900.9
.Ltmp1167:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1168:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1169:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1170:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1171:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_136
; %bb.135:                              ; %if.then973.9
.Ltmp1172:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1173:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r61, r2
.Ltmp1174:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1175:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r5, r60, r2
.Ltmp1176:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1177:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r59, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r58, r2
.Ltmp1178:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1179:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1180:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38020, r2
	addc_co_u32 r3, r3, 0
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_136:                               ; %Flow533
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_101
LBB3_137:                               ; %if.then900.10
.Ltmp1181:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1182:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1183:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1184:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1185:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_139
; %bb.138:                              ; %if.then973.10
.Ltmp1186:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1187:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r57, r2
.Ltmp1188:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1189:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r5, r56, r2
.Ltmp1190:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1191:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r55, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r54, r2
.Ltmp1192:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1193:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1194:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38040, r2
	addc_co_u32 r3, r3, 0
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_139:                               ; %Flow532
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_102
LBB3_140:                               ; %if.then900.11
.Ltmp1195:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1196:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1197:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1198:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1199:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_142
; %bb.141:                              ; %if.then973.11
.Ltmp1200:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1201:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r53, r2
.Ltmp1202:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1203:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r5, r52, r2
.Ltmp1204:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1205:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r51, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r50, r2
.Ltmp1206:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1207:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1208:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38060, r2
	addc_co_u32 r3, r3, 0
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_142:                               ; %Flow531
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_103
LBB3_143:                               ; %if.then900.12
.Ltmp1209:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1210:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1211:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1212:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1213:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_145
; %bb.144:                              ; %if.then973.12
.Ltmp1214:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1215:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r49, r2
.Ltmp1216:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1217:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r5, r48, r2
.Ltmp1218:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1219:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r47, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r46, r2
.Ltmp1220:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1221:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1222:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x38080, r2
	addc_co_u32 r3, r3, 0
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_145:                               ; %Flow530
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_146:                               ; %if.then900.13
.Ltmp1223:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1224:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1225:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1226:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1227:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_148
; %bb.147:                              ; %if.then973.13
.Ltmp1228:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1229:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r45, r2
.Ltmp1230:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1231:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r5, r44, r2
.Ltmp1232:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1233:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r43, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r42, r2
.Ltmp1234:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1235:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1236:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x380a0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_148:                               ; %Flow529
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_105
LBB3_149:                               ; %if.then900.14
.Ltmp1237:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1238:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1239:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1240:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp1241:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_151
; %bb.150:                              ; %if.then973.14
.Ltmp1242:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1243:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r41, r2
.Ltmp1244:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1245:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r5, r40, r2
.Ltmp1246:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp1247:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r39, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r38, r2
.Ltmp1248:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1249:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1250:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r8, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r2, r0, r2
	addc_co_u32 r3, r1, r3
	add_co_u32 r2, 0x380c0, r2
	addc_co_u32 r3, r3, 0
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r2, 0x0, r8 devc
LBB3_151:                               ; %Flow528
	.loc	2 0 461                         ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:0:461
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 392 9 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:392:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_106
LBB3_152:                               ; %if.then900.15
.Ltmp1251:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp1252:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp1253:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp1254:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp1255:
	.loc	2 404 11 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:404:11
	snop 0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_106
; %bb.153:                              ; %if.then973.15
.Ltmp1256:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r2, r4_lo
.Ltmp1257:
	.loc	2 400 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:400:24
	mul_f32 r3, r37, r2
.Ltmp1258:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1259:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	mul_f32 r4, r36, r2
.Ltmp1260:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp1261:
	.loc	2 399 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:399:24
	shl_b32 r3, 16, r3
	.loc	2 403 42                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	.loc	2 398 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:398:24
	mul_f32 r3, r35, r2
	.loc	2 397 24                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:397:24
	mul_f32 r2, r34, r2
.Ltmp1262:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp1263:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r2_lo, r2
.Ltmp1264:
	.loc	2 403 42 is_stmt 1              ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:403:42
	shl_b32 r3, 16, r3
	and_b32 r2, 0xffff, r2
	or_b32 r4, r3, r2
	.loc	2 406 28                        ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:28
	shl_b64 r2, 1, r6
	add_co_u32 r0, r0, r2
	addc_co_u32 r1, r1, r3
	add_co_u32 r0, 0x380e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 406 461 is_stmt 0             ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:406:461
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 411 1 is_stmt 1               ; race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp:411:1
	snop 2
	endk
.Ltmp1265:
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
	.byte	1                               ; Abbrev [1] 0xb:0x46d DW_TAG_compile_unit
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
	.byte	6                               ; Abbrev [6] 0xe6:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	120                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xf2:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	121                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xfe:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	122                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x10a:0xc DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	123                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x116:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	27                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x122:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x12f:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x13c:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x14b:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	137                             ; DW_AT_call_line
	.byte	27                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x157:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x164:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x171:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x180:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp351                        ; DW_AT_low_pc
	.long	.Ltmp352-.Ltmp351               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	145                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x194:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp351                        ; DW_AT_low_pc
	.long	.Ltmp352-.Ltmp351               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1a9:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp353                        ; DW_AT_low_pc
	.long	.Ltmp354-.Ltmp353               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	162                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1bd:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp353                        ; DW_AT_low_pc
	.long	.Ltmp354-.Ltmp353               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1d2:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp355                        ; DW_AT_low_pc
	.long	.Ltmp356-.Ltmp355               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	179                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1e6:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp355                        ; DW_AT_low_pc
	.long	.Ltmp356-.Ltmp355               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	4                               ; Abbrev [4] 0x1fb:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp515                        ; DW_AT_low_pc
	.long	.Ltmp516-.Ltmp515               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	196                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x20f:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp515                        ; DW_AT_low_pc
	.long	.Ltmp516-.Ltmp515               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x224:0x14 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.quad	.Ltmp517                        ; DW_AT_low_pc
	.long	.Ltmp518-.Ltmp517               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	21                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0x238:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	227                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x244:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x251:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x25e:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x26d:0x35 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	228                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x279:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x286:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x293:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	6                               ; Abbrev [6] 0x2a2:0xc DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	222                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x2ae:0xc DW_TAG_inlined_subroutine
	.long	84                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	221                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x2bb:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x2c1:0x6 DW_TAG_subprogram
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x2c7:0x1b0 DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string14                 ; DW_AT_name
	.byte	10                              ; Abbrev [10] 0x2d8:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp809                        ; DW_AT_low_pc
	.long	.Ltmp810-.Ltmp809               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	278                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x2ed:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp809                        ; DW_AT_low_pc
	.long	.Ltmp810-.Ltmp809               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x302:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp811                        ; DW_AT_low_pc
	.long	.Ltmp812-.Ltmp811               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	309                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x317:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp811                        ; DW_AT_low_pc
	.long	.Ltmp812-.Ltmp811               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x32c:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp813                        ; DW_AT_low_pc
	.long	.Ltmp814-.Ltmp813               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	326                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x341:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp813                        ; DW_AT_low_pc
	.long	.Ltmp814-.Ltmp813               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x356:0x14 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.quad	.Ltmp815                        ; DW_AT_low_pc
	.long	.Ltmp816-.Ltmp815               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	251                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x36a:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges22                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	380                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x377:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges23                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x384:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges24                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x391:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges25                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3a0:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges26                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	381                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3ad:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges27                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3ba:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges28                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x3c7:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges29                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3d6:0x1a DW_TAG_inlined_subroutine
	.long	705                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges30                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	375                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x3e3:0xc DW_TAG_inlined_subroutine
	.long	699                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges31                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.byte	136                             ; DW_AT_call_line
	.byte	55                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x3f0:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges32                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	401                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x3fd:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges33                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x40a:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges34                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x417:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges35                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x426:0x36 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges36                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	402                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x433:0x28 DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges37                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x440:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges38                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x44d:0xd DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges39                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x45c:0x1a DW_TAG_inlined_subroutine
	.long	705                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges40                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	396                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x469:0xc DW_TAG_inlined_subroutine
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
	.quad	.Ltmp11-.Lfunc_begin0
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp39-.Lfunc_begin0
	.quad	.Ltmp40-.Lfunc_begin0
	.quad	.Ltmp43-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp61-.Lfunc_begin0
	.quad	.Ltmp62-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp81-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp125-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp163-.Lfunc_begin0
	.quad	.Ltmp164-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp188-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp209-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp226-.Lfunc_begin0
	.quad	.Ltmp227-.Lfunc_begin0
	.quad	.Ltmp230-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp247-.Lfunc_begin0
	.quad	.Ltmp248-.Lfunc_begin0
	.quad	.Ltmp251-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp268-.Lfunc_begin0
	.quad	.Ltmp269-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp289-.Lfunc_begin0
	.quad	.Ltmp290-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp12-.Lfunc_begin0
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp19-.Lfunc_begin0
	.quad	.Ltmp20-.Lfunc_begin0
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp41-.Lfunc_begin0
	.quad	.Ltmp42-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp88-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp144-.Lfunc_begin0
	.quad	.Ltmp145-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp207-.Lfunc_begin0
	.quad	.Ltmp208-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp228-.Lfunc_begin0
	.quad	.Ltmp229-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp249-.Lfunc_begin0
	.quad	.Ltmp250-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp270-.Lfunc_begin0
	.quad	.Ltmp271-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp464-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp470-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp476-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp482-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp488-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp494-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp500-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp506-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
	.quad	.Ltmp17-.Lfunc_begin0
	.quad	.Ltmp18-.Lfunc_begin0
	.quad	.Ltmp23-.Lfunc_begin0
	.quad	.Ltmp24-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp87-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp106-.Lfunc_begin0
	.quad	.Ltmp107-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp126-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp151-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp169-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp172-.Lfunc_begin0
	.quad	.Ltmp189-.Lfunc_begin0
	.quad	.Ltmp190-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp193-.Lfunc_begin0
	.quad	.Ltmp210-.Lfunc_begin0
	.quad	.Ltmp211-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp214-.Lfunc_begin0
	.quad	.Ltmp231-.Lfunc_begin0
	.quad	.Ltmp232-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp252-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp277-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp315-.Lfunc_begin0
	.quad	.Ltmp316-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp319-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges3:
	.quad	.Ltmp21-.Lfunc_begin0
	.quad	.Ltmp22-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp30-.Lfunc_begin0
	.quad	.Ltmp31-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp49-.Lfunc_begin0
	.quad	.Ltmp50-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp55-.Lfunc_begin0
	.quad	.Ltmp68-.Lfunc_begin0
	.quad	.Ltmp69-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp74-.Lfunc_begin0
	.quad	.Ltmp75-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp93-.Lfunc_begin0
	.quad	.Ltmp94-.Lfunc_begin0
	.quad	.Ltmp95-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp112-.Lfunc_begin0
	.quad	.Ltmp113-.Lfunc_begin0
	.quad	.Ltmp114-.Lfunc_begin0
	.quad	.Ltmp115-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp131-.Lfunc_begin0
	.quad	.Ltmp132-.Lfunc_begin0
	.quad	.Ltmp133-.Lfunc_begin0
	.quad	.Ltmp134-.Lfunc_begin0
	.quad	.Ltmp135-.Lfunc_begin0
	.quad	.Ltmp136-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp150-.Lfunc_begin0
	.quad	.Ltmp152-.Lfunc_begin0
	.quad	.Ltmp153-.Lfunc_begin0
	.quad	.Ltmp154-.Lfunc_begin0
	.quad	.Ltmp155-.Lfunc_begin0
	.quad	.Ltmp156-.Lfunc_begin0
	.quad	.Ltmp157-.Lfunc_begin0
	.quad	.Ltmp170-.Lfunc_begin0
	.quad	.Ltmp171-.Lfunc_begin0
	.quad	.Ltmp173-.Lfunc_begin0
	.quad	.Ltmp174-.Lfunc_begin0
	.quad	.Ltmp175-.Lfunc_begin0
	.quad	.Ltmp176-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp191-.Lfunc_begin0
	.quad	.Ltmp192-.Lfunc_begin0
	.quad	.Ltmp194-.Lfunc_begin0
	.quad	.Ltmp195-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp212-.Lfunc_begin0
	.quad	.Ltmp213-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp220-.Lfunc_begin0
	.quad	.Ltmp233-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp239-.Lfunc_begin0
	.quad	.Ltmp240-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp258-.Lfunc_begin0
	.quad	.Ltmp259-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp278-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp283-.Lfunc_begin0
	.quad	.Ltmp296-.Lfunc_begin0
	.quad	.Ltmp297-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	.Ltmp302-.Lfunc_begin0
	.quad	.Ltmp303-.Lfunc_begin0
	.quad	.Ltmp304-.Lfunc_begin0
	.quad	.Ltmp317-.Lfunc_begin0
	.quad	.Ltmp318-.Lfunc_begin0
	.quad	.Ltmp320-.Lfunc_begin0
	.quad	.Ltmp321-.Lfunc_begin0
	.quad	.Ltmp322-.Lfunc_begin0
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp467-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp473-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp479-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp485-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp491-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp497-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp503-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp509-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges4:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp56-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp76-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp96-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp116-.Lfunc_begin0
	.quad	.Ltmp117-.Lfunc_begin0
	.quad	.Ltmp137-.Lfunc_begin0
	.quad	.Ltmp138-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp201-.Lfunc_begin0
	.quad	.Ltmp221-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp264-.Lfunc_begin0
	.quad	.Ltmp284-.Lfunc_begin0
	.quad	.Ltmp285-.Lfunc_begin0
	.quad	.Ltmp305-.Lfunc_begin0
	.quad	.Ltmp306-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp510-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp57-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp77-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp97-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
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
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
	.quad	.Ltmp463-.Lfunc_begin0
	.quad	.Ltmp468-.Lfunc_begin0
	.quad	.Ltmp469-.Lfunc_begin0
	.quad	.Ltmp474-.Lfunc_begin0
	.quad	.Ltmp475-.Lfunc_begin0
	.quad	.Ltmp480-.Lfunc_begin0
	.quad	.Ltmp481-.Lfunc_begin0
	.quad	.Ltmp486-.Lfunc_begin0
	.quad	.Ltmp487-.Lfunc_begin0
	.quad	.Ltmp492-.Lfunc_begin0
	.quad	.Ltmp493-.Lfunc_begin0
	.quad	.Ltmp498-.Lfunc_begin0
	.quad	.Ltmp499-.Lfunc_begin0
	.quad	.Ltmp504-.Lfunc_begin0
	.quad	.Ltmp505-.Lfunc_begin0
	.quad	.Ltmp511-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
	.quad	.Ltmp118-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp183-.Lfunc_begin0
	.quad	.Ltmp202-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp246-.Lfunc_begin0
	.quad	.Ltmp265-.Lfunc_begin0
	.quad	.Ltmp267-.Lfunc_begin0
	.quad	.Ltmp286-.Lfunc_begin0
	.quad	.Ltmp288-.Lfunc_begin0
	.quad	.Ltmp307-.Lfunc_begin0
	.quad	.Ltmp309-.Lfunc_begin0
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp36-.Lfunc_begin0
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp58-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp78-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp98-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
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
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp512-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp37-.Lfunc_begin0
	.quad	.Ltmp38-.Lfunc_begin0
	.quad	.Ltmp59-.Lfunc_begin0
	.quad	.Ltmp60-.Lfunc_begin0
	.quad	.Ltmp79-.Lfunc_begin0
	.quad	.Ltmp80-.Lfunc_begin0
	.quad	.Ltmp99-.Lfunc_begin0
	.quad	.Ltmp100-.Lfunc_begin0
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
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp465-.Lfunc_begin0
	.quad	.Ltmp466-.Lfunc_begin0
	.quad	.Ltmp471-.Lfunc_begin0
	.quad	.Ltmp472-.Lfunc_begin0
	.quad	.Ltmp477-.Lfunc_begin0
	.quad	.Ltmp478-.Lfunc_begin0
	.quad	.Ltmp483-.Lfunc_begin0
	.quad	.Ltmp484-.Lfunc_begin0
	.quad	.Ltmp489-.Lfunc_begin0
	.quad	.Ltmp490-.Lfunc_begin0
	.quad	.Ltmp495-.Lfunc_begin0
	.quad	.Ltmp496-.Lfunc_begin0
	.quad	.Ltmp501-.Lfunc_begin0
	.quad	.Ltmp502-.Lfunc_begin0
	.quad	.Ltmp507-.Lfunc_begin0
	.quad	.Ltmp508-.Lfunc_begin0
	.quad	.Ltmp513-.Lfunc_begin0
	.quad	.Ltmp514-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp519-.Lfunc_begin0
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp536-.Lfunc_begin0
	.quad	.Ltmp537-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp554-.Lfunc_begin0
	.quad	.Ltmp555-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp572-.Lfunc_begin0
	.quad	.Ltmp573-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp590-.Lfunc_begin0
	.quad	.Ltmp591-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp608-.Lfunc_begin0
	.quad	.Ltmp609-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp626-.Lfunc_begin0
	.quad	.Ltmp627-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp644-.Lfunc_begin0
	.quad	.Ltmp645-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp662-.Lfunc_begin0
	.quad	.Ltmp663-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp680-.Lfunc_begin0
	.quad	.Ltmp681-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp698-.Lfunc_begin0
	.quad	.Ltmp699-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp716-.Lfunc_begin0
	.quad	.Ltmp717-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp734-.Lfunc_begin0
	.quad	.Ltmp735-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp752-.Lfunc_begin0
	.quad	.Ltmp753-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp770-.Lfunc_begin0
	.quad	.Ltmp771-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp788-.Lfunc_begin0
	.quad	.Ltmp789-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	.Ltmp806-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp520-.Lfunc_begin0
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp534-.Lfunc_begin0
	.quad	.Ltmp535-.Lfunc_begin0
	.quad	.Ltmp538-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp552-.Lfunc_begin0
	.quad	.Ltmp553-.Lfunc_begin0
	.quad	.Ltmp556-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp570-.Lfunc_begin0
	.quad	.Ltmp571-.Lfunc_begin0
	.quad	.Ltmp574-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp588-.Lfunc_begin0
	.quad	.Ltmp589-.Lfunc_begin0
	.quad	.Ltmp592-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp606-.Lfunc_begin0
	.quad	.Ltmp607-.Lfunc_begin0
	.quad	.Ltmp610-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp624-.Lfunc_begin0
	.quad	.Ltmp625-.Lfunc_begin0
	.quad	.Ltmp628-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp642-.Lfunc_begin0
	.quad	.Ltmp643-.Lfunc_begin0
	.quad	.Ltmp646-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp660-.Lfunc_begin0
	.quad	.Ltmp661-.Lfunc_begin0
	.quad	.Ltmp664-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp678-.Lfunc_begin0
	.quad	.Ltmp679-.Lfunc_begin0
	.quad	.Ltmp682-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp696-.Lfunc_begin0
	.quad	.Ltmp697-.Lfunc_begin0
	.quad	.Ltmp700-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp714-.Lfunc_begin0
	.quad	.Ltmp715-.Lfunc_begin0
	.quad	.Ltmp718-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp732-.Lfunc_begin0
	.quad	.Ltmp733-.Lfunc_begin0
	.quad	.Ltmp736-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp750-.Lfunc_begin0
	.quad	.Ltmp751-.Lfunc_begin0
	.quad	.Ltmp754-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp768-.Lfunc_begin0
	.quad	.Ltmp769-.Lfunc_begin0
	.quad	.Ltmp772-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp786-.Lfunc_begin0
	.quad	.Ltmp787-.Lfunc_begin0
	.quad	.Ltmp790-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp804-.Lfunc_begin0
	.quad	.Ltmp805-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp521-.Lfunc_begin0
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp529-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp539-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp547-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp557-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp565-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp575-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp583-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp593-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp601-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp611-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp619-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp629-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp637-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp647-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp655-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp665-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp673-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp683-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp691-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp701-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp709-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp719-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp727-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp737-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp745-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp755-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp763-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp773-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp781-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp791-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp799-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp522-.Lfunc_begin0
	.quad	.Ltmp523-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp528-.Lfunc_begin0
	.quad	.Ltmp540-.Lfunc_begin0
	.quad	.Ltmp541-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp546-.Lfunc_begin0
	.quad	.Ltmp558-.Lfunc_begin0
	.quad	.Ltmp559-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp564-.Lfunc_begin0
	.quad	.Ltmp576-.Lfunc_begin0
	.quad	.Ltmp577-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp582-.Lfunc_begin0
	.quad	.Ltmp594-.Lfunc_begin0
	.quad	.Ltmp595-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp600-.Lfunc_begin0
	.quad	.Ltmp612-.Lfunc_begin0
	.quad	.Ltmp613-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp618-.Lfunc_begin0
	.quad	.Ltmp630-.Lfunc_begin0
	.quad	.Ltmp631-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp636-.Lfunc_begin0
	.quad	.Ltmp648-.Lfunc_begin0
	.quad	.Ltmp649-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp654-.Lfunc_begin0
	.quad	.Ltmp666-.Lfunc_begin0
	.quad	.Ltmp667-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp672-.Lfunc_begin0
	.quad	.Ltmp684-.Lfunc_begin0
	.quad	.Ltmp685-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp690-.Lfunc_begin0
	.quad	.Ltmp702-.Lfunc_begin0
	.quad	.Ltmp703-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp708-.Lfunc_begin0
	.quad	.Ltmp720-.Lfunc_begin0
	.quad	.Ltmp721-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp726-.Lfunc_begin0
	.quad	.Ltmp738-.Lfunc_begin0
	.quad	.Ltmp739-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp744-.Lfunc_begin0
	.quad	.Ltmp756-.Lfunc_begin0
	.quad	.Ltmp757-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp762-.Lfunc_begin0
	.quad	.Ltmp774-.Lfunc_begin0
	.quad	.Ltmp775-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp780-.Lfunc_begin0
	.quad	.Ltmp792-.Lfunc_begin0
	.quad	.Ltmp793-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp798-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp524-.Lfunc_begin0
	.quad	.Ltmp525-.Lfunc_begin0
	.quad	.Ltmp526-.Lfunc_begin0
	.quad	.Ltmp527-.Lfunc_begin0
	.quad	.Ltmp530-.Lfunc_begin0
	.quad	.Ltmp531-.Lfunc_begin0
	.quad	.Ltmp542-.Lfunc_begin0
	.quad	.Ltmp543-.Lfunc_begin0
	.quad	.Ltmp544-.Lfunc_begin0
	.quad	.Ltmp545-.Lfunc_begin0
	.quad	.Ltmp548-.Lfunc_begin0
	.quad	.Ltmp549-.Lfunc_begin0
	.quad	.Ltmp560-.Lfunc_begin0
	.quad	.Ltmp561-.Lfunc_begin0
	.quad	.Ltmp562-.Lfunc_begin0
	.quad	.Ltmp563-.Lfunc_begin0
	.quad	.Ltmp566-.Lfunc_begin0
	.quad	.Ltmp567-.Lfunc_begin0
	.quad	.Ltmp578-.Lfunc_begin0
	.quad	.Ltmp579-.Lfunc_begin0
	.quad	.Ltmp580-.Lfunc_begin0
	.quad	.Ltmp581-.Lfunc_begin0
	.quad	.Ltmp584-.Lfunc_begin0
	.quad	.Ltmp585-.Lfunc_begin0
	.quad	.Ltmp596-.Lfunc_begin0
	.quad	.Ltmp597-.Lfunc_begin0
	.quad	.Ltmp598-.Lfunc_begin0
	.quad	.Ltmp599-.Lfunc_begin0
	.quad	.Ltmp602-.Lfunc_begin0
	.quad	.Ltmp603-.Lfunc_begin0
	.quad	.Ltmp614-.Lfunc_begin0
	.quad	.Ltmp615-.Lfunc_begin0
	.quad	.Ltmp616-.Lfunc_begin0
	.quad	.Ltmp617-.Lfunc_begin0
	.quad	.Ltmp620-.Lfunc_begin0
	.quad	.Ltmp621-.Lfunc_begin0
	.quad	.Ltmp632-.Lfunc_begin0
	.quad	.Ltmp633-.Lfunc_begin0
	.quad	.Ltmp634-.Lfunc_begin0
	.quad	.Ltmp635-.Lfunc_begin0
	.quad	.Ltmp638-.Lfunc_begin0
	.quad	.Ltmp639-.Lfunc_begin0
	.quad	.Ltmp650-.Lfunc_begin0
	.quad	.Ltmp651-.Lfunc_begin0
	.quad	.Ltmp652-.Lfunc_begin0
	.quad	.Ltmp653-.Lfunc_begin0
	.quad	.Ltmp656-.Lfunc_begin0
	.quad	.Ltmp657-.Lfunc_begin0
	.quad	.Ltmp668-.Lfunc_begin0
	.quad	.Ltmp669-.Lfunc_begin0
	.quad	.Ltmp670-.Lfunc_begin0
	.quad	.Ltmp671-.Lfunc_begin0
	.quad	.Ltmp674-.Lfunc_begin0
	.quad	.Ltmp675-.Lfunc_begin0
	.quad	.Ltmp686-.Lfunc_begin0
	.quad	.Ltmp687-.Lfunc_begin0
	.quad	.Ltmp688-.Lfunc_begin0
	.quad	.Ltmp689-.Lfunc_begin0
	.quad	.Ltmp692-.Lfunc_begin0
	.quad	.Ltmp693-.Lfunc_begin0
	.quad	.Ltmp704-.Lfunc_begin0
	.quad	.Ltmp705-.Lfunc_begin0
	.quad	.Ltmp706-.Lfunc_begin0
	.quad	.Ltmp707-.Lfunc_begin0
	.quad	.Ltmp710-.Lfunc_begin0
	.quad	.Ltmp711-.Lfunc_begin0
	.quad	.Ltmp722-.Lfunc_begin0
	.quad	.Ltmp723-.Lfunc_begin0
	.quad	.Ltmp724-.Lfunc_begin0
	.quad	.Ltmp725-.Lfunc_begin0
	.quad	.Ltmp728-.Lfunc_begin0
	.quad	.Ltmp729-.Lfunc_begin0
	.quad	.Ltmp740-.Lfunc_begin0
	.quad	.Ltmp741-.Lfunc_begin0
	.quad	.Ltmp742-.Lfunc_begin0
	.quad	.Ltmp743-.Lfunc_begin0
	.quad	.Ltmp746-.Lfunc_begin0
	.quad	.Ltmp747-.Lfunc_begin0
	.quad	.Ltmp758-.Lfunc_begin0
	.quad	.Ltmp759-.Lfunc_begin0
	.quad	.Ltmp760-.Lfunc_begin0
	.quad	.Ltmp761-.Lfunc_begin0
	.quad	.Ltmp764-.Lfunc_begin0
	.quad	.Ltmp765-.Lfunc_begin0
	.quad	.Ltmp776-.Lfunc_begin0
	.quad	.Ltmp777-.Lfunc_begin0
	.quad	.Ltmp778-.Lfunc_begin0
	.quad	.Ltmp779-.Lfunc_begin0
	.quad	.Ltmp782-.Lfunc_begin0
	.quad	.Ltmp783-.Lfunc_begin0
	.quad	.Ltmp794-.Lfunc_begin0
	.quad	.Ltmp795-.Lfunc_begin0
	.quad	.Ltmp796-.Lfunc_begin0
	.quad	.Ltmp797-.Lfunc_begin0
	.quad	.Ltmp800-.Lfunc_begin0
	.quad	.Ltmp801-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp532-.Lfunc_begin0
	.quad	.Ltmp533-.Lfunc_begin0
	.quad	.Ltmp550-.Lfunc_begin0
	.quad	.Ltmp551-.Lfunc_begin0
	.quad	.Ltmp568-.Lfunc_begin0
	.quad	.Ltmp569-.Lfunc_begin0
	.quad	.Ltmp586-.Lfunc_begin0
	.quad	.Ltmp587-.Lfunc_begin0
	.quad	.Ltmp604-.Lfunc_begin0
	.quad	.Ltmp605-.Lfunc_begin0
	.quad	.Ltmp622-.Lfunc_begin0
	.quad	.Ltmp623-.Lfunc_begin0
	.quad	.Ltmp640-.Lfunc_begin0
	.quad	.Ltmp641-.Lfunc_begin0
	.quad	.Ltmp658-.Lfunc_begin0
	.quad	.Ltmp659-.Lfunc_begin0
	.quad	.Ltmp676-.Lfunc_begin0
	.quad	.Ltmp677-.Lfunc_begin0
	.quad	.Ltmp694-.Lfunc_begin0
	.quad	.Ltmp695-.Lfunc_begin0
	.quad	.Ltmp712-.Lfunc_begin0
	.quad	.Ltmp713-.Lfunc_begin0
	.quad	.Ltmp730-.Lfunc_begin0
	.quad	.Ltmp731-.Lfunc_begin0
	.quad	.Ltmp748-.Lfunc_begin0
	.quad	.Ltmp749-.Lfunc_begin0
	.quad	.Ltmp766-.Lfunc_begin0
	.quad	.Ltmp767-.Lfunc_begin0
	.quad	.Ltmp784-.Lfunc_begin0
	.quad	.Ltmp785-.Lfunc_begin0
	.quad	.Ltmp802-.Lfunc_begin0
	.quad	.Ltmp803-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges22:
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.quad	.Ltmp830-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp856-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp872-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp884-.Lfunc_begin0
	.quad	.Ltmp886-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp898-.Lfunc_begin0
	.quad	.Ltmp900-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp912-.Lfunc_begin0
	.quad	.Ltmp914-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp926-.Lfunc_begin0
	.quad	.Ltmp928-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp940-.Lfunc_begin0
	.quad	.Ltmp942-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	.Ltmp954-.Lfunc_begin0
	.quad	.Ltmp956-.Lfunc_begin0
	.quad	.Ltmp957-.Lfunc_begin0
	.quad	.Ltmp959-.Lfunc_begin0
	.quad	.Ltmp968-.Lfunc_begin0
	.quad	.Ltmp970-.Lfunc_begin0
	.quad	.Ltmp971-.Lfunc_begin0
	.quad	.Ltmp973-.Lfunc_begin0
	.quad	.Ltmp982-.Lfunc_begin0
	.quad	.Ltmp984-.Lfunc_begin0
	.quad	.Ltmp985-.Lfunc_begin0
	.quad	.Ltmp987-.Lfunc_begin0
	.quad	.Ltmp996-.Lfunc_begin0
	.quad	.Ltmp998-.Lfunc_begin0
	.quad	.Ltmp999-.Lfunc_begin0
	.quad	.Ltmp1001-.Lfunc_begin0
	.quad	.Ltmp1010-.Lfunc_begin0
	.quad	.Ltmp1012-.Lfunc_begin0
	.quad	.Ltmp1013-.Lfunc_begin0
	.quad	.Ltmp1015-.Lfunc_begin0
	.quad	.Ltmp1024-.Lfunc_begin0
	.quad	.Ltmp1026-.Lfunc_begin0
	.quad	.Ltmp1027-.Lfunc_begin0
	.quad	.Ltmp1029-.Lfunc_begin0
	.quad	.Ltmp1038-.Lfunc_begin0
	.quad	.Ltmp1040-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges23:
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.quad	.Ltmp830-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp856-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp872-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp884-.Lfunc_begin0
	.quad	.Ltmp886-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp898-.Lfunc_begin0
	.quad	.Ltmp900-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp912-.Lfunc_begin0
	.quad	.Ltmp914-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp926-.Lfunc_begin0
	.quad	.Ltmp928-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp940-.Lfunc_begin0
	.quad	.Ltmp942-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	.Ltmp954-.Lfunc_begin0
	.quad	.Ltmp956-.Lfunc_begin0
	.quad	.Ltmp957-.Lfunc_begin0
	.quad	.Ltmp959-.Lfunc_begin0
	.quad	.Ltmp968-.Lfunc_begin0
	.quad	.Ltmp970-.Lfunc_begin0
	.quad	.Ltmp971-.Lfunc_begin0
	.quad	.Ltmp973-.Lfunc_begin0
	.quad	.Ltmp982-.Lfunc_begin0
	.quad	.Ltmp984-.Lfunc_begin0
	.quad	.Ltmp985-.Lfunc_begin0
	.quad	.Ltmp987-.Lfunc_begin0
	.quad	.Ltmp996-.Lfunc_begin0
	.quad	.Ltmp998-.Lfunc_begin0
	.quad	.Ltmp999-.Lfunc_begin0
	.quad	.Ltmp1001-.Lfunc_begin0
	.quad	.Ltmp1010-.Lfunc_begin0
	.quad	.Ltmp1012-.Lfunc_begin0
	.quad	.Ltmp1013-.Lfunc_begin0
	.quad	.Ltmp1015-.Lfunc_begin0
	.quad	.Ltmp1024-.Lfunc_begin0
	.quad	.Ltmp1026-.Lfunc_begin0
	.quad	.Ltmp1027-.Lfunc_begin0
	.quad	.Ltmp1029-.Lfunc_begin0
	.quad	.Ltmp1038-.Lfunc_begin0
	.quad	.Ltmp1040-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges24:
	.quad	.Ltmp817-.Lfunc_begin0
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp830-.Lfunc_begin0
	.quad	.Ltmp831-.Lfunc_begin0
	.quad	.Ltmp832-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp844-.Lfunc_begin0
	.quad	.Ltmp845-.Lfunc_begin0
	.quad	.Ltmp846-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp858-.Lfunc_begin0
	.quad	.Ltmp859-.Lfunc_begin0
	.quad	.Ltmp860-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp872-.Lfunc_begin0
	.quad	.Ltmp873-.Lfunc_begin0
	.quad	.Ltmp874-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp886-.Lfunc_begin0
	.quad	.Ltmp887-.Lfunc_begin0
	.quad	.Ltmp888-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp900-.Lfunc_begin0
	.quad	.Ltmp901-.Lfunc_begin0
	.quad	.Ltmp902-.Lfunc_begin0
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp914-.Lfunc_begin0
	.quad	.Ltmp915-.Lfunc_begin0
	.quad	.Ltmp916-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp928-.Lfunc_begin0
	.quad	.Ltmp929-.Lfunc_begin0
	.quad	.Ltmp930-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp942-.Lfunc_begin0
	.quad	.Ltmp943-.Lfunc_begin0
	.quad	.Ltmp944-.Lfunc_begin0
	.quad	.Ltmp955-.Lfunc_begin0
	.quad	.Ltmp956-.Lfunc_begin0
	.quad	.Ltmp957-.Lfunc_begin0
	.quad	.Ltmp958-.Lfunc_begin0
	.quad	.Ltmp969-.Lfunc_begin0
	.quad	.Ltmp970-.Lfunc_begin0
	.quad	.Ltmp971-.Lfunc_begin0
	.quad	.Ltmp972-.Lfunc_begin0
	.quad	.Ltmp983-.Lfunc_begin0
	.quad	.Ltmp984-.Lfunc_begin0
	.quad	.Ltmp985-.Lfunc_begin0
	.quad	.Ltmp986-.Lfunc_begin0
	.quad	.Ltmp997-.Lfunc_begin0
	.quad	.Ltmp998-.Lfunc_begin0
	.quad	.Ltmp999-.Lfunc_begin0
	.quad	.Ltmp1000-.Lfunc_begin0
	.quad	.Ltmp1011-.Lfunc_begin0
	.quad	.Ltmp1012-.Lfunc_begin0
	.quad	.Ltmp1013-.Lfunc_begin0
	.quad	.Ltmp1014-.Lfunc_begin0
	.quad	.Ltmp1025-.Lfunc_begin0
	.quad	.Ltmp1026-.Lfunc_begin0
	.quad	.Ltmp1027-.Lfunc_begin0
	.quad	.Ltmp1028-.Lfunc_begin0
	.quad	.Ltmp1039-.Lfunc_begin0
	.quad	.Ltmp1040-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges25:
	.quad	.Ltmp818-.Lfunc_begin0
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp828-.Lfunc_begin0
	.quad	.Ltmp829-.Lfunc_begin0
	.quad	.Ltmp832-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp842-.Lfunc_begin0
	.quad	.Ltmp843-.Lfunc_begin0
	.quad	.Ltmp846-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp856-.Lfunc_begin0
	.quad	.Ltmp857-.Lfunc_begin0
	.quad	.Ltmp860-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp870-.Lfunc_begin0
	.quad	.Ltmp871-.Lfunc_begin0
	.quad	.Ltmp874-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp884-.Lfunc_begin0
	.quad	.Ltmp885-.Lfunc_begin0
	.quad	.Ltmp888-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp898-.Lfunc_begin0
	.quad	.Ltmp899-.Lfunc_begin0
	.quad	.Ltmp902-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp912-.Lfunc_begin0
	.quad	.Ltmp913-.Lfunc_begin0
	.quad	.Ltmp916-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp926-.Lfunc_begin0
	.quad	.Ltmp927-.Lfunc_begin0
	.quad	.Ltmp930-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp940-.Lfunc_begin0
	.quad	.Ltmp941-.Lfunc_begin0
	.quad	.Ltmp944-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	.Ltmp954-.Lfunc_begin0
	.quad	.Ltmp955-.Lfunc_begin0
	.quad	.Ltmp958-.Lfunc_begin0
	.quad	.Ltmp959-.Lfunc_begin0
	.quad	.Ltmp968-.Lfunc_begin0
	.quad	.Ltmp969-.Lfunc_begin0
	.quad	.Ltmp972-.Lfunc_begin0
	.quad	.Ltmp973-.Lfunc_begin0
	.quad	.Ltmp982-.Lfunc_begin0
	.quad	.Ltmp983-.Lfunc_begin0
	.quad	.Ltmp986-.Lfunc_begin0
	.quad	.Ltmp987-.Lfunc_begin0
	.quad	.Ltmp996-.Lfunc_begin0
	.quad	.Ltmp997-.Lfunc_begin0
	.quad	.Ltmp1000-.Lfunc_begin0
	.quad	.Ltmp1001-.Lfunc_begin0
	.quad	.Ltmp1010-.Lfunc_begin0
	.quad	.Ltmp1011-.Lfunc_begin0
	.quad	.Ltmp1014-.Lfunc_begin0
	.quad	.Ltmp1015-.Lfunc_begin0
	.quad	.Ltmp1024-.Lfunc_begin0
	.quad	.Ltmp1025-.Lfunc_begin0
	.quad	.Ltmp1028-.Lfunc_begin0
	.quad	.Ltmp1029-.Lfunc_begin0
	.quad	.Ltmp1038-.Lfunc_begin0
	.quad	.Ltmp1039-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges26:
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp825-.Lfunc_begin0
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp839-.Lfunc_begin0
	.quad	.Ltmp840-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp849-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp853-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp863-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp867-.Lfunc_begin0
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp881-.Lfunc_begin0
	.quad	.Ltmp882-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp891-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp895-.Lfunc_begin0
	.quad	.Ltmp896-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.quad	.Ltmp910-.Lfunc_begin0
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp919-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp923-.Lfunc_begin0
	.quad	.Ltmp924-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp933-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp937-.Lfunc_begin0
	.quad	.Ltmp938-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	.Ltmp947-.Lfunc_begin0
	.quad	.Ltmp950-.Lfunc_begin0
	.quad	.Ltmp951-.Lfunc_begin0
	.quad	.Ltmp952-.Lfunc_begin0
	.quad	.Ltmp953-.Lfunc_begin0
	.quad	.Ltmp959-.Lfunc_begin0
	.quad	.Ltmp961-.Lfunc_begin0
	.quad	.Ltmp964-.Lfunc_begin0
	.quad	.Ltmp965-.Lfunc_begin0
	.quad	.Ltmp966-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.quad	.Ltmp973-.Lfunc_begin0
	.quad	.Ltmp975-.Lfunc_begin0
	.quad	.Ltmp978-.Lfunc_begin0
	.quad	.Ltmp979-.Lfunc_begin0
	.quad	.Ltmp980-.Lfunc_begin0
	.quad	.Ltmp981-.Lfunc_begin0
	.quad	.Ltmp987-.Lfunc_begin0
	.quad	.Ltmp989-.Lfunc_begin0
	.quad	.Ltmp992-.Lfunc_begin0
	.quad	.Ltmp993-.Lfunc_begin0
	.quad	.Ltmp994-.Lfunc_begin0
	.quad	.Ltmp995-.Lfunc_begin0
	.quad	.Ltmp1001-.Lfunc_begin0
	.quad	.Ltmp1003-.Lfunc_begin0
	.quad	.Ltmp1006-.Lfunc_begin0
	.quad	.Ltmp1007-.Lfunc_begin0
	.quad	.Ltmp1008-.Lfunc_begin0
	.quad	.Ltmp1009-.Lfunc_begin0
	.quad	.Ltmp1015-.Lfunc_begin0
	.quad	.Ltmp1017-.Lfunc_begin0
	.quad	.Ltmp1020-.Lfunc_begin0
	.quad	.Ltmp1021-.Lfunc_begin0
	.quad	.Ltmp1022-.Lfunc_begin0
	.quad	.Ltmp1023-.Lfunc_begin0
	.quad	.Ltmp1029-.Lfunc_begin0
	.quad	.Ltmp1031-.Lfunc_begin0
	.quad	.Ltmp1034-.Lfunc_begin0
	.quad	.Ltmp1035-.Lfunc_begin0
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1037-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges27:
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp825-.Lfunc_begin0
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp839-.Lfunc_begin0
	.quad	.Ltmp840-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp849-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp853-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp863-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp867-.Lfunc_begin0
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp881-.Lfunc_begin0
	.quad	.Ltmp882-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp891-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp895-.Lfunc_begin0
	.quad	.Ltmp896-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.quad	.Ltmp910-.Lfunc_begin0
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp919-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp923-.Lfunc_begin0
	.quad	.Ltmp924-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp933-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp937-.Lfunc_begin0
	.quad	.Ltmp938-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	.Ltmp947-.Lfunc_begin0
	.quad	.Ltmp950-.Lfunc_begin0
	.quad	.Ltmp951-.Lfunc_begin0
	.quad	.Ltmp952-.Lfunc_begin0
	.quad	.Ltmp953-.Lfunc_begin0
	.quad	.Ltmp959-.Lfunc_begin0
	.quad	.Ltmp961-.Lfunc_begin0
	.quad	.Ltmp964-.Lfunc_begin0
	.quad	.Ltmp965-.Lfunc_begin0
	.quad	.Ltmp966-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.quad	.Ltmp973-.Lfunc_begin0
	.quad	.Ltmp975-.Lfunc_begin0
	.quad	.Ltmp978-.Lfunc_begin0
	.quad	.Ltmp979-.Lfunc_begin0
	.quad	.Ltmp980-.Lfunc_begin0
	.quad	.Ltmp981-.Lfunc_begin0
	.quad	.Ltmp987-.Lfunc_begin0
	.quad	.Ltmp989-.Lfunc_begin0
	.quad	.Ltmp992-.Lfunc_begin0
	.quad	.Ltmp993-.Lfunc_begin0
	.quad	.Ltmp994-.Lfunc_begin0
	.quad	.Ltmp995-.Lfunc_begin0
	.quad	.Ltmp1001-.Lfunc_begin0
	.quad	.Ltmp1003-.Lfunc_begin0
	.quad	.Ltmp1006-.Lfunc_begin0
	.quad	.Ltmp1007-.Lfunc_begin0
	.quad	.Ltmp1008-.Lfunc_begin0
	.quad	.Ltmp1009-.Lfunc_begin0
	.quad	.Ltmp1015-.Lfunc_begin0
	.quad	.Ltmp1017-.Lfunc_begin0
	.quad	.Ltmp1020-.Lfunc_begin0
	.quad	.Ltmp1021-.Lfunc_begin0
	.quad	.Ltmp1022-.Lfunc_begin0
	.quad	.Ltmp1023-.Lfunc_begin0
	.quad	.Ltmp1029-.Lfunc_begin0
	.quad	.Ltmp1031-.Lfunc_begin0
	.quad	.Ltmp1034-.Lfunc_begin0
	.quad	.Ltmp1035-.Lfunc_begin0
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1037-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges28:
	.quad	.Ltmp819-.Lfunc_begin0
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp826-.Lfunc_begin0
	.quad	.Ltmp827-.Lfunc_begin0
	.quad	.Ltmp833-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp840-.Lfunc_begin0
	.quad	.Ltmp841-.Lfunc_begin0
	.quad	.Ltmp847-.Lfunc_begin0
	.quad	.Ltmp848-.Lfunc_begin0
	.quad	.Ltmp854-.Lfunc_begin0
	.quad	.Ltmp855-.Lfunc_begin0
	.quad	.Ltmp861-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	.Ltmp868-.Lfunc_begin0
	.quad	.Ltmp869-.Lfunc_begin0
	.quad	.Ltmp875-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp882-.Lfunc_begin0
	.quad	.Ltmp883-.Lfunc_begin0
	.quad	.Ltmp889-.Lfunc_begin0
	.quad	.Ltmp890-.Lfunc_begin0
	.quad	.Ltmp896-.Lfunc_begin0
	.quad	.Ltmp897-.Lfunc_begin0
	.quad	.Ltmp903-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp910-.Lfunc_begin0
	.quad	.Ltmp911-.Lfunc_begin0
	.quad	.Ltmp917-.Lfunc_begin0
	.quad	.Ltmp918-.Lfunc_begin0
	.quad	.Ltmp924-.Lfunc_begin0
	.quad	.Ltmp925-.Lfunc_begin0
	.quad	.Ltmp931-.Lfunc_begin0
	.quad	.Ltmp932-.Lfunc_begin0
	.quad	.Ltmp938-.Lfunc_begin0
	.quad	.Ltmp939-.Lfunc_begin0
	.quad	.Ltmp945-.Lfunc_begin0
	.quad	.Ltmp946-.Lfunc_begin0
	.quad	.Ltmp952-.Lfunc_begin0
	.quad	.Ltmp953-.Lfunc_begin0
	.quad	.Ltmp959-.Lfunc_begin0
	.quad	.Ltmp960-.Lfunc_begin0
	.quad	.Ltmp966-.Lfunc_begin0
	.quad	.Ltmp967-.Lfunc_begin0
	.quad	.Ltmp973-.Lfunc_begin0
	.quad	.Ltmp974-.Lfunc_begin0
	.quad	.Ltmp980-.Lfunc_begin0
	.quad	.Ltmp981-.Lfunc_begin0
	.quad	.Ltmp987-.Lfunc_begin0
	.quad	.Ltmp988-.Lfunc_begin0
	.quad	.Ltmp994-.Lfunc_begin0
	.quad	.Ltmp995-.Lfunc_begin0
	.quad	.Ltmp1001-.Lfunc_begin0
	.quad	.Ltmp1002-.Lfunc_begin0
	.quad	.Ltmp1008-.Lfunc_begin0
	.quad	.Ltmp1009-.Lfunc_begin0
	.quad	.Ltmp1015-.Lfunc_begin0
	.quad	.Ltmp1016-.Lfunc_begin0
	.quad	.Ltmp1022-.Lfunc_begin0
	.quad	.Ltmp1023-.Lfunc_begin0
	.quad	.Ltmp1029-.Lfunc_begin0
	.quad	.Ltmp1030-.Lfunc_begin0
	.quad	.Ltmp1036-.Lfunc_begin0
	.quad	.Ltmp1037-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges29:
	.quad	.Ltmp820-.Lfunc_begin0
	.quad	.Ltmp821-.Lfunc_begin0
	.quad	.Ltmp824-.Lfunc_begin0
	.quad	.Ltmp825-.Lfunc_begin0
	.quad	.Ltmp834-.Lfunc_begin0
	.quad	.Ltmp835-.Lfunc_begin0
	.quad	.Ltmp838-.Lfunc_begin0
	.quad	.Ltmp839-.Lfunc_begin0
	.quad	.Ltmp848-.Lfunc_begin0
	.quad	.Ltmp849-.Lfunc_begin0
	.quad	.Ltmp852-.Lfunc_begin0
	.quad	.Ltmp853-.Lfunc_begin0
	.quad	.Ltmp862-.Lfunc_begin0
	.quad	.Ltmp863-.Lfunc_begin0
	.quad	.Ltmp866-.Lfunc_begin0
	.quad	.Ltmp867-.Lfunc_begin0
	.quad	.Ltmp876-.Lfunc_begin0
	.quad	.Ltmp877-.Lfunc_begin0
	.quad	.Ltmp880-.Lfunc_begin0
	.quad	.Ltmp881-.Lfunc_begin0
	.quad	.Ltmp890-.Lfunc_begin0
	.quad	.Ltmp891-.Lfunc_begin0
	.quad	.Ltmp894-.Lfunc_begin0
	.quad	.Ltmp895-.Lfunc_begin0
	.quad	.Ltmp904-.Lfunc_begin0
	.quad	.Ltmp905-.Lfunc_begin0
	.quad	.Ltmp908-.Lfunc_begin0
	.quad	.Ltmp909-.Lfunc_begin0
	.quad	.Ltmp918-.Lfunc_begin0
	.quad	.Ltmp919-.Lfunc_begin0
	.quad	.Ltmp922-.Lfunc_begin0
	.quad	.Ltmp923-.Lfunc_begin0
	.quad	.Ltmp932-.Lfunc_begin0
	.quad	.Ltmp933-.Lfunc_begin0
	.quad	.Ltmp936-.Lfunc_begin0
	.quad	.Ltmp937-.Lfunc_begin0
	.quad	.Ltmp946-.Lfunc_begin0
	.quad	.Ltmp947-.Lfunc_begin0
	.quad	.Ltmp950-.Lfunc_begin0
	.quad	.Ltmp951-.Lfunc_begin0
	.quad	.Ltmp960-.Lfunc_begin0
	.quad	.Ltmp961-.Lfunc_begin0
	.quad	.Ltmp964-.Lfunc_begin0
	.quad	.Ltmp965-.Lfunc_begin0
	.quad	.Ltmp974-.Lfunc_begin0
	.quad	.Ltmp975-.Lfunc_begin0
	.quad	.Ltmp978-.Lfunc_begin0
	.quad	.Ltmp979-.Lfunc_begin0
	.quad	.Ltmp988-.Lfunc_begin0
	.quad	.Ltmp989-.Lfunc_begin0
	.quad	.Ltmp992-.Lfunc_begin0
	.quad	.Ltmp993-.Lfunc_begin0
	.quad	.Ltmp1002-.Lfunc_begin0
	.quad	.Ltmp1003-.Lfunc_begin0
	.quad	.Ltmp1006-.Lfunc_begin0
	.quad	.Ltmp1007-.Lfunc_begin0
	.quad	.Ltmp1016-.Lfunc_begin0
	.quad	.Ltmp1017-.Lfunc_begin0
	.quad	.Ltmp1020-.Lfunc_begin0
	.quad	.Ltmp1021-.Lfunc_begin0
	.quad	.Ltmp1030-.Lfunc_begin0
	.quad	.Ltmp1031-.Lfunc_begin0
	.quad	.Ltmp1034-.Lfunc_begin0
	.quad	.Ltmp1035-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges30:
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp823-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp837-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp851-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp865-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp879-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp893-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp907-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp921-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp935-.Lfunc_begin0
	.quad	.Ltmp948-.Lfunc_begin0
	.quad	.Ltmp949-.Lfunc_begin0
	.quad	.Ltmp962-.Lfunc_begin0
	.quad	.Ltmp963-.Lfunc_begin0
	.quad	.Ltmp976-.Lfunc_begin0
	.quad	.Ltmp977-.Lfunc_begin0
	.quad	.Ltmp990-.Lfunc_begin0
	.quad	.Ltmp991-.Lfunc_begin0
	.quad	.Ltmp1004-.Lfunc_begin0
	.quad	.Ltmp1005-.Lfunc_begin0
	.quad	.Ltmp1018-.Lfunc_begin0
	.quad	.Ltmp1019-.Lfunc_begin0
	.quad	.Ltmp1032-.Lfunc_begin0
	.quad	.Ltmp1033-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges31:
	.quad	.Ltmp822-.Lfunc_begin0
	.quad	.Ltmp823-.Lfunc_begin0
	.quad	.Ltmp836-.Lfunc_begin0
	.quad	.Ltmp837-.Lfunc_begin0
	.quad	.Ltmp850-.Lfunc_begin0
	.quad	.Ltmp851-.Lfunc_begin0
	.quad	.Ltmp864-.Lfunc_begin0
	.quad	.Ltmp865-.Lfunc_begin0
	.quad	.Ltmp878-.Lfunc_begin0
	.quad	.Ltmp879-.Lfunc_begin0
	.quad	.Ltmp892-.Lfunc_begin0
	.quad	.Ltmp893-.Lfunc_begin0
	.quad	.Ltmp906-.Lfunc_begin0
	.quad	.Ltmp907-.Lfunc_begin0
	.quad	.Ltmp920-.Lfunc_begin0
	.quad	.Ltmp921-.Lfunc_begin0
	.quad	.Ltmp934-.Lfunc_begin0
	.quad	.Ltmp935-.Lfunc_begin0
	.quad	.Ltmp948-.Lfunc_begin0
	.quad	.Ltmp949-.Lfunc_begin0
	.quad	.Ltmp962-.Lfunc_begin0
	.quad	.Ltmp963-.Lfunc_begin0
	.quad	.Ltmp976-.Lfunc_begin0
	.quad	.Ltmp977-.Lfunc_begin0
	.quad	.Ltmp990-.Lfunc_begin0
	.quad	.Ltmp991-.Lfunc_begin0
	.quad	.Ltmp1004-.Lfunc_begin0
	.quad	.Ltmp1005-.Lfunc_begin0
	.quad	.Ltmp1018-.Lfunc_begin0
	.quad	.Ltmp1019-.Lfunc_begin0
	.quad	.Ltmp1032-.Lfunc_begin0
	.quad	.Ltmp1033-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges32:
	.quad	.Ltmp1041-.Lfunc_begin0
	.quad	.Ltmp1043-.Lfunc_begin0
	.quad	.Ltmp1052-.Lfunc_begin0
	.quad	.Ltmp1054-.Lfunc_begin0
	.quad	.Ltmp1055-.Lfunc_begin0
	.quad	.Ltmp1057-.Lfunc_begin0
	.quad	.Ltmp1066-.Lfunc_begin0
	.quad	.Ltmp1068-.Lfunc_begin0
	.quad	.Ltmp1069-.Lfunc_begin0
	.quad	.Ltmp1071-.Lfunc_begin0
	.quad	.Ltmp1080-.Lfunc_begin0
	.quad	.Ltmp1082-.Lfunc_begin0
	.quad	.Ltmp1083-.Lfunc_begin0
	.quad	.Ltmp1085-.Lfunc_begin0
	.quad	.Ltmp1094-.Lfunc_begin0
	.quad	.Ltmp1096-.Lfunc_begin0
	.quad	.Ltmp1097-.Lfunc_begin0
	.quad	.Ltmp1099-.Lfunc_begin0
	.quad	.Ltmp1108-.Lfunc_begin0
	.quad	.Ltmp1110-.Lfunc_begin0
	.quad	.Ltmp1111-.Lfunc_begin0
	.quad	.Ltmp1113-.Lfunc_begin0
	.quad	.Ltmp1122-.Lfunc_begin0
	.quad	.Ltmp1124-.Lfunc_begin0
	.quad	.Ltmp1125-.Lfunc_begin0
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	.Ltmp1136-.Lfunc_begin0
	.quad	.Ltmp1138-.Lfunc_begin0
	.quad	.Ltmp1139-.Lfunc_begin0
	.quad	.Ltmp1141-.Lfunc_begin0
	.quad	.Ltmp1150-.Lfunc_begin0
	.quad	.Ltmp1152-.Lfunc_begin0
	.quad	.Ltmp1153-.Lfunc_begin0
	.quad	.Ltmp1155-.Lfunc_begin0
	.quad	.Ltmp1164-.Lfunc_begin0
	.quad	.Ltmp1166-.Lfunc_begin0
	.quad	.Ltmp1167-.Lfunc_begin0
	.quad	.Ltmp1169-.Lfunc_begin0
	.quad	.Ltmp1178-.Lfunc_begin0
	.quad	.Ltmp1180-.Lfunc_begin0
	.quad	.Ltmp1181-.Lfunc_begin0
	.quad	.Ltmp1183-.Lfunc_begin0
	.quad	.Ltmp1192-.Lfunc_begin0
	.quad	.Ltmp1194-.Lfunc_begin0
	.quad	.Ltmp1195-.Lfunc_begin0
	.quad	.Ltmp1197-.Lfunc_begin0
	.quad	.Ltmp1206-.Lfunc_begin0
	.quad	.Ltmp1208-.Lfunc_begin0
	.quad	.Ltmp1209-.Lfunc_begin0
	.quad	.Ltmp1211-.Lfunc_begin0
	.quad	.Ltmp1220-.Lfunc_begin0
	.quad	.Ltmp1222-.Lfunc_begin0
	.quad	.Ltmp1223-.Lfunc_begin0
	.quad	.Ltmp1225-.Lfunc_begin0
	.quad	.Ltmp1234-.Lfunc_begin0
	.quad	.Ltmp1236-.Lfunc_begin0
	.quad	.Ltmp1237-.Lfunc_begin0
	.quad	.Ltmp1239-.Lfunc_begin0
	.quad	.Ltmp1248-.Lfunc_begin0
	.quad	.Ltmp1250-.Lfunc_begin0
	.quad	.Ltmp1251-.Lfunc_begin0
	.quad	.Ltmp1253-.Lfunc_begin0
	.quad	.Ltmp1262-.Lfunc_begin0
	.quad	.Ltmp1264-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges33:
	.quad	.Ltmp1041-.Lfunc_begin0
	.quad	.Ltmp1043-.Lfunc_begin0
	.quad	.Ltmp1052-.Lfunc_begin0
	.quad	.Ltmp1054-.Lfunc_begin0
	.quad	.Ltmp1055-.Lfunc_begin0
	.quad	.Ltmp1057-.Lfunc_begin0
	.quad	.Ltmp1066-.Lfunc_begin0
	.quad	.Ltmp1068-.Lfunc_begin0
	.quad	.Ltmp1069-.Lfunc_begin0
	.quad	.Ltmp1071-.Lfunc_begin0
	.quad	.Ltmp1080-.Lfunc_begin0
	.quad	.Ltmp1082-.Lfunc_begin0
	.quad	.Ltmp1083-.Lfunc_begin0
	.quad	.Ltmp1085-.Lfunc_begin0
	.quad	.Ltmp1094-.Lfunc_begin0
	.quad	.Ltmp1096-.Lfunc_begin0
	.quad	.Ltmp1097-.Lfunc_begin0
	.quad	.Ltmp1099-.Lfunc_begin0
	.quad	.Ltmp1108-.Lfunc_begin0
	.quad	.Ltmp1110-.Lfunc_begin0
	.quad	.Ltmp1111-.Lfunc_begin0
	.quad	.Ltmp1113-.Lfunc_begin0
	.quad	.Ltmp1122-.Lfunc_begin0
	.quad	.Ltmp1124-.Lfunc_begin0
	.quad	.Ltmp1125-.Lfunc_begin0
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	.Ltmp1136-.Lfunc_begin0
	.quad	.Ltmp1138-.Lfunc_begin0
	.quad	.Ltmp1139-.Lfunc_begin0
	.quad	.Ltmp1141-.Lfunc_begin0
	.quad	.Ltmp1150-.Lfunc_begin0
	.quad	.Ltmp1152-.Lfunc_begin0
	.quad	.Ltmp1153-.Lfunc_begin0
	.quad	.Ltmp1155-.Lfunc_begin0
	.quad	.Ltmp1164-.Lfunc_begin0
	.quad	.Ltmp1166-.Lfunc_begin0
	.quad	.Ltmp1167-.Lfunc_begin0
	.quad	.Ltmp1169-.Lfunc_begin0
	.quad	.Ltmp1178-.Lfunc_begin0
	.quad	.Ltmp1180-.Lfunc_begin0
	.quad	.Ltmp1181-.Lfunc_begin0
	.quad	.Ltmp1183-.Lfunc_begin0
	.quad	.Ltmp1192-.Lfunc_begin0
	.quad	.Ltmp1194-.Lfunc_begin0
	.quad	.Ltmp1195-.Lfunc_begin0
	.quad	.Ltmp1197-.Lfunc_begin0
	.quad	.Ltmp1206-.Lfunc_begin0
	.quad	.Ltmp1208-.Lfunc_begin0
	.quad	.Ltmp1209-.Lfunc_begin0
	.quad	.Ltmp1211-.Lfunc_begin0
	.quad	.Ltmp1220-.Lfunc_begin0
	.quad	.Ltmp1222-.Lfunc_begin0
	.quad	.Ltmp1223-.Lfunc_begin0
	.quad	.Ltmp1225-.Lfunc_begin0
	.quad	.Ltmp1234-.Lfunc_begin0
	.quad	.Ltmp1236-.Lfunc_begin0
	.quad	.Ltmp1237-.Lfunc_begin0
	.quad	.Ltmp1239-.Lfunc_begin0
	.quad	.Ltmp1248-.Lfunc_begin0
	.quad	.Ltmp1250-.Lfunc_begin0
	.quad	.Ltmp1251-.Lfunc_begin0
	.quad	.Ltmp1253-.Lfunc_begin0
	.quad	.Ltmp1262-.Lfunc_begin0
	.quad	.Ltmp1264-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges34:
	.quad	.Ltmp1041-.Lfunc_begin0
	.quad	.Ltmp1042-.Lfunc_begin0
	.quad	.Ltmp1053-.Lfunc_begin0
	.quad	.Ltmp1054-.Lfunc_begin0
	.quad	.Ltmp1055-.Lfunc_begin0
	.quad	.Ltmp1056-.Lfunc_begin0
	.quad	.Ltmp1067-.Lfunc_begin0
	.quad	.Ltmp1068-.Lfunc_begin0
	.quad	.Ltmp1069-.Lfunc_begin0
	.quad	.Ltmp1070-.Lfunc_begin0
	.quad	.Ltmp1081-.Lfunc_begin0
	.quad	.Ltmp1082-.Lfunc_begin0
	.quad	.Ltmp1083-.Lfunc_begin0
	.quad	.Ltmp1084-.Lfunc_begin0
	.quad	.Ltmp1095-.Lfunc_begin0
	.quad	.Ltmp1096-.Lfunc_begin0
	.quad	.Ltmp1097-.Lfunc_begin0
	.quad	.Ltmp1098-.Lfunc_begin0
	.quad	.Ltmp1109-.Lfunc_begin0
	.quad	.Ltmp1110-.Lfunc_begin0
	.quad	.Ltmp1111-.Lfunc_begin0
	.quad	.Ltmp1112-.Lfunc_begin0
	.quad	.Ltmp1123-.Lfunc_begin0
	.quad	.Ltmp1124-.Lfunc_begin0
	.quad	.Ltmp1125-.Lfunc_begin0
	.quad	.Ltmp1126-.Lfunc_begin0
	.quad	.Ltmp1137-.Lfunc_begin0
	.quad	.Ltmp1138-.Lfunc_begin0
	.quad	.Ltmp1139-.Lfunc_begin0
	.quad	.Ltmp1140-.Lfunc_begin0
	.quad	.Ltmp1151-.Lfunc_begin0
	.quad	.Ltmp1152-.Lfunc_begin0
	.quad	.Ltmp1153-.Lfunc_begin0
	.quad	.Ltmp1154-.Lfunc_begin0
	.quad	.Ltmp1165-.Lfunc_begin0
	.quad	.Ltmp1166-.Lfunc_begin0
	.quad	.Ltmp1167-.Lfunc_begin0
	.quad	.Ltmp1168-.Lfunc_begin0
	.quad	.Ltmp1179-.Lfunc_begin0
	.quad	.Ltmp1180-.Lfunc_begin0
	.quad	.Ltmp1181-.Lfunc_begin0
	.quad	.Ltmp1182-.Lfunc_begin0
	.quad	.Ltmp1193-.Lfunc_begin0
	.quad	.Ltmp1194-.Lfunc_begin0
	.quad	.Ltmp1195-.Lfunc_begin0
	.quad	.Ltmp1196-.Lfunc_begin0
	.quad	.Ltmp1207-.Lfunc_begin0
	.quad	.Ltmp1208-.Lfunc_begin0
	.quad	.Ltmp1209-.Lfunc_begin0
	.quad	.Ltmp1210-.Lfunc_begin0
	.quad	.Ltmp1221-.Lfunc_begin0
	.quad	.Ltmp1222-.Lfunc_begin0
	.quad	.Ltmp1223-.Lfunc_begin0
	.quad	.Ltmp1224-.Lfunc_begin0
	.quad	.Ltmp1235-.Lfunc_begin0
	.quad	.Ltmp1236-.Lfunc_begin0
	.quad	.Ltmp1237-.Lfunc_begin0
	.quad	.Ltmp1238-.Lfunc_begin0
	.quad	.Ltmp1249-.Lfunc_begin0
	.quad	.Ltmp1250-.Lfunc_begin0
	.quad	.Ltmp1251-.Lfunc_begin0
	.quad	.Ltmp1252-.Lfunc_begin0
	.quad	.Ltmp1263-.Lfunc_begin0
	.quad	.Ltmp1264-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges35:
	.quad	.Ltmp1042-.Lfunc_begin0
	.quad	.Ltmp1043-.Lfunc_begin0
	.quad	.Ltmp1052-.Lfunc_begin0
	.quad	.Ltmp1053-.Lfunc_begin0
	.quad	.Ltmp1056-.Lfunc_begin0
	.quad	.Ltmp1057-.Lfunc_begin0
	.quad	.Ltmp1066-.Lfunc_begin0
	.quad	.Ltmp1067-.Lfunc_begin0
	.quad	.Ltmp1070-.Lfunc_begin0
	.quad	.Ltmp1071-.Lfunc_begin0
	.quad	.Ltmp1080-.Lfunc_begin0
	.quad	.Ltmp1081-.Lfunc_begin0
	.quad	.Ltmp1084-.Lfunc_begin0
	.quad	.Ltmp1085-.Lfunc_begin0
	.quad	.Ltmp1094-.Lfunc_begin0
	.quad	.Ltmp1095-.Lfunc_begin0
	.quad	.Ltmp1098-.Lfunc_begin0
	.quad	.Ltmp1099-.Lfunc_begin0
	.quad	.Ltmp1108-.Lfunc_begin0
	.quad	.Ltmp1109-.Lfunc_begin0
	.quad	.Ltmp1112-.Lfunc_begin0
	.quad	.Ltmp1113-.Lfunc_begin0
	.quad	.Ltmp1122-.Lfunc_begin0
	.quad	.Ltmp1123-.Lfunc_begin0
	.quad	.Ltmp1126-.Lfunc_begin0
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	.Ltmp1136-.Lfunc_begin0
	.quad	.Ltmp1137-.Lfunc_begin0
	.quad	.Ltmp1140-.Lfunc_begin0
	.quad	.Ltmp1141-.Lfunc_begin0
	.quad	.Ltmp1150-.Lfunc_begin0
	.quad	.Ltmp1151-.Lfunc_begin0
	.quad	.Ltmp1154-.Lfunc_begin0
	.quad	.Ltmp1155-.Lfunc_begin0
	.quad	.Ltmp1164-.Lfunc_begin0
	.quad	.Ltmp1165-.Lfunc_begin0
	.quad	.Ltmp1168-.Lfunc_begin0
	.quad	.Ltmp1169-.Lfunc_begin0
	.quad	.Ltmp1178-.Lfunc_begin0
	.quad	.Ltmp1179-.Lfunc_begin0
	.quad	.Ltmp1182-.Lfunc_begin0
	.quad	.Ltmp1183-.Lfunc_begin0
	.quad	.Ltmp1192-.Lfunc_begin0
	.quad	.Ltmp1193-.Lfunc_begin0
	.quad	.Ltmp1196-.Lfunc_begin0
	.quad	.Ltmp1197-.Lfunc_begin0
	.quad	.Ltmp1206-.Lfunc_begin0
	.quad	.Ltmp1207-.Lfunc_begin0
	.quad	.Ltmp1210-.Lfunc_begin0
	.quad	.Ltmp1211-.Lfunc_begin0
	.quad	.Ltmp1220-.Lfunc_begin0
	.quad	.Ltmp1221-.Lfunc_begin0
	.quad	.Ltmp1224-.Lfunc_begin0
	.quad	.Ltmp1225-.Lfunc_begin0
	.quad	.Ltmp1234-.Lfunc_begin0
	.quad	.Ltmp1235-.Lfunc_begin0
	.quad	.Ltmp1238-.Lfunc_begin0
	.quad	.Ltmp1239-.Lfunc_begin0
	.quad	.Ltmp1248-.Lfunc_begin0
	.quad	.Ltmp1249-.Lfunc_begin0
	.quad	.Ltmp1252-.Lfunc_begin0
	.quad	.Ltmp1253-.Lfunc_begin0
	.quad	.Ltmp1262-.Lfunc_begin0
	.quad	.Ltmp1263-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges36:
	.quad	.Ltmp1043-.Lfunc_begin0
	.quad	.Ltmp1045-.Lfunc_begin0
	.quad	.Ltmp1048-.Lfunc_begin0
	.quad	.Ltmp1049-.Lfunc_begin0
	.quad	.Ltmp1050-.Lfunc_begin0
	.quad	.Ltmp1051-.Lfunc_begin0
	.quad	.Ltmp1057-.Lfunc_begin0
	.quad	.Ltmp1059-.Lfunc_begin0
	.quad	.Ltmp1062-.Lfunc_begin0
	.quad	.Ltmp1063-.Lfunc_begin0
	.quad	.Ltmp1064-.Lfunc_begin0
	.quad	.Ltmp1065-.Lfunc_begin0
	.quad	.Ltmp1071-.Lfunc_begin0
	.quad	.Ltmp1073-.Lfunc_begin0
	.quad	.Ltmp1076-.Lfunc_begin0
	.quad	.Ltmp1077-.Lfunc_begin0
	.quad	.Ltmp1078-.Lfunc_begin0
	.quad	.Ltmp1079-.Lfunc_begin0
	.quad	.Ltmp1085-.Lfunc_begin0
	.quad	.Ltmp1087-.Lfunc_begin0
	.quad	.Ltmp1090-.Lfunc_begin0
	.quad	.Ltmp1091-.Lfunc_begin0
	.quad	.Ltmp1092-.Lfunc_begin0
	.quad	.Ltmp1093-.Lfunc_begin0
	.quad	.Ltmp1099-.Lfunc_begin0
	.quad	.Ltmp1101-.Lfunc_begin0
	.quad	.Ltmp1104-.Lfunc_begin0
	.quad	.Ltmp1105-.Lfunc_begin0
	.quad	.Ltmp1106-.Lfunc_begin0
	.quad	.Ltmp1107-.Lfunc_begin0
	.quad	.Ltmp1113-.Lfunc_begin0
	.quad	.Ltmp1115-.Lfunc_begin0
	.quad	.Ltmp1118-.Lfunc_begin0
	.quad	.Ltmp1119-.Lfunc_begin0
	.quad	.Ltmp1120-.Lfunc_begin0
	.quad	.Ltmp1121-.Lfunc_begin0
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	.Ltmp1129-.Lfunc_begin0
	.quad	.Ltmp1132-.Lfunc_begin0
	.quad	.Ltmp1133-.Lfunc_begin0
	.quad	.Ltmp1134-.Lfunc_begin0
	.quad	.Ltmp1135-.Lfunc_begin0
	.quad	.Ltmp1141-.Lfunc_begin0
	.quad	.Ltmp1143-.Lfunc_begin0
	.quad	.Ltmp1146-.Lfunc_begin0
	.quad	.Ltmp1147-.Lfunc_begin0
	.quad	.Ltmp1148-.Lfunc_begin0
	.quad	.Ltmp1149-.Lfunc_begin0
	.quad	.Ltmp1155-.Lfunc_begin0
	.quad	.Ltmp1157-.Lfunc_begin0
	.quad	.Ltmp1160-.Lfunc_begin0
	.quad	.Ltmp1161-.Lfunc_begin0
	.quad	.Ltmp1162-.Lfunc_begin0
	.quad	.Ltmp1163-.Lfunc_begin0
	.quad	.Ltmp1169-.Lfunc_begin0
	.quad	.Ltmp1171-.Lfunc_begin0
	.quad	.Ltmp1174-.Lfunc_begin0
	.quad	.Ltmp1175-.Lfunc_begin0
	.quad	.Ltmp1176-.Lfunc_begin0
	.quad	.Ltmp1177-.Lfunc_begin0
	.quad	.Ltmp1183-.Lfunc_begin0
	.quad	.Ltmp1185-.Lfunc_begin0
	.quad	.Ltmp1188-.Lfunc_begin0
	.quad	.Ltmp1189-.Lfunc_begin0
	.quad	.Ltmp1190-.Lfunc_begin0
	.quad	.Ltmp1191-.Lfunc_begin0
	.quad	.Ltmp1197-.Lfunc_begin0
	.quad	.Ltmp1199-.Lfunc_begin0
	.quad	.Ltmp1202-.Lfunc_begin0
	.quad	.Ltmp1203-.Lfunc_begin0
	.quad	.Ltmp1204-.Lfunc_begin0
	.quad	.Ltmp1205-.Lfunc_begin0
	.quad	.Ltmp1211-.Lfunc_begin0
	.quad	.Ltmp1213-.Lfunc_begin0
	.quad	.Ltmp1216-.Lfunc_begin0
	.quad	.Ltmp1217-.Lfunc_begin0
	.quad	.Ltmp1218-.Lfunc_begin0
	.quad	.Ltmp1219-.Lfunc_begin0
	.quad	.Ltmp1225-.Lfunc_begin0
	.quad	.Ltmp1227-.Lfunc_begin0
	.quad	.Ltmp1230-.Lfunc_begin0
	.quad	.Ltmp1231-.Lfunc_begin0
	.quad	.Ltmp1232-.Lfunc_begin0
	.quad	.Ltmp1233-.Lfunc_begin0
	.quad	.Ltmp1239-.Lfunc_begin0
	.quad	.Ltmp1241-.Lfunc_begin0
	.quad	.Ltmp1244-.Lfunc_begin0
	.quad	.Ltmp1245-.Lfunc_begin0
	.quad	.Ltmp1246-.Lfunc_begin0
	.quad	.Ltmp1247-.Lfunc_begin0
	.quad	.Ltmp1253-.Lfunc_begin0
	.quad	.Ltmp1255-.Lfunc_begin0
	.quad	.Ltmp1258-.Lfunc_begin0
	.quad	.Ltmp1259-.Lfunc_begin0
	.quad	.Ltmp1260-.Lfunc_begin0
	.quad	.Ltmp1261-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges37:
	.quad	.Ltmp1043-.Lfunc_begin0
	.quad	.Ltmp1045-.Lfunc_begin0
	.quad	.Ltmp1048-.Lfunc_begin0
	.quad	.Ltmp1049-.Lfunc_begin0
	.quad	.Ltmp1050-.Lfunc_begin0
	.quad	.Ltmp1051-.Lfunc_begin0
	.quad	.Ltmp1057-.Lfunc_begin0
	.quad	.Ltmp1059-.Lfunc_begin0
	.quad	.Ltmp1062-.Lfunc_begin0
	.quad	.Ltmp1063-.Lfunc_begin0
	.quad	.Ltmp1064-.Lfunc_begin0
	.quad	.Ltmp1065-.Lfunc_begin0
	.quad	.Ltmp1071-.Lfunc_begin0
	.quad	.Ltmp1073-.Lfunc_begin0
	.quad	.Ltmp1076-.Lfunc_begin0
	.quad	.Ltmp1077-.Lfunc_begin0
	.quad	.Ltmp1078-.Lfunc_begin0
	.quad	.Ltmp1079-.Lfunc_begin0
	.quad	.Ltmp1085-.Lfunc_begin0
	.quad	.Ltmp1087-.Lfunc_begin0
	.quad	.Ltmp1090-.Lfunc_begin0
	.quad	.Ltmp1091-.Lfunc_begin0
	.quad	.Ltmp1092-.Lfunc_begin0
	.quad	.Ltmp1093-.Lfunc_begin0
	.quad	.Ltmp1099-.Lfunc_begin0
	.quad	.Ltmp1101-.Lfunc_begin0
	.quad	.Ltmp1104-.Lfunc_begin0
	.quad	.Ltmp1105-.Lfunc_begin0
	.quad	.Ltmp1106-.Lfunc_begin0
	.quad	.Ltmp1107-.Lfunc_begin0
	.quad	.Ltmp1113-.Lfunc_begin0
	.quad	.Ltmp1115-.Lfunc_begin0
	.quad	.Ltmp1118-.Lfunc_begin0
	.quad	.Ltmp1119-.Lfunc_begin0
	.quad	.Ltmp1120-.Lfunc_begin0
	.quad	.Ltmp1121-.Lfunc_begin0
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	.Ltmp1129-.Lfunc_begin0
	.quad	.Ltmp1132-.Lfunc_begin0
	.quad	.Ltmp1133-.Lfunc_begin0
	.quad	.Ltmp1134-.Lfunc_begin0
	.quad	.Ltmp1135-.Lfunc_begin0
	.quad	.Ltmp1141-.Lfunc_begin0
	.quad	.Ltmp1143-.Lfunc_begin0
	.quad	.Ltmp1146-.Lfunc_begin0
	.quad	.Ltmp1147-.Lfunc_begin0
	.quad	.Ltmp1148-.Lfunc_begin0
	.quad	.Ltmp1149-.Lfunc_begin0
	.quad	.Ltmp1155-.Lfunc_begin0
	.quad	.Ltmp1157-.Lfunc_begin0
	.quad	.Ltmp1160-.Lfunc_begin0
	.quad	.Ltmp1161-.Lfunc_begin0
	.quad	.Ltmp1162-.Lfunc_begin0
	.quad	.Ltmp1163-.Lfunc_begin0
	.quad	.Ltmp1169-.Lfunc_begin0
	.quad	.Ltmp1171-.Lfunc_begin0
	.quad	.Ltmp1174-.Lfunc_begin0
	.quad	.Ltmp1175-.Lfunc_begin0
	.quad	.Ltmp1176-.Lfunc_begin0
	.quad	.Ltmp1177-.Lfunc_begin0
	.quad	.Ltmp1183-.Lfunc_begin0
	.quad	.Ltmp1185-.Lfunc_begin0
	.quad	.Ltmp1188-.Lfunc_begin0
	.quad	.Ltmp1189-.Lfunc_begin0
	.quad	.Ltmp1190-.Lfunc_begin0
	.quad	.Ltmp1191-.Lfunc_begin0
	.quad	.Ltmp1197-.Lfunc_begin0
	.quad	.Ltmp1199-.Lfunc_begin0
	.quad	.Ltmp1202-.Lfunc_begin0
	.quad	.Ltmp1203-.Lfunc_begin0
	.quad	.Ltmp1204-.Lfunc_begin0
	.quad	.Ltmp1205-.Lfunc_begin0
	.quad	.Ltmp1211-.Lfunc_begin0
	.quad	.Ltmp1213-.Lfunc_begin0
	.quad	.Ltmp1216-.Lfunc_begin0
	.quad	.Ltmp1217-.Lfunc_begin0
	.quad	.Ltmp1218-.Lfunc_begin0
	.quad	.Ltmp1219-.Lfunc_begin0
	.quad	.Ltmp1225-.Lfunc_begin0
	.quad	.Ltmp1227-.Lfunc_begin0
	.quad	.Ltmp1230-.Lfunc_begin0
	.quad	.Ltmp1231-.Lfunc_begin0
	.quad	.Ltmp1232-.Lfunc_begin0
	.quad	.Ltmp1233-.Lfunc_begin0
	.quad	.Ltmp1239-.Lfunc_begin0
	.quad	.Ltmp1241-.Lfunc_begin0
	.quad	.Ltmp1244-.Lfunc_begin0
	.quad	.Ltmp1245-.Lfunc_begin0
	.quad	.Ltmp1246-.Lfunc_begin0
	.quad	.Ltmp1247-.Lfunc_begin0
	.quad	.Ltmp1253-.Lfunc_begin0
	.quad	.Ltmp1255-.Lfunc_begin0
	.quad	.Ltmp1258-.Lfunc_begin0
	.quad	.Ltmp1259-.Lfunc_begin0
	.quad	.Ltmp1260-.Lfunc_begin0
	.quad	.Ltmp1261-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges38:
	.quad	.Ltmp1043-.Lfunc_begin0
	.quad	.Ltmp1044-.Lfunc_begin0
	.quad	.Ltmp1050-.Lfunc_begin0
	.quad	.Ltmp1051-.Lfunc_begin0
	.quad	.Ltmp1057-.Lfunc_begin0
	.quad	.Ltmp1058-.Lfunc_begin0
	.quad	.Ltmp1064-.Lfunc_begin0
	.quad	.Ltmp1065-.Lfunc_begin0
	.quad	.Ltmp1071-.Lfunc_begin0
	.quad	.Ltmp1072-.Lfunc_begin0
	.quad	.Ltmp1078-.Lfunc_begin0
	.quad	.Ltmp1079-.Lfunc_begin0
	.quad	.Ltmp1085-.Lfunc_begin0
	.quad	.Ltmp1086-.Lfunc_begin0
	.quad	.Ltmp1092-.Lfunc_begin0
	.quad	.Ltmp1093-.Lfunc_begin0
	.quad	.Ltmp1099-.Lfunc_begin0
	.quad	.Ltmp1100-.Lfunc_begin0
	.quad	.Ltmp1106-.Lfunc_begin0
	.quad	.Ltmp1107-.Lfunc_begin0
	.quad	.Ltmp1113-.Lfunc_begin0
	.quad	.Ltmp1114-.Lfunc_begin0
	.quad	.Ltmp1120-.Lfunc_begin0
	.quad	.Ltmp1121-.Lfunc_begin0
	.quad	.Ltmp1127-.Lfunc_begin0
	.quad	.Ltmp1128-.Lfunc_begin0
	.quad	.Ltmp1134-.Lfunc_begin0
	.quad	.Ltmp1135-.Lfunc_begin0
	.quad	.Ltmp1141-.Lfunc_begin0
	.quad	.Ltmp1142-.Lfunc_begin0
	.quad	.Ltmp1148-.Lfunc_begin0
	.quad	.Ltmp1149-.Lfunc_begin0
	.quad	.Ltmp1155-.Lfunc_begin0
	.quad	.Ltmp1156-.Lfunc_begin0
	.quad	.Ltmp1162-.Lfunc_begin0
	.quad	.Ltmp1163-.Lfunc_begin0
	.quad	.Ltmp1169-.Lfunc_begin0
	.quad	.Ltmp1170-.Lfunc_begin0
	.quad	.Ltmp1176-.Lfunc_begin0
	.quad	.Ltmp1177-.Lfunc_begin0
	.quad	.Ltmp1183-.Lfunc_begin0
	.quad	.Ltmp1184-.Lfunc_begin0
	.quad	.Ltmp1190-.Lfunc_begin0
	.quad	.Ltmp1191-.Lfunc_begin0
	.quad	.Ltmp1197-.Lfunc_begin0
	.quad	.Ltmp1198-.Lfunc_begin0
	.quad	.Ltmp1204-.Lfunc_begin0
	.quad	.Ltmp1205-.Lfunc_begin0
	.quad	.Ltmp1211-.Lfunc_begin0
	.quad	.Ltmp1212-.Lfunc_begin0
	.quad	.Ltmp1218-.Lfunc_begin0
	.quad	.Ltmp1219-.Lfunc_begin0
	.quad	.Ltmp1225-.Lfunc_begin0
	.quad	.Ltmp1226-.Lfunc_begin0
	.quad	.Ltmp1232-.Lfunc_begin0
	.quad	.Ltmp1233-.Lfunc_begin0
	.quad	.Ltmp1239-.Lfunc_begin0
	.quad	.Ltmp1240-.Lfunc_begin0
	.quad	.Ltmp1246-.Lfunc_begin0
	.quad	.Ltmp1247-.Lfunc_begin0
	.quad	.Ltmp1253-.Lfunc_begin0
	.quad	.Ltmp1254-.Lfunc_begin0
	.quad	.Ltmp1260-.Lfunc_begin0
	.quad	.Ltmp1261-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges39:
	.quad	.Ltmp1044-.Lfunc_begin0
	.quad	.Ltmp1045-.Lfunc_begin0
	.quad	.Ltmp1048-.Lfunc_begin0
	.quad	.Ltmp1049-.Lfunc_begin0
	.quad	.Ltmp1058-.Lfunc_begin0
	.quad	.Ltmp1059-.Lfunc_begin0
	.quad	.Ltmp1062-.Lfunc_begin0
	.quad	.Ltmp1063-.Lfunc_begin0
	.quad	.Ltmp1072-.Lfunc_begin0
	.quad	.Ltmp1073-.Lfunc_begin0
	.quad	.Ltmp1076-.Lfunc_begin0
	.quad	.Ltmp1077-.Lfunc_begin0
	.quad	.Ltmp1086-.Lfunc_begin0
	.quad	.Ltmp1087-.Lfunc_begin0
	.quad	.Ltmp1090-.Lfunc_begin0
	.quad	.Ltmp1091-.Lfunc_begin0
	.quad	.Ltmp1100-.Lfunc_begin0
	.quad	.Ltmp1101-.Lfunc_begin0
	.quad	.Ltmp1104-.Lfunc_begin0
	.quad	.Ltmp1105-.Lfunc_begin0
	.quad	.Ltmp1114-.Lfunc_begin0
	.quad	.Ltmp1115-.Lfunc_begin0
	.quad	.Ltmp1118-.Lfunc_begin0
	.quad	.Ltmp1119-.Lfunc_begin0
	.quad	.Ltmp1128-.Lfunc_begin0
	.quad	.Ltmp1129-.Lfunc_begin0
	.quad	.Ltmp1132-.Lfunc_begin0
	.quad	.Ltmp1133-.Lfunc_begin0
	.quad	.Ltmp1142-.Lfunc_begin0
	.quad	.Ltmp1143-.Lfunc_begin0
	.quad	.Ltmp1146-.Lfunc_begin0
	.quad	.Ltmp1147-.Lfunc_begin0
	.quad	.Ltmp1156-.Lfunc_begin0
	.quad	.Ltmp1157-.Lfunc_begin0
	.quad	.Ltmp1160-.Lfunc_begin0
	.quad	.Ltmp1161-.Lfunc_begin0
	.quad	.Ltmp1170-.Lfunc_begin0
	.quad	.Ltmp1171-.Lfunc_begin0
	.quad	.Ltmp1174-.Lfunc_begin0
	.quad	.Ltmp1175-.Lfunc_begin0
	.quad	.Ltmp1184-.Lfunc_begin0
	.quad	.Ltmp1185-.Lfunc_begin0
	.quad	.Ltmp1188-.Lfunc_begin0
	.quad	.Ltmp1189-.Lfunc_begin0
	.quad	.Ltmp1198-.Lfunc_begin0
	.quad	.Ltmp1199-.Lfunc_begin0
	.quad	.Ltmp1202-.Lfunc_begin0
	.quad	.Ltmp1203-.Lfunc_begin0
	.quad	.Ltmp1212-.Lfunc_begin0
	.quad	.Ltmp1213-.Lfunc_begin0
	.quad	.Ltmp1216-.Lfunc_begin0
	.quad	.Ltmp1217-.Lfunc_begin0
	.quad	.Ltmp1226-.Lfunc_begin0
	.quad	.Ltmp1227-.Lfunc_begin0
	.quad	.Ltmp1230-.Lfunc_begin0
	.quad	.Ltmp1231-.Lfunc_begin0
	.quad	.Ltmp1240-.Lfunc_begin0
	.quad	.Ltmp1241-.Lfunc_begin0
	.quad	.Ltmp1244-.Lfunc_begin0
	.quad	.Ltmp1245-.Lfunc_begin0
	.quad	.Ltmp1254-.Lfunc_begin0
	.quad	.Ltmp1255-.Lfunc_begin0
	.quad	.Ltmp1258-.Lfunc_begin0
	.quad	.Ltmp1259-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges40:
	.quad	.Ltmp1046-.Lfunc_begin0
	.quad	.Ltmp1047-.Lfunc_begin0
	.quad	.Ltmp1060-.Lfunc_begin0
	.quad	.Ltmp1061-.Lfunc_begin0
	.quad	.Ltmp1074-.Lfunc_begin0
	.quad	.Ltmp1075-.Lfunc_begin0
	.quad	.Ltmp1088-.Lfunc_begin0
	.quad	.Ltmp1089-.Lfunc_begin0
	.quad	.Ltmp1102-.Lfunc_begin0
	.quad	.Ltmp1103-.Lfunc_begin0
	.quad	.Ltmp1116-.Lfunc_begin0
	.quad	.Ltmp1117-.Lfunc_begin0
	.quad	.Ltmp1130-.Lfunc_begin0
	.quad	.Ltmp1131-.Lfunc_begin0
	.quad	.Ltmp1144-.Lfunc_begin0
	.quad	.Ltmp1145-.Lfunc_begin0
	.quad	.Ltmp1158-.Lfunc_begin0
	.quad	.Ltmp1159-.Lfunc_begin0
	.quad	.Ltmp1172-.Lfunc_begin0
	.quad	.Ltmp1173-.Lfunc_begin0
	.quad	.Ltmp1186-.Lfunc_begin0
	.quad	.Ltmp1187-.Lfunc_begin0
	.quad	.Ltmp1200-.Lfunc_begin0
	.quad	.Ltmp1201-.Lfunc_begin0
	.quad	.Ltmp1214-.Lfunc_begin0
	.quad	.Ltmp1215-.Lfunc_begin0
	.quad	.Ltmp1228-.Lfunc_begin0
	.quad	.Ltmp1229-.Lfunc_begin0
	.quad	.Ltmp1242-.Lfunc_begin0
	.quad	.Ltmp1243-.Lfunc_begin0
	.quad	.Ltmp1256-.Lfunc_begin0
	.quad	.Ltmp1257-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges41:
	.quad	.Ltmp1046-.Lfunc_begin0
	.quad	.Ltmp1047-.Lfunc_begin0
	.quad	.Ltmp1060-.Lfunc_begin0
	.quad	.Ltmp1061-.Lfunc_begin0
	.quad	.Ltmp1074-.Lfunc_begin0
	.quad	.Ltmp1075-.Lfunc_begin0
	.quad	.Ltmp1088-.Lfunc_begin0
	.quad	.Ltmp1089-.Lfunc_begin0
	.quad	.Ltmp1102-.Lfunc_begin0
	.quad	.Ltmp1103-.Lfunc_begin0
	.quad	.Ltmp1116-.Lfunc_begin0
	.quad	.Ltmp1117-.Lfunc_begin0
	.quad	.Ltmp1130-.Lfunc_begin0
	.quad	.Ltmp1131-.Lfunc_begin0
	.quad	.Ltmp1144-.Lfunc_begin0
	.quad	.Ltmp1145-.Lfunc_begin0
	.quad	.Ltmp1158-.Lfunc_begin0
	.quad	.Ltmp1159-.Lfunc_begin0
	.quad	.Ltmp1172-.Lfunc_begin0
	.quad	.Ltmp1173-.Lfunc_begin0
	.quad	.Ltmp1186-.Lfunc_begin0
	.quad	.Ltmp1187-.Lfunc_begin0
	.quad	.Ltmp1200-.Lfunc_begin0
	.quad	.Ltmp1201-.Lfunc_begin0
	.quad	.Ltmp1214-.Lfunc_begin0
	.quad	.Ltmp1215-.Lfunc_begin0
	.quad	.Ltmp1228-.Lfunc_begin0
	.quad	.Ltmp1229-.Lfunc_begin0
	.quad	.Ltmp1242-.Lfunc_begin0
	.quad	.Ltmp1243-.Lfunc_begin0
	.quad	.Ltmp1256-.Lfunc_begin0
	.quad	.Ltmp1257-.Lfunc_begin0
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v015_step1_serial_gate_up_sc-16g/codegen/candidate_a/v015_candidate_a_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=177
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=198
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=208
.Linfo_string5:
	.asciz	"exp2f"                         ; string offset=222
.Linfo_string6:
	.asciz	"__float2half_rn"               ; string offset=228
.Linfo_string7:
	.asciz	"__floats2half2_rn"             ; string offset=244
.Linfo_string8:
	.asciz	"__float22half2_rn"             ; string offset=262
.Linfo_string9:
	.asciz	"min"                           ; string offset=280
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
    .mtreg_count:    256
    .name:           kernel_kernel
    .private_memory_size: 124
    .share_memory_size: 0
    .streg_count:    38
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
