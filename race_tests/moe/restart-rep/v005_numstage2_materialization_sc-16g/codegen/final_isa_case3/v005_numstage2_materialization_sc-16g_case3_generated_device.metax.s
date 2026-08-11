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
	.file	2 "/root/tilelang-metax" "race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp"
	.loc	2 11 0                          ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:11:0
; %bb.0:                                ; %entry
	ldu_b256 s40, s0, 0x0
	smov_b32 s2, s5
.Ltmp4:
	.loc	2 17 23 prologue_end            ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:17:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s16, s0, 0x20
	and_b32 r1, 0x3ff, r0
	smul_i32 s5, 0xe0000, s4
	arrive slcnt(0)
	sadd_co_u32 s6, s40, s6
	saddc_co_u32 s7, s41, s7
	ldu_b32 s8, s6, 0x0
	shl_b32 r3, 3, r1
	smov_b32 s3, 0x1c00
	shr_b32 r22, 3, r1
	mov_b32 r0, s5
	mad_u24 r0, r22, s3, r0
	and_b32 r23, r3, 56
	arrive slcnt(0)
	smul_i32 s6, 0xe00000, s8
	or_b32 r0, r0, r23
	add_u32 r0, r0, s6
	.loc	2 33 374                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:374
	mad_i32 r4, r0, 2, s18
	.loc	2 33 495 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:495
	add_u32 r2, 0x38000, r0
	.loc	2 33 374                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:374
	mad_i32 r6, r2, 2, s18
	.loc	2 33 343                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:343
	ldg_b128 r46, r4, 0x0
	.loc	2 33 495                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:495
	add_u32 r4, 0x70000, r0
	add_u32 r5, 0xa8000, r0
	.loc	2 33 343                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:343
	ldg_b128 r50, r6, 0x0
	.loc	2 33 374                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:374
	mad_i32 r6, r4, 2, s18
	mad_i32 r8, r5, 2, s18
	.loc	2 17 23 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:17:23
	sashr_i32 s9, 31, s8
	.loc	2 33 343                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:343
	ldg_b128 r54, r6, 0x0
	.loc	2 37 382                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:37:382
	mad_i32 r6, r0, 2, s20
	.loc	2 33 343                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:343
	ldg_b128 r58, r8, 0x0
	.loc	2 37 382                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:37:382
	mad_i32 r8, r2, 2, s20
	.loc	2 37 353 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:37:353
	ldg_b128 r62, r6, 0x0
	.loc	2 37 382                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:37:382
	mad_i32 r6, r4, 2, s20
	mad_i32 r4, r5, 2, s20
	.loc	2 37 353                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:37:353
	ldg_b128 r66, r8, 0x0
	ldg_b128 r70, r6, 0x0
	ldg_b128 r74, r4, 0x0
	.loc	2 18 24 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:18:24
	sshl_b64 s10, 2, s8
	sadd_co_u32 s8, s46, s10
	saddc_co_u32 s9, s47, s11
	.loc	2 19 38                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:19:38
	sshl_b32 s7, 7, s2
	.loc	2 18 24                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:18:24
	ldu_b32 s2, s8, 0x0
	.loc	2 19 47                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:19:47
	sadd_co_u32 s8, s42, s10
	saddc_co_u32 s9, s43, s11
	.loc	2 19 79 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:19:79
	sadd_co_u32 s10, s44, s10
	mul_u24 r0, r1, 9
	shr_b32 r4, 1, r1
	saddc_co_u32 s11, s45, s11
	smov_b32 s1, 0x1e0
	and_b32 r7, r1, 15
	.loc	2 19 47                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:19:47
	ldu_b32 s8, s8, 0x0
	and_b32 r10, r0, 8
	and_or_b32 r0, r4, s1, r7
	.loc	2 19 79                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:19:79
	ldu_b32 s1, s10, 0x0
	shr_b32 r6, 6, r1
	shl_b32 r8, 6, r1
	shr_b32 r13, 4, r1
	and_b32 r5, r3, 32
	and_b32 r9, 0x1fc0, r3
	and_b32 r3, r3, 16
	mul_u24 r14, 0x38000, r6
	and_b32 r6, 0x3c0, r8
	add_shl_u32 r8, r13, r1, 3
	add_u32 r13, r5, r1
	and_b32 r13, r13, 32
	add_u32 r15, r3, r1
	shr_b32 r12, 5, r1
	and_b32 r11, r4, 24
	add_shl_u32 r4, r12, r4, 4
	mad_u24 r12, r7, s3, r14
	and_b32 r14, r15, 16
	.loc	2 33 59 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:59
	or_b32 r20, r9, r13
	.loc	2 20 54                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:20:54
	arrive slcnt(0)
	ssub_co_i32 s2, s2, s7
	.loc	2 19 45                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:19:45
	sadd_co_i32 s7, s8, s7
	.loc	2 19 77 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:19:77
	ssub_co_i32 s12, s7, s1
	.loc	2 33 180 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:180
	or3_b32 r20, r20, r14, r10
	.loc	2 33 40 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:40
	shl_add_u32 r20, 1, r20, 0
	sadd_co_u32 s18, 0x80, s18
	.loc	2 39 3 is_stmt 1                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:3
	smul_i32 s8, 0x3800, s12
	saddc_co_u32 s19, s19, 0
	mov_b32 r44, s8
	mov_b32 r19, 0x3800
	.loc	2 33 95                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:95
	or_b32 r17, r13, r10
	.loc	2 33 343 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:343
	add_i32 r29, 0x1000, r20
	add_i32 r30, 0x2000, r20
	add_i32 r31, 0x3000, r20
	.loc	2 37 353 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:37:353
	add_i32 r37, 0x9000, r20
	add_i32 r38, 0xa000, r20
	add_i32 r39, 0xb000, r20
	add_u32 r20, s12, r0
	sadd_co_u32 s20, 0x80, s20
	.loc	2 33 265                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:265
	or3_b32 r17, r17, r9, r14
	cmp_gt_u32 s10, 0x2380, r20
	add_u32 r20, r20, 16
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:3
	mul_hi_i32 r45, s12, r19
	and_or_b32 r44, r1, 48, r44
	.loc	2 33 40                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:40
	shl_add_u32 r28, 1, r17, 0
	saddc_co_u32 s21, s21, 0
	cmp_gt_u32 s8, 0x2380, r20
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:3
	mad_u32 r44, r12, 2, r44
	sadd_co_i32 s5, s6, s5
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r24, 0, 0
	and_b32 r7, r4, 16
	and_b32 r8, r8, 8
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:3
	mov_b32 r21, s17
	.loc	2 37 353 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:37:353
	add_i32 r36, 0x8000, r28
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:3
	add_co_u32 r20, s16, r44
	mov_b32 r44, s5
	mad_u24 r22, r22, s3, r44
	or_b32 r4, r8, r7
	mov_b32 r18, 0x1c00
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r26, 0, 0
	shl_b64 r32, 0, r24
	shl_b64 r40, 0, r24
	shl_b64 r80, 0, r24
	shl_b64 r88, 0, r24
	shl_b64 r96, 0, r24
	shl_b64 r104, 0, r24
	shl_b64 r112, 0, r24
	shl_b64 r120, 0, r24
	shl_b64 r128, 0, r24
	shl_b64 r136, 0, r24
	shl_b64 r144, 0, r24
	shl_b64 r84, 0, r24
	shl_b64 r92, 0, r24
	shl_b64 r100, 0, r24
	shl_b64 r108, 0, r24
	shl_b64 r116, 0, r24
	shl_b64 r124, 0, r24
	shl_b64 r132, 0, r24
	shl_b64 r140, 0, r24
	shl_b64 r148, 0, r24
	xor_b32 r3, r5, 32
	smul_i32 s7, 0x1c00, s12
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:3
	addc_co_u32 r21, r21, r45
	.loc	2 33 40 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:40
	smov_b32 s0, 0
	smov_b64 s14, 0
	shr_b32 r2, 2, r1
	shl_b64 r34, 0, r26
	shl_b64 r42, 0, r26
	or_b32 r15, r4, r5
	.loc	2 33 343 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:33:343
	arrive gvmcnt(7)
	sts_b128 r28, 0x0, r46
	shl_b64 r44, 0, r24
	or_b32 r16, r4, r3
	arrive gvmcnt(6)
	sts_b128 r29, 0x0, r50
	shl_b64 r48, 0, r24
	mul_hi_i32 r18, s12, r18
	mov_b32 r19, s7
	arrive gvmcnt(5)
	sts_b128 r30, 0x0, r54
	shl_b64 r52, 0, r24
	arrive gvmcnt(4)
	sts_b128 r31, 0x0, r58
	shl_b64 r56, 0, r24
	.loc	2 37 353 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:37:353
	arrive gvmcnt(3)
	sts_b128 r36, 0x0, r62
	shl_b64 r28, 0, r24
	shl_b64 r60, 0, r24
	arrive gvmcnt(2)
	sts_b128 r37, 0x0, r66
	shl_b64 r64, 0, r24
	arrive gvmcnt(1)
	sts_b128 r38, 0x0, r70
	shl_b64 r68, 0, r24
	arrive gvmcnt(0)
	sts_b128 r39, 0x0, r74
	shl_b64 r72, 0, r24
	shl_b64 r36, 0, r24
	shl_b64 r76, 0, r24
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:3
	or_b32 r22, r22, r23
	shl_b64 r50, 0, r26
	shl_b64 r58, 0, r26
	shl_b64 r66, 0, r26
	shl_b64 r74, 0, r26
	shl_b64 r82, 0, r26
	shl_b64 r90, 0, r26
	shl_b64 r98, 0, r26
	shl_b64 r106, 0, r26
	shl_b64 r114, 0, r26
	shl_b64 r122, 0, r26
	shl_b64 r130, 0, r26
	shl_b64 r138, 0, r26
	shl_b64 r146, 0, r26
	shl_b64 r30, 0, r26
	shl_b64 r38, 0, r26
	shl_b64 r46, 0, r26
	shl_b64 r54, 0, r26
	shl_b64 r62, 0, r26
	shl_b64 r70, 0, r26
	shl_b64 r78, 0, r26
	shl_b64 r86, 0, r26
	shl_b64 r94, 0, r26
	shl_b64 r102, 0, r26
	shl_b64 r110, 0, r26
	shl_b64 r118, 0, r26
	shl_b64 r126, 0, r26
	shl_b64 r134, 0, r26
	shl_b64 r142, 0, r26
	shl_b64 r150, 0, r26
	sadd_co_i32 s5, 0x8000, 0
	bra LBB2_2
	.p2align	5
LBB2_1:                                 ; %if.end.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s6
	.loc	2 62 125 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:125
	or_b32 r23, s3, r6
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r168, r15, r23
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r168, 1, r168
	add_u32 r173, 0, r168
	.loc	2 62 125                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:125
	or_b32 r169, 0x400, r23
	.loc	2 62 301                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r170, r15, r169
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r176, r173, 0x0
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r170, 1, r170
	add_u32 r174, 0, r170
	.loc	2 62 125                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:125
	or_b32 r171, 0x800, r23
	.loc	2 62 301                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r172, r15, r171
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r180, r174, 0x0
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive gvmcnt(0) & bsmcnt(1)
	mma_16x16x16f16 r144, r176, r160, r144
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r172, 1, r172
	add_u32 r175, 0, r172
	.loc	2 62 125 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:125
	or_b32 r173, 0xc00, r23
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r80, r176, r164, r80
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r184, r175, 0x0
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r174, r15, r173
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r174, 1, r174
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r144, r178, r162, r144
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	add_u32 r175, 0, r174
	.loc	2 76 89                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	sadd_co_i32 s3, 0x8000, 0
	add_u32 r168, s3, r168
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r80, r178, r166, r80
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r188, r175, 0x0
	.loc	2 62 125 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:125
	or_b32 r175, 0x1000, r23
	.loc	2 62 301                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r176, r15, r175
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r180, r160, r136
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r176, 1, r176
	add_u32 r177, 0, r176
	.loc	2 39 21                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:21
	sadd_co_u32 s14, 0x80, s14
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r72, r180, r164, r72
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r192, r177, 0x0
	.loc	2 62 125 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:125
	or_b32 r177, 0x1400, r23
	.loc	2 62 301                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r178, r15, r177
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r136, r182, r162, r136
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r178, 1, r178
	add_u32 r179, 0, r178
	.loc	2 39 21                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:21
	saddc_co_u32 s15, s15, 0
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r72, r182, r166, r72
	.loc	2 39 21                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:21
	sadd_co_i32 s0, 0x2000, s0
	scmp_eq_u64 0x3780, s14
	add_u32 r22, r22, 64
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r184, r160, r128
	mma_16x16x16f16 r64, r184, r164, r64
	mma_16x16x16f16 r128, r186, r162, r128
	mma_16x16x16f16 r64, r186, r166, r64
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r184, r179, 0x0
	.loc	2 62 125 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:125
	or_b32 r179, 0x1800, r23
	.loc	2 62 301                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r180, r15, r179
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r188, r160, r120
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r180, 1, r180
	add_u32 r181, 0, r180
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r56, r188, r164, r56
	mma_16x16x16f16 r120, r190, r162, r120
	mma_16x16x16f16 r56, r190, r166, r56
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r188, r181, 0x0
	.loc	2 62 125 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:125
	or_b32 r181, 0x1c00, r23
	.loc	2 62 301                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r182, r15, r181
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r192, r160, r112
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r182, 1, r182
	add_u32 r183, 0, r182
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r23, r16, r23
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r48, r192, r164, r48
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r23, 1, r23
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r112, r194, r162, r112
	mma_16x16x16f16 r48, r194, r166, r48
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r192, r183, 0x0
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r184, r160, r104
	mma_16x16x16f16 r40, r184, r164, r40
	mma_16x16x16f16 r104, r186, r162, r104
	mma_16x16x16f16 r40, r186, r166, r40
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r184, r168, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r168, s3, r170
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r188, r160, r96
	mma_16x16x16f16 r32, r188, r164, r32
	mma_16x16x16f16 r96, r190, r162, r96
	mma_16x16x16f16 r32, r190, r166, r32
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r188, r168, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r168, s3, r172
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r192, r160, r88
	mma_16x16x16f16 r24, r192, r164, r24
	mma_16x16x16f16 r88, r194, r162, r88
	mma_16x16x16f16 r24, r194, r166, r24
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r192, r168, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r168, s3, r174
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r184, r160, r148
	mma_16x16x16f16 r84, r184, r164, r84
	mma_16x16x16f16 r148, r186, r162, r148
	mma_16x16x16f16 r84, r186, r166, r84
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r184, r168, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r168, s3, r176
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r188, r160, r140
	mma_16x16x16f16 r76, r188, r164, r76
	mma_16x16x16f16 r140, r190, r162, r140
	mma_16x16x16f16 r76, r190, r166, r76
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r188, r168, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r168, s3, r178
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r192, r160, r132
	mma_16x16x16f16 r68, r192, r164, r68
	mma_16x16x16f16 r132, r194, r162, r132
	mma_16x16x16f16 r68, r194, r166, r68
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r192, r168, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r168, s3, r180
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r184, r160, r124
	mma_16x16x16f16 r60, r184, r164, r60
	mma_16x16x16f16 r124, r186, r162, r124
	mma_16x16x16f16 r60, r186, r166, r60
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r184, r168, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r168, s3, r182
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r188, r160, r116
	mma_16x16x16f16 r52, r188, r164, r52
	mma_16x16x16f16 r116, r190, r162, r116
	mma_16x16x16f16 r52, r190, r166, r52
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r188, r168, 0x0
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	add_u32 r168, 0, r23
	.loc	2 76 89                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r23, s3, r23
	.loc	2 82 62                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r192, r160, r108
	mma_16x16x16f16 r44, r192, r164, r44
	mma_16x16x16f16 r108, r194, r162, r108
	mma_16x16x16f16 r44, r194, r166, r44
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r192, r168, 0x0
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r168, r16, r169
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r168, 1, r168
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r184, r160, r100
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	add_u32 r169, 0, r168
	.loc	2 82 62                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	mma_16x16x16f16 r36, r184, r164, r36
	mma_16x16x16f16 r100, r186, r162, r100
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r182, r169, 0x0
	.loc	2 82 62                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	mma_16x16x16f16 r36, r186, r166, r36
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r188, r160, r92
	mma_16x16x16f16 r28, r188, r164, r28
	.loc	2 62 301                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r160, r16, r171
	.loc	2 62 87 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r160, 1, r160
	add_u32 r161, 0, r160
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	mma_16x16x16f16 r92, r190, r162, r92
	mma_16x16x16f16 r28, r190, r166, r28
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r164, r161, 0x0
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r161, r16, r173
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r161, 1, r161
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r192, r152, r144
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	add_u32 r162, 0, r161
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r80, r192, r156, r80
	mma_16x16x16f16 r144, r194, r154, r144
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r170, r162, 0x0
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r162, r16, r175
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r162, 1, r162
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r80, r194, r158, r80
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	add_u32 r163, 0, r162
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r182, r152, r136
	mma_16x16x16f16 r72, r182, r156, r72
	mma_16x16x16f16 r136, r184, r154, r136
	mma_16x16x16f16 r72, r184, r158, r72
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r182, r163, 0x0
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r163, r16, r177
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r163, 1, r163
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r164, r152, r128
	mma_16x16x16f16 r64, r164, r156, r64
	mma_16x16x16f16 r128, r166, r154, r128
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	add_u32 r164, 0, r163
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r64, r166, r158, r64
	arrive bsmcnt(1)
	mma_16x16x16f16 r120, r170, r152, r120
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r174, r164, 0x0
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r164, r16, r179
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r164, 1, r164
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r56, r170, r156, r56
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	add_u32 r165, 0, r164
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r120, r172, r154, r120
	mma_16x16x16f16 r56, r172, r158, r56
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r170, r165, 0x0
	.loc	2 62 301 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:301
	or_b32 r165, r16, r181
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	shl_b32 r165, 1, r165
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r182, r152, r112
	.loc	2 62 87                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:87
	add_u32 r166, 0, r165
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r48, r182, r156, r48
	mma_16x16x16f16 r112, r184, r154, r112
	.loc	2 62 50                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:62:50
	lds_b128 r178, r166, 0x0
	.loc	2 68 64                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r48, r184, r158, r48
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r174, r152, r104
	mma_16x16x16f16 r40, r174, r156, r40
	mma_16x16x16f16 r104, r176, r154, r104
	mma_16x16x16f16 r40, r176, r158, r40
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r174, r23, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r23, s3, r168
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r170, r152, r96
	mma_16x16x16f16 r32, r170, r156, r32
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r166, r23, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r23, s3, r160
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	mma_16x16x16f16 r96, r172, r154, r96
	mma_16x16x16f16 r32, r172, r158, r32
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r170, r23, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r23, s3, r161
	.loc	2 68 64 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:68:64
	arrive bsmcnt(3)
	mma_16x16x16f16 r88, r178, r152, r88
	mma_16x16x16f16 r24, r178, r156, r24
	mma_16x16x16f16 r88, r180, r154, r88
	mma_16x16x16f16 r24, r180, r158, r24
	.loc	2 82 62                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r174, r152, r148
	mma_16x16x16f16 r84, r174, r156, r84
	mma_16x16x16f16 r148, r176, r154, r148
	mma_16x16x16f16 r84, r176, r158, r84
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r174, r23, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r23, s3, r162
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r166, r152, r140
	mma_16x16x16f16 r76, r166, r156, r76
	mma_16x16x16f16 r140, r168, r154, r140
	mma_16x16x16f16 r76, r168, r158, r76
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r166, r23, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r23, s3, r163
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r170, r152, r132
	mma_16x16x16f16 r68, r170, r156, r68
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r160, r23, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r23, s3, r164
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	mma_16x16x16f16 r132, r172, r154, r132
	mma_16x16x16f16 r68, r172, r158, r68
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r170, r23, 0x0
	.loc	2 76 89 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:89
	add_u32 r23, s3, r165
	.loc	2 82 62 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	arrive bsmcnt(3)
	mma_16x16x16f16 r124, r174, r152, r124
	mma_16x16x16f16 r60, r174, r156, r60
	mma_16x16x16f16 r124, r176, r154, r124
	mma_16x16x16f16 r60, r176, r158, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r166, r152, r116
	mma_16x16x16f16 r52, r166, r156, r52
	.loc	2 76 52                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:76:52
	lds_b128 r164, r23, 0x0
	.loc	2 82 62                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:82:62
	mma_16x16x16f16 r116, r168, r154, r116
	mma_16x16x16f16 r52, r168, r158, r52
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r160, r152, r108
	mma_16x16x16f16 r44, r160, r156, r44
	mma_16x16x16f16 r108, r162, r154, r108
	mma_16x16x16f16 r44, r162, r158, r44
	arrive bsmcnt(1)
	mma_16x16x16f16 r100, r170, r152, r100
	mma_16x16x16f16 r36, r170, r156, r36
	mma_16x16x16f16 r100, r172, r154, r100
	mma_16x16x16f16 r36, r172, r158, r36
	arrive bsmcnt(0)
	mma_16x16x16f16 r92, r164, r152, r92
	mma_16x16x16f16 r28, r164, r156, r28
	mma_16x16x16f16 r92, r166, r154, r92
	mma_16x16x16f16 r28, r166, r158, r28
	.loc	2 39 3                          ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:39:3
	bra_smsks LBB2_10
LBB2_2:                                 ; %for.body163
                                        ; =>This Inner Loop Header: Depth=1
.Ltmp5:
	.file	3 "/opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include" "__clang_maca_device_functions.h"
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp6:
	.loc	2 43 403                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:403
	mad_i32 r152, r22, 2, s18
	add_u32 r23, 0x38000, r22
	mad_i32 r154, r23, 2, s18
	.loc	2 43 372 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:372
	ldg_b128 r164, r152, 0x0
	.loc	2 43 403                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:403
	add_u32 r152, 0x70000, r22
	add_u32 r153, 0xa8000, r22
	.loc	2 43 372                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:372
	ldg_b128 r168, r154, 0x0
	.loc	2 43 403                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:403
	mad_i32 r154, r152, 2, s18
	mad_i32 r156, r153, 2, s18
	sand_b32 s3, 0x2000, s0
	.loc	2 43 372                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:372
	ldg_b128 r172, r154, 0x0
	.loc	2 47 411 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:47:411
	mad_i32 r154, r22, 2, s20
	.loc	2 43 372                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:372
	ldg_b128 r176, r156, 0x0
	.loc	2 47 411                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:47:411
	mad_i32 r156, r23, 2, s20
	.loc	2 47 382 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:47:382
	ldg_b128 r180, r154, 0x0
	.loc	2 47 411                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:47:411
	mad_i32 r154, r152, 2, s20
	mad_i32 r152, r153, 2, s20
	.loc	2 47 382                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:47:382
	ldg_b128 r184, r156, 0x0
	ldg_b128 r188, r154, 0x0
	ldg_b128 r192, r152, 0x0
	.loc	2 43 88 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:88
	mov_b32 r23, 0x2800
	mov_b32 r152, 0x3000
	mov_b32 r153, 0x3800
	xadd_u32 r23, s3, r23, r9
	xadd_u32 r152, s3, r152, r9
	xadd_u32 r153, s3, r153, r9
	.loc	2 43 294 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:294
	or_b32 r154, r17, s3
	.loc	2 43 124                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:124
	or_b32 r23, r23, r13
	or_b32 r152, r152, r13
	or_b32 r153, r153, r13
	.loc	2 43 294                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:294
	xor_b32 r154, 0x2000, r154
	or3_b32 r23, r23, r14, r10
	or3_b32 r152, r152, r14, r10
	or3_b32 r153, r153, r14, r10
	.loc	2 43 42                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:42
	shl_b32 r154, 1, r154
	shl_b32 r23, 1, r23
	shl_b32 r152, 1, r152
	shl_b32 r153, 1, r153
	add_u32 r155, 0, r154
	add_u32 r156, 0, r23
	add_u32 r157, 0, r152
	add_u32 r158, 0, r153
	shl_b64 r160, 0, 0
	.loc	2 47 42 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:47:42
	add_u32 r154, s5, r154
	add_u32 r23, s5, r23
	add_u32 r152, s5, r152
	add_u32 r153, s5, r153
	shl_b64 r162, 0, 0
	.loc	2 43 372                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:43:372
	arrive gvmcnt(7)
	sts_b128 r155, 0x0, r164
	arrive gvmcnt(6)
	sts_b128 r156, 0x0, r168
	arrive gvmcnt(5)
	sts_b128 r157, 0x0, r172
	arrive gvmcnt(4)
	sts_b128 r158, 0x0, r176
	.loc	2 47 382                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:47:382
	arrive gvmcnt(3)
	sts_b128 r154, 0x0, r180
	arrive gvmcnt(2)
	sts_b128 r23, 0x0, r184
	arrive gvmcnt(1)
	sts_b128 r152, 0x0, r188
	arrive gvmcnt(0)
	sts_b128 r153, 0x0, r192
	.loc	2 53 117                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:53:117
	and_xmsk s6, s10
	snop 0
	bra_xmskz LBB2_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r152, r20, s14
	mov_b32 r23, s15
	addc_co_u32 r153, r21, r23
	.loc	2 54 17 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:54:17
	snop 1
	ldg_b128 r160, r152, 0x0
LBB2_4:                                 ; %if.end
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s6
	shl_b64 r164, 0, 0
	shl_b64 r166, 0, 0
	.loc	2 53 117 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:53:117
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB2_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r23, r20, s14
	mov_b32 r152, s15
	addc_co_u32 r152, r21, r152
	.loc	2 54 17 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:54:17
	add_co_u32 r154, 0x38000, r23
	addc_co_u32 r155, r152, 0
	snop 1
	ldg_b128 r164, r154, 0x0
LBB2_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s6
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, 0
	.loc	2 53 117 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:53:117
	and_xmsk s6, s10
	snop 0
	bra_xmskz LBB2_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r152, r20, s14
	mov_b32 r23, s15
	addc_co_u32 r153, r21, r23
	.loc	2 54 17 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:54:17
	snop 1
	ldg_b128 r152, r152, 0x40
LBB2_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s6
	shl_b64 r156, 0, 0
	shl_b64 r158, 0, 0
	.loc	2 53 117 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:53:117
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB2_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB2_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r23, r20, s14
	mov_b32 r156, s15
	addc_co_u32 r156, r21, r156
	.loc	2 54 17 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:54:17
	add_co_u32 r158, 0x38040, r23
	addc_co_u32 r159, r156, 0
	snop 1
	ldg_b128 r156, r158, 0x0
	bra LBB2_1
LBB2_10:                                ; %for.cond570.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	or_b32 r9, r12, r11
	add_co_u32 r22, r19, r9
	addc_co_u32 r23, r18, 0
	shl_b64 r18, 0, 0
	shl_b64 r20, 0, 0
	.loc	2 95 115 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:95:115
	and_xmsk s6, s10
	snop 0
	bra_xmskz LBB2_12
; %bb.11:                               ; %if.then597
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:115
	shl_b64 r10, 1, r22
	add_co_u32 r9, s16, r10
	mov_b32 r10, s17
	addc_co_u32 r10, r10, r11
	add_co_u32 r12, 0x3780, r9
	addc_co_u32 r13, r10, 0
	.loc	2 96 17 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:96:17
	snop 1
	ldg_b128 r18, r12, 0x0
LBB2_12:                                ; %if.end649
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s6
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, 0
	.loc	2 95 115 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:95:115
	and_xmsk s6, s8
	snop 0
	bra_xmskz LBB2_14
; %bb.13:                               ; %if.then597.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:115
	shl_b64 r10, 1, r22
	add_co_u32 r9, s16, r10
	mov_b32 r10, s17
	addc_co_u32 r10, r10, r11
	add_co_u32 r12, 0x3b780, r9
	addc_co_u32 r13, r10, 0
	.loc	2 96 17 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:96:17
	snop 1
	ldg_b128 r152, r12, 0x0
LBB2_14:                                ; %if.end649.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s6
	shl_b64 r10, 0, 0
	shl_b64 r12, 0, 0
	.loc	2 95 115 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:95:115
	and_xmsk s6, s10
	snop 0
	bra_xmskz LBB2_16
; %bb.15:                               ; %if.then597.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:115
	shl_b64 r10, 1, r22
	add_co_u32 r9, s16, r10
	mov_b32 r10, s17
	addc_co_u32 r10, r10, r11
	add_co_u32 r12, 0x37c0, r9
	addc_co_u32 r13, r10, 0
	.loc	2 96 17 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:96:17
	snop 1
	ldg_b128 r10, r12, 0x0
LBB2_16:                                ; %if.end649.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s6
	sadd_co_i32 s0, s2, s1
	shl_b64 r14, 0, 0
	shl_b64 r16, 0, 0
	.loc	2 95 115 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:95:115
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB2_18
; %bb.17:                               ; %if.then597.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:115
	shl_b64 r14, 1, r22
	add_co_u32 r9, s16, r14
	mov_b32 r14, s17
	addc_co_u32 r14, r14, r15
	add_co_u32 r16, 0x3b7c0, r9
	addc_co_u32 r17, r14, 0
	.loc	2 96 17 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:96:17
	snop 1
	ldg_b128 r14, r16, 0x0
LBB2_18:                                ; %if.end649.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
.Ltmp7:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp8:
	.loc	2 105 200                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:200
	or_b32 r9, r4, r6
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or_b32 r22, r9, r5
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r22, 1, r22, 0
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r159, 0x4000, r22
	.loc	2 105 107                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:107
	or_b32 r23, 0x400, r6
	.loc	2 105 143                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:143
	or_b32 r156, r23, r5
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r162, r159, 0x0
	.loc	2 105 285                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r156, r156, r7, r8
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r156, 1, r156, 0
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r160, 0x4000, r156
	.loc	2 105 107                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:107
	or_b32 r157, 0x800, r6
	.loc	2 105 143                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:143
	or_b32 r158, r157, r5
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(0)
	mma_16x16x16f16 r144, r162, r18, r144
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r166, r160, 0x0
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r158, r158, r7, r8
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r158, 1, r158, 0
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r80, r162, r152, r80
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r161, 0x4000, r158
	.loc	2 105 107 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:107
	or_b32 r159, 0xc00, r6
	.loc	2 105 143                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:143
	or_b32 r160, r159, r5
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r144, r164, r20, r144
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r170, r161, 0x0
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r160, r160, r7, r8
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r160, 1, r160, 0
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r80, r164, r154, r80
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r161, 0x4000, r160
.Ltmp9:
	.file	4 "/opt/maca-3.7.1/include/common" "__clang_macac_math.h"
	.loc	4 708 10                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp10:
	.loc	2 175 95                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:95
	cmp_gt_i32 s2, s0, r0
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(1)
	mma_16x16x16f16 r136, r166, r18, r136
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r174, r161, 0x0
	.loc	2 105 107 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:107
	or_b32 r161, 0x1000, r6
	.loc	2 105 143                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:143
	or_b32 r162, r161, r5
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r72, r166, r152, r72
	.loc	2 105 285                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r162, r162, r7, r8
	.loc	2 105 87 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r162, 1, r162, 0
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r163, 0x4000, r162
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r136, r168, r20, r136
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	sand_b64 s2, s2, s10
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r178, r163, 0x0
	.loc	2 105 107 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:107
	or_b32 r163, 0x1400, r6
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r72, r168, r154, r72
	.loc	2 105 143                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:143
	or_b32 r164, r163, r5
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r164, r164, r7, r8
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r164, 1, r164, 0
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r170, r18, r128
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r165, 0x4000, r164
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r64, r170, r152, r64
	mma_16x16x16f16 r128, r172, r20, r128
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r168, r165, 0x0
	.loc	2 105 107 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:107
	or_b32 r165, 0x1800, r6
	.loc	2 105 143                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:143
	or_b32 r166, r165, r5
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r64, r172, r154, r64
	.loc	2 105 285                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r166, r166, r7, r8
	.loc	2 105 87 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r166, 1, r166, 0
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r167, 0x4000, r166
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r174, r18, r120
	.loc	2 105 107                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:107
	or_b32 r6, 0x1c00, r6
	.loc	2 105 143 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:143
	or_b32 r5, r6, r5
	.loc	2 105 285                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r5, r5, r7, r8
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r56, r174, r152, r56
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r172, r167, 0x0
	.loc	2 105 87 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r5, 1, r5, 0
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r7, 0x4000, r5
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r120, r176, r20, r120
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	add_i32 r5, 0xc000, r5
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r56, r176, r154, r56
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r178, r18, r112
	mma_16x16x16f16 r48, r178, r152, r48
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r176, r7, 0x0
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	add_i32 r7, 0xc000, r22
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r112, r180, r20, r112
	mma_16x16x16f16 r48, r180, r154, r48
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r168, r18, r104
	mma_16x16x16f16 r40, r168, r152, r40
	mma_16x16x16f16 r104, r170, r20, r104
	mma_16x16x16f16 r40, r170, r154, r40
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r168, r7, 0x0
	add_i32 r7, 0xc000, r156
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r172, r18, r96
	mma_16x16x16f16 r32, r172, r152, r32
	mma_16x16x16f16 r96, r174, r20, r96
	mma_16x16x16f16 r32, r174, r154, r32
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r172, r7, 0x0
	add_i32 r7, 0xc000, r158
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r176, r18, r88
	mma_16x16x16f16 r24, r176, r152, r24
	mma_16x16x16f16 r88, r178, r20, r88
	mma_16x16x16f16 r24, r178, r154, r24
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r176, r7, 0x0
	add_i32 r7, 0xc000, r160
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r168, r18, r148
	mma_16x16x16f16 r84, r168, r152, r84
	mma_16x16x16f16 r148, r170, r20, r148
	mma_16x16x16f16 r84, r170, r154, r84
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r168, r7, 0x0
	add_i32 r7, 0xc000, r162
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r172, r18, r140
	mma_16x16x16f16 r76, r172, r152, r76
	mma_16x16x16f16 r140, r174, r20, r140
	mma_16x16x16f16 r76, r174, r154, r76
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r172, r7, 0x0
	add_i32 r7, 0xc000, r164
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r176, r18, r132
	mma_16x16x16f16 r68, r176, r152, r68
	mma_16x16x16f16 r132, r178, r20, r132
	mma_16x16x16f16 r68, r178, r154, r68
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r176, r7, 0x0
	add_i32 r7, 0xc000, r166
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r168, r18, r124
	mma_16x16x16f16 r60, r168, r152, r60
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r166, r7, 0x0
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r124, r170, r20, r124
	mma_16x16x16f16 r60, r170, r154, r60
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r172, r18, r116
	mma_16x16x16f16 r52, r172, r152, r52
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r170, r5, 0x0
	.loc	2 105 285                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or_b32 r5, r9, r3
	.loc	2 105 87 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r5, 1, r5, 0
	.loc	2 125 63 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r116, r174, r20, r116
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r7, 0x4000, r5
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r52, r174, r154, r52
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r176, r18, r108
	mma_16x16x16f16 r44, r176, r152, r44
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r174, r7, 0x0
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r7, r4, r23, r3
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r7, 1, r7, 0
	.loc	2 125 63 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r108, r178, r20, r108
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r8, 0x4000, r7
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r44, r178, r154, r44
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r166, r18, r100
	mma_16x16x16f16 r36, r166, r152, r36
	mma_16x16x16f16 r100, r168, r20, r100
	mma_16x16x16f16 r36, r168, r154, r36
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r166, r8, 0x0
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r8, r4, r157, r3
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r8, 1, r8, 0
	.loc	2 125 63 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r170, r18, r92
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r9, 0x4000, r8
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r28, r170, r152, r28
	mma_16x16x16f16 r92, r172, r20, r92
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r20, r9, 0x0
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r9, r4, r159, r3
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r9, 1, r9, 0
	.loc	2 125 63 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r28, r172, r154, r28
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r18, 0x4000, r9
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r174, r10, r144
	mma_16x16x16f16 r80, r174, r14, r80
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r152, r18, 0x0
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r18, r4, r161, r3
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r18, 1, r18, 0
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r144, r176, r12, r144
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r19, 0x4000, r18
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r80, r176, r16, r80
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r166, r10, r136
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r156, r19, 0x0
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r19, r4, r163, r3
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r19, 1, r19, 0
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r72, r166, r14, r72
	mma_16x16x16f16 r136, r168, r12, r136
	mma_16x16x16f16 r72, r168, r16, r72
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r20, r10, r128
	mma_16x16x16f16 r64, r20, r14, r64
	mma_16x16x16f16 r128, r22, r12, r128
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r20, 0x4000, r19
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r64, r22, r16, r64
	arrive bsmcnt(1)
	mma_16x16x16f16 r120, r152, r10, r120
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r160, r20, 0x0
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r20, r4, r165, r3
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r20, 1, r20, 0
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r56, r152, r14, r56
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r21, 0x4000, r20
	.loc	2 105 285 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:285
	or3_b32 r3, r4, r6, r3
	.loc	2 105 87                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:87
	shl_add_u32 r3, 1, r3, 0
	.loc	2 111 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r120, r154, r12, r120
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	add_i32 r4, 0x4000, r3
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	add_i32 r3, 0xc000, r3
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	mma_16x16x16f16 r56, r154, r16, r56
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r152, r21, 0x0
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r156, r10, r112
	mma_16x16x16f16 r48, r156, r14, r48
	mma_16x16x16f16 r112, r158, r12, r112
	mma_16x16x16f16 r48, r158, r16, r48
	.loc	2 105 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:105:50
	lds_b128 r156, r4, 0x0
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	add_i32 r4, 0xc000, r5
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r160, r10, r104
	mma_16x16x16f16 r40, r160, r14, r40
	mma_16x16x16f16 r104, r162, r12, r104
	mma_16x16x16f16 r40, r162, r16, r40
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r160, r4, 0x0
	add_i32 r4, 0xc000, r7
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r152, r10, r96
	mma_16x16x16f16 r32, r152, r14, r32
	mma_16x16x16f16 r96, r154, r12, r96
	mma_16x16x16f16 r32, r154, r16, r32
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r152, r4, 0x0
	add_i32 r4, 0xc000, r8
	.loc	2 111 65                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:111:65
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r156, r10, r88
	mma_16x16x16f16 r24, r156, r14, r24
	mma_16x16x16f16 r88, r158, r12, r88
	mma_16x16x16f16 r24, r158, r16, r24
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r156, r4, 0x0
	add_i32 r4, 0xc000, r9
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r160, r10, r148
	mma_16x16x16f16 r84, r160, r14, r84
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r6, r4, 0x0
	add_i32 r4, 0xc000, r18
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r148, r162, r12, r148
	mma_16x16x16f16 r84, r162, r16, r84
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r152, r10, r140
	mma_16x16x16f16 r76, r152, r14, r76
	mma_16x16x16f16 r140, r154, r12, r140
	mma_16x16x16f16 r76, r154, r16, r76
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r152, r4, 0x0
	add_i32 r4, 0xc000, r19
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r156, r10, r132
	mma_16x16x16f16 r68, r156, r14, r68
	mma_16x16x16f16 r132, r158, r12, r132
	mma_16x16x16f16 r68, r158, r16, r68
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r156, r4, 0x0
	add_i32 r4, 0xc000, r20
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r6, r10, r124
	mma_16x16x16f16 r60, r6, r14, r60
	.loc	2 119 50                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:119:50
	lds_b128 r4, r4, 0x0
	lds_b128 r18, r3, 0x0
	shl_b32 r3, 10, r1
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r124, r8, r12, r124
	shl_b32 r1, 11, r1
	and_b32 r1, 0x7800, r1
	mma_16x16x16f16 r60, r8, r16, r60
	arrive bsmcnt(3)
	mma_16x16x16f16 r116, r152, r10, r116
	mma_16x16x16f16 r52, r152, r14, r52
	mma_16x16x16f16 r116, r154, r12, r116
	mma_16x16x16f16 r52, r154, r16, r52
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r156, r10, r108
	mma_16x16x16f16 r44, r156, r14, r44
	mma_16x16x16f16 r108, r158, r12, r108
	mma_16x16x16f16 r44, r158, r16, r44
	arrive bsmcnt(1)
	mma_16x16x16f16 r100, r4, r10, r100
	mma_16x16x16f16 r36, r4, r14, r36
	mma_16x16x16f16 r100, r6, r12, r100
	and_b32 r4, 0xf0000, r3
	mov_b32 r5, 0
	mov_b32 r3, 0x80
	mma_16x16x16f16 r36, r6, r16, r36
	mad_u32 r4, s4, r3, r4
	add_co_u32 r4, r4, r1
	addc_co_u32 r5, r5, 0
	arrive bsmcnt(0)
	mma_16x16x16f16 r92, r18, r10, r92
	mov_b32 r1, 0x800
	mad_i32 r4, s12, r1, r4
	and_b32 r1, r2, 12
	mma_16x16x16f16 r28, r18, r14, r28
	.loc	2 134 3                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:134:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s22, r1
	mov_b32 r2, s23
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r92, r20, r12, r92
	.loc	2 134 3                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:134:3
	addc_co_u32 r2, r2, 0
	.loc	2 125 63                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:125:63
	mma_16x16x16f16 r28, r20, r16, r28
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_36
; %bb.19:                               ; %if.end1045
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_37
LBB2_20:                                ; %if.end1045.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_38
LBB2_21:                                ; %if.end1045.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_39
LBB2_22:                                ; %if.end1045.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_40
LBB2_23:                                ; %if.end1045.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_41
LBB2_24:                                ; %if.end1045.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_42
LBB2_25:                                ; %if.end1045.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_27
LBB2_26:                                ; %if.then977.7
	.loc	2 157 27 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r3, 0xbfb8aa3b, r91
.Ltmp11:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s2
	fmka_f32 r9, r91, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s2
	exp_f32 r9, r9
.Ltmp12:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_scale_f32 r9, r7, r7, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r7, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r90
.Ltmp13:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r9
.Ltmp14:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r7, r91, r7
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r7, r7, r95
.Ltmp15:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s2
	fmka_f32 r10, r90, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s2
	exp_f32 r10, r10
.Ltmp16:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r89
.Ltmp17:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r10
.Ltmp18:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r9, r90, r9
.Ltmp19:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s2
	fmka_f32 r11, r89, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s2
	exp_f32 r11, r11
.Ltmp20:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r11, 0xbfb8aa3b, r88
.Ltmp21:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s2, 0xc2fc0000, r11
.Ltmp22:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r10, r89, r10
.Ltmp23:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s2
	fmka_f32 r8, r88, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s2
	exp_f32 r8, r8
.Ltmp24:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s1, r3, s1
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s1
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r3, r88, r3
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r3, r3, r92
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r6, r10, r93
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r8, r9, r94
.Ltmp25:
	.file	5 "/opt/maca-3.7.1/include/common" "maca_fp16.hpp"
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp26:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp27:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp28:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp29:
	.loc	2 188 314 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	add_co_u32 r10, r1, r10
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r2, r11
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xe0, r6 devc
LBB2_27:                                ; %if.end1045.7
	.loc	2 0 445                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:445
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 66 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:66
	or_b32 r0, r0, 16
	.loc	2 175 95 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:95
	cmp_gt_i32 s0, s0, r0
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	snop 3
	sand_b64 s0, s0, s8
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_43
; %bb.28:                               ; %if.end1045.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_44
LBB2_29:                                ; %if.end1045.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_45
LBB2_30:                                ; %if.end1045.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_46
LBB2_31:                                ; %if.end1045.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_47
LBB2_32:                                ; %if.end1045.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_48
LBB2_33:                                ; %if.end1045.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_49
LBB2_34:                                ; %if.end1045.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB2_50
LBB2_35:                                ; %if.end1045.15
	.loc	2 193 1 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:193:1
	snop 1
	endk
LBB2_36:                                ; %if.then977
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r3, 0xbfb8aa3b, r147
.Ltmp30:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s6
	fmka_f32 r9, r147, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s6
	exp_f32 r9, r9
.Ltmp31:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_scale_f32 r9, r7, r7, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r7, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r146
.Ltmp32:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r9
.Ltmp33:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r7, r147, r7
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r7, r7, r151
.Ltmp34:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s6
	fmka_f32 r10, r146, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s6
	exp_f32 r10, r10
.Ltmp35:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r145
.Ltmp36:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r10
.Ltmp37:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r9, r146, r9
.Ltmp38:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s6
	fmka_f32 r11, r145, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s6
	exp_f32 r11, r11
.Ltmp39:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r11, 0xbfb8aa3b, r144
.Ltmp40:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r11
.Ltmp41:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r10, r145, r10
.Ltmp42:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s6
	fmka_f32 r8, r144, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s6
	exp_f32 r8, r8
.Ltmp43:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s1, r3, s1
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s1
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r3, r144, r3
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r3, r3, r148
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r6, r10, r149
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r8, r9, r150
.Ltmp44:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp45:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp46:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp47:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp48:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	add_co_u32 r10, r1, r10
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r2, r11
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_20
LBB2_37:                                ; %if.then977.1
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r3, 0xbfb8aa3b, r139
.Ltmp49:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s6
	fmka_f32 r9, r139, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s6
	exp_f32 r9, r9
.Ltmp50:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_scale_f32 r9, r7, r7, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r7, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r138
.Ltmp51:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r9
.Ltmp52:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r7, r139, r7
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r7, r7, r143
.Ltmp53:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s6
	fmka_f32 r10, r138, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s6
	exp_f32 r10, r10
.Ltmp54:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r137
.Ltmp55:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r10
.Ltmp56:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r9, r138, r9
.Ltmp57:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s6
	fmka_f32 r11, r137, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s6
	exp_f32 r11, r11
.Ltmp58:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r11, 0xbfb8aa3b, r136
.Ltmp59:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r11
.Ltmp60:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r10, r137, r10
.Ltmp61:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s6
	fmka_f32 r8, r136, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s6
	exp_f32 r8, r8
.Ltmp62:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s1, r3, s1
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s1
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r3, r136, r3
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r3, r3, r140
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r6, r10, r141
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r8, r9, r142
.Ltmp63:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp64:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp65:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp66:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp67:
	.loc	2 188 314 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	add_co_u32 r10, r1, r10
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r2, r11
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x20, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_21
LBB2_38:                                ; %if.then977.2
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r3, 0xbfb8aa3b, r131
.Ltmp68:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s6
	fmka_f32 r9, r131, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s6
	exp_f32 r9, r9
.Ltmp69:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_scale_f32 r9, r7, r7, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r7, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r130
.Ltmp70:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r9
.Ltmp71:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r7, r131, r7
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r7, r7, r135
.Ltmp72:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s6
	fmka_f32 r10, r130, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s6
	exp_f32 r10, r10
.Ltmp73:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r129
.Ltmp74:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r10
.Ltmp75:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r9, r130, r9
.Ltmp76:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s6
	fmka_f32 r11, r129, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s6
	exp_f32 r11, r11
.Ltmp77:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r11, 0xbfb8aa3b, r128
.Ltmp78:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r11
.Ltmp79:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r10, r129, r10
.Ltmp80:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s6
	fmka_f32 r8, r128, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s6
	exp_f32 r8, r8
.Ltmp81:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s1, r3, s1
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s1
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r3, r128, r3
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r3, r3, r132
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r6, r10, r133
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r8, r9, r134
.Ltmp82:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp83:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp84:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp85:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp86:
	.loc	2 188 314 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	add_co_u32 r10, r1, r10
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r2, r11
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x40, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_22
LBB2_39:                                ; %if.then977.3
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r3, 0xbfb8aa3b, r123
.Ltmp87:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s6
	fmka_f32 r9, r123, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s6
	exp_f32 r9, r9
.Ltmp88:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_scale_f32 r9, r7, r7, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r7, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r122
.Ltmp89:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r9
.Ltmp90:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r7, r123, r7
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r7, r7, r127
.Ltmp91:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s6
	fmka_f32 r10, r122, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s6
	exp_f32 r10, r10
.Ltmp92:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r121
.Ltmp93:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r10
.Ltmp94:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r9, r122, r9
.Ltmp95:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s6
	fmka_f32 r11, r121, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s6
	exp_f32 r11, r11
.Ltmp96:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r11, 0xbfb8aa3b, r120
.Ltmp97:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r11
.Ltmp98:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r10, r121, r10
.Ltmp99:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s6
	fmka_f32 r8, r120, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s6
	exp_f32 r8, r8
.Ltmp100:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s1, r3, s1
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s1
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r3, r120, r3
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r3, r3, r124
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r6, r10, r125
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r8, r9, r126
.Ltmp101:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp102:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp103:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp104:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp105:
	.loc	2 188 314 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	add_co_u32 r10, r1, r10
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r2, r11
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x60, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_23
LBB2_40:                                ; %if.then977.4
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r3, 0xbfb8aa3b, r115
.Ltmp106:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s6
	fmka_f32 r9, r115, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s6
	exp_f32 r9, r9
.Ltmp107:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_scale_f32 r9, r7, r7, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r7, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r114
.Ltmp108:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r9
.Ltmp109:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r7, r115, r7
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r7, r7, r119
.Ltmp110:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s6
	fmka_f32 r10, r114, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s6
	exp_f32 r10, r10
.Ltmp111:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r113
.Ltmp112:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r10
.Ltmp113:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r9, r114, r9
.Ltmp114:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s6
	fmka_f32 r11, r113, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s6
	exp_f32 r11, r11
.Ltmp115:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r11, 0xbfb8aa3b, r112
.Ltmp116:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r11
.Ltmp117:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r10, r113, r10
.Ltmp118:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s6
	fmka_f32 r8, r112, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s6
	exp_f32 r8, r8
.Ltmp119:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s1, r3, s1
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s1
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r3, r112, r3
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r3, r3, r116
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r6, r10, r117
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r8, r9, r118
.Ltmp120:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp121:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp122:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp123:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp124:
	.loc	2 188 314 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	add_co_u32 r10, r1, r10
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r2, r11
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0x80, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_24
LBB2_41:                                ; %if.then977.5
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r3, 0xbfb8aa3b, r107
.Ltmp125:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s6
	fmka_f32 r9, r107, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s6
	exp_f32 r9, r9
.Ltmp126:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_scale_f32 r9, r7, r7, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r7, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r106
.Ltmp127:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r9
.Ltmp128:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r7, r107, r7
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r7, r7, r111
.Ltmp129:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s6
	fmka_f32 r10, r106, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s6
	exp_f32 r10, r10
.Ltmp130:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r105
.Ltmp131:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r10
.Ltmp132:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r9, r106, r9
.Ltmp133:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s6
	fmka_f32 r11, r105, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s6
	exp_f32 r11, r11
.Ltmp134:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r11, 0xbfb8aa3b, r104
.Ltmp135:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r11
.Ltmp136:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r10, r105, r10
.Ltmp137:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s6
	fmka_f32 r8, r104, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s6
	exp_f32 r8, r8
.Ltmp138:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s1, r3, s1
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s1
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r3, r104, r3
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r3, r3, r108
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r6, r10, r109
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r8, r9, r110
.Ltmp139:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp140:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp141:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp142:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp143:
	.loc	2 188 314 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	add_co_u32 r10, r1, r10
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r2, r11
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xa0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB2_25
LBB2_42:                                ; %if.then977.6
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r3, 0xbfb8aa3b, r99
.Ltmp144:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r3
	mov_b32 r8, 0x42800000
	mov_b32 r3, 0x1f800000
	mov_b32 r6, 0x3f800000
	smov_b32 s1, 0x3f800000
	csel_b32 r9, r8, 0, s6
	fmka_f32 r9, r99, 0xbfb8aa3b, r9
	csel_b32 r7, r3, r6, s6
	exp_f32 r9, r9
.Ltmp145:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r7, r7, r9, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_scale_f32 r9, r7, r7, s1
	rcp_f32 r10, r9
	snop 0
	fma_f32 r11, neg(r9), r10, r6
	fmac_f32 r10, r11, r10
	div_scale_f32 r11, s1, r7, s1
	mul_f32 r12, r11, r10
	fma_f32 r13, neg(r9), r12, r11
	fmac_f32 r12, r13, r10
	fmac_f32 r11, neg(r9), r12
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r9, 0xbfb8aa3b, r98
.Ltmp146:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r9
.Ltmp147:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r7, r9, r7, s1
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r7, r99, r7
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r7, r7, r103
.Ltmp148:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r10, r8, 0, s6
	fmka_f32 r10, r98, 0xbfb8aa3b, r10
	csel_b32 r9, r3, r6, s6
	exp_f32 r10, r10
.Ltmp149:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_scale_f32 r10, r9, r9, s1
	rcp_f32 r11, r10
	snop 0
	fma_f32 r12, neg(r10), r11, r6
	fmac_f32 r11, r12, r11
	div_scale_f32 r12, s1, r9, s1
	mul_f32 r13, r12, r11
	fma_f32 r14, neg(r10), r13, r12
	fmac_f32 r13, r14, r11
	fmac_f32 r12, neg(r10), r13
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r10, 0xbfb8aa3b, r97
.Ltmp150:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r10
.Ltmp151:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s1
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r9, r98, r9
.Ltmp152:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r11, r8, 0, s6
	fmka_f32 r11, r97, 0xbfb8aa3b, r11
	csel_b32 r10, r3, r6, s6
	exp_f32 r11, r11
.Ltmp153:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r10, r10, r11, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_scale_f32 r11, r10, r10, s1
	rcp_f32 r12, r11
	snop 0
	fma_f32 r13, neg(r11), r12, r6
	fmac_f32 r12, r13, r12
	div_scale_f32 r13, s1, r10, s1
	mul_f32 r14, r13, r12
	fma_f32 r15, neg(r11), r14, r13
	fmac_f32 r14, r15, r12
	fmac_f32 r13, neg(r11), r14
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r11, 0xbfb8aa3b, r96
.Ltmp154:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s6, 0xc2fc0000, r11
.Ltmp155:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r11, r13, r12, r14
	div_fixup_f32 r10, r11, r10, s1
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r10, r97, r10
.Ltmp156:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r8, r8, 0, s6
	fmka_f32 r8, r96, 0xbfb8aa3b, r8
	csel_b32 r3, r3, r6, s6
	exp_f32 r8, r8
.Ltmp157:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r3, r3, r8, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
	div_scale_f32 r8, r3, r3, s1
	rcp_f32 r11, r8
	snop 0
	fmac_f32 r6, neg(r8), r11
	fmac_f32 r11, r6, r11
	div_scale_f32 r6, s1, r3, s1
	mul_f32 r12, r6, r11
	fma_f32 r13, neg(r8), r12, r6
	fmac_f32 r12, r13, r11
	fmac_f32 r6, neg(r8), r12
	div_fmas_f32 r6, r6, r11, r12
	div_fixup_f32 r3, r6, r3, s1
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r3, r96, r3
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r3, r3, r100
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r6, r10, r101
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r8, r9, r102
.Ltmp158:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp159:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp160:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r8
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp161:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r7_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp162:
	.loc	2 188 314 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:314
	snop 0
	shl_b64 r10, 1, r4
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r7, 16, r7
	add_u16 r6_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	add_co_u32 r10, r1, r10
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r7, r6
	shl_b32 r6, 16, r9
	and_b32 r3, 0xffff, r3
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r2, r11
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r6, r6, r3
	snop 1
	stg_b64 r10, 0xc0, r6 devc
	sor_b64 xmsk, xmsk, s4
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB2_26
	bra LBB2_27
LBB2_43:                                ; %if.then977.8
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r0, 0xbfb8aa3b, r83
.Ltmp163:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r83, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp164:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r8, 0xbfb8aa3b, r82
.Ltmp165:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp166:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r6, r83, r6
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r6, r6, r87
.Ltmp167:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r82, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp168:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r9, 0xbfb8aa3b, r81
.Ltmp169:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp170:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r8, r82, r8
.Ltmp171:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r81, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp172:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
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
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r10, 0xbfb8aa3b, r80
.Ltmp173:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp174:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r9, r81, r9
.Ltmp175:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r80, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp176:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
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
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r0, r80, r0
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r0, r0, r84
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r3, r9, r85
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r7, r8, r86
.Ltmp177:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp178:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp179:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp180:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp181:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10000, r6
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r7, 0
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_29
LBB2_44:                                ; %if.then977.9
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r0, 0xbfb8aa3b, r75
.Ltmp182:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r75, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp183:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r8, 0xbfb8aa3b, r74
.Ltmp184:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp185:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r6, r75, r6
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r6, r6, r79
.Ltmp186:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r74, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp187:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r9, 0xbfb8aa3b, r73
.Ltmp188:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp189:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r8, r74, r8
.Ltmp190:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r73, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp191:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
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
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r10, 0xbfb8aa3b, r72
.Ltmp192:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp193:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r9, r73, r9
.Ltmp194:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r72, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp195:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
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
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r0, r72, r0
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r0, r0, r76
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r3, r9, r77
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r7, r8, r78
.Ltmp196:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp197:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp198:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp199:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp200:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10020, r6
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r7, 0
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_30
LBB2_45:                                ; %if.then977.10
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r0, 0xbfb8aa3b, r67
.Ltmp201:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r67, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp202:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r8, 0xbfb8aa3b, r66
.Ltmp203:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp204:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r6, r67, r6
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r6, r6, r71
.Ltmp205:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r66, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp206:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r9, 0xbfb8aa3b, r65
.Ltmp207:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp208:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r8, r66, r8
.Ltmp209:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r65, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp210:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
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
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r10, 0xbfb8aa3b, r64
.Ltmp211:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp212:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r9, r65, r9
.Ltmp213:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r64, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp214:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
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
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r0, r64, r0
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r0, r0, r68
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r3, r9, r69
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r7, r8, r70
.Ltmp215:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp216:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp217:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp218:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp219:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10040, r6
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r7, 0
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_31
LBB2_46:                                ; %if.then977.11
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r0, 0xbfb8aa3b, r59
.Ltmp220:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r59, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp221:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r8, 0xbfb8aa3b, r58
.Ltmp222:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp223:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r6, r59, r6
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r6, r6, r63
.Ltmp224:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r58, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp225:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r9, 0xbfb8aa3b, r57
.Ltmp226:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp227:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r8, r58, r8
.Ltmp228:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r57, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp229:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
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
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r10, 0xbfb8aa3b, r56
.Ltmp230:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp231:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r9, r57, r9
.Ltmp232:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r56, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp233:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
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
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r0, r56, r0
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r0, r0, r60
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r3, r9, r61
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r7, r8, r62
.Ltmp234:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp235:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp236:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp237:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp238:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10060, r6
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r7, 0
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_32
LBB2_47:                                ; %if.then977.12
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r0, 0xbfb8aa3b, r51
.Ltmp239:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r51, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp240:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r8, 0xbfb8aa3b, r50
.Ltmp241:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp242:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r6, r51, r6
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r6, r6, r55
.Ltmp243:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r50, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp244:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r9, 0xbfb8aa3b, r49
.Ltmp245:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp246:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r8, r50, r8
.Ltmp247:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r49, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp248:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
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
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r10, 0xbfb8aa3b, r48
.Ltmp249:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp250:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r9, r49, r9
.Ltmp251:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r48, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp252:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
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
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r0, r48, r0
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r0, r0, r52
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r3, r9, r53
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r7, r8, r54
.Ltmp253:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp254:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp255:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp256:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp257:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x10080, r6
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r7, 0
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_33
LBB2_48:                                ; %if.then977.13
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r0, 0xbfb8aa3b, r43
.Ltmp258:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r43, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp259:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r8, 0xbfb8aa3b, r42
.Ltmp260:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp261:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r6, r43, r6
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r6, r6, r47
.Ltmp262:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r42, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp263:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r9, 0xbfb8aa3b, r41
.Ltmp264:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp265:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r8, r42, r8
.Ltmp266:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r41, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp267:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
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
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r10, 0xbfb8aa3b, r40
.Ltmp268:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp269:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r9, r41, r9
.Ltmp270:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r40, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp271:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
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
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r0, r40, r0
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r0, r0, r44
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r3, r9, r45
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r7, r8, r46
.Ltmp272:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp273:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp274:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp275:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp276:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100a0, r6
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r7, 0
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_34
LBB2_49:                                ; %if.then977.14
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r0, 0xbfb8aa3b, r35
.Ltmp277:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s6, 0x3f800000
	csel_b32 r8, r7, 0, s4
	fmka_f32 r8, r35, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s4
	exp_f32 r8, r8
.Ltmp278:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r8, 0xbfb8aa3b, r34
.Ltmp279:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r8
.Ltmp280:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s6
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r6, r35, r6
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r6, r6, r39
.Ltmp281:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s4
	fmka_f32 r9, r34, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s4
	exp_f32 r9, r9
.Ltmp282:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r9, 0xbfb8aa3b, r33
.Ltmp283:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r9
.Ltmp284:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s6
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r8, r34, r8
.Ltmp285:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s4
	fmka_f32 r10, r33, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s4
	exp_f32 r10, r10
.Ltmp286:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
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
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r10, 0xbfb8aa3b, r32
.Ltmp287:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s4, 0xc2fc0000, r10
.Ltmp288:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s6
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r9, r33, r9
.Ltmp289:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s4
	fmka_f32 r7, r32, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s4
	exp_f32 r7, r7
.Ltmp290:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
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
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r0, r32, r0
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r0, r0, r36
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r3, r9, r37
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r7, r8, r38
.Ltmp291:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp292:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp293:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp294:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r9_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp295:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r6, 1, r4
	add_co_u32 r6, r1, r6
	addc_co_u32 r7, r2, r7
	add_co_u32 r10, 0x100c0, r6
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r6, 16, r9
	add_u16 r3_hi, 0, 0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r11, r7, 0
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r7, r6, r3
	shl_b32 r3, 16, r8
	and_b32 r0, 0xffff, r0
	or_b32 r6, r3, r0
	snop 1
	stg_b64 r10, 0x0, r6 devc
	sor_b64 xmsk, xmsk, s2
	.loc	2 175 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:175:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB2_35
LBB2_50:                                ; %if.then977.15
	.loc	2 157 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:157:27
	mul_f32 r0, 0xbfb8aa3b, r27
.Ltmp296:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r0
	mov_b32 r7, 0x42800000
	mov_b32 r0, 0x1f800000
	mov_b32 r3, 0x3f800000
	smov_b32 s2, 0x3f800000
	csel_b32 r8, r7, 0, s0
	fmka_f32 r8, r27, 0xbfb8aa3b, r8
	csel_b32 r6, r0, r3, s0
	exp_f32 r8, r8
.Ltmp297:
	.loc	2 165 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:165:26
	snop 0
	fmak_f32 r6, r6, r8, 0x3f800000
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
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
	.loc	2 156 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:156:27
	mul_f32 r8, 0xbfb8aa3b, r26
.Ltmp298:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r8
.Ltmp299:
	.loc	2 169 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:169:24
	div_fmas_f32 r8, r10, r9, r11
	div_fixup_f32 r6, r8, r6, s2
	.loc	2 173 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:173:20
	mul_f32 r6, r27, r6
	.loc	2 185 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:185:28
	mul_f32 r6, r6, r31
.Ltmp300:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	csel_b32 r9, r7, 0, s0
	fmka_f32 r9, r26, 0xbfb8aa3b, r9
	csel_b32 r8, r0, r3, s0
	exp_f32 r9, r9
.Ltmp301:
	.loc	2 164 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:164:26
	snop 0
	fmak_f32 r8, r8, r9, 0x3f800000
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
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
	.loc	2 155 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:155:27
	mul_f32 r9, 0xbfb8aa3b, r25
.Ltmp302:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r9
.Ltmp303:
	.loc	2 168 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:168:24
	div_fmas_f32 r9, r11, r10, r12
	div_fixup_f32 r8, r9, r8, s2
	.loc	2 172 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:172:20
	mul_f32 r8, r26, r8
.Ltmp304:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r10, r7, 0, s0
	fmka_f32 r10, r25, 0xbfb8aa3b, r10
	csel_b32 r9, r0, r3, s0
	exp_f32 r10, r10
.Ltmp305:
	.loc	2 163 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:163:26
	snop 0
	fmak_f32 r9, r9, r10, 0x3f800000
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
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
	.loc	2 154 27                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:154:27
	mul_f32 r10, 0xbfb8aa3b, r24
.Ltmp306:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	cmp_gt_f32 s0, 0xc2fc0000, r10
.Ltmp307:
	.loc	2 167 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:167:24
	div_fmas_f32 r10, r12, r11, r13
	div_fixup_f32 r9, r10, r9, s2
	.loc	2 171 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:171:20
	mul_f32 r9, r25, r9
.Ltmp308:
	.loc	4 285 49                        ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:285:49
	snop 0
	csel_b32 r7, r7, 0, s0
	fmka_f32 r7, r24, 0xbfb8aa3b, r7
	csel_b32 r0, r0, r3, s0
	exp_f32 r7, r7
.Ltmp309:
	.loc	2 162 26                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:162:26
	snop 0
	fmak_f32 r0, r0, r7, 0x3f800000
	.loc	2 166 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:166:24
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
	.loc	2 170 20                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:170:20
	mul_f32 r0, r24, r0
	.loc	2 182 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:182:28
	mul_f32 r0, r0, r28
	.loc	2 183 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:183:28
	mul_f32 r3, r9, r29
	.loc	2 184 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:184:28
	mul_f32 r7, r8, r30
.Ltmp310:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r0_lo, r0
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp311:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r8_lo, r3
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp312:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r3_lo, r7
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp313:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 0
	cvt_f32tof16 r6_lo, r6
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp314:
	.loc	2 188 31 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	snop 0
	shl_b64 r4, 1, r4
	add_co_u32 r1, r1, r4
	addc_co_u32 r2, r2, r5
	add_co_u32 r4, 0x100e0, r1
	.loc	2 188 445 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	shl_b32 r1, 16, r6
	add_u16 r3_hi, 0, 0
	or_b32 r3, r1, r3
	shl_b32 r1, 16, r8
	and_b32 r0, 0xffff, r0
	.loc	2 188 31                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:31
	addc_co_u32 r5, r2, 0
	.loc	2 188 445                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:188:445
	or_b32 r2, r1, r0
	snop 1
	stg_b64 r4, 0x0, r2 devc
	.loc	2 193 1 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:193:1
	snop 2
	endk
.Ltmp315:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel
		.macahca_mtreg_size 25
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
; codeLenInByte = 25232
; NumMTRegsForWarps/PEU: 196
; NumSTRegsForWarps/PEU: 52
; MaxWarpsPerPEU: 2
	.text
	.protected	kernel_kernel_1         ; -- Begin function kernel_kernel_1
	.globl	kernel_kernel_1
	.p2align	8
	.type	kernel_kernel_1,@function
kernel_kernel_1:                        ; @kernel_kernel_1
.Lfunc_begin3:
	.loc	2 195 0                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:195:0
; %bb.0:                                ; %entry
	ldu_b256 s8, s0, 0x0
	smov_b32 s2, s5
.Ltmp316:
	.loc	2 202 23 prologue_end           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:202:23
	smov_b32 s3, 0
	sshl_b64 s6, 2, s2
	ldu_b256 s16, s0, 0x20
	and_b32 r1, 0x3ff, r0
	shl_b32 r0, 8, r1
	arrive slcnt(0)
	sadd_co_u32 s6, s8, s6
	saddc_co_u32 s7, s9, s7
	ldu_b32 s6, s6, 0x0
	and_b32 r20, 0x3f800, r0
	shl_b32 r0, 3, r1
	and_b32 r21, r0, 56
	shl_b32 r9, 11, r1
	shr_b32 r10, 5, r1
	shr_b32 r14, 4, r1
	arrive slcnt(0)
	sashr_i32 s7, 31, s6
	.loc	2 203 24                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:203:24
	sshl_b64 s0, 2, s6
	sadd_co_u32 s8, s14, s0
	saddc_co_u32 s9, s15, s1
	smul_i32 s3, 0xe00000, s6
	.loc	2 204 38                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:204:38
	sshl_b32 s6, 7, s5
	.loc	2 204 47 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:204:47
	sadd_co_u32 s10, s10, s0
	saddc_co_u32 s11, s11, s1
	.loc	2 204 79                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:204:79
	sadd_co_u32 s14, s12, s0
	saddc_co_u32 s15, s13, s1
	sshl_b32 s5, 19, s4
	or3_b32 r2, r20, s5, r21
	add_u32 r2, r2, s3
	.loc	2 213 375 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:375
	mad_i32 r4, r2, 2, s18
	add_co_u32 r6, 0x20000, r4
	addc_co_u32 r7, r5, 0
	.loc	2 213 344 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:344
	ldg_b128 r96, r4, 0x0
	.loc	2 213 495                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:495
	or_b32 r3, 0x40000, r2
	.loc	2 213 344                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:344
	ldg_b128 r100, r6, 0x0
	.loc	2 213 375                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:375
	add_co_u32 r6, 0x40000, r4
	addc_co_u32 r7, r5, 0
	add_co_u32 r4, 0x60000, r4
	addc_co_u32 r5, r5, 0
	.loc	2 213 344                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:344
	ldg_b128 r104, r6, 0x0
	smov_b32 s1, 0x7800
	ldg_b128 r108, r4, 0x0
	.loc	2 213 375                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:375
	mad_i32 r4, r3, 2, s18
	.loc	2 213 495                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:495
	add_u32 r3, 0x50000, r2
	.loc	2 213 375                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:375
	mad_i32 r6, r3, 2, s18
	.loc	2 213 495                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:495
	add_u32 r3, 0x60000, r2
	add_u32 r2, 0x70000, r2
	.loc	2 213 344                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:344
	ldg_b128 r112, r4, 0x0
	.loc	2 213 375                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:375
	mad_i32 r4, r3, 2, s18
	mad_i32 r2, r2, 2, s18
	.loc	2 213 344                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:344
	ldg_b128 r116, r6, 0x0
	ldg_b128 r120, r4, 0x0
	ldg_b128 r124, r2, 0x0
	shl_b32 r6, 10, r1
	mul_u24 r4, r1, 9
	shr_b32 r5, 1, r1
	and_b32 r6, 0xf0000, r6
	.loc	2 203 24 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:203:24
	ldu_b32 s2, s8, 0x0
	.loc	2 204 47                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:204:47
	ldu_b32 s7, s10, 0x0
	and_b32 r12, r4, 8
	and_b32 r4, 0x1e0, r5
	and_b32 r13, r5, 24
	add_shl_u32 r5, r10, r5, 4
	add_shl_u32 r10, r14, r1, 3
	and_or_b32 r14, r9, s1, r6
	.loc	2 204 79 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:204:79
	ldu_b32 s1, s14, 0x0
	and_b32 r7, r0, 32
	add_u32 r15, r7, r1
	and_b32 r11, 0x1fc0, r0
	and_b32 r0, r0, 16
	.loc	2 205 54 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:205:54
	arrive slcnt(0)
	ssub_co_i32 s2, s2, s6
	.loc	2 204 45                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:204:45
	sadd_co_i32 s6, s7, s6
	add_u32 r16, r0, r1
	and_b32 r15, r15, 32
	.loc	2 204 77 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:204:77
	ssub_co_i32 s10, s6, s1
	sadd_co_u32 s14, 0x80, s18
	and_b32 r16, r16, 16
	.loc	2 213 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:60
	or_b32 r22, r11, r15
	.loc	2 213 181 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:181
	or3_b32 r22, r22, r16, r12
	saddc_co_u32 s15, s19, 0
	sashr_i32 s11, 31, s10
	and_b32 r3, r1, 15
	.loc	2 213 41                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:41
	shl_add_u32 r22, 1, r22, 0
	.loc	2 215 3 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:3
	sadd_co_i32 s3, s3, s5
	or_b32 r0, r4, r3
	sshl_b64 s24, 12, s10
	.loc	2 213 96                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:96
	or_b32 r19, r15, r12
	.loc	2 213 344 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:344
	add_i32 r89, 0x1000, r22
	add_i32 r90, 0x2000, r22
	add_i32 r91, 0x3000, r22
	add_i32 r93, 0x5000, r22
	add_i32 r94, 0x6000, r22
	add_i32 r95, 0x7000, r22
	add_u32 r22, s10, r0
	.loc	2 215 3 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:3
	or3_b32 r20, s3, r20, r21
	mov_b32 r21, s24
	.loc	2 213 266                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:266
	or3_b32 r19, r19, r11, r16
	cmp_gt_u32 s8, 0x2380, r22
	add_u32 r22, r22, 16
	.loc	2 215 3                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:3
	shl_b32 r128, 1, r14
	and_or_b32 r21, r1, 48, r21
	.loc	2 213 41                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:41
	shl_add_u32 r88, 1, r19, 0
	cmp_gt_u32 s6, 0x2380, r22
	.loc	2 215 3                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:3
	mov_b32 r129, 0
	mov_b32 r22, s25
	add_co_u32 r21, r21, r128
	addc_co_u32 r22, r22, r129
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r24, 0, 0
	and_b32 r9, r5, 16
	and_b32 r10, r10, 8
	.loc	2 213 344 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:344
	add_i32 r92, 0x4000, r88
	shl_b32 r8, 6, r1
	or_b32 r6, r10, r9
	.loc	2 0 0 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:0
	shl_b64 r26, 0, 0
	shl_b64 r28, 0, r24
	shl_b64 r32, 0, r24
	shl_b64 r36, 0, r24
	shl_b64 r40, 0, r24
	shl_b64 r44, 0, r24
	shl_b64 r48, 0, r24
	shl_b64 r52, 0, r24
	shl_b64 r56, 0, r24
	shl_b64 r60, 0, r24
	shl_b64 r64, 0, r24
	shl_b64 r68, 0, r24
	shl_b64 r72, 0, r24
	shl_b64 r76, 0, r24
	shl_b64 r80, 0, r24
	shl_b64 r84, 0, r24
	shl_b64 r128, 0, r24
	shl_b64 r132, 0, r24
	shl_b64 r136, 0, r24
	shl_b64 r140, 0, r24
	shl_b64 r144, 0, r24
	shl_b64 r148, 0, r24
	xor_b32 r5, r7, 32
	.loc	2 215 3 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:3
	mov_b32 r23, s23
	add_co_u32 r21, s22, r21
	.loc	2 213 41                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:41
	smov_b32 s0, 0
	smov_b64 s12, 0
	shr_b32 r2, 2, r1
	shl_b64 r30, 0, r26
	shl_b64 r34, 0, r26
	shl_b64 r38, 0, r26
	shl_b64 r42, 0, r26
	shl_b64 r46, 0, r26
	shl_b64 r50, 0, r26
	shl_b64 r54, 0, r26
	shl_b64 r58, 0, r26
	shl_b64 r62, 0, r26
	shl_b64 r66, 0, r26
	shl_b64 r70, 0, r26
	shl_b64 r74, 0, r26
	.loc	2 213 344 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:213:344
	arrive gvmcnt(7)
	sts_b128 r88, 0x0, r96
	shl_b64 r96, 0, r24
	arrive gvmcnt(6)
	sts_b128 r89, 0x0, r100
	shl_b64 r100, 0, r24
	shl_b64 r78, 0, r26
	shl_b64 r82, 0, r26
	shl_b64 r86, 0, r26
	arrive gvmcnt(5)
	sts_b128 r90, 0x0, r104
	shl_b64 r104, 0, r24
	arrive gvmcnt(4)
	sts_b128 r91, 0x0, r108
	shl_b64 r88, 0, r24
	shl_b64 r108, 0, r24
	and_b32 r8, 0x3c0, r8
	or_b32 r17, r6, r7
	or_b32 r18, r6, r5
	arrive gvmcnt(3)
	sts_b128 r92, 0x0, r112
	shl_b64 r112, 0, r24
	sshl_b64 s18, 11, s10
	arrive gvmcnt(2)
	sts_b128 r93, 0x0, r116
	arrive gvmcnt(1)
	sts_b128 r94, 0x0, r120
	arrive gvmcnt(0)
	sts_b128 r95, 0x0, r124
	shl_b64 r92, 0, r24
	shl_b64 r116, 0, r24
	shl_b64 r120, 0, r24
	shl_b64 r124, 0, r24
	.loc	2 215 3 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:3
	addc_co_u32 r22, r23, r22
	shl_b64 r90, 0, r26
	shl_b64 r94, 0, r26
	shl_b64 r98, 0, r26
	shl_b64 r102, 0, r26
	shl_b64 r106, 0, r26
	shl_b64 r110, 0, r26
	shl_b64 r114, 0, r26
	shl_b64 r118, 0, r26
	shl_b64 r122, 0, r26
	shl_b64 r126, 0, r26
	shl_b64 r130, 0, r26
	shl_b64 r134, 0, r26
	shl_b64 r138, 0, r26
	shl_b64 r142, 0, r26
	shl_b64 r146, 0, r26
	shl_b64 r150, 0, r26
	bra LBB3_2
	.p2align	5
LBB3_1:                                 ; %if.end.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 3 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:3
	sor_b64 xmsk, xmsk, s24
	.loc	2 234 125 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r23, s3, r8
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r23
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 234 125                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r180, 0x400, r23
	.loc	2 234 301                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r169, r17, r180
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r176, r168, 0x0
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r169, 1, r169, 0
	.loc	2 234 125                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r181, 0x800, r23
	.loc	2 234 301                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r170, r17, r181
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r172, r169, 0x0
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r170, 1, r170, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive gvmcnt(0) & bsmcnt(1)
	mma_16x16x16f16 r148, r176, r160, r148
	.loc	2 215 21                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:21
	sadd_co_u32 s12, 0x80, s12
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r168, r170, 0x0
	.loc	2 215 21                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:21
	saddc_co_u32 s13, s13, 0
	.loc	2 240 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r84, r176, r164, r84
	.loc	2 215 21                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:21
	sadd_co_i32 s0, 0x4000, s0
	.loc	2 234 125                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r176, 0xc00, r23
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r177, r17, r176
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r148, r178, r162, r148
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r177, 1, r177, 0
	.loc	2 215 21                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:21
	scmp_eq_u64 0xf80, s12
	add_u32 r20, r20, 64
	.loc	2 240 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r84, r178, r166, r84
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r182, r177, 0x0
	.loc	2 234 125 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r177, 0x1000, r23
	or_b32 r178, 0x1400, r23
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r172, r160, r144
	.loc	2 234 125                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r179, 0x1800, r23
	.loc	2 240 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r80, r172, r164, r80
	mma_16x16x16f16 r144, r174, r162, r144
	.loc	2 234 301                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r172, r17, r177
	.loc	2 234 86 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r172, 1, r172, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r80, r174, r166, r80
	arrive bsmcnt(1)
	mma_16x16x16f16 r140, r168, r160, r140
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r172, r172, 0x0
	.loc	2 240 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r76, r168, r164, r76
	mma_16x16x16f16 r140, r170, r162, r140
	.loc	2 234 301                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r178
	.loc	2 234 86 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r76, r170, r166, r76
	arrive bsmcnt(1)
	mma_16x16x16f16 r136, r182, r160, r136
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r186, r168, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r179
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r72, r182, r164, r72
	mma_16x16x16f16 r136, r184, r162, r136
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r190, r168, 0x0
	.loc	2 234 125 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r182, 0x1c00, r23
	.loc	2 234 301                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r182
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r72, r184, r166, r72
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 234 125 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r183, 0x2000, r23
	or_b32 r184, 0x2400, r23
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r172, r160, r132
	.loc	2 234 125                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r185, 0x2800, r23
	.loc	2 240 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r68, r172, r164, r68
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r170, r168, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r183
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r132, r174, r162, r132
	mma_16x16x16f16 r68, r174, r166, r68
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r186, r160, r128
	mma_16x16x16f16 r64, r186, r164, r64
	mma_16x16x16f16 r128, r188, r162, r128
	mma_16x16x16f16 r64, r188, r166, r64
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r186, r168, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r184
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r190, r160, r124
	mma_16x16x16f16 r60, r190, r164, r60
	mma_16x16x16f16 r124, r192, r162, r124
	mma_16x16x16f16 r60, r192, r166, r60
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r190, r168, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r185
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r170, r160, r120
	mma_16x16x16f16 r56, r170, r164, r56
	mma_16x16x16f16 r120, r172, r162, r120
	mma_16x16x16f16 r56, r172, r166, r56
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r170, r168, 0x0
	.loc	2 240 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r186, r160, r116
	mma_16x16x16f16 r52, r186, r164, r52
	mma_16x16x16f16 r116, r188, r162, r116
	.loc	2 234 125                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r186, 0x2c00, r23
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r186
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r52, r188, r166, r52
	.loc	2 234 125                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r187, 0x3000, r23
	.loc	2 234 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r194, r168, 0x0
	.loc	2 234 301                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r187
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r190, r160, r112
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 234 125 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r188, 0x3400, r23
	or_b32 r189, 0x3800, r23
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r48, r190, r164, r48
	mma_16x16x16f16 r112, r192, r162, r112
	mma_16x16x16f16 r48, r192, r166, r48
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r190, r168, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r188
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r170, r160, r108
	mma_16x16x16f16 r44, r170, r164, r44
	mma_16x16x16f16 r108, r172, r162, r108
	mma_16x16x16f16 r44, r172, r166, r44
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r170, r168, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r189
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r194, r160, r104
	mma_16x16x16f16 r40, r194, r164, r40
	mma_16x16x16f16 r104, r196, r162, r104
	mma_16x16x16f16 r40, r196, r166, r40
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r194, r168, 0x0
	.loc	2 240 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r190, r160, r100
	mma_16x16x16f16 r36, r190, r164, r36
	mma_16x16x16f16 r100, r192, r162, r100
	.loc	2 234 125                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:125
	or_b32 r190, 0x3c00, r23
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r168, r17, r190
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r168, 1, r168, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r36, r192, r166, r36
	.loc	2 234 301                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r23
	.loc	2 234 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r198, r168, 0x0
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r170, r160, r96
	mma_16x16x16f16 r32, r170, r164, r32
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r168, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r180
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r96, r172, r162, r96
	mma_16x16x16f16 r32, r172, r166, r32
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r172, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r181
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r92, r194, r160, r92
	mma_16x16x16f16 r28, r194, r164, r28
	mma_16x16x16f16 r92, r196, r162, r92
	mma_16x16x16f16 r28, r196, r166, r28
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r198, r160, r88
	mma_16x16x16f16 r24, r198, r164, r24
	mma_16x16x16f16 r88, r200, r162, r88
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r160, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r176
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r24, r200, r166, r24
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r168, r152, r148
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r164, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r177
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	mma_16x16x16f16 r84, r168, r156, r84
	mma_16x16x16f16 r148, r170, r154, r148
	mma_16x16x16f16 r84, r170, r158, r84
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r168, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r178
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(3)
	mma_16x16x16f16 r144, r172, r152, r144
	mma_16x16x16f16 r80, r172, r156, r80
	mma_16x16x16f16 r144, r174, r154, r144
	mma_16x16x16f16 r80, r174, r158, r80
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r160, r152, r140
	mma_16x16x16f16 r76, r160, r156, r76
	mma_16x16x16f16 r140, r162, r154, r140
	mma_16x16x16f16 r76, r162, r158, r76
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r160, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r179
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r164, r152, r136
	mma_16x16x16f16 r72, r164, r156, r72
	mma_16x16x16f16 r136, r166, r154, r136
	mma_16x16x16f16 r72, r166, r158, r72
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r164, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r182
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r168, r152, r132
	mma_16x16x16f16 r68, r168, r156, r68
	mma_16x16x16f16 r132, r170, r154, r132
	mma_16x16x16f16 r68, r170, r158, r68
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r168, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r183
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r160, r152, r128
	mma_16x16x16f16 r64, r160, r156, r64
	mma_16x16x16f16 r128, r162, r154, r128
	mma_16x16x16f16 r64, r162, r158, r64
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r160, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r184
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r164, r152, r124
	mma_16x16x16f16 r60, r164, r156, r60
	mma_16x16x16f16 r124, r166, r154, r124
	mma_16x16x16f16 r60, r166, r158, r60
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r164, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r185
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r168, r152, r120
	mma_16x16x16f16 r56, r168, r156, r56
	mma_16x16x16f16 r120, r170, r154, r120
	mma_16x16x16f16 r56, r170, r158, r56
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r168, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r186
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r160, r152, r116
	mma_16x16x16f16 r52, r160, r156, r52
	mma_16x16x16f16 r116, r162, r154, r116
	mma_16x16x16f16 r52, r162, r158, r52
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r160, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r187
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r164, r152, r112
	mma_16x16x16f16 r48, r164, r156, r48
	mma_16x16x16f16 r112, r166, r154, r112
	mma_16x16x16f16 r48, r166, r158, r48
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r164, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r188
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r168, r152, r108
	mma_16x16x16f16 r44, r168, r156, r44
	mma_16x16x16f16 r108, r170, r154, r108
	mma_16x16x16f16 r44, r170, r158, r44
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r168, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r189
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r160, r152, r104
	mma_16x16x16f16 r40, r160, r156, r40
	mma_16x16x16f16 r104, r162, r154, r104
	mma_16x16x16f16 r40, r162, r158, r40
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r160, r23, 0x0
	.loc	2 234 301 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:301
	or_b32 r23, r18, r190
	.loc	2 234 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:86
	shl_add_u32 r23, 1, r23, 0
	.loc	2 240 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r164, r152, r100
	mma_16x16x16f16 r36, r164, r156, r36
	mma_16x16x16f16 r100, r166, r154, r100
	mma_16x16x16f16 r36, r166, r158, r36
	.loc	2 234 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:234:48
	lds_b128 r164, r23, 0x0
	.loc	2 240 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:240:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r168, r152, r96
	mma_16x16x16f16 r32, r168, r156, r32
	mma_16x16x16f16 r96, r170, r154, r96
	mma_16x16x16f16 r32, r170, r158, r32
	arrive bsmcnt(1)
	mma_16x16x16f16 r92, r160, r152, r92
	mma_16x16x16f16 r28, r160, r156, r28
	mma_16x16x16f16 r92, r162, r154, r92
	mma_16x16x16f16 r28, r162, r158, r28
	arrive bsmcnt(0)
	mma_16x16x16f16 r88, r164, r152, r88
	mma_16x16x16f16 r24, r164, r156, r24
	mma_16x16x16f16 r88, r166, r154, r88
	mma_16x16x16f16 r24, r166, r158, r24
	.loc	2 215 3                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:215:3
	bra_smsks LBB3_10
LBB3_2:                                 ; %for.body88
                                        ; =>This Inner Loop Header: Depth=1
.Ltmp317:
	.loc	3 60 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp318:
	.loc	2 219 405                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:405
	add_u32 r23, 0x10000, r20
	mad_i32 r152, r20, 2, s14
	mad_i32 r154, r23, 2, s14
	add_u32 r23, 0x20000, r20
	.loc	2 219 374 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:374
	ldg_b128 r164, r152, 0x0
	.loc	2 219 405                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:405
	mad_i32 r152, r23, 2, s14
	add_u32 r23, 0x30000, r20
	.loc	2 219 374                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:374
	ldg_b128 r168, r154, 0x0
	.loc	2 219 405                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:405
	mad_i32 r154, r23, 2, s14
	add_u32 r23, 0x40000, r20
	.loc	2 219 374                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:374
	ldg_b128 r172, r152, 0x0
	.loc	2 219 405                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:405
	mad_i32 r152, r23, 2, s14
	add_u32 r23, 0x50000, r20
	.loc	2 219 374                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:374
	ldg_b128 r176, r154, 0x0
	.loc	2 219 405                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:405
	mad_i32 r154, r23, 2, s14
	add_u32 r23, 0x60000, r20
	.loc	2 219 374                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:374
	ldg_b128 r180, r152, 0x0
	.loc	2 219 405                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:405
	mad_i32 r152, r23, 2, s14
	add_u32 r23, 0x70000, r20
	.loc	2 219 374                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:374
	ldg_b128 r184, r154, 0x0
	.loc	2 219 405                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:405
	mad_i32 r154, r23, 2, s14
	.loc	2 219 374                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:374
	ldg_b128 r188, r152, 0x0
	sand_b32 s3, 0x4000, s0
	ldg_b128 r192, r154, 0x0
	.loc	2 219 90                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:90
	mov_b32 r154, 0x6800
	mov_b32 r155, 0x7000
	mov_b32 r23, 0x4800
	mov_b32 r152, 0x5000
	mov_b32 r153, 0x5800
	mov_b32 r156, 0x7800
	xadd_u32 r23, s3, r23, r11
	xadd_u32 r152, s3, r152, r11
	xadd_u32 r153, s3, r153, r11
	xadd_u32 r154, s3, r154, r11
	xadd_u32 r155, s3, r155, r11
	xadd_u32 r156, s3, r156, r11
	.loc	2 219 126                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:126
	or_b32 r23, r23, r15
	or_b32 r152, r152, r15
	or_b32 r153, r153, r15
	or_b32 r154, r154, r15
	or_b32 r155, r155, r15
	or_b32 r156, r156, r15
	.loc	2 219 296                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:296
	or_b32 r157, r19, s3
	xor_b32 r158, 0x4000, r157
	xor_b32 r157, 0x6000, r157
	or3_b32 r23, r23, r16, r12
	or3_b32 r152, r152, r16, r12
	or3_b32 r153, r153, r16, r12
	or3_b32 r154, r154, r16, r12
	or3_b32 r155, r155, r16, r12
	or3_b32 r156, r156, r16, r12
	.loc	2 219 43                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:43
	shl_add_u32 r158, 1, r158, 0
	shl_b64 r160, 0, 0
	shl_add_u32 r157, 1, r157, 0
	shl_add_u32 r23, 1, r23, 0
	shl_add_u32 r152, 1, r152, 0
	shl_add_u32 r153, 1, r153, 0
	shl_add_u32 r154, 1, r154, 0
	shl_add_u32 r155, 1, r155, 0
	shl_add_u32 r156, 1, r156, 0
	shl_b64 r162, 0, 0
	.loc	2 219 374                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:219:374
	arrive gvmcnt(7)
	sts_b128 r158, 0x0, r164
	arrive gvmcnt(6)
	sts_b128 r23, 0x0, r168
	arrive gvmcnt(5)
	sts_b128 r152, 0x0, r172
	arrive gvmcnt(4)
	sts_b128 r153, 0x0, r176
	arrive gvmcnt(3)
	sts_b128 r157, 0x0, r180
	arrive gvmcnt(2)
	sts_b128 r154, 0x0, r184
	arrive gvmcnt(1)
	sts_b128 r155, 0x0, r188
	arrive gvmcnt(0)
	sts_b128 r156, 0x0, r192
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:225:117
	and_xmsk s24, s8
	snop 0
	bra_xmskz LBB3_4
; %bb.3:                                ; %if.then
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r152, r21, s12
	mov_b32 r23, s13
	addc_co_u32 r153, r22, r23
	.loc	2 226 17 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:226:17
	snop 1
	ldg_b128 r160, r152, 0x0
LBB3_4:                                 ; %if.end
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s24
	shl_b64 r164, 0, 0
	shl_b64 r166, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:225:117
	and_xmsk s24, s6
	snop 0
	bra_xmskz LBB3_6
; %bb.5:                                ; %if.then.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r23, r21, s12
	mov_b32 r152, s13
	addc_co_u32 r152, r22, r152
	.loc	2 226 17 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:226:17
	add_co_u32 r154, 0x10000, r23
	addc_co_u32 r155, r152, 0
	snop 1
	ldg_b128 r164, r154, 0x0
LBB3_6:                                 ; %if.end.1
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s24
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:225:117
	and_xmsk s24, s8
	snop 0
	bra_xmskz LBB3_8
; %bb.7:                                ; %if.then.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r152, r21, s12
	mov_b32 r23, s13
	addc_co_u32 r153, r22, r23
	.loc	2 226 17 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:226:17
	snop 1
	ldg_b128 r152, r152, 0x40
LBB3_8:                                 ; %if.end.2
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s24
	shl_b64 r156, 0, 0
	shl_b64 r158, 0, 0
	.loc	2 225 117 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:225:117
	and_xmsk s24, s6
	snop 0
	bra_xmskz LBB3_1
; %bb.9:                                ; %if.then.3
                                        ;   in Loop: Header=BB3_2 Depth=1
	.loc	2 0 117 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:117
	add_co_u32 r23, r21, s12
	mov_b32 r156, s13
	addc_co_u32 r156, r22, r156
	.loc	2 226 17 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:226:17
	add_co_u32 r158, 0x10040, r23
	addc_co_u32 r159, r156, 0
	snop 1
	ldg_b128 r156, r158, 0x0
	bra LBB3_1
LBB3_10:                                ; %for.cond337.preheader
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	or_b32 r11, r14, r13
	add_co_u32 r156, s18, r11
	mov_b32 r11, s19
	addc_co_u32 r157, r11, 0
	shl_b64 r20, 0, 0
	shl_b64 r22, 0, 0
	.loc	2 253 115 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:253:115
	and_xmsk s12, s8
	snop 0
	bra_xmskz LBB3_12
; %bb.11:                               ; %if.then364
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:115
	shl_b64 r12, 1, r156
	add_co_u32 r12, s22, r12
	mov_b32 r11, s23
	addc_co_u32 r13, r11, r13
	.loc	2 254 17 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:254:17
	snop 1
	ldg_b128 r20, r12, 0xf80
LBB3_12:                                ; %if.end416
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s12
	shl_b64 r152, 0, 0
	shl_b64 r154, 0, 0
	.loc	2 253 115 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:253:115
	and_xmsk s12, s6
	snop 0
	bra_xmskz LBB3_14
; %bb.13:                               ; %if.then364.1
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:115
	shl_b64 r12, 1, r156
	add_co_u32 r11, s22, r12
	mov_b32 r12, s23
	addc_co_u32 r12, r12, r13
	add_co_u32 r14, 0x10f80, r11
	addc_co_u32 r15, r12, 0
	.loc	2 254 17 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:254:17
	snop 1
	ldg_b128 r152, r14, 0x0
LBB3_14:                                ; %if.end416.1
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s12
	shl_b64 r12, 0, 0
	shl_b64 r14, 0, 0
	.loc	2 253 115 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:253:115
	and_xmsk s12, s8
	snop 0
	bra_xmskz LBB3_16
; %bb.15:                               ; %if.then364.2
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:115
	shl_b64 r12, 1, r156
	add_co_u32 r12, s22, r12
	mov_b32 r11, s23
	addc_co_u32 r13, r11, r13
	.loc	2 254 17 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:254:17
	snop 1
	ldg_b128 r12, r12, 0xfc0
LBB3_16:                                ; %if.end416.2
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s12
	sadd_co_i32 s0, s2, s1
	shl_b64 r16, 0, 0
	shl_b64 r18, 0, 0
	.loc	2 253 115 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:253:115
	and_xmsk s2, s6
	snop 0
	bra_xmskz LBB3_18
; %bb.17:                               ; %if.then364.3
	.loc	2 0 115 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:115
	shl_b64 r16, 1, r156
	add_co_u32 r11, s22, r16
	mov_b32 r16, s23
	addc_co_u32 r16, r16, r17
	add_co_u32 r18, 0x10fc0, r11
	addc_co_u32 r19, r16, 0
	.loc	2 254 17 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:254:17
	snop 1
	ldg_b128 r16, r18, 0x0
LBB3_18:                                ; %if.end416.3
	.loc	2 0 17 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:17
	sor_b64 xmsk, xmsk, s2
.Ltmp319:
	.loc	3 60 3 is_stmt 1                ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:60:3
	arrive gvmcnt(0) & bsmcnt(0)
	.loc	3 61 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:61:3
	barrier
	.loc	3 62 3                          ; /opt/maca-3.7.1/mxgpu_llvm/lib/clang/19/include/__clang_maca_device_functions.h:62:3
	arrive bsmcnt(0)
.Ltmp320:
	.loc	2 263 199                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:199
	or_b32 r11, r6, r8
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or_b32 r156, r11, r7
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r168, 0x400, r8
	.loc	2 263 142                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r157, r168, r7
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r164, r156, 0x0
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r157, r157, r9, r10
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r157, 1, r157, 0
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r157, 0x8000, r157
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r169, 0x800, r8
	.loc	2 263 142                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r158, r169, r7
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(0)
	mma_16x16x16f16 r148, r164, r20, r148
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r160, r157, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r158, r158, r9, r10
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r158, 1, r158, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r84, r164, r152, r84
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r158, 0x8000, r158
	.loc	2 263 106 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r164, 0xc00, r8
	.loc	2 263 142                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r165, r164, r7
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r148, r166, r22, r148
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r156, r158, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r165, r165, r9, r10
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r165, 1, r165, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r84, r166, r154, r84
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r165, 0x8000, r165
	.loc	2 263 106 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r166, 0x2400, r8
	or_b32 r167, 0x2800, r8
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(1)
	mma_16x16x16f16 r144, r160, r20, r144
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r170, r165, 0x0
	.loc	2 263 106 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r165, 0x2000, r8
.Ltmp321:
	.loc	4 708 10 is_stmt 1              ; /opt/maca-3.7.1/include/common/__clang_macac_math.h:708:10
	smin_i32 s0, 0x80, s0
.Ltmp322:
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r80, r160, r152, r80
	.loc	2 279 92                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:279:92
	cmp_gt_i32 s2, s0, r0
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r160, 0x1000, r8
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r161, r160, r7
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r144, r162, r22, r144
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r161, r161, r9, r10
	.loc	2 263 86 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r161, 1, r161, 0
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r161, 0x8000, r161
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r80, r162, r154, r80
	arrive bsmcnt(1)
	mma_16x16x16f16 r140, r156, r20, r140
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r174, r161, 0x0
	.loc	2 263 106 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r161, 0x1400, r8
	or_b32 r162, 0x1800, r8
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r76, r156, r152, r76
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r163, 0x1c00, r8
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r161, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r140, r158, r22, r140
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r76, r158, r154, r76
	arrive bsmcnt(1)
	mma_16x16x16f16 r136, r170, r20, r136
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r178, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r162, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r72, r170, r152, r72
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r136, r172, r22, r136
	mma_16x16x16f16 r72, r172, r154, r72
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r170, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r163, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r174, r20, r132
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r68, r174, r152, r68
	mma_16x16x16f16 r132, r176, r22, r132
	mma_16x16x16f16 r68, r176, r154, r68
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r174, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r165, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r178, r20, r128
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r64, r178, r152, r64
	mma_16x16x16f16 r128, r180, r22, r128
	mma_16x16x16f16 r64, r180, r154, r64
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r178, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r166, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r170, r20, r124
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r60, r170, r152, r60
	mma_16x16x16f16 r124, r172, r22, r124
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r182, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r167, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r60, r172, r154, r60
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r170, 0x2c00, r8
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r174, r20, r120
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r171, 0x3000, r8
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r56, r174, r152, r56
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r172, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r170, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r120, r176, r22, r120
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r56, r176, r154, r56
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r178, r20, r116
	mma_16x16x16f16 r52, r178, r152, r52
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r176, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r171, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r116, r180, r22, r116
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r52, r180, r154, r52
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r182, r20, r112
	mma_16x16x16f16 r48, r182, r152, r48
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r180, r156, 0x0
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r112, r184, r22, r112
	mma_16x16x16f16 r48, r184, r154, r48
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r172, r20, r108
	mma_16x16x16f16 r44, r172, r152, r44
	mma_16x16x16f16 r108, r174, r22, r108
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r172, 0x3400, r8
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r172, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r44, r174, r154, r44
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r173, 0x3800, r8
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(1)
	mma_16x16x16f16 r104, r176, r20, r104
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r184, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r156, r173, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r156, r156, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r40, r176, r152, r40
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r156, 1, r156, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r156, 0x8000, r156
	.loc	2 263 106                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:106
	or_b32 r174, 0x3c00, r8
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r104, r178, r22, r104
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r156, r156, 0x0
	.loc	2 263 142 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:142
	or_b32 r7, r174, r7
	.loc	2 263 284                       ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r7, r9, r10
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r40, r178, r154, r40
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 263 48 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r180, r20, r100
	mma_16x16x16f16 r36, r180, r152, r36
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r176, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or_b32 r7, r11, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r100, r182, r22, r100
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r36, r182, r154, r36
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r184, r20, r96
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r8, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r168, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r32, r184, r152, r32
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r96, r186, r22, r96
	mma_16x16x16f16 r32, r186, r154, r32
	arrive bsmcnt(2)
	mma_16x16x16f16 r92, r156, r20, r92
	mma_16x16x16f16 r28, r156, r152, r28
	mma_16x16x16f16 r92, r158, r22, r92
	mma_16x16x16f16 r28, r158, r154, r28
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r156, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r169, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r88, r176, r20, r88
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r24, r176, r152, r24
	mma_16x16x16f16 r88, r178, r22, r88
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r20, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r164, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r24, r178, r154, r24
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r148, r8, r12, r148
	mma_16x16x16f16 r84, r8, r16, r84
	mma_16x16x16f16 r148, r10, r14, r148
	mma_16x16x16f16 r84, r10, r18, r84
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r8, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r160, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r144, r156, r12, r144
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r80, r156, r16, r80
	mma_16x16x16f16 r144, r158, r14, r144
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r152, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r161, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r80, r158, r18, r80
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r140, r20, r12, r140
	mma_16x16x16f16 r76, r20, r16, r76
	mma_16x16x16f16 r140, r22, r14, r140
	mma_16x16x16f16 r76, r22, r18, r76
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r20, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r162, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r136, r8, r12, r136
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r72, r8, r16, r72
	mma_16x16x16f16 r136, r10, r14, r136
	mma_16x16x16f16 r72, r10, r18, r72
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r8, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r163, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r132, r152, r12, r132
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r68, r152, r16, r68
	mma_16x16x16f16 r132, r154, r14, r132
	mma_16x16x16f16 r68, r154, r18, r68
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r152, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r165, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r128, r20, r12, r128
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r64, r20, r16, r64
	mma_16x16x16f16 r128, r22, r14, r128
	mma_16x16x16f16 r64, r22, r18, r64
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r20, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r166, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r124, r8, r12, r124
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r60, r8, r16, r60
	mma_16x16x16f16 r124, r10, r14, r124
	mma_16x16x16f16 r60, r10, r18, r60
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r8, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r167, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r120, r152, r12, r120
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r56, r152, r16, r56
	mma_16x16x16f16 r120, r154, r14, r120
	mma_16x16x16f16 r56, r154, r18, r56
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r152, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r170, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r116, r20, r12, r116
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r52, r20, r16, r52
	mma_16x16x16f16 r116, r22, r14, r116
	mma_16x16x16f16 r52, r22, r18, r52
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r20, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r171, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r112, r8, r12, r112
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r48, r8, r16, r48
	mma_16x16x16f16 r112, r10, r14, r112
	mma_16x16x16f16 r48, r10, r18, r48
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r8, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r172, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r108, r152, r12, r108
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r44, r152, r16, r44
	mma_16x16x16f16 r108, r154, r14, r108
	mma_16x16x16f16 r44, r154, r18, r44
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r152, r7, 0x0
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r7, r6, r173, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r7, 1, r7, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r104, r20, r12, r104
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r7, 0x8000, r7
	.loc	2 263 284 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:284
	or3_b32 r5, r6, r174, r5
	.loc	2 263 86                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:86
	shl_add_u32 r5, 1, r5, 0
	.loc	2 269 60 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r40, r20, r16, r40
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	add_i32 r5, 0x8000, r5
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r104, r22, r14, r104
	mma_16x16x16f16 r40, r22, r18, r40
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r20, r7, 0x0
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	arrive bsmcnt(2)
	mma_16x16x16f16 r100, r8, r12, r100
	mma_16x16x16f16 r36, r8, r16, r36
	.loc	2 263 48                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:263:48
	lds_b128 r6, r5, 0x0
	.loc	2 277 3                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:277:3
	shl_b32 r5, 1, r3
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r100, r10, r14, r100
	mma_16x16x16f16 r36, r10, r18, r36
	arrive bsmcnt(2)
	mma_16x16x16f16 r96, r152, r12, r96
	mma_16x16x16f16 r32, r152, r16, r32
	mma_16x16x16f16 r96, r154, r14, r96
	mma_16x16x16f16 r32, r154, r18, r32
	arrive bsmcnt(1)
	mma_16x16x16f16 r92, r20, r12, r92
	mma_16x16x16f16 r28, r20, r16, r28
	mma_16x16x16f16 r92, r22, r14, r92
	mma_16x16x16f16 r28, r22, r18, r28
	arrive bsmcnt(0)
	mma_16x16x16f16 r88, r6, r12, r88
	mma_16x16x16f16 r24, r6, r16, r24
	.loc	2 277 3                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:277:3
	snop 0
	shl_b64 r6, 0, s20
	mad_i32 r6, s10, 2, r6
	add_co_u32 r6, r6, r5
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r88, r8, r14, r88
	.loc	2 277 3                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:277:3
	addc_co_u32 r7, r7, 0
	add_u16 r5_lo, 0, 0
	.loc	2 269 60                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:269:60
	mma_16x16x16f16 r24, r8, r18, r24
	.loc	2 279 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:279:9
	and_xmsk s12, s2
	snop 0
	bra_xmskz LBB3_22
; %bb.19:                               ; %if.then535
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r5_lo, 0, 0
	.loc	2 281 114 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:281:114
	and_xmsk s14, s8
	snop 0
	bra_xmskz LBB3_21
; %bb.20:                               ; %if.then557
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r5, 1, r4
	add_co_u32 r8, r6, r5
	addc_co_u32 r9, r7, 0
	.loc	2 282 19 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:282:19
	snop 1
	ldg_u16 r5, r8, 0x0
LBB3_21:                                ; %Flow467
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_22:                                ; %for.inc578
	sor_b64 xmsk, xmsk, s12
	.loc	2 279 63 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:279:63
	or_b32 r8, r4, 16
	.loc	2 279 92 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:279:92
	or_b32 r4, r3, r8
	cmp_gt_i32 s14, s0, r4
	add_u16 r4_lo, 0, 0
	.loc	2 279 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:279:9
	snop 2
	and_xmsk s12, s14
	snop 0
	bra_xmskz LBB3_26
; %bb.23:                               ; %if.then535.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	add_u16 r4_lo, 0, 0
	.loc	2 281 114 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:281:114
	and_xmsk s14, s6
	snop 0
	bra_xmskz LBB3_25
; %bb.24:                               ; %if.then557.1
	.loc	2 0 114 is_stmt 0               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:114
	shl_b32 r4, 1, r8
	add_co_u32 r6, r6, r4
	addc_co_u32 r7, r7, 0
	.loc	2 282 19 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:282:19
	snop 1
	ldg_u16 r4, r6, 0x0
LBB3_25:                                ; %Flow466
	.loc	2 0 19 is_stmt 0                ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:19
	sor_b64 xmsk, xmsk, s14
LBB3_26:                                ; %for.inc578.1
	sor_b64 xmsk, xmsk, s12
	shr_b32 r1, 6, r1
	mul_u24 r6, 0x38000, r1
	mul_u24 r1, 0x1c00, r3
	mov_b32 r7, 0
	mov_b32 r3, 0x100
	mad_u32 r6, s4, r3, r6
	add_co_u32 r6, r6, r1
	addc_co_u32 r7, r7, 0
	mov_b32 r1, 0x1c00
	mad_i32 r6, s10, r1, r6
	and_b32 r1, r2, 12
	.loc	2 290 3 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:290:3
	shl_b32 r1, 1, r1
	add_co_u32 r1, s16, r1
	mov_b32 r2, s17
	addc_co_u32 r2, r2, 0
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_42
; %bb.27:                               ; %for.inc701
	.loc	2 0 9 is_stmt 0                 ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_45
LBB3_28:                                ; %for.inc701.1
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_48
LBB3_29:                                ; %for.inc701.2
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_51
LBB3_30:                                ; %for.inc701.3
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_54
LBB3_31:                                ; %for.inc701.4
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_57
LBB3_32:                                ; %for.inc701.5
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_60
LBB3_33:                                ; %for.inc701.6
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_63
LBB3_34:                                ; %for.inc701.7
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_66
LBB3_35:                                ; %for.inc701.8
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_69
LBB3_36:                                ; %for.inc701.9
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_72
LBB3_37:                                ; %for.inc701.10
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_75
LBB3_38:                                ; %for.inc701.11
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_78
LBB3_39:                                ; %for.inc701.12
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_81
LBB3_40:                                ; %for.inc701.13
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_84
LBB3_41:                                ; %for.inc701.14
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmsks LBB3_87
	bra LBB3_90
LBB3_42:                                ; %if.then595
.Ltmp323:
	.loc	5 1007 10 is_stmt 1             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp324:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp325:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp326:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp327:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_44
; %bb.43:                               ; %if.then664
.Ltmp328:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp329:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r151, r3
.Ltmp330:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp331:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r150, r3
.Ltmp332:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp333:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r149, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r148, r3
.Ltmp334:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp335:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp336:
	.loc	2 305 28 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	add_co_u32 r10, r1, r10
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_44:                                ; %Flow465
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_28
LBB3_45:                                ; %if.then595.1
.Ltmp337:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp338:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp339:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp340:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp341:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_47
; %bb.46:                               ; %if.then664.1
.Ltmp342:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp343:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r147, r3
.Ltmp344:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp345:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r146, r3
.Ltmp346:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp347:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r145, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r144, r3
.Ltmp348:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp349:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp350:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x20, r8 devc
LBB3_47:                                ; %Flow464
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_29
LBB3_48:                                ; %if.then595.2
.Ltmp351:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp352:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp353:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp354:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp355:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_50
; %bb.49:                               ; %if.then664.2
.Ltmp356:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp357:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r143, r3
.Ltmp358:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp359:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r142, r3
.Ltmp360:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp361:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r141, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r140, r3
.Ltmp362:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp363:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp364:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x40, r8 devc
LBB3_50:                                ; %Flow463
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_30
LBB3_51:                                ; %if.then595.3
.Ltmp365:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp366:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp369:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_53
; %bb.52:                               ; %if.then664.3
.Ltmp370:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp371:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r139, r3
.Ltmp372:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp373:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r138, r3
.Ltmp374:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp375:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r137, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r136, r3
.Ltmp376:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp377:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp378:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x60, r8 devc
LBB3_53:                                ; %Flow462
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_31
LBB3_54:                                ; %if.then595.4
.Ltmp379:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp380:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp383:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_56
; %bb.55:                               ; %if.then664.4
.Ltmp384:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp385:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r135, r3
.Ltmp386:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp387:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r134, r3
.Ltmp388:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp389:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r133, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r132, r3
.Ltmp390:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp391:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp392:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x80, r8 devc
LBB3_56:                                ; %Flow461
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_32
LBB3_57:                                ; %if.then595.5
.Ltmp393:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp394:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp397:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_59
; %bb.58:                               ; %if.then664.5
.Ltmp398:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp399:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r131, r3
.Ltmp400:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp401:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r130, r3
.Ltmp402:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp403:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r129, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r128, r3
.Ltmp404:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp405:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp406:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0xa0, r8 devc
LBB3_59:                                ; %Flow460
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_33
LBB3_60:                                ; %if.then595.6
.Ltmp407:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp408:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp411:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_62
; %bb.61:                               ; %if.then664.6
.Ltmp412:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp413:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r127, r3
.Ltmp414:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp415:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r126, r3
.Ltmp416:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp417:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r125, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r124, r3
.Ltmp418:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp419:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp420:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0xc0, r8 devc
LBB3_62:                                ; %Flow459
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_34
LBB3_63:                                ; %if.then595.7
.Ltmp421:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp422:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp425:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_65
; %bb.64:                               ; %if.then664.7
.Ltmp426:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp427:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r123, r3
.Ltmp428:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp429:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r122, r3
.Ltmp430:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp431:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r121, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r120, r3
.Ltmp432:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp433:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp434:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0xe0, r8 devc
LBB3_65:                                ; %Flow458
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_35
LBB3_66:                                ; %if.then595.8
.Ltmp435:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp436:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp439:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_68
; %bb.67:                               ; %if.then664.8
.Ltmp440:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp441:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r119, r3
.Ltmp442:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp443:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r118, r3
.Ltmp444:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp445:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r117, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r116, r3
.Ltmp446:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp447:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp448:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x100, r8 devc
LBB3_68:                                ; %Flow457
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_36
LBB3_69:                                ; %if.then595.9
.Ltmp449:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp450:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s1, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s1
.Ltmp453:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_71
; %bb.70:                               ; %if.then664.9
.Ltmp454:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp455:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r115, r3
.Ltmp456:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp457:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r114, r3
.Ltmp458:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp459:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r113, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r112, r3
.Ltmp460:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp461:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp462:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x120, r8 devc
LBB3_71:                                ; %Flow456
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_37
LBB3_72:                                ; %if.then595.10
.Ltmp463:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_74
; %bb.73:                               ; %if.then664.10
.Ltmp468:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp469:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r111, r3
.Ltmp470:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp471:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r110, r3
.Ltmp472:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp473:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r109, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r108, r3
.Ltmp474:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp475:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp476:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x140, r8 devc
LBB3_74:                                ; %Flow455
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_38
LBB3_75:                                ; %if.then595.11
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
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_77
; %bb.76:                               ; %if.then664.11
.Ltmp482:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp483:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r107, r3
.Ltmp484:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp485:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r106, r3
.Ltmp486:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp487:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r105, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r104, r3
.Ltmp488:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp489:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp490:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x160, r8 devc
LBB3_77:                                ; %Flow454
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_39
LBB3_78:                                ; %if.then595.12
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
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_80
; %bb.79:                               ; %if.then664.12
.Ltmp496:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp497:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r103, r3
.Ltmp498:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp499:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r102, r3
.Ltmp500:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp501:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r101, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r100, r3
.Ltmp502:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp503:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp504:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x180, r8 devc
LBB3_80:                                ; %Flow453
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_40
LBB3_81:                                ; %if.then595.13
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
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_83
; %bb.82:                               ; %if.then664.13
.Ltmp510:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp511:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r99, r3
.Ltmp512:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp513:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r98, r3
.Ltmp514:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp515:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r97, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r96, r3
.Ltmp516:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp517:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp518:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x1a0, r8 devc
LBB3_83:                                ; %Flow452
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_41
LBB3_84:                                ; %if.then595.14
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
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s10, s8
	snop 0
	bra_xmskz LBB3_86
; %bb.85:                               ; %if.then664.14
.Ltmp524:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp525:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r8, r95, r3
.Ltmp526:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp527:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r9, r94, r3
.Ltmp528:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r9_lo, r9
.Ltmp529:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r8, 16, r8
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r9_hi, 0, 0
	or_b32 r9, r8, r9
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r8, r93, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r92, r3
.Ltmp530:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp531:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp532:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r8, 16, r8
	and_b32 r3, 0xffff, r3
	or_b32 r8, r8, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x1c0, r8 devc
LBB3_86:                                ; %Flow451
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s10
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s4, s2
	snop 0
	bra_xmskz LBB3_90
LBB3_87:                                ; %if.then595.15
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
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s2, s8
	snop 0
	bra_xmskz LBB3_89
; %bb.88:                               ; %if.then664.15
.Ltmp538:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r3, r5_lo
.Ltmp539:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r5, r91, r3
.Ltmp540:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp541:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r8, r90, r3
.Ltmp542:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r8_lo, r8
.Ltmp543:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r5, 16, r5
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r8_hi, 0, 0
	or_b32 r9, r5, r8
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r5, r89, r3
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r3, r88, r3
.Ltmp544:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp545:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp546:
	.loc	2 305 312 is_stmt 1             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:312
	shl_b64 r10, 1, r6
	.loc	2 305 28 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r10, r1, r10
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r5, 16, r5
	and_b32 r3, 0xffff, r3
	or_b32 r8, r5, r3
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	addc_co_u32 r11, r2, r11
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x1e0, r8 devc
LBB3_89:                                ; %Flow450
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s2
LBB3_90:                                ; %for.inc701.15
	sor_b64 xmsk, xmsk, s4
	.loc	2 291 65 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:65
	or_b32 r0, r0, 16
	.loc	2 291 94 is_stmt 0              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:94
	cmp_gt_i32 s0, s0, r0
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	snop 3
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_107
; %bb.91:                               ; %for.inc701.16
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_110
LBB3_92:                                ; %for.inc701.17
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_113
LBB3_93:                                ; %for.inc701.18
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_116
LBB3_94:                                ; %for.inc701.19
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_119
LBB3_95:                                ; %for.inc701.20
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_122
LBB3_96:                                ; %for.inc701.21
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_125
LBB3_97:                                ; %for.inc701.22
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_128
LBB3_98:                                ; %for.inc701.23
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_131
LBB3_99:                                ; %for.inc701.24
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_134
LBB3_100:                               ; %for.inc701.25
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_137
LBB3_101:                               ; %for.inc701.26
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_140
LBB3_102:                               ; %for.inc701.27
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_143
LBB3_103:                               ; %for.inc701.28
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_146
LBB3_104:                               ; %for.inc701.29
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_149
LBB3_105:                               ; %for.inc701.30
	.loc	2 0 9                           ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:9
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmsks LBB3_152
LBB3_106:                               ; %for.inc701.31
	.loc	2 310 1 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:310:1
	snop 0
	endk
LBB3_107:                               ; %if.then595.16
.Ltmp547:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp548:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp549:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp550:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp551:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_109
; %bb.108:                              ; %if.then664.16
.Ltmp552:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp553:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r87, r0
.Ltmp554:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp555:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r86, r0
.Ltmp556:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp557:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r85, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r84, r0
.Ltmp558:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp559:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp560:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38000, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_109:                               ; %Flow449
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_92
LBB3_110:                               ; %if.then595.17
.Ltmp561:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp562:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp563:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp564:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp565:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_112
; %bb.111:                              ; %if.then664.17
.Ltmp566:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp567:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r83, r0
.Ltmp568:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp569:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r82, r0
.Ltmp570:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp571:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r81, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r80, r0
.Ltmp572:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp573:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp574:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38020, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_112:                               ; %Flow448
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_93
LBB3_113:                               ; %if.then595.18
.Ltmp575:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp576:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp577:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp578:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp579:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_115
; %bb.114:                              ; %if.then664.18
.Ltmp580:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp581:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r79, r0
.Ltmp582:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp583:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r78, r0
.Ltmp584:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp585:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r77, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r76, r0
.Ltmp586:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp587:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp588:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38040, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_115:                               ; %Flow447
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_94
LBB3_116:                               ; %if.then595.19
.Ltmp589:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp590:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp591:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp592:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp593:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_118
; %bb.117:                              ; %if.then664.19
.Ltmp594:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp595:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r75, r0
.Ltmp596:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp597:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r74, r0
.Ltmp598:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp599:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r73, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r72, r0
.Ltmp600:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp601:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp602:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38060, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_118:                               ; %Flow446
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_95
LBB3_119:                               ; %if.then595.20
.Ltmp603:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp604:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp605:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp606:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp607:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_121
; %bb.120:                              ; %if.then664.20
.Ltmp608:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp609:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r71, r0
.Ltmp610:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp611:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r70, r0
.Ltmp612:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp613:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r69, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r68, r0
.Ltmp614:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp615:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp616:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38080, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_121:                               ; %Flow445
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_96
LBB3_122:                               ; %if.then595.21
.Ltmp617:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp618:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp619:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp620:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp621:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_124
; %bb.123:                              ; %if.then664.21
.Ltmp622:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp623:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r67, r0
.Ltmp624:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp625:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r66, r0
.Ltmp626:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp627:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r65, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r64, r0
.Ltmp628:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp629:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp630:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380a0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_124:                               ; %Flow444
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_97
LBB3_125:                               ; %if.then595.22
.Ltmp631:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp632:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp633:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp634:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp635:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_127
; %bb.126:                              ; %if.then664.22
.Ltmp636:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp637:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r63, r0
.Ltmp638:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp639:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r62, r0
.Ltmp640:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp641:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r61, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r60, r0
.Ltmp642:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp643:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp644:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380c0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_127:                               ; %Flow443
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_98
LBB3_128:                               ; %if.then595.23
.Ltmp645:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp646:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp647:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp648:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp649:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_130
; %bb.129:                              ; %if.then664.23
.Ltmp650:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp651:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r59, r0
.Ltmp652:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp653:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r58, r0
.Ltmp654:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp655:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r57, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r56, r0
.Ltmp656:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp657:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp658:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x380e0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_130:                               ; %Flow442
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_99
LBB3_131:                               ; %if.then595.24
.Ltmp659:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp660:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp661:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp662:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp663:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_133
; %bb.132:                              ; %if.then664.24
.Ltmp664:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp665:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r55, r0
.Ltmp666:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp667:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r54, r0
.Ltmp668:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp669:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r53, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r52, r0
.Ltmp670:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp671:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp672:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38100, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_133:                               ; %Flow441
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_100
LBB3_134:                               ; %if.then595.25
.Ltmp673:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp674:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp675:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp676:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp677:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_136
; %bb.135:                              ; %if.then664.25
.Ltmp678:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp679:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r51, r0
.Ltmp680:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp681:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r50, r0
.Ltmp682:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp683:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r49, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r48, r0
.Ltmp684:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp685:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp686:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38120, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_136:                               ; %Flow440
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_101
LBB3_137:                               ; %if.then595.26
.Ltmp687:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp688:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp689:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp690:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp691:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_139
; %bb.138:                              ; %if.then664.26
.Ltmp692:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp693:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r47, r0
.Ltmp694:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp695:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r46, r0
.Ltmp696:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp697:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r45, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r44, r0
.Ltmp698:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp699:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp700:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38140, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_139:                               ; %Flow439
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_102
LBB3_140:                               ; %if.then595.27
.Ltmp701:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp702:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp705:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_142
; %bb.141:                              ; %if.then664.27
.Ltmp706:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp707:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r43, r0
.Ltmp708:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp709:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r42, r0
.Ltmp710:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp711:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r41, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r40, r0
.Ltmp712:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp713:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp714:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38160, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_142:                               ; %Flow438
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_103
LBB3_143:                               ; %if.then595.28
.Ltmp715:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp716:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp719:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_145
; %bb.144:                              ; %if.then664.28
.Ltmp720:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp721:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r39, r0
.Ltmp722:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp723:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r38, r0
.Ltmp724:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp725:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r37, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r36, r0
.Ltmp726:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp727:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp728:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x38180, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_145:                               ; %Flow437
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_104
LBB3_146:                               ; %if.then595.29
.Ltmp729:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp730:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp733:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_148
; %bb.147:                              ; %if.then664.29
.Ltmp734:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp735:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r35, r0
.Ltmp736:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp737:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r34, r0
.Ltmp738:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp739:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r33, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r32, r0
.Ltmp740:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp741:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp742:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x381a0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_148:                               ; %Flow436
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_105
LBB3_149:                               ; %if.then595.30
.Ltmp743:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp744:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
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
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s4, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s4
.Ltmp747:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s4, s6
	snop 0
	bra_xmskz LBB3_151
; %bb.150:                              ; %if.then664.30
.Ltmp748:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp749:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r31, r0
.Ltmp750:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp751:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r5, r30, r0
.Ltmp752:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r5_lo, r5
.Ltmp753:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r5_hi, 0, 0
	or_b32 r9, r3, r5
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r29, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r28, r0
.Ltmp754:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp755:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp756:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r10, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r8, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r10
	addc_co_u32 r3, r2, r11
	add_co_u32 r10, 0x381c0, r0
	addc_co_u32 r11, r3, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r10, 0x0, r8 devc
LBB3_151:                               ; %Flow435
	.loc	2 0 443                         ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:0:443
	sor_b64 xmsk, xmsk, s4
	sor_b64 xmsk, xmsk, s2
	.loc	2 291 9 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:291:9
	and_xmsk s2, s0
	snop 0
	bra_xmskz LBB3_106
LBB3_152:                               ; %if.then595.31
.Ltmp757:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp758:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp759:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp760:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	snop 1
	get_hwreg s0, hwregid(mode) & offset(2) & size(2)
	set_hwreg hwregid(mode) & offset(2) & size(2), 0
	snop 1
	set_hwreg hwregid(mode) & offset(2) & size(2), s0
.Ltmp761:
	.loc	2 303 11 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:303:11
	snop 0
	and_xmsk s0, s6
	snop 0
	bra_xmskz LBB3_106
; %bb.153:                              ; %if.then664.31
.Ltmp762:
	.loc	5 1082 16                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1082:16
	arrive gvmcnt(0)
	cvt_f16tof32 r0, r4_lo
.Ltmp763:
	.loc	2 299 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:299:22
	mul_f32 r3, r27, r0
.Ltmp764:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp765:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	mul_f32 r4, r26, r0
.Ltmp766:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r4_lo, r4
.Ltmp767:
	.loc	2 298 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:298:22
	shl_b32 r3, 16, r3
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	add_u16 r4_hi, 0, 0
	or_b32 r5, r3, r4
	.loc	2 297 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:297:22
	mul_f32 r3, r25, r0
	.loc	2 296 22                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:296:22
	mul_f32 r0, r24, r0
.Ltmp768:
	.loc	5 1007 10                       ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r3_lo, r3
.Ltmp769:
	.loc	5 1007 10 is_stmt 0             ; /opt/maca-3.7.1/include/common/maca_fp16.hpp:1007:10
	cvt_f32tof16 r0_lo, r0
.Ltmp770:
	.loc	2 302 40 is_stmt 1              ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	shl_b32 r3, 16, r3
	and_b32 r0, 0xffff, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	shl_b64 r6, 1, r6
	.loc	2 302 40                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:302:40
	or_b32 r4, r3, r0
	.loc	2 305 28                        ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:28
	add_co_u32 r0, r1, r6
	addc_co_u32 r1, r2, r7
	add_co_u32 r0, 0x381e0, r0
	addc_co_u32 r1, r1, 0
	.loc	2 305 443 is_stmt 0             ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:305:443
	snop 1
	stg_b64 r0, 0x0, r4 devc
	.loc	2 310 1 is_stmt 1               ; race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp:310:1
	snop 2
	endk
.Ltmp771:
	.section	.rodata,#alloc
	.p2align	6, 0x0
	.macahca_kernel kernel_kernel_1
		.macahca_mtreg_size 26
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
; codeLenInByte = 22192
; NumMTRegsForWarps/PEU: 202
; NumSTRegsForWarps/PEU: 30
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
	.byte	0                               ; EOM(3)
	.section	.debug_info
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 ; Length of Unit
.Ldebug_info_start0:
	.short	4                               ; DWARF version number
	.long	.debug_abbrev                   ; Offset Into Abbrev. Section
	.byte	8                               ; Address Size (in bytes)
	.byte	1                               ; Abbrev [1] 0xb:0x267 DW_TAG_compile_unit
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
	.byte	3                               ; Abbrev [3] 0x54:0x112 DW_TAG_subprogram
	.quad	.Lfunc_begin2                   ; DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2       ; DW_AT_high_pc
	.long	.Linfo_string12                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x65:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp5                          ; DW_AT_low_pc
	.long	.Ltmp6-.Ltmp5                   ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	40                              ; DW_AT_call_line
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
	.byte	102                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0xa2:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp7                          ; DW_AT_low_pc
	.long	.Ltmp8-.Ltmp7                   ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0xb7:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp9                          ; DW_AT_low_pc
	.long	.Ltmp10-.Ltmp9                  ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	20                              ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xcb:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges0                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	161                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xd7:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges1                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	160                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xe3:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges2                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	159                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0xef:0xc DW_TAG_inlined_subroutine
	.long	60                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges3                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	158                             ; DW_AT_call_line
	.byte	19                              ; DW_AT_call_column
	.byte	7                               ; Abbrev [7] 0xfb:0x35 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges4                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	186                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x107:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges5                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x114:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges6                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x121:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges7                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	7                               ; Abbrev [7] 0x130:0x35 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges8                 ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.byte	187                             ; DW_AT_call_line
	.byte	33                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x13c:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges9                 ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x149:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges10                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x156:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges11                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	2                               ; Abbrev [2] 0x166:0x6 DW_TAG_subprogram
	.long	.Linfo_string10                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	2                               ; Abbrev [2] 0x16c:0x6 DW_TAG_subprogram
	.long	.Linfo_string11                 ; DW_AT_name
	.byte	1                               ; DW_AT_inline
	.byte	3                               ; Abbrev [3] 0x172:0xff DW_TAG_subprogram
	.quad	.Lfunc_begin3                   ; DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3       ; DW_AT_high_pc
	.long	.Linfo_string13                 ; DW_AT_name
	.byte	4                               ; Abbrev [4] 0x183:0x29 DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp317                        ; DW_AT_low_pc
	.long	.Ltmp318-.Ltmp317               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	216                             ; DW_AT_call_line
	.byte	5                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x197:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp317                        ; DW_AT_low_pc
	.long	.Ltmp318-.Ltmp317               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	10                              ; Abbrev [10] 0x1ac:0x2a DW_TAG_inlined_subroutine
	.long	48                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.short	260                             ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	5                               ; Abbrev [5] 0x1c1:0x14 DW_TAG_inlined_subroutine
	.long	42                              ; DW_AT_abstract_origin
	.quad	.Ltmp319                        ; DW_AT_low_pc
	.long	.Ltmp320-.Ltmp319               ; DW_AT_high_pc
	.byte	3                               ; DW_AT_call_file
	.byte	74                              ; DW_AT_call_line
	.byte	3                               ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	5                               ; Abbrev [5] 0x1d6:0x14 DW_TAG_inlined_subroutine
	.long	54                              ; DW_AT_abstract_origin
	.quad	.Ltmp321                        ; DW_AT_low_pc
	.long	.Ltmp322-.Ltmp321               ; DW_AT_high_pc
	.byte	2                               ; DW_AT_call_file
	.byte	205                             ; DW_AT_call_line
	.byte	28                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x1ea:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges12                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	300                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x1f7:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges13                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x204:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges14                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x211:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges15                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x220:0x36 DW_TAG_inlined_subroutine
	.long	78                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges16                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	301                             ; DW_AT_call_line
	.byte	29                              ; DW_AT_call_column
	.byte	8                               ; Abbrev [8] 0x22d:0x28 DW_TAG_inlined_subroutine
	.long	72                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges17                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1295                            ; DW_AT_call_line
	.byte	23                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x23a:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges18                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	18                              ; DW_AT_call_column
	.byte	9                               ; Abbrev [9] 0x247:0xd DW_TAG_inlined_subroutine
	.long	66                              ; DW_AT_abstract_origin
	.long	.Ldebug_ranges19                ; DW_AT_ranges
	.byte	5                               ; DW_AT_call_file
	.short	1077                            ; DW_AT_call_line
	.byte	38                              ; DW_AT_call_column
	.byte	0                               ; End Of Children Mark
	.byte	0                               ; End Of Children Mark
	.byte	8                               ; Abbrev [8] 0x256:0x1a DW_TAG_inlined_subroutine
	.long	364                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges20                ; DW_AT_ranges
	.byte	2                               ; DW_AT_call_file
	.short	295                             ; DW_AT_call_line
	.byte	43                              ; DW_AT_call_column
	.byte	6                               ; Abbrev [6] 0x263:0xc DW_TAG_inlined_subroutine
	.long	358                             ; DW_AT_abstract_origin
	.long	.Ldebug_ranges21                ; DW_AT_ranges
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
	.quad	0
	.quad	0
.Ldebug_ranges1:
	.quad	.Ltmp13-.Lfunc_begin0
	.quad	.Ltmp14-.Lfunc_begin0
	.quad	.Ltmp15-.Lfunc_begin0
	.quad	.Ltmp16-.Lfunc_begin0
	.quad	.Ltmp32-.Lfunc_begin0
	.quad	.Ltmp33-.Lfunc_begin0
	.quad	.Ltmp34-.Lfunc_begin0
	.quad	.Ltmp35-.Lfunc_begin0
	.quad	.Ltmp51-.Lfunc_begin0
	.quad	.Ltmp52-.Lfunc_begin0
	.quad	.Ltmp53-.Lfunc_begin0
	.quad	.Ltmp54-.Lfunc_begin0
	.quad	.Ltmp70-.Lfunc_begin0
	.quad	.Ltmp71-.Lfunc_begin0
	.quad	.Ltmp72-.Lfunc_begin0
	.quad	.Ltmp73-.Lfunc_begin0
	.quad	.Ltmp89-.Lfunc_begin0
	.quad	.Ltmp90-.Lfunc_begin0
	.quad	.Ltmp91-.Lfunc_begin0
	.quad	.Ltmp92-.Lfunc_begin0
	.quad	.Ltmp108-.Lfunc_begin0
	.quad	.Ltmp109-.Lfunc_begin0
	.quad	.Ltmp110-.Lfunc_begin0
	.quad	.Ltmp111-.Lfunc_begin0
	.quad	.Ltmp127-.Lfunc_begin0
	.quad	.Ltmp128-.Lfunc_begin0
	.quad	.Ltmp129-.Lfunc_begin0
	.quad	.Ltmp130-.Lfunc_begin0
	.quad	.Ltmp146-.Lfunc_begin0
	.quad	.Ltmp147-.Lfunc_begin0
	.quad	.Ltmp148-.Lfunc_begin0
	.quad	.Ltmp149-.Lfunc_begin0
	.quad	.Ltmp165-.Lfunc_begin0
	.quad	.Ltmp166-.Lfunc_begin0
	.quad	.Ltmp167-.Lfunc_begin0
	.quad	.Ltmp168-.Lfunc_begin0
	.quad	.Ltmp184-.Lfunc_begin0
	.quad	.Ltmp185-.Lfunc_begin0
	.quad	.Ltmp186-.Lfunc_begin0
	.quad	.Ltmp187-.Lfunc_begin0
	.quad	.Ltmp203-.Lfunc_begin0
	.quad	.Ltmp204-.Lfunc_begin0
	.quad	.Ltmp205-.Lfunc_begin0
	.quad	.Ltmp206-.Lfunc_begin0
	.quad	.Ltmp222-.Lfunc_begin0
	.quad	.Ltmp223-.Lfunc_begin0
	.quad	.Ltmp224-.Lfunc_begin0
	.quad	.Ltmp225-.Lfunc_begin0
	.quad	.Ltmp241-.Lfunc_begin0
	.quad	.Ltmp242-.Lfunc_begin0
	.quad	.Ltmp243-.Lfunc_begin0
	.quad	.Ltmp244-.Lfunc_begin0
	.quad	.Ltmp260-.Lfunc_begin0
	.quad	.Ltmp261-.Lfunc_begin0
	.quad	.Ltmp262-.Lfunc_begin0
	.quad	.Ltmp263-.Lfunc_begin0
	.quad	.Ltmp279-.Lfunc_begin0
	.quad	.Ltmp280-.Lfunc_begin0
	.quad	.Ltmp281-.Lfunc_begin0
	.quad	.Ltmp282-.Lfunc_begin0
	.quad	.Ltmp298-.Lfunc_begin0
	.quad	.Ltmp299-.Lfunc_begin0
	.quad	.Ltmp300-.Lfunc_begin0
	.quad	.Ltmp301-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges2:
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
.Ldebug_ranges3:
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
.Ldebug_ranges4:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges5:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges6:
	.quad	.Ltmp25-.Lfunc_begin0
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp44-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp63-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp82-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp101-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp120-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp139-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp158-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp177-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp196-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp215-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp234-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp253-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp272-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp291-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp310-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges7:
	.quad	.Ltmp26-.Lfunc_begin0
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp45-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp64-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp83-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp102-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp121-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp140-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp159-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp178-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp197-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp216-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp235-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp254-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp273-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp292-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp311-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges8:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges9:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges10:
	.quad	.Ltmp27-.Lfunc_begin0
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp46-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp65-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp84-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp103-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp122-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp141-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp160-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp179-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp198-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp217-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp236-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp255-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp274-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp293-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp312-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges11:
	.quad	.Ltmp28-.Lfunc_begin0
	.quad	.Ltmp29-.Lfunc_begin0
	.quad	.Ltmp47-.Lfunc_begin0
	.quad	.Ltmp48-.Lfunc_begin0
	.quad	.Ltmp66-.Lfunc_begin0
	.quad	.Ltmp67-.Lfunc_begin0
	.quad	.Ltmp85-.Lfunc_begin0
	.quad	.Ltmp86-.Lfunc_begin0
	.quad	.Ltmp104-.Lfunc_begin0
	.quad	.Ltmp105-.Lfunc_begin0
	.quad	.Ltmp123-.Lfunc_begin0
	.quad	.Ltmp124-.Lfunc_begin0
	.quad	.Ltmp142-.Lfunc_begin0
	.quad	.Ltmp143-.Lfunc_begin0
	.quad	.Ltmp161-.Lfunc_begin0
	.quad	.Ltmp162-.Lfunc_begin0
	.quad	.Ltmp180-.Lfunc_begin0
	.quad	.Ltmp181-.Lfunc_begin0
	.quad	.Ltmp199-.Lfunc_begin0
	.quad	.Ltmp200-.Lfunc_begin0
	.quad	.Ltmp218-.Lfunc_begin0
	.quad	.Ltmp219-.Lfunc_begin0
	.quad	.Ltmp237-.Lfunc_begin0
	.quad	.Ltmp238-.Lfunc_begin0
	.quad	.Ltmp256-.Lfunc_begin0
	.quad	.Ltmp257-.Lfunc_begin0
	.quad	.Ltmp275-.Lfunc_begin0
	.quad	.Ltmp276-.Lfunc_begin0
	.quad	.Ltmp294-.Lfunc_begin0
	.quad	.Ltmp295-.Lfunc_begin0
	.quad	.Ltmp313-.Lfunc_begin0
	.quad	.Ltmp314-.Lfunc_begin0
	.quad	0
	.quad	0
.Ldebug_ranges12:
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges13:
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges14:
	.quad	.Ltmp323-.Lfunc_begin0
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp336-.Lfunc_begin0
	.quad	.Ltmp337-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp350-.Lfunc_begin0
	.quad	.Ltmp351-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp364-.Lfunc_begin0
	.quad	.Ltmp365-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp378-.Lfunc_begin0
	.quad	.Ltmp379-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp392-.Lfunc_begin0
	.quad	.Ltmp393-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp406-.Lfunc_begin0
	.quad	.Ltmp407-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp420-.Lfunc_begin0
	.quad	.Ltmp421-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp434-.Lfunc_begin0
	.quad	.Ltmp435-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp448-.Lfunc_begin0
	.quad	.Ltmp449-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
	.quad	.Ltmp462-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges15:
	.quad	.Ltmp324-.Lfunc_begin0
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp334-.Lfunc_begin0
	.quad	.Ltmp335-.Lfunc_begin0
	.quad	.Ltmp338-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp348-.Lfunc_begin0
	.quad	.Ltmp349-.Lfunc_begin0
	.quad	.Ltmp352-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp362-.Lfunc_begin0
	.quad	.Ltmp363-.Lfunc_begin0
	.quad	.Ltmp366-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp376-.Lfunc_begin0
	.quad	.Ltmp377-.Lfunc_begin0
	.quad	.Ltmp380-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp390-.Lfunc_begin0
	.quad	.Ltmp391-.Lfunc_begin0
	.quad	.Ltmp394-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp404-.Lfunc_begin0
	.quad	.Ltmp405-.Lfunc_begin0
	.quad	.Ltmp408-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp418-.Lfunc_begin0
	.quad	.Ltmp419-.Lfunc_begin0
	.quad	.Ltmp422-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp432-.Lfunc_begin0
	.quad	.Ltmp433-.Lfunc_begin0
	.quad	.Ltmp436-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp446-.Lfunc_begin0
	.quad	.Ltmp447-.Lfunc_begin0
	.quad	.Ltmp450-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp460-.Lfunc_begin0
	.quad	.Ltmp461-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges16:
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges17:
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges18:
	.quad	.Ltmp325-.Lfunc_begin0
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp332-.Lfunc_begin0
	.quad	.Ltmp333-.Lfunc_begin0
	.quad	.Ltmp339-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp346-.Lfunc_begin0
	.quad	.Ltmp347-.Lfunc_begin0
	.quad	.Ltmp353-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp360-.Lfunc_begin0
	.quad	.Ltmp361-.Lfunc_begin0
	.quad	.Ltmp367-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp374-.Lfunc_begin0
	.quad	.Ltmp375-.Lfunc_begin0
	.quad	.Ltmp381-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp388-.Lfunc_begin0
	.quad	.Ltmp389-.Lfunc_begin0
	.quad	.Ltmp395-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp402-.Lfunc_begin0
	.quad	.Ltmp403-.Lfunc_begin0
	.quad	.Ltmp409-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp416-.Lfunc_begin0
	.quad	.Ltmp417-.Lfunc_begin0
	.quad	.Ltmp423-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp430-.Lfunc_begin0
	.quad	.Ltmp431-.Lfunc_begin0
	.quad	.Ltmp437-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp444-.Lfunc_begin0
	.quad	.Ltmp445-.Lfunc_begin0
	.quad	.Ltmp451-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp458-.Lfunc_begin0
	.quad	.Ltmp459-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges19:
	.quad	.Ltmp326-.Lfunc_begin0
	.quad	.Ltmp327-.Lfunc_begin0
	.quad	.Ltmp330-.Lfunc_begin0
	.quad	.Ltmp331-.Lfunc_begin0
	.quad	.Ltmp340-.Lfunc_begin0
	.quad	.Ltmp341-.Lfunc_begin0
	.quad	.Ltmp344-.Lfunc_begin0
	.quad	.Ltmp345-.Lfunc_begin0
	.quad	.Ltmp354-.Lfunc_begin0
	.quad	.Ltmp355-.Lfunc_begin0
	.quad	.Ltmp358-.Lfunc_begin0
	.quad	.Ltmp359-.Lfunc_begin0
	.quad	.Ltmp368-.Lfunc_begin0
	.quad	.Ltmp369-.Lfunc_begin0
	.quad	.Ltmp372-.Lfunc_begin0
	.quad	.Ltmp373-.Lfunc_begin0
	.quad	.Ltmp382-.Lfunc_begin0
	.quad	.Ltmp383-.Lfunc_begin0
	.quad	.Ltmp386-.Lfunc_begin0
	.quad	.Ltmp387-.Lfunc_begin0
	.quad	.Ltmp396-.Lfunc_begin0
	.quad	.Ltmp397-.Lfunc_begin0
	.quad	.Ltmp400-.Lfunc_begin0
	.quad	.Ltmp401-.Lfunc_begin0
	.quad	.Ltmp410-.Lfunc_begin0
	.quad	.Ltmp411-.Lfunc_begin0
	.quad	.Ltmp414-.Lfunc_begin0
	.quad	.Ltmp415-.Lfunc_begin0
	.quad	.Ltmp424-.Lfunc_begin0
	.quad	.Ltmp425-.Lfunc_begin0
	.quad	.Ltmp428-.Lfunc_begin0
	.quad	.Ltmp429-.Lfunc_begin0
	.quad	.Ltmp438-.Lfunc_begin0
	.quad	.Ltmp439-.Lfunc_begin0
	.quad	.Ltmp442-.Lfunc_begin0
	.quad	.Ltmp443-.Lfunc_begin0
	.quad	.Ltmp452-.Lfunc_begin0
	.quad	.Ltmp453-.Lfunc_begin0
	.quad	.Ltmp456-.Lfunc_begin0
	.quad	.Ltmp457-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges20:
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
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
	.quad	0
	.quad	0
.Ldebug_ranges21:
	.quad	.Ltmp328-.Lfunc_begin0
	.quad	.Ltmp329-.Lfunc_begin0
	.quad	.Ltmp342-.Lfunc_begin0
	.quad	.Ltmp343-.Lfunc_begin0
	.quad	.Ltmp356-.Lfunc_begin0
	.quad	.Ltmp357-.Lfunc_begin0
	.quad	.Ltmp370-.Lfunc_begin0
	.quad	.Ltmp371-.Lfunc_begin0
	.quad	.Ltmp384-.Lfunc_begin0
	.quad	.Ltmp385-.Lfunc_begin0
	.quad	.Ltmp398-.Lfunc_begin0
	.quad	.Ltmp399-.Lfunc_begin0
	.quad	.Ltmp412-.Lfunc_begin0
	.quad	.Ltmp413-.Lfunc_begin0
	.quad	.Ltmp426-.Lfunc_begin0
	.quad	.Ltmp427-.Lfunc_begin0
	.quad	.Ltmp440-.Lfunc_begin0
	.quad	.Ltmp441-.Lfunc_begin0
	.quad	.Ltmp454-.Lfunc_begin0
	.quad	.Ltmp455-.Lfunc_begin0
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
	.quad	0
	.quad	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"mxcc version 1.0.0 (d9102a1572)" ; string offset=0
.Linfo_string1:
	.asciz	"/root/tilelang-metax/race_tests/moe/restart-rep/v005_numstage2_materialization_sc-16g/codegen/v005_numstage2_materialization_sc-16g_case3_generated_device.cpp" ; string offset=32
.Linfo_string2:
	.asciz	"/root/tilelang-metax"          ; string offset=191
.Linfo_string3:
	.asciz	"__barrier"                     ; string offset=212
.Linfo_string4:
	.asciz	"__syncthreads"                 ; string offset=222
.Linfo_string5:
	.asciz	"min"                           ; string offset=236
.Linfo_string6:
	.asciz	"exp2f"                         ; string offset=240
.Linfo_string7:
	.asciz	"__float2half_rn"               ; string offset=246
.Linfo_string8:
	.asciz	"__floats2half2_rn"             ; string offset=262
.Linfo_string9:
	.asciz	"__float22half2_rn"             ; string offset=280
.Linfo_string10:
	.asciz	"__half2float"                  ; string offset=298
.Linfo_string11:
	.asciz	"operator float"                ; string offset=311
.Linfo_string12:
	.asciz	"kernel_kernel"                 ; string offset=326
.Linfo_string13:
	.asciz	"kernel_kernel_1"               ; string offset=340
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
    .mtreg_count:    196
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
    .mtreg_count:    202
    .name:           kernel_kernel_1
    .private_memory_size: 0
    .share_memory_size: 0
    .streg_count:    30
macahca.version:
  - 1
  - 0
...

	.end_metaxgpu_metadata
	.section	.debug_line
.Lline_table_start0:
